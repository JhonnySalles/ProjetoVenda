unit uLancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Buttons,
  uProduto, uProdutoDao, generics.defaults, generics.collections,
  System.Classes, Data.DB, Vcl.Grids, Vcl.DBGrids,
  System.UITypes;

type
  TLancamentoPedido = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ovL_Titulo: TLabel;
    ListaProdutos: TListView;
    ListaCarrinho: TListView;
    ovL_Carrinho: TLabel;
    ovL_Produtos: TLabel;
    ovL_ValorTotal: TLabel;
    ovE_ValorTotal: TEdit;
    ovL_Quantidade: TLabel;
    ovE_Quantidade: TEdit;
    ovSB_Inserir: TSpeedButton;
    ovSB_Excluir: TSpeedButton;
    ovE_Despesas: TEdit;
    Label1: TLabel;
    ovSB_Comprar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure p_CarregaLista(pListaProdutos: TList<TProduto>);
    procedure p_InsereCarrinho(Prod: TProduto);
    procedure p_CarregaProdutos;
    procedure ovSB_ExcluirClick(Sender: TObject);
    procedure ovSB_InserirClick(Sender: TObject);
    procedure p_LimpaCampos();
    procedure ovE_QuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure ListaProdutosDblClick(Sender: TObject);
    procedure ovE_DespesasKeyPress(Sender: TObject; var Key: Char);
    procedure ovE_DespesasExit(Sender: TObject);
    procedure p_ProcessaDespesas();
    procedure ListaCarrinhoCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure ListaProdutosCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure ovSB_ComprarClick(Sender: TObject);
    procedure p_NovoCarrinho();
  private
    ProdutoDAO: TProdutoDAO;
    FProduto: TProduto;
  public
    { Public declarations }
  end;

var
  LancamentoPedido: TLancamentoPedido;

implementation

uses
  uUtils;

{$R *.dfm}

procedure TLancamentoPedido.FormCreate(Sender: TObject);
begin
  ProdutoDAO := TProdutoDAO.Create;
  FProduto := TProduto.Create;

  p_CarregaProdutos();
end;

procedure TLancamentoPedido.FormDestroy(Sender: TObject);
begin
  try
    if Assigned(ProdutoDAO) then
      FreeAndNil(ProdutoDAO);

    if Assigned(FProduto) then
      FreeAndNil(FProduto);

  except
    on e: exception do
      raise exception.Create(e.Message);
  end;
end;

procedure TLancamentoPedido.ListaCarrinhoCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Odd(Item.index) then
    ListaCarrinho.Canvas.Brush.Color := f_HexToTColor('E0E0E0')
  else
    ListaCarrinho.Canvas.Brush.Color := clWhite;
end;

procedure TLancamentoPedido.ListaProdutosCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Odd(Item.index) then
    ListaProdutos.Canvas.Brush.Color := f_HexToTColor('E0E0E0')
  else
    ListaProdutos.Canvas.Brush.Color := clWhite;
end;

procedure TLancamentoPedido.ListaProdutosDblClick(Sender: TObject);
begin
  ovSB_Inserir.Click;
end;

procedure TLancamentoPedido.p_CarregaProdutos();
begin
  try
    FProduto.New;
    p_CarregaLista(ProdutoDAO.ListarProdutos(FProduto));
  except
    on e: exception do
      raise exception.Create(e.Message);
  end;
end;

procedure TLancamentoPedido.p_InsereCarrinho(Prod: TProduto);
var
  tempItem: TListItem;
  vdQtde: Double;
begin
  if ListaProdutos.Items.Count < 1 then
  begin
    ShowMessage('N�o existe nenhum produto na lista.');
    Exit;
  end;

  if ListaProdutos.ItemIndex > -1 then
  begin
    tempItem := ListaCarrinho.Items.Add;
    tempItem.Caption := IntToStr(Prod.Id);
    tempItem.SubItems.Add(Prod.Nome);

    if (Trim(ovE_Quantidade.Text) <> '') and (StrToFloat(ovE_Quantidade.Text) <> 0) then
      vdQtde := StrToFloat(ovE_Quantidade.Text)
    else
      vdQtde := 1;

    tempItem.SubItems.Add(FloatToStr(vdQtde));
    tempItem.SubItems.Add(CurrToStr(Prod.Preco * vdQtde));
    Prod.Quantidade := vdQtde;
    tempItem.Data := Prod;
  end;
end;

procedure TLancamentoPedido.p_LimpaCampos;
begin
  ovE_Quantidade.Text := '1';
end;

