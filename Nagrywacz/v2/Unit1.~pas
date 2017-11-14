unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxsounds, wave, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Timer1: TTimer;
    Image1: TImage;
    Memo2: TMemo;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
  procedure Zapszdostrumienia(Sender: TObject);
    { Public declarations }
  end;

var
  Form1: TForm1;
  CapturedAudio : TSoundCaptureStream;
  WaveStream : TWaveStream;
  i:real;
  i_str:string;
  i_jpg:string;
  i_new:string;



implementation

{$R *.dfm}


procedure TForm1.Zapszdostrumienia(Sender: TObject);
begin
WaveStream.CopyFrom(CapturedAudio,CapturedAudio.FilledSize);
Application.ProcessMessages;
end;
                                                     //procedura

procedure TForm1.FormCreate(Sender: TObject);
begin
 if Not FileExists('C:\sound.txt')
  Then memo1.Text:=('0');

 if Not FileExists('C:\sound.txt')
  Then memo1.Lines.savetofile('C:\sound.txt') ;

 if fileexists('C:\sound.txt')
 then
Memo1.Lines.LoadFromFile('C:\sound.txt');
i:=strtofloat(memo1.text);

timer1.Enabled:=false;

end;                                                   //tworzenie plików config



procedure TForm1.Button1Click(Sender: TObject);
begin
timer1.Enabled:=true;
begin
  i:=i+1   ;
  memo1.text:=floattostr(i);
  i_str:=floattostr(i);
  i_jpg:=('.wav')   ;
  i_new:=i_str+i_jpg;
  label3.Color:=clNavy;
  CapturedAudio := TSoundCaptureStream.Create(nil);
  WaveStream := TWaveFileStream.Create(i_new, fmCreate);
  CapturedAudio.OnFilledBuffer := Zapszdostrumienia;
  WaveStream.SetPCMFormat(11025,8,1);
  WaveStream.Open(True);
  CapturedAudio.Start;
  timer1.Enabled:=false;
    label3.caption:=('Nagrywam');
  label3.Color:=clGreen;
end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  CapturedAudio.Stop;
  CapturedAudio.Free;
  WaveStream.Free;
  label3.caption:=('Zatrzymany');
  label3.Color:=clRed;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
i:=0;
memo1.text:=floattostr(i);
memo1.lines.savetofile('C:/sound.txt');
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  label3.caption:=('Przygotowuje...');
  label3.Color:=clNavy;
end;

end.
