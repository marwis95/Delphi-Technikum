unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  DC: HDC;
p: Tpoint;
c: COLORREF;
i: integer;
ihex:string;
ihexhash:string;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
GetCursorPos(p);
DC:= GetWindowDC(0);
c:= GetPixel(DC,p.x,p.y);
i:= C;

edit1.Text:=inttostr(p.x);
edit2.Text:=inttostr(p.y);
edit3.text:=inttostr(i);
ihex:=inttohex(i,6);
ihexhash:='#'+ihex;
edit4.text:=ihexhash;
panel1.color:=i;


end;

end.
