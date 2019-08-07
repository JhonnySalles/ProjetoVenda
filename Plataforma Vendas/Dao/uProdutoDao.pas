unit uProdutoDao;

interface

uses uProduto, classes, DB, SysUtils, generics.defaults,
  generics.collections, Dialogs, uDtM, uMySQLDao, FireDAC.Comp.Client;

type
  TProdutoDAO = class(TMySQLDao)
  private
    FListaProduto: TObjectList<TProduto>;
    procedure PreencherColecao(Ds: TFDQuery);
    function InsereProduto(pProduto: TProduto): TObjectList<TProduto>;
  public
    constructor Create;
    destructor Destroy; override;
    function Inserir(pProduto: TProduto): Boolean;
    function Deletar(pProduto: TProduto): Boolean;
    function Alterar(pProduto: TProduto): Boolean;
    function ListarProdutos(pProduto: TProduto): TObjectList<TProduto>;
    function PesquisaProduto(pProduto : TProduto): Boolean;
    procedure ProcessaDespesa(Valor: Double);
  end;

const
  csSQL_INSERIR : String = 'INSERT INTO produtos (Nome, Descricao, CustoCompra, Despesa, Margem) ' +
    ' VALUES ( %s, %s, %s, %s, %s )';
  csSQL_DELETE : String = 'UPDATE produtos SET Situacao = "EXCLU�DO" WHERE Id = %s ';
  csSQL_UPDATE : String = 'UPDATE produtos SET Nome = %s , Descricao = %s , CustoCompra = %s , ' +
    ' Despesa = %s , Margem = %s WHERE Id = %s ';
  csSQL_SELECT : String = 'SELECT Id, Nome, Descricao, CustoCompra, PrecoVenda, Despesa, Margem ' +
    ' FROM produtos WHERE 1 > 0 ';
  csSQL_LISTAPRODUTO : String = 'SELECT Id, Nome, Descricao, CustoCompra, PrecoVenda, Despesa, Margem ' +
    ' FROM produtos WHERE 1 > 0 AND CustoCompra <> 0 AND CustoCompra IS NOT NULL ';
  csSQL_ITENS_DESPESAS : String = 'SELECT Id, CustoCompra, PrecoVenda, Despesa, Margem FROM produtos ';
  csSQL_UPDATE_DESPESAS : String = 'UPDATE produtos SET Despesa = %s , PrecoVenda = %s WHERE Id = %s ';

  csVIRGULA : String = ',';
  csPONTO : String = '.';

implementation

{ TLembreteDAO }

function TProdutoDAO.Alterar(pProduto: TProduto): Boolean;
var
  Sql: String;
begin
  Sql := Format(csSQL_UPDATE, [QuotedStr(pProduto.Nome),
    QuotedStr(pProduto.Descricao), CurrToStr(pProduto.CustoCompra),
    CurrToStr(pProduto.Despesa), FloatToStr(pProduto.Margem), IntToStr(pProduto.Id)]);
  Result := ExecSQL(Sql) > 0;
end;

constructor TProdutoDAO.Create;
begin
  inherited;
  FListaProduto := TObjectList<TProduto>.Create;
end;

function TProdutoDAO.Deletar(pProduto: TProduto): Boolean;
var
  Sql: String;
begin
  Sql := Format(csSQL_DELETE,[IntToStr(pProduto.Id)]);
  Result := ExecSQL(Sql) > 0;
end;

destructor TProdutoDAO.Destroy;
begin
  try
    inherited;
    if Assigned(FListaProduto) then
      FreeAndNil(FListaProduto);
  except
    on e: exception do
      raise exception.Create(e.Message);
  end;
end;

function TProdutoDAO.Inserir(pProduto: TProduto): Boolean;
var
  Sql: String;
begin
  Sql := Format(csSQL_INSERIR, [QuotedStr(pProduto.Nome),
    QuotedStr(pProduto.Descricao), CurrToStr(pProduto.CustoCompra),
    CurrToStr(pProduto.Despesa), FloatToStr(pProduto.Margem)]);
  Result := ExecSQL(Sql) > 0;
end;

function TProdutoDAO.ListarProdutos(pProduto: TProduto)
  : TObjectList<TProduto>;
