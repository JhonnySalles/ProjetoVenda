unit uCustos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, uUtils, uProdutoDao;

type
  TCustos = class(TForm)
    Panel1: TPanel;
    ovE_Despesa: TEdit;
    ovL_Despesa: TLabel;
    ovSB_Cancelar: TSpeedButton;
    ovSB_Confirmar: TSpeedButton;
    procedure ovSB_CancelarClick(Sender: TObject);
    procedure ovSB_ConfirmarClick(Sender: TObject);
    procedure ovE_DespesaKeyPress(Sender: TObject; var Key: Char);
    procedure p_ProcessaDespesas(Valor : String);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ovE_DespesaExit(Sender: TObject);
  private
    PrdDAO: TProdutoDAO;
  public
    { Public declarations }
  end;

var
  Custos: TCustos;

implementation

{$R *.dfm}

procedure TCustos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(PrdDAO) then
    FreeAndNil(PrdDAO);
end;

procedure TCustos.FormCreate(Sender: TObject);
begin
  PrdDAO := TProdutoDAO.Create;
end;

procedure TCustos.ovE_DespesaExit(Sender: TObject);
begin
  p_ExitEditMoeda(ovE_Despesa);
end;

procedure TCustos.ovE_DespesaKeyPress(Sender: TObject; var Key: Char);
begin
  p_FormatarEditMoeda(ovE_Despesa, Key, 20, 2);
end;

procedure TCustos.ovSB_CancelarClick(Sender: TObject);
begin
  p_ProcessaDespesas('400');
end;

procedure TCustos.ovSB_ConfirmarClick(Sender: TObject);
begin
  p_ProcessaDespesas(ovE_Despesa.Text);
end;

procedure TCustos.p_ProcessaDespesas(Valor: String);
begin
  PrdDAO.processaDespesa(StrToFloat(f_RemoveMaskEditMoeda(Valor)));
  Close;
end;

end.
