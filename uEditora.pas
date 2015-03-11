unit uEditora;

interface
  type Editora = class
    private
        codigo : Integer;
        razaosocial : string[150];
        fantasia : string[100];
        cnpj : string[14];
    protected
    public
        constructor Crie_Obj;
        destructor Destrua_se;
        procedure setCodigo(pCodigo : integer);
        procedure setRazaoSocial(pRazaoSocial : string);
        procedure setFantasia(pFantasia : string);
        procedure setCnpj(pCnpj : string);
        function getCodigo:integer;
        function getRazaoSocial:string;
        function getFantasia:string;
        function getCnpj:string;
        function cloneEditora : Editora;
  end;

implementation

{ Editora }

function Editora.cloneEditora: Editora;
begin
   result := Editora.Crie_Obj;
   result.codigo := codigo;
   result.razaosocial := razaosocial;
   result.fantasia := fantasia;
   result.cnpj := cnpj;
end;

constructor Editora.Crie_Obj;
begin
    codigo := 0;
    razaosocial := '';
    fantasia := '';
    cnpj := '';
end;

destructor Editora.Destrua_se;
begin

end;

function Editora.getCnpj: string;
begin
   result := cnpj;
end;

function Editora.getCodigo: integer;
begin
   result := codigo;
end;

function Editora.getFantasia: string;
begin
   result := fantasia;
end;

function Editora.getRazaoSocial: string;
begin
   result := razaosocial;
end;

procedure Editora.setCnpj(pCnpj: string);
begin
   cnpj := pCnpj;
end;

procedure Editora.setCodigo(pCodigo: integer);
begin
   codigo := pCodigo;
end;

procedure Editora.setFantasia(pFantasia: string);
begin
   fantasia := pFantasia;
end;

procedure Editora.setRazaoSocial(pRazaoSocial: string);
begin
   razaosocial := pRazaoSocial;
end;

end.
