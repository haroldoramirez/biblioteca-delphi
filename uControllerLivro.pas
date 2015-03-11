unit uControllerLivro;

interface
uses
  uController, uDaoLivro;
    type ControllerLivro = class(controller)
      private
      protected
          umaDaoLivro : DaoLivro;
      public
          constructor crieObj;   override;
          destructor Destrua_se; override;
          function Salvar (pObj : TObject):  string; override;
          function Excluir (pObj : TObject): string; override;
          function Pesquisar (pObj : TObject; quero : boolean): string; override;

  end;

implementation

{ ControllerLivro }

constructor ControllerLivro.crieObj;
begin
  inherited;

end;

destructor ControllerLivro.Destrua_se;
begin

  inherited;
end;

function ControllerLivro.Excluir(pObj: TObject): string;
begin

end;

function ControllerLivro.Pesquisar(pObj: TObject; quero: boolean): string;
begin

end;

function ControllerLivro.Salvar(pObj: TObject): string;
begin

end;

end.

