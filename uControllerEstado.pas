unit uControllerEstado;

interface
uses
  uController, uDaoEstado, uEstado, uDM, DB;
    type ControllerEstado = class(Controller)
    private
    protected
        umaDaoEstado : DaoEstado;
        umDM : TDM;
    public
          constructor crieObj;   override;
          destructor Destrua_se; override;
          function Salvar (pObj : TObject):  string; override;
          function Excluir (pObj : TObject): string; override;
          function Pesquisar (pObj : TObject; quero : boolean): string; override;
          function getDS : TDataSource;  override;
          procedure setDM( pDM : TDM); override;

end;

implementation

{ ControllerEstado }

constructor ControllerEstado.crieObj;
begin
  inherited;
   umaDaoEstado := DaoEstado.crieObj;
end;

destructor ControllerEstado.Destrua_se;
begin
  umaDaoEstado.destrua_se;
  inherited;
end;

function ControllerEstado.Excluir(pObj: TObject): string;
begin

end;

function ControllerEstado.getDS: TDataSource;
begin
    result := umaDaoEstado.getDS;
end;

function ControllerEstado.Pesquisar(pObj: TObject; quero: boolean): string;
begin

end;

function ControllerEstado.Salvar(pObj: TObject): string;
var
  msg : String;
begin
   umaDaoEstado.IniciaTrans;
   Result := umaDaoEstado.salvar(pObj);
   msg := umaDaoEstado.FimTrans;
   result := msg;
end;

procedure ControllerEstado.setDM(pDM: TDM);
begin
  inherited;
  umaDaoEstado.setDM(pDM);
end;

end.
