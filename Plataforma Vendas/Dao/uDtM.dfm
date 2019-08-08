object DtM: TDtM
  OldCreateOrder = False
  Height = 211
  Width = 322
  object FDConnection: TFDConnection
    Params.Strings = (
      'DriverID=MySQL'
      'Database=plataformavenda'
      'Password=admin'
      'User_Name=admin'
      'Server=localhost')
    LoginPrompt = False
    Left = 40
    Top = 40
  end
  object FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink
    Left = 168
    Top = 40
  end
end
