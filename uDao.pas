unit uDao;

interface
uses uColecao, DB, uDM;
  type Dao = class

    private

    protected
      umDm : TDM;
    public
      constructor crieObj;   virtual;
      destructor Destrua_se; virtual;
      function Salvar (pObj : TObject):  string; virtual;
      function Excluir (pObj : TObject): string; virtual;
      function Pesquisar (pObj : TObject; quero : boolean): string; virtual;
      function getDS : TDataSource;  virtual;
      procedure setDM( pDM : TDM); virtual;
      procedure IniciaTrans; virtual;
      function FimTrans : String; virtual;
      procedure carrega(pObj : TObject); virtual;
      function pesquisa(pSql : string): string; virtual;
  end;

implementation

{ Dao }

procedure Dao.carrega(pObj: TObject);
begin

end;

constructor Dao.CrieObj;
begin

end;

destructor Dao.Destrua_se;
begin

end;

function Dao.Excluir(pObj: TObject): string;
begin

end;

function Dao.FimTrans: string;

begin
   umDM.Trans.Commit;
end;

function Dao.getDS: TDataSource;
begin

end;

procedure Dao.IniciaTrans;
begin
  if not umDm.Trans.Active then
    umDm.Trans.Active := true;
end;

function Dao.pesquisa(pSql: string): string;
begin

end;

function Dao.Pesquisar(pObj: TObject; quero: boolean): string;
begin

end;

function Dao.Salvar(pObj: TObject): string;
begin

end;

procedure Dao.setDM(pDM: TDM);
begin
   umDM := pDM;
end;

end.
