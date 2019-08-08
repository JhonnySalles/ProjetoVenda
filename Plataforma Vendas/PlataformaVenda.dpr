program PlataformaVenda;

{$R *.dres}

uses
  Vcl.Forms,
  uMenuPrincipal in 'uMenuPrincipal.pas' {MenuPrincipal},
  uDtM in 'Dao\uDtM.pas' {DtM: TDataModule},
  uCadProduto in 'View\uCadProduto.pas' {CadProduto},
  uUtils in 'Model\uUtils.pas',
  uProduto in 'Model\uProduto.pas',
  uMySQLDao in 'Dao\uMySQLDao.pas',
  uProdutoDao in 'Dao\uProdutoDao.pas',
  uLancamento in 'View\uLancamento.pas' {LancamentoPedido},
  uConfig in 'View\uConfig.pas' {Config};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDtM, DtM);
  Application.CreateForm(TMenuPrincipal, MenuPrincipal);
  Application.Run;
end.
