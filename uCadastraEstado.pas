unit uCadastraEstado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastraPai, StdCtrls, uEstado, uControllerEstado;

type
  TCadastraEstado = class(TCadastraPai)
    edt_Descricao: TEdit;
    lbl_Descricao: TLabel;
    edt_Sigla: TEdit;
    lbl_Sigla: TLabel;
    lbl_Pais: TLabel;
    edt_Pais: TEdit;
    procedure btn_SalvarClick(Sender: TObject);
  private
    { Private declarations }
    umEstado : Estado;
    umCtrlEstado : ControllerEstado;
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
  CadastraEstado: TCadastraEstado;

implementation

{$R *.dfm}

{ TCadastraEstado }

procedure TCadastraEstado.bloqueiaEdit;
begin
  inherited;
  self.edt_Codigo.Enabled := false;
  self.edt_Descricao.Enabled := false;
  self.edt_Sigla.Enabled := false;
  self.edt_Pais.Enabled := false;
end;

procedure TCadastraEstado.carregaEdit;
begin
  inherited;
  self.edt_Codigo.Text := inttostr(umEstado.getCodigo);
  self.edt_Descricao.Text := umEstado.getDescricao;
  self.edt_Sigla.Text := umEstado.getSigla;
  self.edt_Pais.Text := umEstado.getUmPais.getDescricao;
end;

procedure TCadastraEstado.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  umEstado := Estado(pObj);
  umCtrlEstado := ControllerEstado(pCtrl);
end;

procedure TCadastraEstado.desbloqueiaEdit;
begin
  inherited;
  self.edt_Codigo.Enabled := true;
  self.edt_Descricao.Enabled := true;
  self.edt_Sigla.Enabled := true;
  self.edt_Pais.Enabled := true;
end;

procedure TCadastraEstado.limpaEdit;
begin
  inherited;
  self.edt_Codigo.Clear;
  self.edt_Descricao.Clear;
  self.edt_Sigla.Clear;
  self.edt_Pais.Clear;
end;

procedure TCadastraEstado.sair;
begin
  inherited;

end;

procedure TCadastraEstado.salvar;
var
    msg : String;
begin
  inherited;
   if self.edt_Codigo.Text = '' then
   begin
      ShowMessage('Campo Código Obrigatório');
      self.edt_Codigo.SetFocus;
   end
   else if self.edt_Descricao.Text = '' then
   begin
        ShowMessage('Campo Descrição Obrigatório');
        self.edt_Descricao.SetFocus;
   end
   else if self.edt_Sigla.Text = '' then
   begin
      ShowMessage('Campo Sigla Obrigatório');
      self.edt_Sigla.SetFocus;
   end
   else if self.edt_Pais.Text = '' then
   begin
      ShowMessage('Campo País Obrigatório');
      self.edt_Pais.SetFocus;
   end
   else
      begin
          umEstado.setCodigo(strtoint(self.edt_Codigo.Text));
          umEstado.setDescricao(self.edt_Descricao.Text);
          umEstado.setSigla(self.edt_Sigla.Text);
          //umEstado.setUmPais();
          msg := umCtrlEstado.salvar(umEstado);
          ShowMessage(msg);
          self.sair;
      end
end;

procedure TCadastraEstado.btn_SalvarClick(Sender: TObject);
begin
  inherited;
   self.salvar;
end;

end.
