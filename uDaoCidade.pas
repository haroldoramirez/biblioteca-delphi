unit uDaoCidade;

interface
uses
  uDao, uCidade, uDM, DB, SysUtils;

  type DaoCidade = class(Dao)

  private

  protected
      umDM : TDM;
  public
      constructor crieObj; override;
      destructor destrua_se; override;
      function salvar (pObj : TObject):  string; override;
      function excluir (pObj : TObject): string; override;
      function pesquisar (pObj : TObject; quero : boolean): string; override;
      function getDS : TDataSource;  override;
      procedure setDM( pDM : TDM); override;
      procedure IniciaTrans; override;
      function FimTrans : String; override;
end;

implementation

{ DaoCidade }

constructor DaoCidade.crieObj;
begin
  inherited;

end;

destructor DaoCidade.destrua_se;
begin

  inherited;
end;

function DaoCidade.excluir(pObj: TObject): string;
begin

end;

function DaoCidade.FimTrans: String;
begin
   result := '';
end;

function DaoCidade.getDS: TDataSource;
begin
  result := umDM.DSCidade;
end;

procedure DaoCidade.IniciaTrans;
begin
  inherited;

end;

function DaoCidade.pesquisar(pObj: TObject; quero: boolean): string;
begin

end;

function DaoCidade.salvar(pObj: TObject): string;
begin
    if not umDM.dSetCidade.Active then
      umDM.dSetCidade.Open;
    if Cidade(pObj).getCodigo = 0 then
      umDm.dSetCidade.Insert
    else
      umDM.dSetCidade.Edit;

    umDM.dSetCidadeDESCRICAO.Value := Cidade(pObj).getDescricao;
    umDM.dSetCidadeDDD.Value := Cidade(pObj).getDdd;
    //umDM.dSetCidadeCODESTADO.Value := Cidade(pObj).getEstado;

    umDM.dSetCidade.Post;
end;

procedure DaoCidade.setDM(pDM: TDM);
begin
  inherited;
    umDM := pDM;
end;

end.
