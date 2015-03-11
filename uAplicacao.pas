unit uAplicacao;

interface
  uses uInter, uDM, uLivro, uGerente, uAutor, uAluno, uEditora, uPais, uEstado, uCidade;
    type Aplicacao = class

    private
        umaInter : Interfaces;
        umLivro : Livro;
        umGerente : TGerente;
        umAutor : Autor;
        umAluno : Aluno;
        umaEditora : Editora;
        umPais : Pais;
        umEstado : Estado;
        umaCidade : Cidade;
        umDM : TDM;
    protected

    public
        constructor CrieObj;
        destructor Destrua_se;
        procedure Execute_se;
    end;

implementation

{ Aplicacao }

constructor Aplicacao.CrieObj;
begin
    umGerente := TGerente.Create(nil);
    umaInter := interfaces.CrieObj;
    umLivro := livro.CrieObj;
    umAutor := autor.Crie_Obj;
    umAluno := aluno.Crie_Obj;
    umaEditora := editora.Crie_Obj;
    umPais := pais.crie_Obj;
    umEstado := estado.crie_Obj;
    umaCidade := cidade.crie_Obj;
    umDM := TDM.Create(nil);
end;

destructor Aplicacao.Destrua_se;
begin
    umaInter.Destrua_se;
    umLivro.Destrua_se;
    umAutor.Destrua_se;
    umAluno.Destrua_se;
    umaEditora.Destrua_se;
    umaCidade.destrua_Se;
    umEstado.destrua_Se;
    umPais.destrua_se;
    umGerente.Free;
    umDM.Free;
end;

procedure Aplicacao.Execute_se;
begin
    umGerente.conhecaObj(umaInter, umDM, umLivro, umAutor, umAluno, umaEditora, umPais, umEstado, umaCidade);
    umGerente.ShowModal;
end;

end.
