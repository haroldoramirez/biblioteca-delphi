unit uDaoAluno;

interface
  uses
    uDao, uAluno, SysUtils, uDM, DB;

    type DaoAluno = class(Dao)

      private

      protected
          umDM : TDM;
      public
            constructor crieObj; override;
            destructor destrua_se; override;
            function salvar (pObj : TObject):  string; override;
            function excluir (pObj : TObject): string; override;
            function pesquisar (pObj : TObject; quero : boolean): string; override;
            function getDS : TDataSource;  override;
            procedure setDM( pDM : TDM); override;
            procedure IniciaTrans; override;
            function FimTrans : String; override;
            procedure carrega(pObj : TObject); override;
            function pesquisa(pSql : string): string; override;
    end;

implementation


{ DaoAluno }

procedure DaoAluno.carrega(pObj: TObject);
var
  mAluno : Aluno;
begin
  inherited;
  if not umDM.dSetAluno.Active then
    umDM.dSetAluno.Open;

  mAluno.setCodigo(umDM.dSetAlunoCODIGO.Value);
  mAluno.setNome(umDM.dSetAlunoNOME.Value);
  mAluno.setIdade(umDm.dSetAlunoIDADE.Value);
  mAluno.setSexo(umDM.dSetAlunoSEXO.Value);

  pObj := mAluno;

end;

constructor DaoAluno.crieObj;
begin
  inherited;

end;

destructor DaoAluno.destrua_se;
begin

  inherited;
end;

function DaoAluno.excluir(pObj: TObject): string;
begin
     if not umDM.dSetAluno.Active then
    umDM.dSetAluno.Open;

    umDM.dSetAluno.Delete;
end;

function DaoAluno.FimTrans: String;
begin
   result := '';
end;

function DaoAluno.getDS: TDataSource;
begin
    result := umDM.DSAluno;
end;

procedure DaoAluno.IniciaTrans;
begin
  inherited;

end;

function DaoAluno.pesquisa(pSql: string): string;
var
  sql : string;
begin
    sql := umDM.dSetAluno.SelectSQL.Text;
    umDM.dSetAluno.SelectSQL.Text := pSql;

    if not umDM.dSetAluno.Active then
      umDM.dSetAluno.Open;

    umDM.dSetAluno.SelectSQL;
end;

function DaoAluno.pesquisar(pObj: TObject; quero: boolean): string;
begin

end;

function DaoAluno.salvar(pObj: TObject): string;
begin
    if not umDM.dSetAluno.Active then
      umDM.dSetAluno.Open;

    if Aluno(pObj).getCodigo = 0 then
      umDM.dSetAluno.Insert
    else
      umDm.dSetAluno.Edit;

    umDm.dSetAlunoNOME.Value := Aluno(pObj).getNome;
    umDM.dSetAlunoIDADE.Value := Aluno(pObj).getIdade;
    umDM.dSetAlunoSEXO.Value := Aluno(pObj).getSexo;

    umDM.dSetAluno.Post;
end;

procedure DaoAluno.setDM(pDM: TDM);
begin
  inherited;
    umDM := pDM;
end;

end.

