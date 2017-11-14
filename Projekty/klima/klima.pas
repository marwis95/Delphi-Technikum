unit klima;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a:real;
  b:real;
  temp:real;
  wynik:real;

implementation

{$R *.DFM}

procedure TForm1.Edit1Change(Sender: TObject);
begin
 try
    a:=StrToFloat(Edit1.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;

end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
 try
    b:=StrToFloat(Edit2.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if a=0 then showmessage('Nie wprowadzi³eœ licznika');
if b=0 then showmessage('Nie wprowadzi³eœ licznika');
 temp:=a/b;
 edit3.text:=floattostr(temp);
 wynik:=temp*25.4;
 edit4.text:=floattostr(wynik);
end;

end.
