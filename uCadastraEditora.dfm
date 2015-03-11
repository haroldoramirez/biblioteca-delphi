inherited CadastraEditora: TCadastraEditora
  Left = 394
  Top = 148
  Width = 406
  Height = 353
  Caption = 'CadastraEditora'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbl_Codigo: TLabel
    Left = 32
  end
  object lbl_RazaoSocial: TLabel [1]
    Left = 32
    Top = 87
    Width = 63
    Height = 13
    Caption = 'Raz'#227'o Social'
  end
  object lbl_Fantasia: TLabel [2]
    Left = 32
    Top = 138
    Width = 71
    Height = 13
    Caption = 'Nome Fantasia'
  end
  object lbl_Cnpj: TLabel [3]
    Left = 32
    Top = 190
    Width = 27
    Height = 13
    Caption = 'CNPJ'
  end
  inherited edt_Codigo: TEdit
    Left = 32
    Width = 57
  end
  inherited btn_Salvar: TButton
    Left = 184
    Top = 272
    OnClick = btn_SalvarClick
  end
  inherited btn_Sair: TButton
    Left = 288
    Top = 272
  end
  object edt_RazaoSocial: TEdit
    Left = 32
    Top = 103
    Width = 273
    Height = 21
    TabOrder = 3
    OnExit = edt_RazaoSocialExit
  end
  object edt_Fantasia: TEdit
    Left = 32
    Top = 154
    Width = 193
    Height = 21
    TabOrder = 4
  end
  object edt_Cnpj: TEdit
    Left = 32
    Top = 205
    Width = 121
    Height = 21
    TabOrder = 5
  end
end
