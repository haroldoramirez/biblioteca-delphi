unit uDaoPais;

interface
  uses uDao, uPais, SysUtils, uDM, DB;

    type DaoPais = class(Dao)

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

{ DaoPais }

constructor DaoPais.crieObj;
begin
  inherited;

end;

destructor DaoPais.destrua_se;
begin

  inherited;
end;

function DaoPais.excluir(pObj: TObject): string;
begin

end;

function DaoPais.FimTrans: String;
begin
    result := '';
end;

function DaoPais.getDS: TDataSource;
begin
   result := umDm.DSPais;
end;

procedure DaoPais.IniciaTrans;
begin
  inherited;

end;

function DaoPais.pesquisar(pObj: TObject; quero: boolean): string;
begin

end;

function DaoPais.salvar(pObj: TObject): string;
begin
    if not umDM.dSetPais.Active then
      umDM.dSetPais.Open;
    if Pais(pObj).getCodigo = 0 then
      umDM.dSetPais.Insert
    else
      umDM.dSetPais.Edit;
    umDM.dSetPaisDESCRICAO.Value := Pais(pObj).getDescricao;
    umDM.dSetPaisDDI.Value := Pais(pObj).getDdi;

    umDm.dSetPais.Post;
end;

procedure DaoPais.setDM(pDM: TDM);
begin
  inherited;
  umDM := pDM;
end;

end.
