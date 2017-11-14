unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  i:integer;
  znalazlem:boolean;
  temp:string;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
begin
znalazlem:=false;
EnableScrollBar(Form5.Handle, SB_BOTH, ESB_DISABLE_BOTH);
Memo1.Lines.LoadFromFile('Czechy.txt');
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
for i:=0 to memo1.lines.count  do
  begin
  if memo1.Lines[i]=edit1.text then
  begin
  edit2.Text:=memo1.lines[i+1];
  edit3.Text:=memo1.lines[i+2];
  znalazlem:=true;
  end;

  end;
if znalazlem=false then showmessage('Nie znalazlem');
znalazlem:=false;
end;

procedure TForm5.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
for i:=0 to memo1.lines.count  do
  begin
  if memo1.Lines[i]=edit1.text then
  begin
  edit2.Text:=memo1.lines[i+1];
  edit3.Text:=memo1.lines[i+2];
  znalazlem:=true;
  end;

  end;
if znalazlem=false then showmessage('Nie znalazlem');
znalazlem:=false;
end;
end;

procedure TForm5.Label3Click(Sender: TObject);
begin
form5.Width:=730;
end;



end.
