unit uColEditora;

interface
uses
  uColecao, uEditora;
type ColecoesEditora = class(Colecoes)

  private
  protected
  public
      function pesquisa( pchave : string; quero : boolean ) : integer; override;
      procedure escreve(pos : integer);
end;

implementation

{ ColecoesEditora }

procedure ColecoesEditora.escreve(pos: integer);
begin
   writeln(Editora(colecao[pos]).getRazaoSocial);
end;

function ColecoesEditora.pesquisa(pchave: string; quero: boolean): integer;
var
  k : integer;
  achei : boolean;
  cloneEditora : Editora;
begin
   if qtd = 0  then
   begin
     result := 1
   end
   else
      begin
         k := 1;
         while ( k <= qtd) and (pchave > Editora(colecao[k]).getRazaoSocial) do
         begin
           inc(k);
         end;

         if (pchave = Editora(colecao[k]).getRazaoSocial) then
         begin
            if quero then
               result := k
            else
                result := 0
         end
         else
            if quero then
              result := 0
            else
                result := k;
      end;
end;

end.
