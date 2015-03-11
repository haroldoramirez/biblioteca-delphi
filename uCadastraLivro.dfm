inherited CadastraLivro: TCadastraLivro
  Left = 417
  Top = 164
  Width = 500
  Height = 373
  Caption = 'CadastraLivro'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbl_Codigo: TLabel
    Left = 32
    Top = 24
  end
  object lbl_Titulo: TLabel [1]
    Left = 32
    Top = 88
    Width = 28
    Height = 13
    Caption = 'T'#237'tulo'
  end
  object lbl_Autor: TLabel [2]
    Left = 112
    Top = 152
    Width = 25
    Height = 13
    Caption = 'Autor'
  end
  object lbl_Editora: TLabel [3]
    Left = 112
    Top = 216
    Width = 33
    Height = 13
    Caption = 'Editora'
  end
  object lbl_CodigoAutor: TLabel [4]
    Left = 32
    Top = 152
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object lbl_CodigoEditora: TLabel [5]
    Left = 32
    Top = 216
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  inherited edt_Codigo: TEdit
    Left = 32
    Top = 40
    Width = 57
  end
  inherited btn_Salvar: TButton
    Left = 280
    Top = 288
  end
  inherited btn_Sair: TButton
    Left = 384
    Top = 288
  end
  object edt_Titulo: TEdit
    Left = 32
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edt_Autor: TEdit
    Left = 112
    Top = 168
    Width = 265
    Height = 21
    TabOrder = 4
  end
  object btn_PesquisaAutor: TButton
    Left = 384
    Top = 165
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 5
    OnClick = btn_PesquisaAutorClick
  end
  object edt_Editora: TEdit
    Left = 112
    Top = 232
    Width = 265
    Height = 21
    TabOrder = 6
  end
  object btn_PesquisaEditora: TButton
    Left = 384
    Top = 230
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 7
    OnClick = btn_PesquisaEditoraClick
  end
  object edt_CodAutor: TEdit
    Left = 32
    Top = 168
    Width = 57
    Height = 21
    TabOrder = 8
  end
  object edt_CodEditora: TEdit
    Left = 32
    Top = 232
    Width = 57
    Height = 21
    TabOrder = 9
  end
end
