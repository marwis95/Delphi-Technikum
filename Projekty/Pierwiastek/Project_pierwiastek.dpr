program Project_pierwiastek;

uses
  Forms,
  pierwiastek in 'pierwiastek.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
