object LancamentoPedido: TLancamentoPedido
  Left = 0
  Top = 0
  Caption = 'Lan'#231'amento de Pedido'
  ClientHeight = 623
  ClientWidth = 860
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 73
    Width = 860
    Height = 550
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object ovL_Carrinho: TLabel
      Left = 456
      Top = 26
      Width = 49
      Height = 16
      Caption = 'Carrinho'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ovL_Produtos: TLabel
      Left = 32
      Top = 26
      Width = 50
      Height = 16
      Caption = 'Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ovL_ValorTotal: TLabel
      Left = 456
      Top = 472
      Width = 58
      Height = 13
      Caption = 'Valor Total: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ovL_Quantidade: TLabel
      Left = 32
      Top = 472
      Width = 60
      Height = 13
      Caption = 'Quantidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ovSB_Inserir: TSpeedButton
      Left = 291
      Top = 455
      Width = 110
      Height = 65
      Caption = 'Inserir'
      Glyph.Data = {
        361B0000424D361B000000000000360000002800000030000000300000000100
        180000000000001B0000C40E0000C40E00000000000000000000B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6B8B9B6C1B1A0CEA475D69A47DA9500DA9500DA9500DA95
        00DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9600DB
        9600DB9600DA9600DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500
        DA9500DA9500DA9500DA9500DA9500D69A47CEA475C1B1A0B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6BAB7B2D0A26CDA9500DA
        9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9600
        DB9600DB9700DC9700DC9800DC9800DC9800DC9800DC9800DC9800DC9700DB97
        00DB9600DB9600DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA
        9500DA9500DA9500D0A26CBAB7B2B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6BAB7B2D49D55DA9500DC9B0FECCA7FF8EBCFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF1DFECCA7FDC9B0FDA9500D49D55BAB7
        B2B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6D29F61DA9500E0A82FFAF1DFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFCF8EFE0A82FDA9500D29F61B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        C1B1A0DA9500DC9B0FFCF8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF8EFDC9B0FDA95
        00C5AD94B8B9B6B8B9B6B8B9B6B8B9B6D0A26CDA9500F1D79FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF1D79FDA9500D0A26CB8B9B6B8B9B6B8B9B6B8B9B6
        DA9500DA9500FCF8EFFFFFFFFFFFFFFFFFFFFCF8EFE8BE5FE5B23FE6B33FE6B4
        3FE7B53FE8B63FE9B63FE9B73FEAB83FEAB93FEBB93FEBBA3FECBA3FECBA3FEC
        BA3FECBA3FECBA3FECBA3FEBBA3FEBB93FEBB93FEAB83FE9B73FE9B73FE8B63F
        E7B53FE7B43FE6B33FE5B23FE9BE5FFCF8EFFFFFFFFFFFFFFFFFFFFCF8EFDA95
        00DA9500B8B9B6B8B9B6B8B9B6B8B9B6DA9500DA9500FFFFFFFFFFFFFFFFFFFF
        FFFFE6B74FDC9800DD9900DF9B00E09C00E19E00E29F00E3A000E4A100E5A200
        E5A300E6A400E6A500E7A500E7A500E7A600E7A600E7A600E7A500E6A500E6A4
        00E5A300E5A300E4A200E3A100E29F00E19E00E09D00DF9B00DE9A00DD9800E6
        B74FFFFFFFFFFFFFFFFFFFFFFFFFDEA21FDA9500BCB5ACB8B9B6B8B9B6B8B9B6
        DA9500DA9500FFFFFFFFFFFFFFFFFFFFFFFFE5B13FDD9900DF9B00E09D00E19E
        00E29F00E3A100E4A200E5A300E6A400E7A500E8A600E8A700E8A700E9A800E9
        A800E9A800E9A800E9A700E8A700E8A600E7A500E6A500E6A400E5A200E4A100
        E3A000E29E00E09D00DF9B00DE9A00DC9800FFFFFFFFFFFFFFFFFFFFFFFFE3AF
        3FDA9500C1B1A0B8B9B6B8B9B6B8B9B6DA9500DA9500FFFFFFFFFFFFFFFFFFFF
        FFFFE6B33FDF9B00E09D00E19E00E3A000E4A100E5A300E6A400E7A500E8A600
        E9A700E9A800EAA900EAA900EBAA00EBAA00EBAA00EBAA00EAAA00EAA900E9A8
        00E9A800E8A700E7A600E6A400E5A300E4A200E3A000E29F00E09D00DF9B00DE
        9A00FFFFFFFFFFFFFFFFFFFFFFFFE3AF3FDA9500C1B1A0B8B9B6B8B9B6B8B9B6
        DA9500DA9500FFFFFFFFFFFFFFFFFFFFFFFFE6B43FE09C00E19E00E3A000E4A1
        00E5A300E6A400E7A600E8A700E9A800EAA900EBAA00ECAB00ECAC00ECAC00ED
        AC00EDAC00ECAC00ECAC00ECAB00EBAB00EAAA00EAA900E9A700E8A600E7A500
        E5A300E4A200E3A000E29E00E09D00DF9B00FFFFFFFFFFFFFFFFFFFFFFFFE3AF
        3FDA9500C1B1A0B8B9B6B8B9B6B8B9B6DA9500DA9500FFFFFFFFFFFFFFFFFFFF
        FFFFE7B53FE19E00E29F00E4A100E5A300E6A500E8A600E9A800EAA900EBAA00
        ECAB00EDAC00EDAD00FCF4DFFFFFFFFFFFFFFFFFFFFFFFFFFCF4DFEDAD00EDAD
        00ECAC00EBAB00EAA900E9A800E8A700E7A500E6A300E4A200E3A000E19E00E0
        9C00FFFFFFFFFFFFFFFFFFFFFFFFE3AF3FDA9500C1B1A0B8B9B6B8B9B6B8B9B6
        DA9500DA9500FFFFFFFFFFFFFFFFFFFFFFFFE8B63FE29F00E3A100E5A300E6A4
        00E8A600E9A800EAA900EBAB00ECAC00EDAD00EEAE01EEAF03FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF2C342EEAF02EDAE00EDAD00ECAB00EBAA00E9A800
        E8A700E7A500E5A300E4A100E29F00E19D00FFFFFFFFFFFFFFFFFFFFFFFFE3AF
        3FDA9500C1B1A0B8B9B6B8B9B6B8B9B6DA9500DA9500FFFFFFFFFFFFFFFFFFFF
        FFFFE9B63FE3A000E4A200E6A400E7A600E9A800EAA900ECAB00EDAD00EDAE00
        EEAF03EEB005EFB106FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3C545EEB0
        05EEAF03EEAE01EDAD00ECAC00EBAA00E9A800E8A600E6A400E5A300E3A100E2
        9F00FFFFFFFFFFFFFFFFFFFFFFFFE3AF3FDA9500C1B1A0B8B9B6B8B9B6B8B9B6
        DA9500DA9500FFFFFFFFFFFFFFFFFFFFFFFFE9B73FE4A100E5A300E7A500E8A7
        00EAA900EBAB00EDAC00EEAE01EEB003EEB106EFB208EFB30AFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF3C647EFB209EFB106EEB004EEAF01EDAD00ECAB00
        EAA900E9A800E7A600E6A400E4A200E2A000FFFFFFFFFFFFFFFFFFFFFFFFE3AF
        3FDA9500C1B1A0B8B9B6B8B9B6B8B9B6DA9500DA9500FFFFFFFFFFFFFFFFFFFF
        FFFFEAB83FE4A200E6A400E8A600E9A800EBAA00ECAC00EDAE00EEB003EFB106
        EFB209EFB40BEFB50DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3C74AEFB4
        0CEFB30AEFB107EEB004EEAE01EDAD00EBAB00EAA900E8A700E6A500E5A300E3
        A100FFFFFFFFFFFFFFFFFFFFFFFFE3B03FDA9500C1B1A0B8B9B6B8B9B6B8B9B6
        DA9500DB9600FFFFFFFFFFFFFFFFFFFFFFFFEAB83FE5A300E7A500E8A700EAA9
        00ECAB00EDAD00EEAF02EEB106EFB209EFB40CEFB50EF0B611FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF3C84CF0B60FEFB40DEFB30AEFB106EEB003EDAE00
        ECAC00EBAA00E9A800E7A600E6A400E4A100FFFFFFFFFFFFFFFFFFFFFFFFE4B0
        3FDA9500C1B1A0B8B9B6B8B9B6B8B9B6DA9500DB9700FFFFFFFFFFFFFFFFFFFF
        FFFFEBB93FE6A400E7A600E9A800EBAA00EDAC00EEAE01EEB004EFB208EFB30B
        EFB50EF0B711F0B814FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3CA4FF0B7
        12F0B60FEFB40CEFB209EEB105EEAF02EDAD00EBAB00EAA900E8A600E6A400E4
        A200FFFFFFFFFFFFFFFFFFFFFFFFE4B13FDA9500C1B1A0B8B9B6B8B9B6B8B9B6
        DA9500DC9700FFFFFFFFFFFFFFFFFFFFFFFFEBB93FE6A400E8A700EAA900EBAB
        00EDAD00EEAF02EFB106EFB30AEFB50DF0B611F0B814F0B917FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF4CB51F0B815F0B711EFB50EEFB30BEFB107EEB003
        EDAE00ECAB00EAA900E8A700E7A500E5A300FFFFFFFFFFFFFFFFFFFFFFFFE5B1
        3FDA9500C1B1A0B8B9B6B8B9B6B8B9B6DA9500DC9700FFFFFFFFFFFFFFFFFFFF
        FFFFEBBA3FE7A500E8A700EAA900ECAC00FCF4DFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF4DFECAC00EBAA00E9A800E7A500E5
        A300FFFFFFFFFFFFFFFFFFFFFFFFE5B13FDA9600C1B1A0B8B9B6B8B9B6B8B9B6
        DA9500DC9800FFFFFFFFFFFFFFFFFFFFFFFFECBA3FE7A500E9A700EAAA00ECAC
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF1C13FEBAA00E9A800E7A600E6A400FFFFFFFFFFFFFFFFFFFFFFFFE5B2
        3FDB9600C1B1A0B8B9B6B8B9B6B8B9B6DA9500DC9800FFFFFFFFFFFFFFFFFFFF
        FFFFECBA3FE7A500E9A800EBAA00ECAC00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C13FEBAB00E9A800E8A600E6
        A400FFFFFFFFFFFFFFFFFFFFFFFFE5B23FDB9600C1B1A0B8B9B6B8B9B6B8B9B6
        DA9500DC9800FFFFFFFFFFFFFFFFFFFFFFFFECBA3FE7A500E9A800EBAA00ECAC
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF1C13FEBAB00E9A800E8A600E6A400FFFFFFFFFFFFFFFFFFFFFFFFE5B2
        3FDB9600C1B1A0B8B9B6B8B9B6B8B9B6DA9500DC9800FFFFFFFFFFFFFFFFFFFF
        FFFFECBA3FE7A500E9A700EAAA00ECAC00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C13FEBAA00E9A800E7A600E6
        A400FFFFFFFFFFFFFFFFFFFFFFFFE5B23FDB9600C1B1A0B8B9B6B8B9B6B8B9B6
        DA9500DC9700FFFFFFFFFFFFFFFFFFFFFFFFEBBA3FE7A500E8A700EAA900ECAC
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEDB10FEBAA00E9A800E7A500E5A300FFFFFFFFFFFFFFFFFFFFFFFFE5B1
        3FDA9600C1B1A0B8B9B6B8B9B6B8B9B6DA9500DC9700FFFFFFFFFFFFFFFFFFFF
        FFFFEBB93FE6A400E8A700EAA900EBAB00EFB71FF2C341F3C444F3C647F3C749
        F3C84CF3C94EF4CB51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D87CF3CA
        4FF3C94DF3C74AF3C648F3C545F2C342F0B820ECAC00EAA900E8A700E7A500E5
        A300FFFFFFFFFFFFFFFFFFFFFFFFE5B13FDA9500C1B1A0B8B9B6B8B9B6B8B9B6
        DA9500DB9700FFFFFFFFFFFFFFFFFFFFFFFFEBB93FE6A400E7A600E9A800EBAA
        00EDAC00EEAE01EEB004EFB208EFB30BEFB50EF0B711F0B814FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF3CA4FF0B712F0B60FEFB40CEFB209EEB105EEAF02
        EDAD00EBAB00EAA900E8A600E6A400E4A200FFFFFFFFFFFFFFFFFFFFFFFFE4B1
        3FDA9500C1B1A0B8B9B6B8B9B6B8B9B6DA9500DB9600FFFFFFFFFFFFFFFFFFFF
        FFFFEAB83FE5A300E7A500E8A700EAA900ECAB00EDAD00EEAF02EEB106EFB209
        EFB40CEFB50EF0B611FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3C94CF0B6
        0FEFB40DEFB30AEFB107EEB003EDAE00ECAC00EBAA00E9A800E7A600E6A400E4
        A100FFFFFFFFFFFFFFFFFFFFFFFFE4B03FDA9500C1B1A0B8B9B6B8B9B6B8B9B6
        DA9500DA9500FFFFFFFFFFFFFFFFFFFFFFFFEAB83FE4A200E6A400E8A600E9A8
        00EBAA00ECAC00EDAE00EEB003EFB106EFB209EFB40BEFB50DFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF3C74AEFB40CEFB30AEFB107EEB004EEAE01EDAD00
        EBAB00EAA900E8A700E7A500E5A300E3A100FFFFFFFFFFFFFFFFFFFFFFFFE3B0
        3FDA9500C1B1A0B8B9B6B8B9B6B8B9B6DA9500DA9500FFFFFFFFFFFFFFFFFFFF
        FFFFE9B73FE4A100E5A300E7A500E8A700EAA900EBAB00EDAD00EEAE01EEB003
        EEB106EFB208EFB30AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3C647EFB2
        09EFB106EEB004EEAF02EDAD00ECAB00EAA900E9A800E7A600E6A400E4A200E2
        A000FFFFFFFFFFFFFFFFFFFFFFFFE3AF3FDA9500C1B1A0B8B9B6B8B9B6B8B9B6
        DA9500DA9500FFFFFFFFFFFFFFFFFFFFFFFFE9B63FE3A000E4A200E6A400E7A6
        00E9A800EAA900ECAB00EDAD00EDAE01EEAF03EEB005EFB106FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF3C545EEB005EEAF03EEAE01EDAD00ECAC00EBAA00
        E9A800E8A600E6A400E5A300E3A100E29F00FFFFFFFFFFFFFFFFFFFFFFFFE3AF
        3FDA9500C1B1A0B8B9B6B8B9B6B8B9B6DA9500DA9500FFFFFFFFFFFFFFFFFFFF
        FFFFE8B63FE29F00E3A100E5A300E6A400E8A600E9A800EAA900EBAB00EDAC00
        EDAD00EEAE01EEAF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C342EEAF
        02EDAE00EDAD00ECAB00EBAA00E9A800E8A700E7A500E5A300E4A100E29F00E1
        9E00FFFFFFFFFFFFFFFFFFFFFFFFE3AF3FDA9500C1B1A0B8B9B6B8B9B6B8B9B6
        DA9500DA9500FFFFFFFFFFFFFFFFFFFFFFFFE7B53FE19E00E29F00E4A100E5A3
        00E6A500E8A600E9A800EAA900EBAA00ECAC00EDAC00EDAD00FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFEEB210EDAD00ECAC00EBAB00EAA900E9A800E8A700
        E7A500E6A300E4A200E3A000E19E00E09C00FFFFFFFFFFFFFFFFFFFFFFFFE3AF
        3FDA9500C1B1A0B8B9B6B8B9B6B8B9B6DA9500DA9500FFFFFFFFFFFFFFFFFFFF
        FFFFE6B43FE09C00E19E00E3A000E4A100E5A300E6A400E7A600E8A700E9A800
        EAAA00EBAA00ECAB00EEB61FF1C13FF1C13FF1C13FF1C13FEEB61FECAB00EBAB
        00EAAA00EAA900E9A800E8A600E7A500E6A300E4A200E3A000E29E00E09D00DF
        9B00FFFFFFFFFFFFFFFFFFFFFFFFE3AF3FDA9500C1B1A0B8B9B6B8B9B6B8B9B6
        DA9500DA9500FFFFFFFFFFFFFFFFFFFFFFFFE6B33FDF9B00E09D00E19E00E3A0
        00E4A100E5A300E6A400E7A500E8A600E9A700E9A800EAA900EAAA00EBAA00EB
        AA00EBAA00EBAA00EAAA00EAA900E9A800E9A800E8A700E7A600E6A400E5A300
        E4A200E3A000E29F00E09D00DF9B00DE9A00FFFFFFFFFFFFFFFFFFFFFFFFE3AF
        3FDA9500C1B1A0B8B9B6B8B9B6B8B9B6DA9500DA9500FFFFFFFFFFFFFFFFFFFF
        FFFFE5B23FDD9900DF9B00E09D00E19E00E29F00E3A100E4A200E5A300E6A400
        E7A500E8A600E8A700E9A700E9A800E9A800E9A800E9A800E9A700E8A700E8A6
        00E7A600E6A500E6A400E5A200E4A100E3A000E29E00E09D00DF9B00DE9A00DC
        9800FFFFFFFFFFFFFFFFFFFFFFFFE3AF3FDA9500C1B1A0B8B9B6B8B9B6B8B9B6
        DA9500DA9500FFFFFFFFFFFFFFFFFFFFFFFFE4B03FDC9800DD9900DF9B00E09C
        00E19E00E29F00E3A000E4A100E5A200E5A300E6A400E6A500E7A500E7A600E7
        A600E7A600E7A600E7A500E6A500E6A400E5A300E5A300E4A200E3A100E29F00
        E19E00E09D00DF9B00DE9A00DD9800E2AA2FFFFFFFFFFFFFFFFFFFFFFFFFE0A8
        2FDA9500BFB3A6B8B9B6B8B9B6B8B9B6DA9500DA9500FFFFFFFFFFFFFFFFFFFF
        FFFFF8EBCFDFA31FDC9800DD9900DE9A00DF9C00E09D00E19E00E29F00E3A000
        E4A100E4A200E5A200E5A300E5A300E5A300E6A300E5A300E5A300E5A300E4A2
        00E4A100E3A000E2A000E29F00E19D00E09C00DF9B00DE9A00DC9800E0A41FF8
        EBCFFFFFFFFFFFFFFFFFFFFFFFFFDA9500DA9500B8B9B6B8B9B6B8B9B6B8B9B6
        D49D55DA9500F3DDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3DDAFDA95
        00D49D55B8B9B6B8B9B6B8B9B6B8B9B6C7AB8DDA9500E0A82FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE0A82FDA9500C7AB8DB8B9B6B8B9B6B8B9B6B8B9B6
        BAB7B1D69A47DA9500E7BC5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BC5FDA9500D69A
        47BAB7B1B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6BFB3A6D89834DA9500E3AF3FF5
        E4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF5E4BFE3AF3FDA9500D89834BFB3A6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6BFB3A6D89834DA9500DA9500DEA21FE3AF3FE3AF3FE3AF3FE3AF
        3FE3AF3FE3AF3FE3AF3FE3AF3FE3B03FE4B03FE4B13FE4B13FE5B13FE5B13FE5
        B23FE5B23FE5B13FE5B13FE4B13FE4B13FE4B03FE3B03FE3AF3FE3AF3FE3AF3F
        E3AF3FE3AF3FE3AF3FE3AF3FE3AF3FDEA21FDA9500DA9500D89834BFB3A6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6BAB7B1CAA885D6
        9A47DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500
        DA9500DA9500DA9500DA9500DA9600DB9600DB9600DA9600DA9500DA9500DA95
        00DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA
        9500D89834CAA885BAB7B1B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6BFB3A6C1B1A0C1B1A0C1B1A0C1B1
        A0C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0C1
        B1A0C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0
        C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0BFB3A6B8B9B6B8B9B6B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8
        B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8
        B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8
        B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8
        B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8
        B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6}
      OnClick = ovSB_InserirClick
    end
    object ovSB_Excluir: TSpeedButton
      Left = 720
      Top = 461
      Width = 110
      Height = 65
      Caption = 'Excluir'
      Glyph.Data = {
        361B0000424D361B000000000000360000002800000030000000300000000100
        180000000000001B0000C40E0000C40E00000000000000000000B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6C3AF9AD69A47DA9500DA9500DA9500DA95
        00DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA
        9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500
        DA9500DA9500DA9500DA9500DA9500D69A47C3AF9AB8B9B6B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6C3AF9ADA
        9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500
        DA9500DA9500DA9500DA9500DA9500DA9600DA9600DA9500DA9500DA9500DA95
        00DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500DA
        9500DA9500C3AF9AB8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6B8B9B6D69A47DA9500ECCA7FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECCA7FDA9500D69A47B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6BCB5ACDA9500DC
        9B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFDEA21FDA9500B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6C1B1A0DA9500E3AF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3AF3FDA9500B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6C1B1A0DA9500E3
        AF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE3AF3FDA9500B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6C1B1A0DA9500E3AF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF9ECCFE9BB4FEABC4FF9ECCFFFFFFFFFFFFFFFFFFFFFFFFFFAEDCFEC
        BF4FECBF4FFAEDCFFFFFFFFFFFFFFFFFFFFFFFFFF9EDCFEABC4FEABB4FF9ECCF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3AF3FDA9500B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6C1B1A0DA9500E3
        AF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEABC4FE19E00E29F00ECBE4F
        FFFFFFFFFFFFFFFFFFFFFFFFEDC04FE6A400E6A400EDC04FFFFFFFFFFFFFFFFF
        FFFFFFFFECBE4FE2A000E19E00EABC4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE3AF3FDA9500B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6C1B1A0DA9500E3AF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFE29F00E3A000E4A100E6A80FFFFFFFFFFFFFFFFFFFFFFFFFE7A600E8
        A600E8A600E9AB0FFFFFFFFFFFFFFFFFFFFFFFFFE5A300E4A200E3A100E4A50F
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3AF3FDA9500B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6C1B1A0DA9500E3
        AF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3A100E4A200E5A300E6A500
        FFFFFFFFFFFFFFFFFFFFFFFFE9A800E9A800E9A800E9A800FFFFFFFFFFFFFFFF
        FFFFFFFFE7A500E6A400E5A200E4A100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE3B03FDA9500B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6C1B1A0DA9500E4B03FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFE5A300E6A400E7A500E8A700FFFFFFFFFFFFFFFFFFFFFFFFEBAA00EB
        AB00EBAB00EBAB00FFFFFFFFFFFFFFFFFFFFFFFFE8A700E7A600E6A400E5A300
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4B13FDA9500B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6C1B1A0DB9600E5
        B13FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6A400E8A600E9A700EAA900
        FFFFFFFFFFFFFFFFFFFFFFFFEDAD00EDAD00EDAD00EDAD00FFFFFFFFFFFFFFFF
        FFFFFFFFEAA900E9A800E8A600E7A500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE5B23FDB9600B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6C1B1A0DC9700E5B23FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFE8A600E9A800EAA900EBAB00FFFFFFFFFFFFFFFFFFFFFFFFEEAF02EE
        AF03EEAF03EEAF02FFFFFFFFFFFFFFFFFFFFFFFFEBAB00EAAA00E9A800E8A700
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6B33FDC9800B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6C1B2A0DC9800E6
        B33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9A800EAAA00ECAB00EDAD00
        FFFFFFFFFFFFFFFFFFFFFFFFEFB106EFB106EFB107EFB106FFFFFFFFFFFFFFFF
        FFFFFFFFEDAD00ECAB00EBAA00E9A800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE6B43FDD9900B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6C1B2A0DD9900E7B43FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFEAA900ECAB00EDAD00EEAE01FFFFFFFFFFFFFFFFFFFFFFFFEFB30AEF
        B30BEFB30BEFB30AFFFFFFFFFFFFFFFFFFFFFFFFEEAF02EDAD00ECAC00EBAA00
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7B43FDE9A00B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6C2B2A0DE9A00E7
        B53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAB00EDAD00EEAE01EEB004
        FFFFFFFFFFFFFFFFFFFFFFFFEFB50EF0B50FF0B50FEFB50EFFFFFFFFFFFFFFFF
        FFFFFFFFEEB005EEAF02EDAD00ECAB00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE8B53FDE9B00B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6C2B2A0DF9B00E8B53FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFECAC00EDAE00EEB004EFB107FFFFFFFFFFFFFFFFFFFFFFFFF0B712F0
        B713F0B813F0B712FFFFFFFFFFFFFFFFFFFFFFFFEFB207EEB004EEAE01EDAD00
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8B63FDF9B00B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6C2B2A0DF9C00E8
        B63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDAD00EEAF02EEB106EFB309
        FFFFFFFFFFFFFFFFFFFFFFFFF0B916F0B917F0B917F0B916FFFFFFFFFFFFFFFF
        FFFFFFFFEFB30AEFB107EEAF03EDAE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE8B63FE09C00B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6C2B2A0E09C00E9B63FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFEEAE01EEB004EFB208EFB40CFFFFFFFFFFFFFFFFFFFFFFFFF1BB1AF1
        BB1BF1BC1BF1BB1AFFFFFFFFFFFFFFFFFFFFFFFFEFB40CEFB209EEB005EEAF02
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9B73FE09D00B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6C2B2A0E09D00E9
        B73FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEAF02EFB106EFB30AEFB50D
        FFFFFFFFFFFFFFFFFFFFFFFFF1BD1DF1BD1FF1BE1FF1BD1EFFFFFFFFFFFFFFFF
        FFFFFFFFEFB50EEFB30BEFB107EEAF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9B73FE09D00B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6C2B3A0E09D00E9B73FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFEEAF03EFB107EFB30BF0B50FFFFFFFFFFFFFFFFFFFFFFFFFF2BE20F2
        BF23F2BF23F2BF21FFFFFFFFFFFFFFFFFFFFFFFFF0B610EFB40CEFB208EEB004
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9B73FE19E00B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6C3B3A0E19D00E9
        B73FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEB004EFB207EFB40CF0B610
        FFFFFFFFFFFFFFFFFFFFFFFFF2C023F2C126F2C126F2C024FFFFFFFFFFFFFFFF
        FFFFFFFFF0B611EFB40DEFB208EEB004FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9B83FE19E00B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6C3B3A0E19D00E9B73FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFEEB004EFB208EFB40CF0B610FFFFFFFFFFFFFFFFFFFFFFFFF2C024F2
        C228F3C229F2C125FFFFFFFFFFFFFFFFFFFFFFFFF0B611EFB40DEFB209EEB005
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAB83FE19E00B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6C3B3A0E19D00E9
        B73FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3C852EFB207EFB40CF4CC5A
        FFFFFFFFFFFFFFFFFFFFFFFFF6D368F2C125F2C126F6D468FFFFFFFFFFFFFFFF
        FFFFFFFFF4CD5AEFB40CEFB208F3C953FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9B73FE19E00B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6C2B3A0E09D00E9B73FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFBF0D0F2C035F3C648FCF1D1FFFFFFFFFFFFFFFFFFFFFFFFFCF3D5F4
        CB4BF5CF59FCF3D5FFFFFFFFFFFFFFFFFFFFFFFFFCF1D2F2C239F3C546FCF0D0
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9B73FE19E00B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6C2B2A0E09D00E9
        B73FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9B73FE09D00B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6C2B2A0E09C00E8B63FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9B73FE09D00B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6C2B2A0DF9B00E8
        B63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE8B63FDF9C00B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6CCA77DDD9900DF9B00E2A30FE9B73FEAB93FECBA3FEDBC3FEEBD
        3FEFBF3FF1C03FF2C240F2C342F3C444F3C546F3C648F3C74AF3C84BF3C84CF3
        C94DF3C94DF3C84CF3C84BF3C74AF3C648F3C547F3C444F2C342F2C240F1C13F
        F0BF3FEEBE3FEDBC3FECBA3FEBB93FE9B73FE3A30FDF9B00DD9900CBA985B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6BCB5ACDA9600DC9800DE9A00E0
        9C00E19E00E3A000E5A300E6A500E8A700E9A900EBAA00EDAC00EDAE01EEB003
        EEB106EFB208EFB30AEFB40CEFB40DEFB50EEFB50EEFB50DEFB40CEFB30BEFB2
        09EFB106EEB004EEAE01EDAD00EBAB00EAA900E8A700E7A500E5A300E3A100E2
        9F00E09D00DE9A00DD9800DB9600B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6C1B1A0DA9500E4B13FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4B13FDA9500B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6C1B1A0DA9500E3B03FFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE4B03FDA9500B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6C1B1A0DA9500E3AF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3AF3FDA9500B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6C1B1A0DA9500E3AF3FFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE3AF3FDA9500B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6C1B1A0DA9500E3AF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3AF3FDA9500B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6C1B1A0DA9500E3AF3FFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE3AF3FDA9500B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6BCB5ACDA9500DEA21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC9B0FDA9500B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6D69A47DA9500F1D79FFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF1D79FDA9500D69A47B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6C3AF9ADA9500DA9500DEA21FE3AF3FE3AF3FE3AF3FE4B03FE5B1
        3FE5B23FE6B33FE7B43FE8B53FE8B63FE9B63FE9B73FE9B73FEAB83FEAB83FEA
        B83FEAB83FEAB83FEAB83FE9B73FE9B73FE9B63FE8B63FE8B53FE7B43FE6B33F
        E6B33FE5B23FE4B13FE3AF3FE3AF3FE3AF3FDEA21FDA9500DA9500C3AF9AB8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6C3AF9AD69A47DA
        9500DA9500DA9500DA9500DA9500DB9600DC9700DD9900DE9A00DE9B00DF9B00
        E09C00E09D00E19D00E19E00E19E00E29E00E29E00E19E00E19E00E19E00E09D
        00E09C00DF9C00DE9B00DE9A00DD9900DC9800DB9600DA9500DA9500DA9500DA
        9500DA9500D69A47C3AF9AB8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6BCB5ACC1B1A0C1B1A0C1B1A0C1B1A0C1B1
        A0C8AB8DDB9600E4B13FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5B13FDB9700
        C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0BCB5ACB8B9B6B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8
        B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6BCB5ACDA9500DFA21FFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDC9C0FDA9500B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8
        B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9
        B6B8B9B6D69A47DA9500F1D79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D79FDA9500D69A47
        B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8
        B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6C3AF9ADA9500DA9500DEA21F
        E3AF3FE3AF3FE3AF3FE3AF3FE3AF3FE3AF3FE3AF3FE3AF3FE3AF3FE3AF3FE3AF
        3FE3AF3FDEA21FDA9500DA9500C3AF9AB8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8
        B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6C3AF9AD69A47DA9500DA9500DA9500DA9500DA9500DA9500DA
        9500DA9500DA9500DA9500DA9500DA9500DA9500DA9500D69A47C3AF9AB8B9B6
        B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8
        B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6BCB5AC
        C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0C1B1A0C1B1
        A0C1B1A0BCB5ACB8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8
        B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8
        B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8
        B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6
        B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9
        B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8
        B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6B8B9B6}
      OnClick = ovSB_ExcluirClick
    end
    object ListaProdutos: TListView
      Left = 23
      Top = 48
      Width = 378
      Height = 401
      Columns = <
        item
          Caption = 'Id'
        end
        item
          AutoSize = True
          Caption = 'Nome'
        end
        item
          Alignment = taRightJustify
          Caption = 'Pre'#231'o'
          Width = 100
        end>
      TabOrder = 0
      ViewStyle = vsReport
      OnDblClick = ListaProdutosDblClick
    end
    object ListaCarrinho: TListView
      Left = 429
      Top = 48
      Width = 401
      Height = 401
      Columns = <
        item
          Caption = 'Id'
        end
        item
          AutoSize = True
          Caption = 'Nome'
        end
        item
          Caption = 'Quantidade'
          Width = 80
        end
        item
          Caption = 'Valor total'
          Width = 80
        end>
      TabOrder = 1
      ViewStyle = vsReport
    end
    object ovE_ValorTotal: TEdit
      Left = 456
      Top = 491
      Width = 121
      Height = 21
      Alignment = taRightJustify
      Enabled = False
      TabOrder = 2
      Text = '0.00'
    end
    object ovE_Quantidade: TEdit
      Left = 23
      Top = 491
      Width = 121
      Height = 21
      Alignment = taRightJustify
      TabOrder = 3
      Text = '1'
      OnKeyPress = ovE_QuantidadeKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 860
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    Color = clHighlight
    ParentBackground = False
    TabOrder = 1
    object ovL_Titulo: TLabel
      Left = 23
      Top = 20
      Width = 252
      Height = 30
      Caption = 'Lan'#231'amento de Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 30
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
end