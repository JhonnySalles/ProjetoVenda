unit Projeto_ListasVetores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TListasVetores = class(TForm)
    ovL_Descricao: TLabel;
    ovL_Soma: TLabel;
    ovL_Resultado: TLabel;
    ovE_Numero: TEdit;
    ovBtn_Par: TButton;
    ovBtn_Impar: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    ovL_Titulo: TLabel;
    function f_validaCampo() : Boolean;
    procedure ovE_NumeroExit(Sender: TObject);
    procedure ovE_NumeroKeyPress(Sender: TObject; var Key: Char);
    procedure ovBtn_ImparClick(Sender: TObject);
    function f_verificaVazio() : Boolean;
    procedure p_calculaVetor();
    procedure ovBtn_ParClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListasVetores: TListasVetores;
  vtVetor : array [0..10] of double;
  valor : double;
  vbPar : Boolean;

implementation

uses
  Vcl.Dialogs;

{$R *.dfm}

procedure TListasVetores.ovBtn_ImparClick(Sender: TObject);
begin
  vbPar := False;
  if f_verificaVazio() then
  begin
    p_calculaVetor();
  end;
end;

procedure TListasVetores.ovBtn_ParClick(Sender: TObject);
begin
  vbPar := True;
  if f_verificaVazio() then
  begin
    p_calculaVetor();
  end;
end;

procedure TListasVetores.ovE_NumeroExit(Sender: TObject);
begin
  f_validaCampo();
end;

procedure TListasVetores.ovE_NumeroKeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(key, ['0'..'9', #8]) then
  begin
    key := #0;
  end;
end;

procedure TListasVetores.p_calculaVetor;
var
  i : integer;
  vdTotal, vdVlInformado : double;
begin
  vdVlInformado := StrToFloat(ovE_Numero.Text);
  vdTotal := 0;
  for i := 0 to 10 do
  begin
    if (i mod 3) = 0 then
      vtVetor[i] := i * 0.3 * vdVlInformado
    else
      vtVetor[i] := i * 0.1 * vdVlInformado;

    if vbPar then
    begin
      if (i mod 2) = 0 then
        vdTotal := vdTotal + vtVetor[i];
    end else
    begin
      if (i mod 2) <> 0 then
        vdTotal := vdTotal + vtVetor[i];
    end;
  end;

  ovL_Resultado.Caption := 'Resultado: ' + FloatToStr(vdTotal);
end;

function TListasVetores.f_validaCampo(): Boolean;
begin
  if Trim(ovE_Numero.Text) = '' then
    Exit;

  if StrToInt(ovE_Numero.Text) < 100 then
  begin
    ShowMessage('Necess�rio informar um n�mero maior que 100');
    Result := False;
  end else
  begin
    if StrToInt(ovE_Numero.Text) > 1000 then
    begin
      ShowMessage('Necess�rio informar um n�mero menor que 1000');
      Result := False;
    end else
    begin
       if (StrToInt(ovE_Numero.Text) mod 10) <> 0 then
       begin
        ShowMessage('Necess�rio informar um n�mero multiplo de 10.');
        Result := False;
       end else
        Result := True;
    end;
  end;
end;

function TListasVetores.f_verificaVazio(): Boolean;
begin
  if Trim(ovE_Numero.Text) = '' then
  begin
    ShowMessage('Favor informar um n�mero.');
    Result := False;
    ovE_Numero.SetFocus;
  end else
    Result := True;
end;

end.
