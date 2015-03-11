unit uEstado;

interface
   uses uPais;
     type Estado = class

     protected
     private
          codigo : integer;
          descricao : string[50];
          sigla : string[2];
          umPais : Pais;
     public
          constructor crie_Obj;
          destructor destrua_Se;
          procedure setCodigo( pCodigo : integer);
          procedure setDescricao( pDescricao : string);
          procedure setSigla( pSigla : string);
          procedure setUmPais( pUmPais : Pais);
          function getCodigo : integer;
          function getDescricao : string;
          function getSigla : string;
          function getUmPais : Pais;
end;
implementation

{ Estado }

constructor Estado.crie_Obj;
begin
    codigo := 0;
    descricao := '';
    sigla := '';
    umPais := Pais.crie_Obj;
end;

destructor Estado.destrua_Se;
begin
    umPais.destrua_se;
end;

function Estado.getCodigo: integer;
begin
    result := codigo;
end;

function Estado.getDescricao: string;
begin
    result := descricao;
end;

function Estado.getSigla: string;
begin
    result := sigla;
end;

function Estado.getUmPais: Pais;
begin
    result := umPais;
end;

procedure Estado.setCodigo(pCodigo: integer);
begin
    codigo := pCodigo;
end;

procedure Estado.setDescricao(pDescricao: string);
begin
    descricao := pDescricao;
end;

procedure Estado.setSigla(pSigla: string);
begin
    sigla := pSigla;
end;

procedure Estado.setUmPais(pUmPais: Pais);
begin
    umPais := pUmPais;
end;

end.