procedure TLancamentoPedido.p_NovoCarrinho;
begin
  ListaCarrinho.Clear;
  ovE_ValorTotal.Text := 'R$ 0,00';
  ovE_Despesas.Text := 'R$ 400,00';
  ovE_Quantidade.Text := '1';
end;

procedure TLancamentoPedido.p_ProcessaDespesas;
var
  I: Integer;
  vcPrecoVenda, vcTotal: Currency;
  vdDespesas, vdQtdItem: Double;
begin
  if ListaCarrinho.Items.Count < 1 then
    Exit;

  if (Trim(f_RemoveMaskEditMoeda(ovE_Despesas.Text)) = '') then
    ovE_Despesas.Text := 'R$ 0,00';

  vcTotal    := 0;
  vdQtdItem  := 0;
  vdDespesas := StrToFloat(f_RemoveMaskEditMoeda(ovE_Despesas.Text));

  for I := 0 to ListaCarrinho.Items.Count - 1 do
    vdQtdItem := vdQtdItem + TProduto(ListaCarrinho.Items[I].Data).Quantidade;

  vdDespesas := vdDespesas / vdQtdItem;
  for I := 0 to ListaCarrinho.Items.Count - 1 do
  begin
    vcPrecoVenda := vdDespesas + TProduto(ListaCarrinho.Items[I].Data).CustoCompra;
    vcPrecoVenda := vcPrecoVenda * (1 + (TProduto(ListaCarrinho.Items[I].Data).Margem / 100));
    vcTotal := vcTotal + (vcPrecoVenda * TProduto(ListaCarrinho.Items[I].Data).Quantidade);
    ListaCarrinho.Items[I].SubItems.Delete(2);
    ListaCarrinho.Items[I].SubItems.Add(Format('%m', [vcPrecoVenda *
                                        TProduto(ListaCarrinho.Items[I].Data).Quantidade]));
    TProduto(ListaCarrinho.Items[I].Data).Preco := vcPrecoVenda;
  end;

  ovE_ValorTotal.Text := Format('%m', [vcTotal]);
end;

procedure TLancamentoPedido.ovE_DespesasExit(Sender: TObject);
begin
  p_ExitEditMoeda(ovE_Despesas);
  p_ProcessaDespesas();
end;

procedure TLancamentoPedido.ovE_DespesasKeyPress(Sender: TObject;
  var Key: Char);
begin
  p_FormatarEditMoeda(ovE_Despesas, Key, 20, 2);
end;

procedure TLancamentoPedido.ovE_QuantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  p_LimitaEditNumeros(ovE_Quantidade, Key);
end;

procedure TLancamentoPedido.ovSB_ComprarClick(Sender: TObject);
begin
  if ListaCarrinho.Items.Count > 0 then
  begin
    ProdutoDAO.InsereCarrinho(ListaCarrinho);
    ShowMessage('Carrinho salvo com sucesso.');
    p_NovoCarrinho();
  end else
    ShowMessage('Nenhum produto adicionado no carrinho.');
end;

procedure TLancamentoPedido.ovSB_ExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja remover este item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then
  begin
    if ListaCarrinho.ItemIndex > -1 then
    begin
      ListaCarrinho.ItemFocused.Delete;

      if ListaCarrinho.Items.Count > -1 then
        p_ProcessaDespesas()
      else
        ovE_ValorTotal.Text := Format('%m', [0.00]);
    end;
  end;
end;

procedure TLancamentoPedido.ovSB_InserirClick(Sender: TObject);
begin
  if ListaProdutos.ItemIndex > -1 then
  begin
    p_InsereCarrinho(TProduto(ListaProdutos.ItemFocused.Data));
    p_ProcessaDespesas();
  end;

  p_LimpaCampos();
end;

procedure TLancamentoPedido.p_CarregaLista(pListaProdutos: TList<TProduto>);
var
  I: Integer;
  tempItem: TListItem;
begin
  if Assigned(pListaProdutos) then
  begin
    ListaProdutos.Clear;
    for I := 0 to pListaProdutos.Count - 1 do
    begin
      tempItem := ListaProdutos.Items.Add;
      tempItem.Caption := IntToStr(TProduto(pListaProdutos[I]).Id);
      tempItem.SubItems.Add(TProduto(pListaProdutos[I]).Nome);
      tempItem.SubItems.Add(CurrToStr(TProduto(pListaProdutos[I]).Margem));
      tempItem.SubItems.Add(Format('%m', [TProduto(pListaProdutos[I]).CustoCompra]));
      tempItem.Data := TProduto(pListaProdutos[I]);
    end;
  end
end;

end.
