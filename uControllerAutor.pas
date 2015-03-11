unit uControllerAutor;

interface
uses
  uController, uDaoAutor, uAutor, uDM, DB;
    type ControllerAutor = class(Controller)
      private
      protected
          umDaoAutor : DaoAutor;
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

{ ControllerAutor }

constructor ControllerAutor.crieObj;
begin
  inherited;
  umDaoAutor := DaoAutor.crieObj;
end;

destructor ControllerAutor.Destrua_se;
begin
  umDaoAutor.destrua_se;
  inherited;
end;

function ControllerAutor.Excluir(pObj: TObject): string;
begin

end;

function ControllerAutor.getDS: TDataSource;
begin

end;

function ControllerAutor.Pesquisar(pObj: TObject; quero: boolean): string;
begin

end;

function ControllerAutor.Salvar(pObj: TObject): string;
begin

end;

procedure ControllerAutor.setDM(pDM: TDM);
begin
  inherited;
  umDaoAutor.setDM(pDM);
end;

end.

