unit uMySQLDao;

interface

uses FireDAC.Comp.Client, System.SysUtils, uDtM, Data.DB, Vcl.Dialogs,
  System.Classes;

type
  TMySQLDao = Class(TObject)
  private

  protected
    FdQry: TFDQuery;
    function ReturnDataSet(SQL: String): TFDQuery;
    function ExecSQL(SQL: String): Integer;
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TMySQLDao }

constructor TMySQLDao.Create;
begin
  inherited Create;
  FdQry := TFDQuery.Create(nil);
  FdQry.Connection := DtM.FDConnection;
end;

destructor TMySQLDao.Destroy;
begin
  try
    if Assigned(FdQry) then
      FreeAndNil(FdQry);
  except
    on e: exception do
      raise exception.Create(e.Message);
  end;
end;

function TMySQLDao.ExecSQL(SQL: String): Integer;
begin
  Result := 0;
  try
    DtM.FDConnection.StartTransaction;
    FdQry.SQL.Text := SQL;
    FdQry.ExecSQL;
    Result := FdQry.RowsAffected;
    DtM.FDConnection.Commit;
  except
    DtM.FDConnection.Rollback;
  end;
end;

function TMySQLDao.ReturnDataSet(SQL: String): TFDQuery;
begin
  FdQry.SQL.Text := SQL;
  FdQry.Active := True;
  Result := FdQry;
end;

end.
