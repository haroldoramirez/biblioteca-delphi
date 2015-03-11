unit uCadastraCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastraPai, StdCtrls, uCidade, uControllerCidade;

type
  TCadastraCidade = class(TCadastraPai)
    lbl_Descricao: TLabel;
    lbl_Ddd: TLabel;
    edt_Estado: TEdit;
    lbl_Estado: TLabel;
    edt_Descricao: TEdit;
    edt_Ddd: TEdit;
    procedure btn_SalvarClick(Sender: TObject);
  private
    { Private declarations }
    umaCidade : Cidade;
    umaCtrlCidade : ControllerCidade;
  public
    { Public declarations }
        procedure conhecaObj(pObj : TObject; pCtrl : TObject); override;
        procedure salvar;                     override;
        procedure sair;                       override;
        procedure carregaEdit;                override;
        procedure limpaEdit;                  override;
        procedure bloqueiaEdit;               override;
        procedure desbloqueiaEdit;            override;
  end;

var
  CadastraCidade: TCadastraCidade;

implementation

{$R *.dfm}

{ TCadastraCidade }

procedure TCadastraCidade.bloqueiaEdit;
begin
  inherited;
  self.edt_Codigo.Enabled := false;
  self.edt_Estado.Enabled := false;
  self.edt_Descricao.Enabled := false;
  self.edt_Ddd.Enabled := false;
end;

procedure TCadastraCidade.carregaEdit;
begin
  inherited;
  self.edt_Codigo.Text := inttostr(umaCidade.getCodigo);
  self.edt_Descricao.Text := umaCidade.getDescricao;
  self.edt_Ddd.Text := umaCidade.getDdd;
  //self.edt_Estado.Text := umaCidade.getEstado;
end;

procedure TCadastraCidade.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umaCidade := Cidade(pObj);
  umaCtrlCidade := ControllerCidade(pCtrl);
end;

procedure TCadastraCidade.desbloqueiaEdit;
begin
  inherited;
  self.edt_Codigo.Enabled := true;
  self.edt_Estado.Enabled := true;
  self.edt_Descricao.Enabled := true;
  self.edt_Ddd.Enabled := true;
end;

procedure TCadastraCidade.limpaEdit;
begin
  inherited;
  self.edt_Codigo.Clear;
  self.edt_Estado.Clear;
  self.edt_Descricao.Clear;
  self.edt_Ddd.Clear;
end;

procedure TCadastraCidade.sair;
begin
  inherited;

end;

procedure TCadastraCidade.salvar;
var
  msg : String;
begin
  inherited;
  if self.edt_Codigo.Text = '' then
  begin
      ShowMessage('Campo código obrigatório');
      self.edt_Codigo.SetFocus;
  end
  else if self.edt_Ddd.Text = '' then
  begin
      ShowMessage('Campo DDD obrigatório');
      self.edt_Ddd.SetFocus;
  end
  else if self.edt_Descricao.Text = '' then
  begin
      ShowMessage('Campo Descrição Obrigatório');
      self.edt_Descricao.SetFocus;
  end
  else if self.edt_Estado.Text = '' then
  begin
      ShowMessage('Campo Estado Obrigatório');
      self.edt_Estado.SetFocus;
  end
  else
      begin
           umaCidade.setCodigo(strtoInt(self.edt_Codigo.Text));
           umaCidade.setDescricao(self.edt_Descricao.Text);
           umaCidade.setDdd(self.edt_Ddd.Text);
           //umaCidade.setUmEstado();
           msg := umaCtrlCidade.Salvar(umaCidade);
           ShowMessage(msg);
           self.sair;
      end;
end;

procedure TCadastraCidade.btn_SalvarClick(Sender: TObject);
begin
  inherited;
  self.salvar;
end;

end.
