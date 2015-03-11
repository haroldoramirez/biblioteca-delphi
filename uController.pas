unit uController;

interface
uses uColecao, uDM, DB;
  type Controller = class

    private

    protected
       umDM : TDM;
    public
      constructor crieObj;   virtual;
      destructor Destrua_se; virtual;
      function Salvar (pObj : TObject):  string; virtual;
      function Excluir (pObj : TObject): string; virtual;
      function Pesquisar (pObj : TObject; quero : boolean): string; virtual;
      function getDS : TDataSource;  virtual;
      procedure setDM( pDM : TDM); virtual;
      procedure carrega(pObj : TObject); virtual;
      function pesquisa(pChave : string): string; virtual;
  end;

implementation

{ Controller }

procedure Controller.carrega(pObj: TObject);
begin

end;

constructor Controller.crieObj;
begin

end;

destructor Controller.Destrua_se;
begin

end;

function Controller.Excluir(pObj: TObject): string;
begin

end;

function Controller.getDS: TDataSource;
begin

end;

function Controller.pesquisa(pChave: String): string;
begin
 
end;

function Controller.Pesquisar(pObj: TObject; quero:boolean): string;
begin

end;

function Controller.Salvar(pObj: TObject): string;
begin

end;

procedure Controller.setDM(pDM: TDM);
begin

end;

end.
