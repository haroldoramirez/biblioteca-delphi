unit uConsultaAutor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uConsultaPai, ComCtrls, StdCtrls, Grids, DBGrids,
   uAutor, uControllerAutor, uCadastraAutor;

type
  TConsultaAutor = class(TConsultaPai)
  private
    { Private declarations }
    umAutor : Autor;
    umCtrlAutor : ControllerAutor;
    umCadastraAutor : TCadastraAutor;
  public
    { Public declarations }
      procedure Novo;    override;
      procedure Alterar; override;
      procedure Excluir; override;
      procedure Sair;    override;
      procedure pesquisa; override;
      procedure setCadastro (pObj : TObject); override;
      procedure conhecaObj (pObj : TObject; pCtrl : TObject);  override;
  end;

var
  ConsultaAutor: TConsultaAutor;

implementation

{$R *.dfm}

{ TConsultaAutor }

procedure TConsultaAutor.Alterar;
begin
  inherited;
  umCadastraAutor.conhecaObj(umAutor, umCtrlAutor);
  umCadastraAutor.desbloqueiaEdit;
  umCadastraAutor.limpaEdit;
  umCadastraAutor.carregaEdit;
  umCadastraAutor.btn_Salvar.Caption := 'Salvar';
  umCadastraAutor.ShowModal;
end;

procedure TConsultaAutor.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umAutor := Autor(pObj);
  umCtrlAutor := ControllerAutor(pCtrl);
  //self.DBGrid.DataSource := umCtrlAutor.getDS;
end;

procedure TConsultaAutor.Excluir;
begin
  inherited;
  umCadastraAutor.conhecaObj(umAutor, umCtrlAutor);
  umCadastraAutor.limpaEdit;
  umCadastraAutor.carregaEdit;
  umCadastraAutor.bloqueiaEdit;
  umCadastraAutor.btn_Salvar.Caption := 'Excluir';
  umCadastraAutor.ShowModal;
end;

procedure TConsultaAutor.Novo;
begin
  inherited;
  umCadastraAutor.conhecaObj(umAutor, umCtrlAutor);
  umCadastraAutor.limpaEdit;
  umCadastraAutor.desbloqueiaEdit;
  umCadastraAutor.btn_Salvar.Caption := 'Salvar';
  umCadastraAutor.ShowModal;
end;

procedure TConsultaAutor.pesquisa;
begin
  inherited;

end;

procedure TConsultaAutor.Sair;
begin
  inherited;

end;

procedure TConsultaAutor.setCadastro(pObj: TObject);
begin
  inherited;
  umCadastraAutor := TCadastraAutor(pObj);
end;

end.
