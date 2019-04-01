unit Q2.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Generics.Collections, Q2.Model.Colunas,
  Q2.Model.Condicoes, Q2.Model.Tabelas;

type
  TForm1 = class(TForm)
    memoColunas: TMemo;
    memoTabelas: TMemo;
    memoCondicoes: TMemo;
    memoSQL: TMemo;
    btnGerarSql: TButton;
    procedure btnGerarSqlClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Q2.Model.Interfaces;


procedure TForm1.btnGerarSqlClick(Sender: TObject);
var
  i: integer;
  Campos, Tabelas, Condicoes: String;
begin

  for i := 0 to Pred(memoColunas.Lines.Count) do
    Campos := Campos + TColunas.New.
      ListaAdd(memoColunas.Lines[i]).
        GerarSql;

  for i := 0 to Pred(memoTabelas.Lines.Count) do
    Tabelas := Tabelas + TTabelas.New.
      ListaAdd(memoTabelas.Lines[i]).
        GerarSql;

  for i := 0 to Pred(MemoCondicoes.Lines.Count) do
    Condicoes := Condicoes + TCondicoes.New.ListaAdd(
      memoCondicoes.Lines[i]).
        GerarSql;

  memoSQL.Text := ' SELECT ' + Campos + ' FROM ' + Tabelas + ' WHERE ' + Condicoes;

end;

end.
