unit uConsultaLivro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uConsultaPai, ComCtrls, StdCtrls, uCadastraLivro, uLivro, uControllerLivro,
  Grids, DBGrids;

type
  TConsultaLivro = class(TConsultaPai)
  private
    { Private declarations }
        umCadastraLivro : TCadastraLivro;
        umLivro : Livro;
        umaCtrlLivro : ControllerLivro;
  public
    { Public declarations }
        procedure Novo;    override;
        procedure Alterar; override;
        procedure Excluir; override;
        procedure Sair;    override;
        procedure pesquisa; override;
        procedure setCadastro (pObj : TObject); override;
        procedure conhecaObj (pObj : TObject; pCtrl:TObject);  override;
  end;

var
  ConsultaLivro: TConsultaLivro;

implementation

{$R *.dfm}

{ TConsultaLivro }

procedure TConsultaLivro.Alterar;
begin
  inherited;
      umCadastraLivro.conhecaObj(umLivro, umaCtrlLivro);
      umCadastraLivro.limpaEdit;
      umCadastraLivro.desbloqueiaEdit;
      umCadastraLivro.carregaEdit;
      umCadastraLivro.ShowModal;
end;

procedure TConsultaLivro.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
     umLivro := Livro(pObj);
     umaCtrlLivro := ControllerLivro(pCtrl);
end;

procedure TConsultaLivro.Excluir;
begin
  inherited;
     umCadastraLivro.conhecaObj(umLivro, umaCtrlLivro);
     umCadastraLivro.limpaEdit;
     umCadastraLivro.carregaEdit;
     umCadastraLivro.bloqueiaEdit;
     umCadastraLivro.ShowModal;
end;

procedure TConsultaLivro.Novo;
begin
  inherited;
     umCadastraLivro.conhecaObj(umLivro, umaCtrlLivro);
     umCadastraLivro.limpaEdit;
     umCadastraLivro.desbloqueiaEdit;
     umCadastraLivro.ShowModal;
end;

procedure TConsultaLivro.pesquisa;
begin
  inherited;

end;

procedure TConsultaLivro.Sair;
begin
  inherited;

end;

procedure TConsultaLivro.setCadastro(pObj: TObject);
begin
  inherited;
   umCadastraLivro := TCadastraLivro(pObj);
end;

end.
