unit uProduto;

interface

uses
  System.SysUtils;

Type
  TProduto = class
  private
    FId: Integer;
    FNome: String;
    FDescricao: String;
    FCustoCompra: Currency;
    FDespesa: Currency;
    FPreco : Currency;
    FMargem: Double;

    procedure SetID(const Value: Integer);
    procedure SetNome(const Value: String);
    procedure SetDescricao(const Value: String);
    procedure SetCustoCompra(const Value: Currency);
    procedure SetDespesa(const Value: Currency);
    procedure SetMargem(const Value: Double);
    procedure SetPreco(const Value: Currency);

    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    constructor Create;
    property Id: Integer read FId write SetID;
    property Nome: String read FNome write SetNome;
    property Descricao: String read FDescricao write SetDescricao;
    property CustoCompra: Currency read FCustoCompra write SetCustoCompra;
    property Despesa: Currency read FDespesa write SetDespesa;
    property Margem: Double read FMargem write SetMargem;
    property Preco: Currency read FPreco write SetPreco;
    procedure New();
  published
    { published declarations }
  end;

const
  ciZero: Integer = 0;
  csVazio: String = '';

implementation

{ TProduto }

constructor TProduto.Create;
begin
  FId := ciZero;
  FNome := csVazio;
  FDescricao := csVazio;
  FCustoCompra := ciZero;
  FDespesa := ciZero;
  FMargem := ciZero;
end;

procedure TProduto.New;
begin
  FId := ciZero;
  FNome := csVazio;
  FDescricao := csVazio;
  FCustoCompra := ciZero;
  FDespesa := ciZero;
  FMargem := ciZero;
end;

procedure TProduto.SetCustoCompra(const Value: Currency);
begin
  FCustoCompra := Value;
end;

procedure TProduto.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TProduto.SetDespesa(const Value: Currency);
begin
  FDespesa := Value;
end;

procedure TProduto.SetID(const Value: Integer);
begin
  FId := Value;
end;

procedure TProduto.SetMargem(const Value: Double);
begin
  FMargem := Value;
end;

procedure TProduto.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TProduto.SetPreco(const Value: Currency);
begin
 FPreco := Value;
end;

end.
