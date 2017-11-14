program Ver2;

uses
  Forms,
  Ver1 in 'VER1.PAS' {Form1};

{$R *.RES}

begin
  Application.Title := 'Czasowniki Nieregularne - 1.0';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
