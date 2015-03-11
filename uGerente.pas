unit uGerente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, uInter, uLivro, uAutor, uAluno,
    uEditora, uControllerEditora, uControllerLivro,
     uControllerAluno, uControllerAutor, uPais, uControllerPais,
      uDM, uEstado, uControllerEstado, uCidade, uControllerCidade;

type
  TGerente = class(TForm)
    MainMenu: TMainMenu;
    Cadastros: TMenuItem;
    Aluno: TMenuItem;
    Autor: TMenuItem;
    Editora: TMenuItem;
    Livro: TMenuItem;
    Espaco: TMenuItem;
    Sair: TMenuItem;
    Pais: TMenuItem;
    Estado: TMenuItem;
    Cidade: TMenuItem;
    N1: TMenuItem;
    procedure SairClick(Sender: TObject);
    procedure AlunoClick(Sender: TObject);
    procedure AutorClick(Sender: TObject);
    procedure EditoraClick(Sender: TObject);
    procedure LivroClick(Sender: TObject);
    procedure PaisClick(Sender: TObject);
    procedure EstadoClick(Sender: TObject);
    procedure CidadeClick(Sender: TObject);
  private
    { Private declarations }
        umInter : interfaces;
        umLivro : livro;
        umAutor : autor;
        umAluno : aluno;
        umPais : pais;
        umEstado : Estado;
        umaCidade : Cidade;
        umaEditora : editora;
        umaCtrlEditora : ControllerEditora;
        umaCtrlLivro : ControllerLivro;
        umaCtrlAluno : ControllerAluno;
        umCtrlAutor : ControllerAutor;
        umCtrlPais : ControllerPais;
        umCtrlEstado : ControllerEstado;
        umCtrlCidade : ControllerCidade;
        umDM : TDM;
  public
    { Public declarations }
        procedure conhecaObj(pInter : interfaces; pDM: TDM; pLivro : livro; pAutor : autor;
                          pAluno : aluno; pEditora : editora; pPais : pais; pEstado : estado; pCidade : Cidade);
end;

var
  Gerente: TGerente;

implementation

{$R *.dfm}

procedure TGerente.conhecaObj(pInter: interfaces; pDM : TDM; pLivro: livro;
  pAutor: autor; pAluno: aluno; pEditora: editora; pPais : pais; pEstado : estado; pCidade : Cidade);
begin
      umInter := pInter;
      umLivro := pLivro;
      umAutor := pAutor;
      umAluno := pAluno;
      umaEditora := pEditora;
      umPais := pPais;
      umEstado := pEstado;
      umaCidade := pCidade;

      umaCtrlEditora := ControllerEditora.crieObj;
      umaCtrlLivro := ControllerLivro.crieObj;
      umaCtrlAluno := ControllerAluno.crieObj;
      umCtrlAutor := ControllerAutor.crieObj;
      umCtrlPais := ControllerPais.crieObj;
      umCtrlEstado := ControllerEstado.crieObj;
      umCtrlCidade := ControllerCidade.crieObj;

      umDM := TDM.Create(nil);
      umaCtrlEditora.setDM(umDM);
      umCtrlPais.setDM(umDM);
      umCtrlEstado.setDM(umDM);
      umCtrlCidade.setDM(umDM);
      umaCtrlLivro.setDM(umDm);
      umaCtrlAluno.setDM(umDm);
      umCtrlAutor.setDM(umDm);

end;

procedure TGerente.SairClick(Sender: TObject);
begin
    close;
end;

procedure TGerente.AlunoClick(Sender: TObject);
begin
    umInter.MostraConsultaAluno(umAluno, umaCtrlAluno);
end;

procedure TGerente.AutorClick(Sender: TObject);
begin
    umInter.MostraConsultaAutor(umAutor, umCtrlAutor);
end;

procedure TGerente.EditoraClick(Sender: TObject);
begin
    umInter.MostraConsultaEditora(umaEditora, umaCtrlEditora);
end;

procedure TGerente.LivroClick(Sender: TObject);
begin
    umInter.MostraConsultaLivros(umLivro, umaCtrlLivro);
end;

procedure TGerente.PaisClick(Sender: TObject);
begin
    umInter.MostraConsultaPais(umPais, umCtrlPais);
end;

procedure TGerente.EstadoClick(Sender: TObject);
begin
    umInter.MostraConsultaEstado(umEstado, umCtrlEstado);
end;

procedure TGerente.CidadeClick(Sender: TObject);
begin
    umInter.MostraConsultaCidade(umaCidade, umCtrlCidade);
end;

end.
