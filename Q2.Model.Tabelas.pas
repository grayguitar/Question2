unit Q2.Model.Tabelas;

interface

uses System.Classes, System.SysUtils, System.Generics.Collections, Q2.Model.Interfaces;

Type

  TTabelas = class(TInterfacedObject, iTabelas)
  private
    Lista: TList<String>;
    function GetTabelas: String;
  public
    constructor Create;
    destructor Destroy; override;
    function ListaAdd(AValue: String): iTabelas;
    function GerarSql: String;
    class function New: iTabelas;
  end;

implementation

{ TTabelas }

constructor TTabelas.Create;
begin
  Lista := TList<string>.Create;
end;

destructor TTabelas.Destroy;
begin
  inherited;
end;

function TTabelas.GerarSql: String;
begin
  Result := GetTabelas;
end;

function TTabelas.GetTabelas: String;
var
  i: Integer;
  Tabelas: String;
begin
  Tabelas := EmptyStr;
  for i := 0 to Pred(Lista.Count) do
    Tabelas := Tabelas + ',' + Lista.Items[i];
  Result := Copy(Tabelas, 1 , Length(Tabelas));
end;

function TTabelas.ListaAdd(AValue: String): iTabelas;
begin
  Result := Self;
  Lista.Add(AValue);
end;

class function TTabelas.New: iTabelas;
begin
  Result := Self.Create;
end;

end.
