unit uConsultaAluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uConsultaPai, ComCtrls, StdCtrls, Grids, DBGrids,
  uAluno, uCadastraAluno, uControllerAluno;

type
  TConsultaAluno = class(TConsultaPai)
  private
    { Private declarations }
    umCadastraAluno : TCadastraAluno;
    umAluno : Aluno;
    umCtrlAluno : ControllerAluno;
  public
    { Public declarations }
      procedure Novo;    override;
      procedure Alterar; override;
      procedure Excluir; override;
      procedure Sair;    override;
      procedure pesquisa; override;
      procedure setCadastro (pObj : TObject); override;
      procedure conhecaObj (pObj : TObject; pCtrl : TObject);  override;
  end;

var
  ConsultaAluno: TConsultaAluno;

implementation

{$R *.dfm}

{ TConsultaAluno }

procedure TConsultaAluno.Alterar;
begin
  inherited;
  umCadastraAluno.conhecaObj(umAluno, umCtrlAluno);
  umCadastraAluno.desbloqueiaEdit;
  umCadastraAluno.limpaEdit;
  umCadastraAluno.carregaEdit;
  umCadastraAluno.btn_Salvar.Caption := 'Salvar';
  umCadastraAluno.ShowModal;
end;

procedure TConsultaAluno.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umAluno := Aluno(pObj);
  umCtrlAluno := ControllerAluno(pCtrl);
  self.DBGrid.DataSource := umCtrlAluno.getDS;
end;

procedure TConsultaAluno.Excluir;
begin
  inherited;
  umCadastraAluno.conhecaObj(umAluno, umCtrlAluno);
  umCadastraAluno.limpaEdit;
  umCadastraAluno.carregaEdit;
  umCadastraAluno.bloqueiaEdit;
  umCadastraAluno.btn_Salvar.Caption := 'Excluir';
  umCadastraAluno.ShowModal;
end;

procedure TConsultaAluno.Novo;
begin
  inherited;
    umCadastraAluno.conhecaObj(umAluno, umCtrlAluno);
    umCadastraAluno.limpaEdit;
    umCadastraAluno.desbloqueiaEdit;
    umCadastraAluno.btn_Salvar.Caption := 'Salvar';
    umCadastraAluno.ShowModal;
end;

procedure TConsultaAluno.pesquisa;
begin
  inherited;

end;

procedure TConsultaAluno.Sair;
begin
  inherited;

end;

procedure TConsultaAluno.setCadastro(pObj: TObject);
begin
  inherited;
  umCadastraAluno := TCadastraAluno(pObj);
end;

end.
