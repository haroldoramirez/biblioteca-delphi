unit uControllerEditora;

interface
uses
  uDaoEditora, uController, uEditora, uDM, DB, SysUtils;
  
   type ControllerEditora = class(Controller)
       private

       protected
             umaDaoEditora : DaoEditora;
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

{ ControllerEditora }

procedure ControllerEditora.carrega(pObj: TObject);
begin
  inherited;
  umaDaoEditora.Carrega(pObj);
end;

constructor ControllerEditora.crieObj;
begin
    inherited;
    umaDaoEditora := DaoEditora.crieObj;
end;

destructor ControllerEditora.Destrua_se;
begin
    umaDaoEditora.Destrua_se;
    inherited;
end;

function ControllerEditora.Excluir(pObj: TObject): string;
var
  msg : String;
begin
    umaDaoEditora.IniciaTrans;
    result := umaDaoEditora.excluir(pObj);
    msg := umaDaoEditora.FimTrans;
    result := msg;
end;

function ControllerEditora.getDS: TDataSource;
begin
    result := umaDaoEditora.getDS;
end;

function ControllerEditora.pesquisa(pChave: String): string;
var
  sql : String;
begin
  if pChave = '' then
   sql := 'select * from Editora order by razaoSocial'
  else
    sql := 'select * from Editora where razaoSocial ='+quotedstr(pChave);

  umaDaoEditora.pesquisa(sql);
end;

function ControllerEditora.Pesquisar(pObj: TObject; quero:boolean): string;
var
   aEditora : Editora;
   resultado : string;
begin
   aEditora := Editora(pObj);
   resultado := umaDaoEditora.Pesquisar( aEditora, quero);
   result := resultado;
end;

function ControllerEditora.Salvar(pObj: TObject): string;
var
  msg : string;
begin
   msg := '';
   umaDaoEditora.IniciaTrans;
   result := umaDaoEditora.salvar(pObj);
   msg := umaDaoEditora.FimTrans;
   result := msg;
end;

procedure ControllerEditora.setDM(pDM: TDM);
begin
   inherited;
   umaDaoEditora.setDM(pDM);
end;

end.

