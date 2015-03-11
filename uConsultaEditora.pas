unit uConsultaEditora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uConsultaPai, ComCtrls, StdCtrls,
  uEditora, uCadastraEditora, uControllerEditora, Grids, DBGrids;

type
  TConsultaEditora = class(TConsultaPai)
    procedure btn_SairClick(Sender: TObject);
    procedure btn_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
        umCadastraEditora : TCadastraEditora;
        umaEditora : Editora;
        umaCtrlEditora : ControllerEditora;
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
  ConsultaEditora: TConsultaEditora;

implementation

{$R *.dfm}

{ TConsultaEditora }

procedure TConsultaEditora.Alterar;
begin
  inherited;
     umaCtrlEditora.carrega(umaEditora);
     umCadastraEditora.conhecaObj(umaEditora, umaCtrlEditora);
     umCadastraEditora.limpaEdit;
     umCadastraEditora.desbloqueiaEdit;
     umCadastraEditora.carregaEdit;
     umCadastraEditora.btn_Salvar.Caption := 'Salvar';
     umCadastraEditora.ShowModal;
end;

procedure TConsultaEditora.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
    umaEditora := Editora(pObj);
    umaCtrlEditora := ControllerEditora(pCtrl);
    self.DBGrid.DataSource := umaCtrlEditora.getDS;
end;

procedure TConsultaEditora.Excluir;
var
    aux : String;
begin
  inherited;
    umaCtrlEditora.carrega(umaEditora);
    umCadastraEditora.conhecaObj(umaEditora, umaCtrlEditora);
    umCadastraEditora.limpaEdit;
    umCadastraEditora.carregaEdit;
    umCadastraEditora.bloqueiaEdit;
    aux := umCadastraEditora.btn_Salvar.Caption;
    umCadastraEditora.btn_Salvar.Caption := 'E&xcluir';
    umCadastraEditora.ShowModal;
    umCadastraEditora.btn_Salvar.Caption := aux;
end;

procedure TConsultaEditora.Novo;
begin
  inherited;
    umCadastraEditora.conhecaObj(umaEditora, umaCtrlEditora);
    umCadastraEditora.limpaEdit;
    umCadastraEditora.desbloqueiaEdit;
    umCadastraEditora.btn_Salvar.Caption := 'Salvar';
    umCadastraEditora.ShowModal;
end;

procedure TConsultaEditora.pesquisa;
begin
  inherited;
                                                              
end;

procedure TConsultaEditora.Sair;
begin
  inherited;

end;

procedure TConsultaEditora.setCadastro(pObj: TObject);
begin
  inherited;
  umCadastraEditora := TCadastraEditora(pObj);
end;

procedure TConsultaEditora.btn_SairClick(Sender: TObject);
begin
  inherited;
  if self.btn_Sair.Caption = 'Selecionar' then
    umaCtrlEditora.carrega(umaEditora);
end;

procedure TConsultaEditora.btn_PesquisarClick(Sender: TObject);
var
  msg : string;
begin
  inherited;
     msg := umaCtrlEditora.pesquisa(self.edt_Pesquisar.Text);
end;

end.
