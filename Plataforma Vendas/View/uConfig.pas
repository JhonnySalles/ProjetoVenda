unit uConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  System.IniFiles, uDtM;

type
  TConfig = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    ovL_Descricao: TLabel;
    ovTImg_Logo: TImage;
    ovE_Ip: TEdit;
    ovE_Porta: TEdit;
    ovE_Banco: TEdit;
    ovE_Usuario: TEdit;
    ovE_Senha: TEdit;
    ovL_Ip: TLabel;
    ovL_Porta: TLabel;
    ovL_Servidor: TLabel;
    ovL_Usuario: TLabel;
    ovL_Senha: TLabel;
    ovSB_Testar: TSpeedButton;
    ovSB_Salvar: TSpeedButton;
    procedure ovSB_TestarClick(Sender: TObject);
    procedure ovSB_SalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure p_CriaConfig();
    function f_ValidaCampos() : Boolean;
    function f_VerificaConexao() : Boolean;
    procedure FormDestroy(Sender: TObject);
  private
    DataModule : TDtM;
  public
    { Public declarations }
  end;

var
  Config: TConfig;

implementation

{$R *.dfm}

procedure TConfig.FormCreate(Sender: TObject);
begin
  DataModule := TDtM.Create(Self);
end;

procedure TConfig.FormDestroy(Sender: TObject);
begin
  try
    DataModule.FDConnection.Connected := False;
    if Assigned(DataModule) then
      FreeAndNil(DataModule);
  except
    on e: exception do
      raise Exception.Create(E.Message);
  end;
end;

function TConfig.f_ValidaCampos: Boolean;
begin
  if (Trim(ovE_Ip.Text) = '') then
  begin
    ShowMessage('Favor informar um ip.');
    Result := False;
    Exit;
  end else
  if (Trim(ovE_Porta.Text) = '') then
  begin
    ShowMessage('Favor informar uma porta.');
    Result := False;
    Exit;
  end else
  if (Trim(ovE_Banco.Text) = '') then
  begin
    ShowMessage('Favor informar um banco de dados.');
    Result := False;
    Exit;
  end else
  if (Trim(ovE_Usuario.Text) = '') then
  begin
    ShowMessage('Favor informar um usu�rio.');
    Result := False;
    Exit;
  end else
  if (Trim(ovE_Senha.Text) = '') then
  begin
    ShowMessage('Favor informar uma senha.');
    Result := False;
    Exit;
  end else
  if not f_VerificaConexao() then
  begin
    ShowMessage('N�o foi poss�vel conectar ao banco. Verifique os dados inseridos.');
    Result := False;
    Exit;
  end else
    Result := True;
end;

function TConfig.f_VerificaConexao: Boolean;
begin
  Result := True;
  try
    DataModule.FDConnection.Params.Clear;
    DataModule.FDConnection.Params.Add('DriverID=MySQL');
    DataModule.FDConnection.Params.Add('CharacterSet=utf8');
    DataModule.FDConnection.Params.Add('Server='+ Trim(ovE_Ip.Text));
    DataModule.FDConnection.Params.Add('Port='+ Trim(ovE_Porta.Text));
    DataModule.FDConnection.Params.Add('Database=' + Trim(ovE_Banco.Text));
    DataModule.FDConnection.Params.Add('User_Name=' + Trim(ovE_Usuario.Text));
    DataModule.FDConnection.Params.Add('Password=' + Trim(ovE_Senha.Text));
    DataModule.FDConnection.Connected := True;
  except
    Result := False;
  end;
end;

procedure TConfig.ovSB_SalvarClick(Sender: TObject);
begin
  if f_ValidaCampos() then
  begin
    p_CriaConfig();
    Close();
  end;
end;

procedure TConfig.ovSB_TestarClick(Sender: TObject);
begin
  if f_ValidaCampos() then
    ShowMessage('Base conecatada com sucesso.');
end;

procedure TConfig.p_CriaConfig;
var
  Arquivo : TIniFile;
begin
  Arquivo := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\Config.ini');
  try
    Arquivo.WriteString('BANCO', 'server', Trim(ovE_Ip.Text) );
    Arquivo.WriteString('BANCO', 'port', Trim(ovE_Porta.Text) );
    Arquivo.WriteString('BANCO', 'base', Trim(ovE_Banco.Text) );
    Arquivo.WriteString('BANCO', 'user', Trim(ovE_Usuario.Text) );
    Arquivo.WriteString('BANCO', 'passw', Trim(ovE_Senha.Text) );
  finally
    FreeAndNil(Arquivo);
  end;
end;

end.
