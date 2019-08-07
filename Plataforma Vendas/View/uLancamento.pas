unit uLancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  uProduto, uProdutoDao, generics.defaults, generics.collections, System.Classes, Data.DB,Vcl.Grids, Vcl.DBGrids,
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
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure p_CarregaLista(pListaProdutos: TList<TProduto>);
    procedure p_InsereCarrinho(pListaProdutos: TList<TProduto>);
    procedure p_CarregaProdutos;
    procedure ovSB_ExcluirClick(Sender: TObject);
    procedure ovSB_InserirClick(Sender: TObject);
    procedure p_LimpaCampos();
    procedure ovE_QuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure ListaProdutosDblClick(Sender: TObject);
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
      raise Exception.Create(E.Message);
  end;
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
      raise Exception.Create(E.Message);
  end;
end;

procedure TLancamentoPedido.p_InsereCarrinho(pListaProdutos: TList<TProduto>);
var
  I: Integer;
  tempItem: TListItem;
  vsQtde : String;
begin
  if Assigned(pListaProdutos) then
  begin
    for I := 0 to pListaProdutos.Count -1 do
    begin
      tempItem := ListaCarrinho.Items.Add;
      tempItem.Caption := IntToStr(TProduto(pListaProdutos[I]).Id);
      tempItem.SubItems.Add(IntToStr(TProduto(pListaProdutos[I]).Id));
      tempItem.SubItems.Add(TProduto(pListaProdutos[I]).Nome);

      if (ovE_Quantidade.Text <> '') and (ovE_Quantidade.Text <> '0') then
        vsQtde := ovE_Quantidade.Text
      else
        vsQtde := '1';

      tempItem.SubItems.Add(vsQtde);
      tempItem.SubItems.Add(CurrToStr(TProduto(pListaProdutos[I]).Preco * StrToInt(vsQtde)));
      tempItem.Data := TProduto(pListaProdutos[I]);
    end;
  end
end;

procedure TLancamentoPedido.p_LimpaCampos;
var
  I: Integer;
  vdVlrTotal : Double;
  vsAux : String;
begin
  ovE_Quantidade.Text := '1';

end;

procedure TLancamentoPedido.ovE_QuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  uUtils.p_LimitaEditNumeros(ovE_Quantidade, Key);
end;

procedure TLancamentoPedido.ovSB_ExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja remover este item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if ListaCarrinho.ItemIndex > -1 then
    begin
      ListaCarrinho.ItemFocused.Delete;
    end;
  end;
end;

procedure TLancamentoPedido.ovSB_InserirClick(Sender: TObject);
begin
  if ListaProdutos.ItemIndex > -1 then
    p_InsereCarrinho(ProdutoDAO.ListarProdutos(TProduto(ListaProdutos.ItemFocused.Data)));

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
    for I := 0 to pListaProdutos.Count -1 do
    begin
      tempItem := ListaProdutos.Items.Add;
      tempItem.Caption := IntToStr(TProduto(pListaProdutos[I]).Id);
      tempItem.SubItems.Add(TProduto(pListaProdutos[I]).Nome);
      tempItem.SubItems.Add(CurrToStr(TProduto(pListaProdutos[I]).Preco));
      tempItem.Data := TProduto(pListaProdutos[I]);
    end;
  end
end;

end.
