unit pierwiastek;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Label1: TLabel;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a:real;
  a_minus:real;
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

procedure TForm1.Button1Click(Sender: TObject);
begin
a_minus:=(-a);
wynik:=a_minus*a_minus*a_minus;
edit2.text:=floattostr(wynik);
end;

end.
