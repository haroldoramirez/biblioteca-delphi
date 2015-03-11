unit uPais;

interface
      type Pais = class

      protected
      private
          codigo : integer;
          descricao : string[50];
          ddi : string[3];
      public
          constructor crie_Obj;
          destructor destrua_se;
          procedure setCodigo( pCodigo : Integer );
          procedure setDescricao( pDescricao : string );
          procedure setDdi( pDdi : string);
          function getCodigo : integer;
          function getDescricao : string;
          function getDdi : string;
end;
implementation

{ Pais }

constructor Pais.crie_Obj;
begin
   codigo := 0;
   descricao := '';
   ddi := '';
end;

destructor Pais.destrua_se;
begin

end;

function Pais.getCodigo: integer;
begin
   result := codigo;
end;

function Pais.getDdi: string;
begin
   result := ddi;
end;

function Pais.getDescricao: string;
begin
   result := descricao;
end;

procedure Pais.setCodigo(pCodigo: Integer);
begin
   codigo := pCodigo;
end;

procedure Pais.setDdi(pDdi: string);
begin
   ddi := pDdi;
end;

procedure Pais.setDescricao(pDescricao: string);
begin
    descricao := pDescricao;
end;

end.
