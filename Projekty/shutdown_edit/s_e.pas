unit s_e;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, shellapi,
  StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  czas:real;

implementation

{$R *.DFM}

procedure TForm1.Edit1Change(Sender: TObject);
begin
czas:=edit1.text;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
shellexecute(0, nil, 'cmd.exe', '/C shutdown -s -t(czas) -f', nil, SW_SHOWNORMAL);
sleep(5000);
end;

end.
