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
  DC: THandle;
 Bitmap: TBitmap;
 Filename : String;
 Monochrome : Boolean;
 Depth : TPixelFormat;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
try
  DC := GetDC(GetDesktopWindow);
  Bitmap := TBitmap.Create;
  Bitmap.Width := GetSystemMetrics(SM_CXSCREEN);
  Bitmap.Height := GetSystemMetrics(SM_CYSCREEN);
  Bitmap.PixelFormat := pf16bit;
  BitBlt(Bitmap.Canvas.Handle, 0, 0, GetSystemMetrics(SM_CXSCREEN), GetSystemMetrics(SM_CYSCREEN), DC, 0, 0, SRCCOPY);
  ReleaseDC(GetDesktopWindow, DC);
  Bitmap.MonoChrome := false;
  Bitmap.SaveToFile('C:/screen_shot.jpg');
  Bitmap.Dormant;
//bitmap.
  Bitmap.FreeImage;
  Bitmap.Free;
 except
 end;
end;

end.
 