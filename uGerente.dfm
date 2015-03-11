object Gerente: TGerente
  Left = 310
  Top = 142
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Sistema Biblioteca'
  ClientHeight = 429
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Consolas'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu: TMainMenu
    Left = 16
    Top = 16
    object Cadastros: TMenuItem
      Caption = 'Cadastro'
      object Pais: TMenuItem
        Caption = 'Pais'
        OnClick = PaisClick
      end
      object Estado: TMenuItem
        Caption = 'E&stado'
        OnClick = EstadoClick
      end
      object Cidade: TMenuItem
        Caption = 'Cidade'
        OnClick = CidadeClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Aluno: TMenuItem
        Caption = '&Aluno'
        OnClick = AlunoClick
      end
      object Autor: TMenuItem
        Caption = 'A&utor'
        OnClick = AutorClick
      end
      object Editora: TMenuItem
        Caption = '&Editora'
        OnClick = EditoraClick
      end
      object Livro: TMenuItem
        Caption = '&Livro'
        OnClick = LivroClick
      end
      object Espaco: TMenuItem
        Caption = '-'
      end
      object Sair: TMenuItem
        Caption = '&Sair'
        OnClick = SairClick
      end
    end
  end
end
