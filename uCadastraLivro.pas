unit uCadastraLivro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastraPai, StdCtrls, uLivro, uConsultaEditora, uConsultaAutor,
  uControllerLivro, uControllerAutor, uControllerEditora, uEditora;

type
  TCadastraLivro = class(TCadastraPai)
    edt_Titulo: TEdit;
    lbl_Titulo: TLabel;
    edt_Autor: TEdit;
    btn_PesquisaAutor: TButton;
    edt_Editora: TEdit;
    btn_PesquisaEditora: TButton;
    lbl_Autor: TLabel;
    lbl_Editora: TLabel;
    edt_CodAutor: TEdit;
    edt_CodEditora: TEdit;
    lbl_CodigoAutor: TLabel;
    lbl_CodigoEditora: TLabel;
    procedure btn_PesquisaAutorClick(Sender: TObject);
    procedure btn_PesquisaEditoraClick(Sender: TObject);
  private
    { Private declarations }
       umLivro : Livro;
       umaEditora : Editora;
       umConsultaAutor : TConsultaAutor;
       umConsultaEditora : TConsultaEditora;
       umaCtrlEditora : ControllerEditora;
       umaCtrlLivro : ControllerLivro;
       umCtrlAutor : ControllerAutor;
  public
    { Public declarations }
       procedure conhecaObj(pObj : Tobject; pCtrl : TObject); override;
       procedure salvar;                     override;
       procedure sair;                       override;
       procedure carregaEdit;                override;
       procedure bloqueiaEdit;               override;
       procedure limpaEdit;                  override;
       procedure desbloqueiaEdit;            override;
       procedure setConsultaEditora (pObj : TObject);
       procedure setConsultaAutor (pObj : TObject);
  end;

var
  CadastraLivro: TCadastraLivro;

implementation

{$R *.dfm}

{ TCadastraLivro }

procedure TCadastraLivro.bloqueiaEdit;
begin
  inherited;
    self.edt_Codigo.Enabled := false;
    self.edt_Editora.Enabled := false;
    self.edt_Titulo.Enabled := false;
    self.edt_Autor.Enabled := false;
    self.edt_CodAutor.Enabled := false;
    self.edt_CodEditora.Enabled := false;
end;

procedure TCadastraLivro.carregaEdit;
begin
  inherited;
    self.edt_Codigo.Text := inttostr(umLivro.getCodigo);
    self.edt_CodAutor.Text := inttostr(umLivro.getAutor.getCodigo);
    self.edt_CodEditora.Text := inttostr(umLivro.getEditora.getCodigo);
    self.edt_Titulo.Text := umLivro.getTitulo;
    self.edt_Editora.Text := umLivro.getEditora.getRazaoSocial;
    self.edt_Autor.Text := umLivro.getAutor.getNome;
end;

procedure TCadastraLivro.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
     umLivro := Livro(pObj);
     umaCtrlLivro := ControllerLivro(pCtrl);
end;

procedure TCadastraLivro.desbloqueiaEdit;
begin
  inherited;
     self.edt_Codigo.Enabled := true;
     self.edt_Titulo.Enabled := true;
     self.edt_CodAutor.Enabled := true;
     self.edt_CodEditora.Enabled := true;
     self.edt_Autor.Enabled := true;
     self.edt_Editora.Enabled := true;
end;

procedure TCadastraLivro.limpaEdit;
begin
  inherited;
      self.edt_Codigo.Clear;
      self.edt_Titulo.Clear;
      self.edt_Autor.Clear;
      self.edt_Editora.Clear;
      self.edt_CodAutor.Clear;
      self.edt_CodEditora.Clear;
end;

procedure TCadastraLivro.sair;
begin
  inherited;

end;

procedure TCadastraLivro.salvar;
begin
  inherited;
    umLivro.setCodigo(strtoint(self.edt_Codigo.Text));

    umLivro.getAutor.setCodigo(strtoint(self.edt_CodAutor.Text));
    umLivro.getEditora.setCodigo(strtoint(self.edt_CodEditora.Text));

    umLivro.setTitulo(self.edt_Titulo.Text);
    umLivro.getAutor.setNome(self.edt_Autor.Text);
    umLivro.getEditora.setRazaoSocial(self.edt_Editora.Text);
end;

procedure TCadastraLivro.setConsultaAutor(pObj: TObject);
begin
   umConsultaAutor := TConsultaAutor(pObj);
end;

procedure TCadastraLivro.setConsultaEditora(pObj: TObject);
begin
   umConsultaEditora := TConsultaEditora(pObj);
end;

procedure TCadastraLivro.btn_PesquisaAutorClick(Sender: TObject);
var
  aux : string;
begin
  inherited;
    umConsultaAutor.conhecaObj(umLivro.getAutor, umCtrlAutor);
    aux := umConsultaAutor.btn_Sair.Caption;
    umConsultaAutor.btn_Sair.Caption := 'Selecionar';
    umConsultaAutor.showModal;
    umConsultaAutor.btn_Sair.Caption := aux;
    self.edt_CodAutor.Text := inttostr(umLivro.getAutor.getCodigo);
    self.edt_Autor.Text := umLivro.getAutor.getNome;
end;

procedure TCadastraLivro.btn_PesquisaEditoraClick(Sender: TObject);
var
  aux : string;
begin
  inherited;
    umConsultaEditora.conhecaObj(umLivro.getEditora, umaCtrlEditora);
    aux := umConsultaEditora.btn_Sair.Caption;
    umConsultaEditora.btn_Sair.Caption := 'Selecionar';
    umConsultaEditora.ShowModal;
    umConsultaEditora.btn_Sair.Caption := aux;
    self.edt_CodEditora.Text := inttostr(umLivro.getEditora.getCodigo);
    self.edt_Editora.Text := umLivro.getEditora.getRazaoSocial;
end;

end.
