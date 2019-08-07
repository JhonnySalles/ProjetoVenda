unit uMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDtM, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TMenuPrincipal = class(TForm)
    Panel1: TPanel;
    ovSP_Cadastro: TSpeedButton;
    ovSB_Venda: TSpeedButton;
    Panel2: TPanel;
    ovL_Descricao: TLabel;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure ovSP_CadastroClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ovSB_VendaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  csIp : String = '127.0.0.1';
  csPort : String = '3306';
  csDatabase : String = 'plataformavenda';
  csUser : String = 'admin';
  csPasw : String = 'admin';

var
  MenuPrincipal: TMenuPrincipal;

implementation

uses
  uCadProduto, uLancamento;

{$R *.dfm}

procedure TMenuPrincipal.FormCreate(Sender: TObject);
begin
  DtM := TDtM.Create(Self);

  DtM.FDPhysMySQLDriverLink.VendorLib := ExtractFilePath(Application.ExeName) + 'libmySQL.dll';
  DtM.FDConnection.Params.Clear;
  DtM.FDConnection.Params.Add('DriverID=MySQL');
  DtM.FDConnection.Params.Add('CharacterSet=utf8');
  DtM.FDConnection.Params.Add('Server='+ csIp);
  DtM.FDConnection.Params.Add('Port='+ csPort);
  DtM.FDConnection.Params.Add('Database=' + csDatabase);
  DtM.FDConnection.Params.Add('User_Name=' + csUser);
  DtM.FDConnection.Params.Add('Password=' + csPasw);
  DtM.FDConnection.Connected := True;
end;

procedure TMenuPrincipal.FormDestroy(Sender: TObject);
begin
  try
    DtM.FDConnection.Connected := False;
    if Assigned(DtM) then
      FreeAndNil(DtM);
  except
    on e: exception do
      raise Exception.Create(E.Message);
  end;
end;

procedure TMenuPrincipal.ovSB_VendaClick(Sender: TObject);
begin
  try
    LancamentoPedido := TLancamentoPedido.Create(Self);
    LancamentoPedido.ShowModal;
  finally
    FreeAndNil(LancamentoPedido);
  end;
end;

procedure TMenuPrincipal.ovSP_CadastroClick(Sender: TObject);
begin
  try
    CadProduto := TCadProduto.Create(Self);
    CadProduto.ShowModal;
  finally
    FreeAndNil(CadProduto);
  end;
end;

end.
