program ProjectBiblioteca;

uses
  Forms,
  uGerente in 'uGerente.pas' {Gerente},
  uPessoa in 'uPessoa.pas',
  uLivro in 'uLivro.pas',
  uEditora in 'uEditora.pas',
  uColecao in 'uColecao.pas',
  uAutor in 'uAutor.pas',
  uAluno in 'uAluno.pas',
  uInter in 'uInter.pas',
  uAplicacao in 'uAplicacao.pas',
  uConsultaPai in 'uConsultaPai.pas' {ConsultaPai},
  uColEditora in 'uColEditora.pas',
  uDao in 'uDao.pas',
  uController in 'uController.pas',
  uCadastraPai in 'uCadastraPai.pas' {CadastraPai},
  uConsultaLivro in 'uConsultaLivro.pas' {ConsultaLivro},
  uConsultaEditora in 'uConsultaEditora.pas' {ConsultaEditora},
  uConsultaAutor in 'uConsultaAutor.pas' {ConsultaAutor},
  uConsultaAluno in 'uConsultaAluno.pas' {ConsultaAluno},
  uCadastraLivro in 'uCadastraLivro.pas' {CadastraLivro},
  uCadastraEditora in 'uCadastraEditora.pas' {CadastraEditora},
  uCadastraAluno in 'uCadastraAluno.pas' {CadastraAluno},
  uCadastraAutor in 'uCadastraAutor.pas' {CadastraAutor},
  uControllerAluno in 'uControllerAluno.pas',
  uControllerEditora in 'uControllerEditora.pas',
  uControllerAutor in 'uControllerAutor.pas',
  uControllerLivro in 'uControllerLivro.pas',
  uDaoLivro in 'uDaoLivro.pas',
  uDaoEditora in 'uDaoEditora.pas',
  uDaoAutor in 'uDaoAutor.pas',
  uDaoAluno in 'uDaoAluno.pas',
  uPais in 'uPais.pas',
  uEstado in 'uEstado.pas',
  uCidade in 'uCidade.pas',
  uConsultaPais in 'uConsultaPais.pas' {ConsultaPais},
  uDaoPais in 'uDaoPais.pas',
  uControllerPais in 'uControllerPais.pas',
  uCadastraPais in 'uCadastraPais.pas' {CadastraPais},
  uDm in 'uDm.pas' {DM: TDataModule},
  uDaoEstado in 'uDaoEstado.pas',
  uCadastraEstado in 'uCadastraEstado.pas' {CadastraEstado},
  uControllerEstado in 'uControllerEstado.pas',
  uConsultaEstado in 'uConsultaEstado.pas' {ConsultaEstado},
  uCadastraCidade in 'uCadastraCidade.pas' {CadastraCidade},
  uControllerCidade in 'uControllerCidade.pas',
  uConsultaCidade in 'uConsultaCidade.pas' {ConsultaCidade},
  uDaoCidade in 'uDaoCidade.pas';

{$R *.res}

var
    umaAplicacao : Aplicacao;
begin
    umaAplicacao := Aplicacao.CrieObj;
    umaAplicacao.Execute_se;
    umaAplicacao.Destrua_se;
end.
