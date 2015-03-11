unit uCadastraPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TCadastraPai = class(TForm)
    lbl_Codigo: TLabel;
    edt_Codigo: TEdit;
    btn_Salvar: TButton;
    btn_Sair: TButton;
    procedure btn_SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
        procedure conhecaObj(pObj : TObject; pCtrl : TObject); virtual;
        procedure salvar;                     virtual;
        procedure sair;                       virtual;
        procedure carregaEdit;                virtual;
        procedure limpaEdit;                  virtual;
        procedure bloqueiaEdit;               virtual;
        procedure desbloqueiaEdit;            virtual;
  end;

var
  CadastraPai: TCadastraPai;

implementation

{$R *.dfm}

{ TCadastraPai }

procedure TCadastraPai.bloqueiaEdit;
begin

end;

procedure TCadastraPai.carregaEdit;
begin

end;

procedure TCadastraPai.conhecaObj(pObj, pCtrl: TObject);
begin

end;

procedure TCadastraPai.desbloqueiaEdit;
begin

end;

procedure TCadastraPai.limpaEdit;
begin

end;

procedure TCadastraPai.sair;
begin
    close;
end;

procedure TCadastraPai.salvar;
begin

end;

procedure TCadastraPai.btn_SairClick(Sender: TObject);
begin
    self.sair;
end;

end.
