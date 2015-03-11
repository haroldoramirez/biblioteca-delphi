unit uConsultaCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uConsultaPai, Grids, DBGrids, StdCtrls, uCidade, uControllerCidade,
    uCadastraCidade;

type
  TConsultaCidade = class(TConsultaPai)
  private
    { Private declarations }
    umCadastraCidade : TCadastraCidade;
    umaCidade : Cidade;
    umaCtrlCidade : ControllerCidade;
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
  ConsultaCidade: TConsultaCidade;

implementation

{$R *.dfm}

{ TConsultaCidade }

procedure TConsultaCidade.Alterar;
begin
  inherited;
   umCadastraCidade.conhecaObj(umaCidade, umaCtrlCidade);
   umCadastraCidade.limpaEdit;
   umCadastraCidade.desbloqueiaEdit;
   umCadastraCidade.carregaEdit;
   umCadastraCidade.btn_Salvar.Caption := 'Salvar';
   umCadastraCidade.ShowModal;
end;

procedure TConsultaCidade.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
   umaCidade := Cidade(pObj);
   umaCtrlCidade := ControllerCidade(pCtrl);
   self.DBGrid.DataSource := umaCtrlCidade.getDS;
end;

procedure TConsultaCidade.Excluir;
begin
  inherited;
  umCadastraCidade.conhecaObj(umaCidade, umaCtrlCidade);
  umCadastraCidade.limpaEdit;
  umCadastraCidade.carregaEdit;
  umCadastraCidade.bloqueiaEdit;
  umCadastraCidade.btn_Salvar.Caption := 'Excluir';
  umCadastraCidade.ShowModal;
end;

procedure TConsultaCidade.Novo;
begin
  inherited;
  umCadastraCidade.conhecaObj(umaCidade, umaCtrlCidade);
  umCadastraCidade.limpaEdit;
  umCadastraCidade.desbloqueiaEdit;
  umCadastraCidade.btn_Salvar.Caption := 'Salvar';
  umCadastraCidade.ShowModal;
end;

procedure TConsultaCidade.pesquisa;
begin
  inherited;

end;

procedure TConsultaCidade.Sair;
begin
  inherited;

end;

procedure TConsultaCidade.setCadastro(pObj: TObject);
begin
  inherited;
  umCadastraCidade := TCadastraCidade(pObj);
end;

end.
