program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
 Application.ShowMainForm := false;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
  Application.ShowMainForm := false;


end.