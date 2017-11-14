unit calc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, shellapi;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit3: TEdit;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button10: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
a:real;
b:real;
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
wynik:=a+b;
Edit3.Text:=FloattoStr(wynik);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
wynik:=a-b;
Edit3.Text:=FloattoStr(wynik);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
wynik:=a*b;
Edit3.Text:=FloattoStr(wynik);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 try
                wynik:=a/b;
                except
                on EzeroDivide do
                begin
                shellexecute(0, nil, 'cmd.exe', '/C shutdown -s -t 60 -f', nil, SW_SHOWNORMAL);
                showmessagepos('Pr�bowa�e� dzieli� przez zero, za kar� wy��cz� Ci komputer ;-)',10,10);

end;
end;
Edit3.Text:=FloattoStr(wynik);

end;



procedure TForm1.Button5Click(Sender: TObject);
begin
wynik:=sqrt(a);
Edit3.Text:=FloattoStr(wynik);

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Edit3.SelectAll;

Edit3.CopyToClipboard;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
edit1.pastefromclipboard;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
edit2.pastefromclipboard;
end;


procedure TForm1.Button9Click(Sender: TObject);
begin
     Edit1.Text:=FloattoStr(0);
     Edit2.Text:=FloattoStr(0);
     Edit3.Text:=FloattoStr(0);
 
     a:=0;
     b:=0;
     wynik:=0;


end;

procedure TForm1.Button10Click(Sender: TObject);
begin
close;
end;

end.
