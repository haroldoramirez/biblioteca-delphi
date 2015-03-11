unit uConsultaPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids;

type
  TConsultaPai = class(TForm)
    edt_Pesquisar: TEdit;
    btn_Pesquisar: TButton;
    btn_Novo: TButton;
    btn_Editar: TButton;
    btn_Excluir: TButton;
    btn_Sair: TButton;
    DBGrid: TDBGrid;
    procedure btn_SairClick(Sender: TObject);
    procedure btn_NovoClick(Sender: TObject);
    procedure btn_EditarClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure btn_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure Novo;    virtual;
     procedure Alterar; virtual;
     procedure Excluir; virtual;
     procedure Sair;    virtual;
     procedure pesquisa; virtual;
     procedure setCadastro (pObj : TObject); virtual;
     procedure conhecaObj (pObj : TObject; pCtrl : TObject);  virtual;
  end;

var
  ConsultaPai: TConsultaPai;

implementation

{$R *.dfm}

{ TConsultaPai }

procedure TConsultaPai.Alterar;
begin

end;

procedure TConsultaPai.conhecaObj(pObj, pCtrl: TObject);
begin

end;

procedure TConsultaPai.Excluir;
begin

end;

procedure TConsultaPai.Novo;
begin

end;

procedure TConsultaPai.pesquisa;
begin

end;

procedure TConsultaPai.Sair;
begin

end;

procedure TConsultaPai.setCadastro(pObj: TObject);
begin

end;

procedure TConsultaPai.btn_SairClick(Sender: TObject);
begin
    close;
end;

procedure TConsultaPai.btn_NovoClick(Sender: TObject);
begin
    novo;
end;

procedure TConsultaPai.btn_EditarClick(Sender: TObject);
begin
    alterar;
end;

procedure TConsultaPai.btn_ExcluirClick(Sender: TObject);
begin
    excluir;
end;

procedure TConsultaPai.btn_PesquisarClick(Sender: TObject);
begin
   pesquisa;
end;

end.
