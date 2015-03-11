unit uColecao;
interface
  type colecoes = class
  private
  protected
    colecao : array[1..100] of TObject;
    qtd : integer;
  public
      constructor crieObj;
      destructor destrua_se;
      procedure inserir ( pObj : TObject; pos : integer );
      procedure inserirFim ( pObj : Tobject );
      procedure remove ( pObj : TObject; pos : integer );
      function pesquisa( pchave : string; quero : boolean ) : integer; virtual; abstract;
      function getQTDE : integer;
      function getObj (pPos : integer) : TObject;
      procedure setQTD (pqtd : integer);
      procedure setObj (pObj : TObject; pos : integer);
      function cheia : boolean;
  end;

implementation

{ colecoes }

function colecoes.cheia: boolean;
begin
  result := (qtd = 100);
end;

constructor colecoes.crieObj;
begin
   qtd := 0;
end;

destructor colecoes.destrua_se;
begin

end;

function colecoes.getObj(pPos: integer): TObject;
begin
   result := colecao[pPos];
end;

function colecoes.getQTDE: integer;
begin
   result := qtd;
end;

procedure colecoes.inserirFim(pObj: Tobject);
begin
   qtd := qtd + 1;
   colecao[qtd] := pObj;
end;

procedure colecoes.inserir(pObj: TObject; pos: integer);
var k : integer;
begin
  if pos = qtd + 1then
    inserirfim(pOBj)
  else
    qtd := qtd + 1;
    for k := qtd downto Pos do
      colecao[k] := colecao[k-1];

    colecao[pos] := pObj;

end;

procedure colecoes.remove( pObj: TObject; pos: integer);
var k : integer;
begin
  colecao[pos].free;
  pObj := colecao[pos];
  for k:= pos to qtd do
    colecao[k] := colecao[k+1];
  qtd := qtd - 1;
end;

procedure colecoes.setQTD(pqtd: integer);
begin
   qtd := pqtd;
end;

procedure colecoes.setObj(pObj: TObject; pos: integer);
begin
   Colecao[Pos]:=pObj;
end;

end.
