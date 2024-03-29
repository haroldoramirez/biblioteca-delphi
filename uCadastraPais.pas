unit uCadastraPais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastraPai, StdCtrls, uPais, uControllerPais;

type
  TCadastraPais = class(TCadastraPai)
    lbl_Descricao: TLabel;
    edt_Descricao: TEdit;
    edt_Ddi: TEdit;
    lbl_Ddi: TLabel;
    procedure btn_SalvarClick(Sender: TObject);
  private
    { Private declarations }
    umPais : pais;
    umaCtrlPais : ControllerPais;
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
  CadastraPais: TCadastraPais;

implementation

{$R *.dfm}

{ TCadastraPais }

procedure TCadastraPais.bloqueiaEdit;
begin
  inherited;
  self.edt_Descricao.Enabled := false;
  self.edt_Ddi.Enabled := false;
  self.edt_Codigo.Enabled := false;
end;

procedure TCadastraPais.carregaEdit;
begin
  inherited;
  self.edt_Descricao.Text := umPais.getDescricao;
  self.edt_Ddi.Text := umPais.getDdi;
  self.edt_Codigo.Text := inttoStr(umPais.getCodigo);
end;

procedure TCadastraPais.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umPais := Pais(pObj);
  umaCtrlPais := ControllerPais(pCtrl);
end;

procedure TCadastraPais.desbloqueiaEdit;
begin
  inherited;
  self.edt_Descricao.Enabled := true;
  self.edt_Ddi.Enabled := true;
  self.edt_Codigo.Enabled := true;
end;

procedure TCadastraPais.limpaEdit;
begin
  inherited;
  self.edt_Descricao.Clear;
  self.edt_Ddi.Clear;
  self.edt_Codigo.Clear;
end;

procedure TCadastraPais.sair;
begin
  inherited;

end;

procedure TCadastraPais.salvar;
var
  msg : string;
begin
  inherited;
  if self.edt_Codigo.Text = '' then
  begin
      ShowMessage('Campo código Obrigatório');
      self.edt_Codigo.SetFocus;
  end
  else if self.edt_Descricao.Text = '' then
  begin
      ShowMessage('Campo Descrição Obrigatório');
      self.edt_Descricao.SetFocus;
  end
  else if self.edt_Ddi.Text = '' then
  begin
      ShowMessage('Campo DDI obrigatório');
      self.edt_Ddi.SetFocus;
  end
  else
      begin
          umPais.setCodigo(strtoint(self.edt_Codigo.Text));
          umPais.setDescricao(self.edt_Descricao.Text);
          umPais.setDdi(self.edt_Ddi.Text);
          msg := umaCtrlPais.Salvar(umPais);
          ShowMessage(msg);
          self.sair;
      end;
end;

procedure TCadastraPais.btn_SalvarClick(Sender: TObject);
begin
  inherited;
   salvar;
end;

end.
