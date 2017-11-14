unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
    i:integer;
    x:boolean;
    wyjatek:boolean;
    szukam, dodatek:string;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
EnableScrollBar(Form2.Handle, SB_BOTH, ESB_DISABLE_BOTH);
Memo1.Lines.LoadFromFile('Polska.txt');
dodatek:='0';
wyjatek:=false;
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
edit2.Visible:=true;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
x:=false;
if edit1.text='ww' then
begin
wyjatek:=true;
if dodatek='0' then showmessage('Jest kilka takich wyró¿ników. Wpisz ostatni¹ litere, aby doprecyzowac i wyszukaj jeszcze raz');
edit2.visible:=true;
dodatek:=edit2.Text;
szukam:=edit1.Text+'*'+dodatek;
i:=0;
end;
//showmessage(szukam);
//Wyj¹tek dla warszawy

if wyjatek=false then szukam:=edit1.Text;

for i:=1 to memo1.lines.count  do
  begin
  if memo1.Lines[i]=szukam then
  begin
  edit3.Text:=memo1.lines[i+1];
  edit4.Text:=memo1.lines[i+2];
  x:=true;
   end;
   end;

if (x=false) and (wyjatek=false)  then
begin
  edit3.clear;
  edit4.clear;
  showmessage('Nie znalazlem');
  end;

end;



procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
x:=false;
if edit1.text='ww' then
begin
wyjatek:=true;
if dodatek='0' then showmessage('Jest kilka takich wyró¿ników. Wpisz ostatni¹ litere, aby doprecyzowac i wyszukaj jeszcze raz');
edit2.visible:=true;
dodatek:=edit2.Text;
szukam:=edit1.Text+'*'+dodatek;
i:=0;
end;
//showmessage(szukam);
//Wyj¹tek dla warszawy

if wyjatek=false then szukam:=edit1.Text;

for i:=1 to memo1.lines.count  do
  begin
  if memo1.Lines[i]=szukam then
  begin
  edit3.Text:=memo1.lines[i+1];
  edit4.Text:=memo1.lines[i+2];
  x:=true;
   end;
   end;

if (x=false) and (wyjatek=false)  then
begin
  edit3.clear;
  edit4.clear;
  showmessage('Nie znalazlem');
  end;

end;
end;

procedure TForm2.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
x:=false;
if edit1.text='ww' then
begin
wyjatek:=true;
if dodatek='0' then showmessage('Jest kilka takich wyró¿ników. Wpisz ostatni¹ litere, aby doprecyzowac i wyszukaj jeszcze raz');
edit2.visible:=true;
dodatek:=edit2.Text;
szukam:=edit1.Text+'*'+dodatek;
i:=0;
end;
//showmessage(szukam);
//Wyj¹tek dla warszawy

if wyjatek=false then szukam:=edit1.Text;

for i:=1 to memo1.lines.count  do
  begin
  if memo1.Lines[i]=szukam then
  begin
  edit3.Text:=memo1.lines[i+1];
  edit4.Text:=memo1.lines[i+2];
  x:=true;
   end;
   end;

if (x=false) and (wyjatek=false)  then
begin
  edit3.clear;
  edit4.clear;
  showmessage('Nie znalazlem');
  end;

end;
end;

procedure TForm2.Label3Click(Sender: TObject);
begin
form2.Width:=730;
end;

end.
