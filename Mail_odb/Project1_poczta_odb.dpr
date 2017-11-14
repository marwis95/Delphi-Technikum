program Project1_poczta_odb;

uses
  Forms,
  poczta_odb1 in 'poczta_odb1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
