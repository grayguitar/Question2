program Project1;

uses
  Vcl.Forms,
  Q2.View.Main in 'Q2.View.Main.pas' {Form1},
  Q2.Model.Colunas in 'Q2.Model.Colunas.pas',
  Q2.Model.Tabelas in 'Q2.Model.Tabelas.pas',
  Q2.Model.Condicoes in 'Q2.Model.Condicoes.pas',
  Q2.Model.Interfaces in 'Q2.Model.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
