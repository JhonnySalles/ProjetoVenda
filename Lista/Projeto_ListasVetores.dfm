object ListasVetores: TListasVetores
  Left = 0
  Top = 0
  Caption = 'Listas e vetores'
  ClientHeight = 361
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ovL_Descricao: TLabel
    Left = 48
    Top = 32
    Width = 184
    Height = 13
    Caption = 'Informe um n'#250'mero entre 100 e 1000:'
  end
  object ovL_Soma: TLabel
    Left = 48
    Top = 128
    Width = 94
    Height = 13
    Caption = 'Soma das posi'#231#245'es:'
  end
  object ovL_Resultado: TLabel
    Left = 48
    Top = 215
    Width = 52
    Height = 13
    Caption = 'Resultado:'
  end
  object ovE_Numero: TEdit
    Left = 48
    Top = 69
    Width = 273
    Height = 21
    TabOrder = 0
    OnExit = ovE_NumeroExit
    OnKeyPress = ovE_NumeroKeyPress
  end
  object ovBtn_Par: TButton
    Left = 48
    Top = 147
    Width = 129
    Height = 25
    Caption = 'Par'
    TabOrder = 1
    OnClick = ovBtn_ParClick
  end
  object ovBtn_Impar: TButton
    Left = 192
    Top = 147
    Width = 129
    Height = 25
    Caption = 'Impar'
    TabOrder = 2
    OnClick = ovBtn_ImparClick
  end
end
