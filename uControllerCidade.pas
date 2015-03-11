unit uControllerCidade;

interface
uses
  uController, uDaoCidade, uCidade, uDM, DB;

  type ControllerCidade = class(Controller)

  private

  protected
      umaDaoCidade : DaoCidade;
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

{ ControllerCidade }

constructor ControllerCidade.crieObj;
begin
  inherited;
  umaDaoCidade := DaoCidade.crieObj;
end;

destructor ControllerCidade.Destrua_se;
begin
  umaDaoCidade.destrua_se;
  inherited;
end;

function ControllerCidade.Excluir(pObj: TObject): string;
begin

end;

function ControllerCidade.getDS: TDataSource;
begin
   result := umaDaoCidade.getDS;
end;

function ControllerCidade.Pesquisar(pObj: TObject; quero: boolean): string;
begin

end;

function ControllerCidade.Salvar(pObj: TObject): string;
var
  msg : String;
begin
    umaDaoCidade.IniciaTrans;
    result := umaDaoCidade.salvar(pObj);
    msg := umaDaoCidade.FimTrans;
    result := msg;
end;

procedure ControllerCidade.setDM(pDM: TDM);
begin
  inherited;
  umaDaoCidade.setDM(pDM);
end;

end.
