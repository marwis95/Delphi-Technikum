unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i,j:integer;
  szukaj,x,y:string;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Memo1.Lines.LoadFromFile('polska.txt');
for i:=1 to memo1.lines.count  do
  begin
  if memo1.Lines[i]=edit1.text then
  begin
  edit2.Text:=memo1.lines[i+1];
  edit3.Text:=memo1.lines[i+2];
  end;

  end;

end;

end.
