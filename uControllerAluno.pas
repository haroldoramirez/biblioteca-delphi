unit uControllerAluno;

interface
uses
  uController, uDaoAluno, uAluno, uDM, DB, SysUtils;
    type ControllerAluno = class(Controller)
      private
      protected
          umDaoAluno : DaoAluno;
          umDM : TDM;
      public
            constructor crieObj;   override;
            destructor Destrua_se; override;
            function Salvar (pObj : TObject):  string; override;
            function Excluir (pObj : TObject): string; override;
            function Pesquisar (pObj : TObject; quero : boolean): string; override;
            function getDS : TDataSource;  override;
            procedure setDM( pDM : TDM); override;
            procedure carrega(pObj : TObject); override;
            function pesquisa(pChave : string): string; override;
    end;

implementation

{ ControllerAluno }

procedure ControllerAluno.carrega(pObj: TObject);
begin
  inherited;
  umDaoAluno.carrega(pObj);
end;

constructor ControllerAluno.crieObj;
begin
  inherited;
  umDaoAluno := DaoAluno.crieObj;
end;

destructor ControllerAluno.Destrua_se;
begin
  umDaoAluno.destrua_se;
  inherited;
end;

function ControllerAluno.Excluir(pObj: TObject): string;
var
  msg : String;
begin
    umDaoAluno.IniciaTrans;
    result := umDaoAluno.excluir(pObj);
    msg := umDaoAluno.FimTrans;
    result := msg;
end;

function ControllerAluno.getDS: TDataSource;
begin
    result := umDaoALuno.getDS;
end;

function ControllerAluno.pesquisa(pChave: string): string;
var
  sql : String;
begin
  if pChave = '' then
   sql := 'select * from ALUNO order by nome'
  else
    sql := 'select * from ALUNO where nome ='+quotedstr(pChave);

  umDaoAluno.pesquisa(sql);
end;

function ControllerAluno.Pesquisar(pObj: TObject; quero: boolean): string;
var
  oAluno : Aluno;
  resultado : string;
begin
    oAluno := Aluno(pObj);
    resultado := umDaoAluno.pesquisar(oAluno, quero);
    result := resultado;
end;

function ControllerAluno.Salvar(pObj: TObject): string;
var
    msg : string;
begin
   umDaoAluno.IniciaTrans;
   result := umDaoAluno.salvar(pObj);
   msg := umDaoAluno.FimTrans;
   result := msg;
end;

procedure ControllerAluno.setDM(pDM: TDM);
begin
  inherited;
  umDaoAluno.setDM(pDM);
end;

end.

