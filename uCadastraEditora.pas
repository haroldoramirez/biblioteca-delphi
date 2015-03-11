unit uCadastraEditora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastraPai, StdCtrls, uEditora, uControllerEditora;

type
  TCadastraEditora = class(TCadastraPai)
    edt_RazaoSocial: TEdit;
    lbl_RazaoSocial: TLabel;
    lbl_Fantasia: TLabel;
    edt_Fantasia: TEdit;
    lbl_Cnpj: TLabel;
    edt_Cnpj: TEdit;
    procedure btn_SalvarClick(Sender: TObject);
    procedure edt_RazaoSocialExit(Sender: TObject);
  private
    { Private declarations }
      umaEditora : Editora;
      umaCtrlEditora : ControllerEditora;
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
  CadastraEditora: TCadastraEditora;

implementation

{$R *.dfm}

{ TCadastraEditora }

procedure TCadastraEditora.bloqueiaEdit;
begin
  inherited;
      self.edt_RazaoSocial.Enabled := false;
      self.edt_Fantasia.Enabled := false;
      self.edt_Cnpj.Enabled := false;
      self.edt_Codigo.Enabled := false;
end;

procedure TCadastraEditora.carregaEdit;
begin
  inherited;
      self.edt_RazaoSocial.Text := umaEditora.getRazaoSocial;
      self.edt_Fantasia.Text := umaEditora.getFantasia;
      self.edt_Cnpj.Text := umaEditora.getCnpj;
      self.edt_Codigo.Text := inttostr(umaEditora.getCodigo);
end;

procedure TCadastraEditora.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
     umaEditora := Editora(pObj);
     umaCtrlEditora := ControllerEditora(pCtrl);
end;

procedure TCadastraEditora.desbloqueiaEdit;
begin
  inherited;
        self.edt_RazaoSocial.Enabled := true;
        self.edt_Fantasia.Enabled := true;
        self.edt_Cnpj.Enabled := true;
        self.edt_Codigo.Enabled := true;
end;

procedure TCadastraEditora.limpaEdit;
begin
  inherited;
      self.edt_RazaoSocial.Clear;
      self.edt_Fantasia.Clear;
      self.edt_Cnpj.Clear;
      self.edt_Codigo.Clear;
end;

procedure TCadastraEditora.sair;
begin
  inherited;

end;

procedure TCadastraEditora.salvar;
var msg : string;
begin
  inherited;
    if self.btn_Sair.Caption = '&Salvar' then
    begin
      if self.edt_Codigo.Text = '' then
        begin
           ShowMessage('Campo código Obrigatório');
          self.edt_Codigo.SetFocus;
        end
        else if self.edt_RazaoSocial.Text = '' then
        begin
          ShowMessage('Campo Razão Social preenchimento Obrigatório');
          self.edt_RazaoSocial.SetFocus;
        end
        else if self.edt_Fantasia.Text = '' then
        begin
          ShowMessage('Campo nome fantasia preenchimento Obrigatório');
          self.edt_Fantasia.SetFocus;
        end
        else if self.edt_Cnpj.Text = '' then
        begin
            ShowMessage('Campo CNPJ preenchimento Obrigatório');
            self.edt_Cnpj.SetFocus;
        end
        else
        begin
            umaEditora.setCodigo(strtoint(self.edt_Codigo.Text));
            umaEditora.setRazaoSocial(self.edt_RazaoSocial.Text);
            umaEditora.setFantasia(self.edt_Fantasia.Text);
            umaEditora.setCnpj(self.edt_Cnpj.Text);
            msg := umaCtrlEditora.salvar(umaEditora);
            ShowMessage(msg)
        end;
      end
    else
      msg := umaCtrlEditora.Excluir(umaEditora);
    self.sair;
end;

procedure TCadastraEditora.btn_SalvarClick(Sender: TObject);
begin
  inherited;
  salvar;
end;

procedure TCadastraEditora.edt_RazaoSocialExit(Sender: TObject);
var
  msg : String;
begin
  inherited;
  umaEditora.setRazaoSocial( self.edt_RazaoSocial.Text);
  msg := umaCtrlEditora.Pesquisar(umaEditora, false);
  if msg <> '' then
  begin
      showmessage(msg);
      self.edt_RazaoSocial.SetFocus;
  end;
end;

end.
