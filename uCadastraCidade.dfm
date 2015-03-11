inherited CadastraCidade: TCadastraCidade
  Left = 862
  Top = 173
  Width = 297
  Height = 352
  Caption = 'CadastraCidade'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbl_Codigo: TLabel
    Left = 32
    Top = 24
  end
  object lbl_Descricao: TLabel [1]
    Left = 32
    Top = 88
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object lbl_Ddd: TLabel [2]
    Left = 32
    Top = 144
    Width = 24
    Height = 13
    Caption = 'DDD'
  end
  object lbl_Estado: TLabel [3]
    Left = 32
    Top = 208
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  inherited edt_Codigo: TEdit
    Left = 32
    Top = 40
    Width = 65
  end
  inherited btn_Salvar: TButton
    Left = 88
    Top = 272
    OnClick = btn_SalvarClick
  end
  inherited btn_Sair: TButton
    Left = 184
    Top = 272
  end
  object edt_Estado: TEdit
    Left = 32
    Top = 224
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edt_Descricao: TEdit
    Left = 32
    Top = 104
    Width = 225
    Height = 21
    TabOrder = 4
  end
  object edt_Ddd: TEdit
    Left = 32
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 5
  end
end
