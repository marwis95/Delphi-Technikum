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
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
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
i: TColor;
ihex:string;
ihexhash:string;
skl_r:string;
skl_g:string;
skl_b:string;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
GetCursorPos(p);
DC:= GetWindowDC(0);
c:= GetPixel(DC,p.x,p.y);

i:=ColorToRGB(c);

skl_r:=IntToStr(RGB(i));
skl_g:=IntToStr(RGB(i));
skl_b:=IntToStr(RGB(i));

edit6.text:= skl_r;
edit7.text:= skl_r;
edit8.text:= skl_r;

edit1.Text:=inttostr(p.x);
edit2.Text:=inttostr(p.y);
//edit3.text:=inttostr(i);
ihex:=inttohex(c,6);
ihexhash:='#'+ihex;
edit4.text:=ihexhash;
panel1.color:=c;

if (i>=0) and (i<=128) then edit5.text:='Czarny';
//else edit5.text:='???';

if (i>129) and (i<=32768) then edit5.text:='Niebieski';
//else edit5.text:='???';

if (i>32769) and (i<=65535) then edit5.text:='Zielony' ;
//else edit5.text:='???';

if (i>65536) and (i<=8388608) then edit5.text:='Bordowy';
//else edit5.text:='???';

if (i>8388609) and (i<=8388736) then edit5.text:='Fioletowy';
//else edit5.text:='???';

if (i>8388737) and (i<=8421376) then edit5.text:='Oliwkowy';
//else edit5.text:='???';



if (i>8421377) and (i<=8421504) then edit5.text:='Szary' ;
//else edit5.text:='???';

if (i>8421505) and (i<=12632256) then edit5.text:='Srebrny' ;
//else edit5.text:='???';

if (i>12632257) and (i<=16711680) then edit5.text:='Czerwony';
//else edit5.text:='???';

if (i>16711681) and (i<=16711935) then edit5.text:='Purpurowy';
//else edit5.text:='???';

if (i>16711936) and (i<=16776960) then edit5.text:='Zólty';
//else edit5.text:='???';

if (i>16776961) and (i<=16777215) then edit5.text:='Bialy';
//else edit5.text:='???';


end;

end.
