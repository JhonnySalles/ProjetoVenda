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
  object Panel1: TPanel
    Left = 41
    Top = 63
    Width = 443
    Height = 298
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 106
    ExplicitTop = 69
    ExplicitWidth = 384
    object ovL_Descricao: TLabel
      Left = 40
      Top = 48
      Width = 184
      Height = 13
      Caption = 'Informe um n'#250'mero entre 100 e 1000:'
    end
    object ovL_Resultado: TLabel
      Left = 40
      Top = 231
      Width = 52
      Height = 13
      Caption = 'Resultado:'
    end
    object ovL_Soma: TLabel
      Left = 40
      Top = 144
      Width = 94
      Height = 13
      Caption = 'Soma das posi'#231#245'es:'
    end
    object ovBtn_Impar: TButton
      Left = 184
      Top = 163
      Width = 129
      Height = 25
      Caption = 'Impar'
      TabOrder = 0
      OnClick = ovBtn_ImparClick
    end
    object ovBtn_Par: TButton
      Left = 40
      Top = 163
      Width = 129
      Height = 25
      Caption = 'Par'
      TabOrder = 1
      OnClick = ovBtn_ParClick
    end
    object ovE_Numero: TEdit
      Left = 40
      Top = 85
      Width = 273
      Height = 21
      TabOrder = 2
      OnExit = ovE_NumeroExit
      OnKeyPress = ovE_NumeroKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 63
    Width = 41
    Height = 298
    Align = alLeft
    BevelOuter = bvNone
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 484
    Height = 63
    Align = alTop
    BevelOuter = bvNone
    Color = clHighlight
    ParentBackground = False
    TabOrder = 2
    object ovL_Titulo: TLabel
      Left = 16
      Top = 32
      Width = 146
      Height = 25
      Caption = 'Listas e Vetores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 25
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
end
