unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  HH: TBitmap;
  SS: TCanvas;
  Ekran: TRect;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 Form1.Hide;
HH := TBitmap.Create;
SS := TCanvas.Create;
SS.Handle := GetWindowDC(GetDesktopWindow);
Ekran := Rect(0,0,Screen.Width,Screen.Height);
HH.Width := Ekran.Right;
HH.Height := Ekran.Bottom;
HH.Canvas.CopyRect(Ekran,SS,Ekran);
HH.SaveToFile('C:\screen.bmp');
HH.Free;
SS.Free;
Form1.Show;
end;


end.
