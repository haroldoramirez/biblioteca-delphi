unit uControllerPais;

interface
uses
  uController, uDaoPais, uPais, uDM, DB;
    type ControllerPais = class(Controller)
        private
        protected
            umaDaoPais : DaoPais;
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

{ ControllerPais }

constructor ControllerPais.crieObj;
begin
  inherited;
  umaDaoPais := DaoPais.crieObj;
end;

destructor ControllerPais.Destrua_se;
begin
  umaDaoPais.destrua_se;
  inherited;
end;

function ControllerPais.Excluir(pObj: TObject): string;
begin

end;

function ControllerPais.getDS: TDataSource;
begin
   result := umaDaoPais.getDS;
end;

function ControllerPais.Pesquisar(pObj: TObject; quero: boolean): string;
begin

end;

function ControllerPais.Salvar(pObj: TObject): string;
var
  msg : String;
begin
   umaDaoPais.IniciaTrans;
   Result := umaDaoPais.salvar(pObj);
   msg := umaDaoPais.FimTrans;
   result := msg;
end;

procedure ControllerPais.setDM(pDM: TDM);
begin
  inherited;
  umaDaoPais.setDM(pDM);
end;

end.
