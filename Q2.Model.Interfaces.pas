unit Q2.Model.Interfaces;

interface

uses
  System.Classes;

Type

  iDisplay = interface
    ['{38D664CE-9D18-4031-997E-371FF19C9CF1}']
    function GerarSql: iDisplay;
  end;

  iColunas = interface
    ['{1D15B3EA-CD98-4AF5-93C0-B831204A251E}']
    function ListaAdd(AValue: String): iColunas;
    function GerarSql: String;
  end;

  iTabelas = interface
    ['{6AD22D90-C934-4E94-96DD-DBAD05BF9C9A}']
    function ListaAdd(AValue: String): iTabelas;
    function GerarSql: String;
  end;

  iCondicoes = interface
    ['{C81F9C01-4562-46D0-A857-A7E2C81373C2}']
    function ListaAdd(AValue: String): iCondicoes;
    function GerarSql: String;
  end;

implementation

end.
