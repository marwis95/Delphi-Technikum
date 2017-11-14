unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  DC: THandle;
 Bitmap: TBitmap;
 Filename : String;
 Monochrome : Boolean;
 Depth : TPixelFormat;
 i:real;
 i_str:string;
 i_jpg:string;
 i_new:string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Application.Minimize;
sleep(500);
i:=i+1   ;
memo1.text:=floattostr(i);
i_str:=floattostr(i);
i_jpg:=('.jpg')   ;
i_new:=i_str+i_jpg;
memo1.lines.savetofile('C:/shooter.txt');
try
  DC := GetDC(GetDesktopWindow);
  Bitmap := TBitmap.Create;
  Bitmap.Width := GetSystemMetrics(SM_CXSCREEN);
  Bitmap.Height := GetSystemMetrics(SM_CYSCREEN);
  Bitmap.PixelFormat := pf16bit;
  BitBlt(Bitmap.Canvas.Handle, 0, 0, GetSystemMetrics(SM_CXSCREEN), GetSystemMetrics(SM_CYSCREEN), DC, 0, 0, SRCCOPY);
  ReleaseDC(GetDesktopWindow, DC);
  Bitmap.MonoChrome := false;
  Bitmap.SaveToFile(i_new);
  Bitmap.Dormant;
//bitmap.
  Bitmap.FreeImage;
  Bitmap.Free;
  Application.restore;
 except
 end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 if Not FileExists('C:\shooter.txt')
  Then memo1.Text:=('0');

 if Not FileExists('C:\shooter.txt')
  Then memo1.Lines.savetofile('C:\shooter.txt') ;

 if fileexists('C:\shooter.txt')
 then
Memo1.Lines.LoadFromFile('C:\shooter.txt');
i:=strtofloat(memo1.text);


end;


    procedure TForm1.Button2Click(Sender: TObject);
begin
i:=0;
memo1.text:=floattostr(i);
end;

end.