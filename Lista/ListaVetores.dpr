program ListaVetores;

uses
  Vcl.Forms,
  Projeto_ListasVetores in 'Projeto_ListasVetores.pas' {ListasVetores};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TListasVetores, ListasVetores);
  Application.Run;
end.