var
  Sql: String;
begin
  Result := Nil;
  Sql := csSQL_LISTAPRODUTO;

   if pProduto.Id <> 0 then
   begin
     Sql := Sql + ' AND Id = ' + IntToStr(pProduto.Id);
   end;

  Sql := Sql + '  ORDER BY Nome  ';
  FdQry := ReturnDataSet(Sql);

  if not (FdQry.IsEmpty) then
  begin
    PreencherColecao(FdQry);
    Result := FListaProduto;
  end;
end;

function TProdutoDAO.InsereProduto(pProduto: TProduto)
  : TObjectList<TProduto>;
var
  Sql: String;
begin
  Result := Nil;
  Sql := csSQL_LISTAPRODUTO;

  Sql := Sql + '  ORDER BY Nome  ';
  FdQry := ReturnDataSet(Sql);

  if not (FdQry.IsEmpty) then
  begin
    PreencherColecao(FdQry);
    Result := FListaProduto;
  end;
end;

function TProdutoDAO.PesquisaProduto(pProduto: TProduto): Boolean;
var
  Sql: String;
begin
  Sql := csSQL_SELECT + ' AND Id = ' + IntToStr(pProduto.Id);
  FdQry := ReturnDataSet(Sql);

  if not FdQry.IsEmpty then
  begin
    TProduto(pProduto).Id           := FdQry.FieldByName('Id').AsInteger;
    TProduto(pProduto).Nome         := FdQry.FieldByName('Nome').AsString;
    TProduto(pProduto).Descricao    := FdQry.FieldByName('Descricao').AsString;
    TProduto(pProduto).CustoCompra  := FdQry.FieldByName('CustoCompra').AsCurrency;
    TProduto(pProduto).Despesa      := FdQry.FieldByName('Despesa').AsCurrency;
    TProduto(pProduto).Preco        := FdQry.FieldByName('PrecoVenda').AsCurrency;
    TProduto(pProduto).Margem       := FdQry.FieldByName('Margem').AsFloat;
    Result := True;
  end else
    Result := False;

end;

procedure TProdutoDAO.PreencherColecao(Ds: TFDQuery);
var
  I: Integer;
begin
  I := 0;
  FListaProduto.Clear;
  while not Ds.eof do
  begin
    FListaProduto.Add(TProduto.Create);
    FListaProduto[I].Id           := Ds.FieldByName('Id').AsInteger;
    FListaProduto[I].Nome         := Ds.FieldByName('Nome').AsString;
    FListaProduto[I].Descricao    := Ds.FieldByName('Descricao').AsString;
    FListaProduto[I].CustoCompra  := Ds.FieldByName('CustoCompra').AsCurrency;
    FListaProduto[I].Despesa      := Ds.FieldByName('Despesa').AsCurrency;
    FListaProduto[I].Preco        := Ds.FieldByName('PrecoVenda').AsCurrency;
    FListaProduto[I].Margem       := Ds.FieldByName('Margem').AsFloat;
    Ds.Next;
    I := I + 1;
  end;
end;

procedure TProdutoDAO.ProcessaDespesa(Valor : Double);
var
  SQL : String;
  PrecoVenda : Currency;
  Rateio : Double;
  DataSet : TFDMemTable;
begin
  DataSet  := TFDMemTable.Create(nil);
  try
    FdQry := ReturnDataSet(csSQL_ITENS_DESPESAS);
    DataSet.Data := FdQry.Data;

    Rateio := Valor / DataSet.RecordCount;
    DataSet.First;
    while not DataSet.EoF do
    begin
      PrecoVenda := Rateio + DataSet.FieldByName('CustoCompra').AsFloat;
      PrecoVenda := PrecoVenda * (1 + (DataSet.FieldByName('Margem').AsFloat / 100));
      SQL := Format(csSQL_UPDATE_DESPESAS, [StringReplace(FloatToStr(Rateio), csVIRGULA, csPONTO, []),
             StringReplace(CurrToStr(PrecoVenda), csVIRGULA, csPONTO, []), DataSet.FieldByName('Id').AsString]);
      ExecSQL(SQL);
      DataSet.Next;
    end;
  finally
    FreeAndNil(DataSet);
  end;
end;

end.
