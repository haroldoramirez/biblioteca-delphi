unit uConsultaEstado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uConsultaPai, Grids, DBGrids, StdCtrls, uControllerEstado, uEstado,
   uCadastraEstado;

type
  TConsultaEstado = class(TConsultaPai)
  private
    { Private declarations }
    umCadastraEstado : TCadastraEstado;
    umEstado : Estado;
    umCtrlEstado : ControllerEstado;
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
  ConsultaEstado: TConsultaEstado;

implementation

{$R *.dfm}

{ TConsultaEstado }

procedure TConsultaEstado.Alterar;
begin
  inherited;
     umCadastraEstado.conhecaObj(umEstado, umCtrlEstado);
     umCadastraEstado.limpaEdit;
     umCadastraEstado.desbloqueiaEdit;
     umCadastraEstado.carregaEdit;
     umCadastraEstado.btn_Salvar.Caption := 'Salvar';
     umCadastraEstado.ShowModal;
end;

procedure TConsultaEstado.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umEstado := Estado(pObj);
  umCtrlEstado := ControllerEstado(pCtrl);
  self.DBGrid.DataSource := umCtrlEstado.getDS;
end;

procedure TConsultaEstado.Excluir;
begin
  inherited;
    umCadastraEstado.conhecaObj(umEstado, umCtrlEstado);
    umCadastraEstado.limpaEdit;
    umCadastraEstado.carregaEdit;
    umCadastraEstado.bloqueiaEdit;
    umCadastraEstado.btn_Salvar.Caption := 'Excluir';
    umCadastraEstado.ShowModal;
end;

procedure TConsultaEstado.Novo;
begin
  inherited;
    umCadastraEstado.conhecaObj(umEstado, umCtrlEstado);
    umCadastraEstado.limpaEdit;
    umCadastraEstado.desbloqueiaEdit;
    umCadastraEstado.btn_Salvar.Caption := 'Salvar';
    umCadastraEstado.ShowModal;
end;

procedure TConsultaEstado.pesquisa;
begin
  inherited;

end;

procedure TConsultaEstado.Sair;
begin
  inherited;

end;

procedure TConsultaEstado.setCadastro(pObj: TObject);
begin
  inherited;
  umCadastraEstado := TCadastraEstado(pObj);
end;

end.
