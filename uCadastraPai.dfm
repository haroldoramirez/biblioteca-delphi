object CadastraPai: TCadastraPai
  Left = 229
  Top = 128
  Width = 618
  Height = 471
  Caption = 'Cadastra'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_Codigo: TLabel
    Left = 48
    Top = 40
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object edt_Codigo: TEdit
    Left = 48
    Top = 56
    Width = 385
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object btn_Salvar: TButton
    Left = 376
    Top = 384
    Width = 75
    Height = 25
    Caption = '&Salvar'
    TabOrder = 1
  end
  object btn_Sair: TButton
    Left = 480
    Top = 384
    Width = 75
    Height = 25
    Caption = 'S&air'
    TabOrder = 2
    OnClick = btn_SairClick
  end
end
