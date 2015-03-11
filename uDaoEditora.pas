unit uDaoEditora;

interface
  uses
    uDao, uEditora, SysUtils, uDM, DB;
  
    type DaoEditora = class(Dao)

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
        procedure carrega(pObj : TObject); override;
        function pesquisa(pSql : string): string; override;
    end;

implementation

{ DaoEditora }

procedure DaoEditora.carrega(pObj: TObject);
var
  mEditora : Editora;
begin
    inherited;
    if not umDm.dSetEditora.Active then
      umDm.dSetEditora.Open;
    mEditora.setCodigo(umDM.dSetEditoraCODIGO.Value);
    mEditora.setRazaoSocial(umDM.dSetEditoraRAZAOSOCIAL.Value);
    mEditora.setFantasia(umDM.dSetEditoraFANTASIA.Value);
    mEditora.setCnpj(umDm.dSetEditoraCNPJ.Value);
    pObj := mEditora;
end;

constructor DaoEditora.crieObj;
begin
  inherited;

end;

destructor DaoEditora.destrua_se;
begin
  inherited;

end;

function DaoEditora.excluir(pObj: TObject): string;
begin
   if not umDM.dSetEditora.Active then
      umDm.dSetEditora.Open;
   umDm.dSetEditora.Delete;
   
end;

function DaoEditora.FimTrans: String;
begin
    result := '';
end;

function DaoEditora.getDS: TDataSource;
begin
   result := umDM.DSEditora;
end;

procedure DaoEditora.IniciaTrans;
begin
  inherited;

end;

function DaoEditora.pesquisa(pSql: string): string;
var
  sql : string;
begin
    sql := umDm.dSetEditora.SelectSQL.Text;
    umDM.dSetEditora.SelectSQL.Text := pSql;
    
    if not umDm.dSetEditora.Active then
      umDm.dSetEditora.Open;
      
    umDm.dSetEditora.SelectSQL;

    //umDM.dSetEditora.Active := false;
    //umDM.dSetEditora.SelectSQL.Text := sql;
end;

function DaoEditora.pesquisar(pObj: TObject; quero:boolean): string;
var
  pos : Integer;
  sql, sqlAnt : String;
  naoAchei : Boolean;
begin
  naoAchei := true;
  umDM.dSetEditora.Active := false;
  sqlAnt := umDM.dSetEditora.SelectSQL.Text;
  sql := 'select * from Editora where RAZAOSOCIAL = '+quotedstr(Editora(pObj).getRazaoSocial);
  umDM.dSetEditora.SelectSQL.Text := sql;
  if not umDM.dSetEditora.Active then
    umDM.dSetEditora.Open;

   umDM.dSetEditora.SelectSQL;
   while not umDM.dSetEditora.Eof do
   begin
      if umDM.dSetEditoraCODIGO.Value <> Editora(pObj).getCodigo then
        naoAchei := false;
      umDM.dSetEditora.Next;
   end;
   if naoAchei then
      result := ''
   else
      result := 'Nome j� esta na lista';

  umDM.dSetEditora.Active := false;
  umDM.dSetEditora.SelectSQL.Text := sqlAnt;
end;

function DaoEditora.salvar(pObj: TObject): string;
begin
  if not umDM.dSetEditora.Active then
    umDM.dSetEditora.Open;

  if Editora(pObj).getCodigo = 0 then
    umDM.dSetEditora.Insert
  else
      umDM.dSetEditora.Edit;
  umDM.dSetEditoraFANTASIA.Value := Editora(pObj).getFantasia;
  umDM.dSetEditoraRAZAOSOCIAL.Value := Editora(pObj).getRazaoSocial;
  umDM.dSetEditoraCNPJ.Value := Editora(pObj).getCnpj;

  umDM.dSetEditora.Post;
end;

procedure DaoEditora.setDM(pDM: TDM);
begin
  inherited;
     umDM := pDM;
end;

end.

