program project_s_e;

uses
  Forms,
  s_e in 's_e.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
