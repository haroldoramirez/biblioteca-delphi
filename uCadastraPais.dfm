inherited CadastraPais: TCadastraPais
  Left = 452
  Top = 210
  Width = 281
  Height = 295
  Caption = 'CadastraPais'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbl_Codigo: TLabel
    Left = 24
    Top = 32
  end
  object lbl_Descricao: TLabel [1]
    Left = 24
    Top = 88
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object lbl_Ddi: TLabel [2]
    Left = 24
    Top = 144
    Width = 19
    Height = 13
    Caption = 'DDI'
  end
  inherited edt_Codigo: TEdit
    Left = 24
    Top = 48
    Width = 49
  end
  inherited btn_Salvar: TButton
    Left = 64
    Top = 216
    OnClick = btn_SalvarClick
  end
  inherited btn_Sair: TButton
    Left = 160
    Top = 216
  end
  object edt_Descricao: TEdit
    Left = 24
    Top = 104
    Width = 217
    Height = 21
    TabOrder = 3
  end
  object edt_Ddi: TEdit
    Left = 24
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 4
  end
end
