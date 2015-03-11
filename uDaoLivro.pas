unit uDaoLivro;

interface
uses
  uDao;
type DaoLivro = class(Dao)

    private
    protected
    public
        constructor crieObj; override;
        destructor destrua_se; override;
        function salvar (pObj : TObject):  string; override;
        function excluir (pObj : TObject): string; override;
        function pesquisar (pObj : TObject; quero : boolean): string; override;
end;

implementation

{ DaoLivro }

constructor DaoLivro.crieObj;
begin
  inherited;

end;

destructor DaoLivro.destrua_se;
begin

  inherited;
end;

function DaoLivro.excluir(pObj: TObject): string;
begin

end;

function DaoLivro.pesquisar(pObj: TObject; quero: boolean): string;
begin

end;

function DaoLivro.salvar(pObj: TObject): string;
begin

end;

end.

