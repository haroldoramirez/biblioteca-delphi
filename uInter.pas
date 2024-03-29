unit uInter;

interface
  uses uConsultaLivro, uCadastraLivro, uLivro, uAutor, uConsultaAutor, uCadastraAutor,
         uConsultaAluno, uCadastraAluno, uAluno, uConsultaEditora, uCadastraEditora,
          uEditora, uPais, uConsultaPais, uCadastraPais, uEstado, uConsultaEstado,
           uCadastraEstado, uCidade, uConsultaCidade, uCadastraCidade;

    type interfaces = class

    private

    protected
        umConsultaLivros : TConsultaLivro;
        umCadastraLivros :  TCadastraLivro;

        umConsultaAutor : TConsultaAutor;
        umCadastraAutor : TCadastraAutor;

        umConsultaAluno : TConsultaAluno;
        umCadastraAluno : TCadastraAluno;

        umConsultaEditora : TConsultaEditora;
        umCadastraEditora : TCadastraEditora;

        umConsultaPais : TConsultaPais;
        umCadastraPais : TCadastraPais;

        umConsultaEstado : TConsultaEstado;
        umCadastraEstado : TCadastraEstado;

        umConsultaCidade : TConsultaCidade;
        umCadastraCidade : TCadastraCidade;

    public
        constructor CrieObj;
        destructor Destrua_se;
        procedure MostraConsultaLivros(pLivro : Livro; pCtrl : TObject);
        procedure MostraConsultaAutor(pAutor : Autor; pCtrl : TObject);
        procedure MostraConsultaAluno(pAluno : Aluno; pCtrl : TObject);
        procedure MostraConsultaEditora(pEditora : Editora; pCtrl : TObject);
        procedure MostraConsultaPais(pPais : Pais; pCtrl : TObject);
        procedure MostraConsultaEstado(pEstado : Estado; pCtrl : TObject);
        procedure MostraConsultaCidade(pCidade : Cidade; pCtrl : TObject);
    end;

implementation

{ interfaces }

constructor interfaces.CrieObj;
begin

    { Consulta e Cadastra Pa�s}
    umConsultaPais := TConsultaPais.Create(nil);
    umCadastraPais := TCadastraPais.Create(nil);
    umConsultaPais.setCadastro(umCadastraPais);

    { Consulta e Cadastra Estado}
    umConsultaEstado := TConsultaEstado.Create(nil);
    umCadastraEstado := TCadastraEstado.Create(nil);
    umConsultaEstado.setCadastro(umCadastraEstado);

    { Consulta e Cadastra Cidade}
    umConsultaCidade := TConsultaCidade.Create(nil);
    umCadastraCidade := TCadastraCidade.Create(nil);
    umConsultaCidade.setCadastro(umCadastraCidade);

    { Consulta e Cadastra Livro }
    umConsultaLivros := TConsultaLivro.Create(nil);
    umCadastraLivros := TCadastraLivro.Create(nil);
    umConsultaLivros.setCadastro(umCadastraLivros);

    { Consulta e Cadastra Autor }
    umConsultaAutor := TConsultaAutor.Create(nil);
    umCadastraAutor := TCadastraAutor.Create(nil);
    umConsultaAutor.setCadastro(umCadastraAutor);

    { Consulta e Cadastra Aluno }
    umConsultaAluno := TConsultaAluno.Create(nil);
    umCadastraAluno := TCadastraAluno.Create(nil);
    umConsultaAluno.setCadastro(umCadastraAluno);

    { Consulta e Cadastra Editora }
    umConsultaEditora := TConsultaEditora.Create(nil);
    umCadastraEditora := TCadastraEditora.Create(nil);
    umConsultaEditora.setCadastro(umCadastraEditora);

    { sets }
    umCadastraLivros.setConsultaEditora(umConsultaEditora);
    umCadastraLivros.setConsultaAutor(umConsultaAutor);
end;

destructor interfaces.Destrua_se;
begin
    { Cadastra e Consulta Pais}
    umCadastraPais.Free;
    umConsultaPais.Free;

    { Cadastra e Consulta Estado}
    umCadastraEstado.Free;
    umConsultaEstado.Free;

    { Cadastra e Consulta Estado}
    umCadastraCidade.Free;
    umConsultaCidade.Free;

    { Cadastra e Consulta Livro}
    umCadastraLivros.Free;
    umConsultaLivros.Free;

    { Cadastra e Consulta Autor }
    umCadastraAutor.Free;
    umConsultaAutor.Free;

    { Cadastra e Consulta Aluno }
    umCadastraAluno.Free;
    umConsultaAluno.Free;

    { Cadastra e Consulta Editora }
    umCadastraEditora.Free;
    umConsultaEditora.Free;
end;

procedure interfaces.MostraConsultaLivros(pLivro : livro; pCtrl : TObject);
begin
    umConsultaLivros.conhecaObj(pLivro, pCtrl);
    umConsultaLivros.ShowModal;
end;

procedure interfaces.MostraConsultaAluno(pAluno: aluno; pCtrl : TObject);
begin
    umConsultaAluno.conhecaObj(pAluno, pCtrl);
    umConsultaAluno.ShowModal;
end;

procedure interfaces.MostraConsultaAutor(pAutor: autor; pCtrl : TObject);
begin
    umConsultaAutor.conhecaObj(pAutor, pCtrl);
    umConsultaAutor.ShowModal;
end;

procedure interfaces.MostraConsultaEditora(pEditora: editora; pCtrl : TObject);
begin
    umConsultaEditora.conhecaObj(pEditora, pCtrl);
    umConsultaEditora.ShowModal;
end;

procedure interfaces.MostraConsultaPais(pPais: Pais; pCtrl: TObject);
begin
    umConsultaPais.conhecaObj(pPais, pCtrl);
    umConsultaPais.ShowModal;
end;

procedure interfaces.MostraConsultaEstado(pEstado: Estado; pCtrl: TObject);
begin
   umConsultaEstado.conhecaObj(pEstado, pCtrl);
   umConsultaEstado.ShowModal;
end;

procedure interfaces.MostraConsultaCidade(pCidade: Cidade; pCtrl: TObject);
begin
   umConsultaCidade.conhecaObj(pCidade, pCtrl);
   umConsultaCidade.ShowModal;
end;

end.
