unit Q2.Model.Condicoes;

interface

uses System.Classes, System.SysUtils, System.Generics.Collections, Q2.Model.Interfaces;

Type

  TCondicoes = class(TInterfacedObject, iCondicoes)
  private
   Lista: TList<String>;
   function GetCondicoes: String;
  public
    constructor Create;
    destructor Destroy; override;
    function ListaAdd(AValue: String): iCondicoes;
    function GerarSql: String;
    class function New: iCondicoes;
  end;

implementation

{ TCondicoes }

constructor TCondicoes.Create;
begin
  Lista := TList<string>.Create;
end;

destructor TCondicoes.Destroy;
begin

  inherited;
end;

function TCondicoes.GerarSql: String;
begin
  Result := GetCondicoes;
end;

function TCondicoes.GetCondicoes: String;
var
  i: Integer;
  Condicoes: String;
begin
  Condicoes := EmptyStr;
  for i := 0 to Pred(Lista.Count) do
    Condicoes := Condicoes + ' AND ' + Lista.Items[i];
  Result := Copy(Condicoes, 1 , Length(Condicoes));
end;

function TCondicoes.ListaAdd(AValue: String): iCondicoes;
begin
  Result := Self;
  Lista.Add(AValue);
end;

class function TCondicoes.New: iCondicoes;
begin
  Result := Self.Create;
end;

end.
