program close_win_dpr_v4;

uses
  Forms,
  close_win_pas in '..\close_win_pas.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
