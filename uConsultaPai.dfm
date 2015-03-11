object ConsultaPai: TConsultaPai
  Left = 370
  Top = 179
  Width = 641
  Height = 484
  Caption = 'Consulta'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edt_Pesquisar: TEdit
    Left = 32
    Top = 40
    Width = 465
    Height = 21
    TabOrder = 0
  end
  object btn_Pesquisar: TButton
    Left = 515
    Top = 37
    Width = 75
    Height = 25
    Caption = '&Pesquisar'
    TabOrder = 1
    OnClick = btn_PesquisarClick
  end
  object btn_Novo: TButton
    Left = 214
    Top = 400
    Width = 75
    Height = 25
    Caption = '&Novo'
    TabOrder = 2
    OnClick = btn_NovoClick
  end
  object btn_Editar: TButton
    Left = 317
    Top = 400
    Width = 75
    Height = 25
    Caption = '&Editar'
    TabOrder = 3
    OnClick = btn_EditarClick
  end
  object btn_Excluir: TButton
    Left = 422
    Top = 400
    Width = 75
    Height = 25
    Caption = 'E&xcluir'
    TabOrder = 4
    OnClick = btn_ExcluirClick
  end
  object btn_Sair: TButton
    Left = 520
    Top = 400
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 5
    OnClick = btn_SairClick
  end
  object DBGrid: TDBGrid
    Left = 32
    Top = 80
    Width = 561
    Height = 305
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
