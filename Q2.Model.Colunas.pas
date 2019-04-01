unit Q2.Model.Colunas;

interface

uses System.Classes, System.SysUtils, System.Generics.Collections, Q2.Model.Interfaces;

Type

  TColunas = class(TInterfacedObject, iColunas)
  private
    Lista: TList<String>;
    function GetCampos: String;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iColunas;
    function ListaAdd(AValue: String): iColunas;
    function GerarSql: String;
  end;

implementation

{ TColunas }

constructor TColunas.Create;
begin
  Lista := TList<string>.Create;
end;

destructor TColunas.Destroy;
begin
  inherited;
end;

function TColunas.GerarSql: String;
begin
  Result := GetCampos;
end;

function TColunas.GetCampos: String;
var
  i: Integer;
  Campos: String;
begin
  Campos := EmptyStr;
  for i := 0 to Pred(Lista.Count) do
    Campos := Campos + ',' + Lista.Items[i];
  Result := Copy(Campos, 1 , Length(Campos));
end;

function TColunas.ListaAdd(AValue: String): iColunas;
begin
  Result := Self;
  Lista.Add(AValue);
end;

class function TColunas.New: iColunas;
begin
  Result := Self.Create;
end;

end.
