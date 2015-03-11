unit uDaoEstado;

interface
uses
  uDao, uEstado, uDM, DB, SysUtils;

  type DaoEstado = class(Dao)

  private

  protected
       umDM : TDM;
  public
      constructor crieObj; override;
      destructor destrua_se; override;
      function salvar(pObj : TObject) : string; override;
      function excluir(pObj : TObject) : string; override;
      function pesquisar(pObj : TObject; quero : boolean) : string; override;
      function getDS : TDataSource; override;
      procedure setDM(pDM : TDM); override;
      procedure IniciaTrans; override;
      function FimTrans : String; override;
end;

implementation

{ DaoEstado }

constructor DaoEstado.crieObj;
begin
  inherited;

end;

destructor DaoEstado.destrua_se;
begin

  inherited;
end;

function DaoEstado.excluir(pObj: TObject): string;
begin

end;

function DaoEstado.FimTrans: String;
begin
    result := '';
end;

function DaoEstado.getDS: TDataSource;
begin
   result := umDM.DSEstado;
end;

procedure DaoEstado.IniciaTrans;
begin
  inherited;

end;

function DaoEstado.pesquisar(pObj: TObject; quero: boolean): string;
begin

end;

function DaoEstado.salvar(pObj: TObject): string;
begin
    if not umDM.dSetEstado.Active then
      umDM.dSetEstado.Open;
    if Estado(pObj).getCodigo = 0 then
      umDm.dSetEstado.Insert
    else
      umDM.dSetEstado.Edit;

    umDM.dSetEstadoDESCRICAO.Value := Estado(pObj).getDescricao;
    umDM.dSetEstadoSIGLA.Value := Estado(pObj).getSigla;
    //umDm.dSetEstadoCODPAIS.Value := Estado(pObj).getPais;

    umDm.dSetEstado.Post;
end;

procedure DaoEstado.setDM(pDM: TDM);
begin
  inherited;
      umDM := pDM;
end;

end.
