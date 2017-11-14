unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm6 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Edit2: TEdit;
    Memo1: TMemo;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Label2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  i:integer;
  znalazlem:boolean;
  temp:string;

implementation

uses Unit5;

{$R *.dfm}

procedure TForm6.FormCreate(Sender: TObject);
begin
znalazlem:=false;
EnableScrollBar(Form6.Handle, SB_BOTH, ESB_DISABLE_BOTH);
Memo1.Lines.LoadFromFile('Austria.txt');
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
for i:=0 to memo1.lines.count  do
  begin
  if memo1.Lines[i]=edit1.text then
  begin
  edit2.Text:=memo1.lines[i+1];
  znalazlem:=true;
  end;

  end;
if znalazlem=false then showmessage('Nie znalazlem');
znalazlem:=false;
end;

procedure TForm6.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
for i:=0 to memo1.lines.count  do
  begin
  if memo1.Lines[i]=edit1.text then
  begin
  edit2.Text:=memo1.lines[i+1];
  znalazlem:=true;
  end;

  end;
if znalazlem=false then showmessage('Nie znalazlem');
znalazlem:=false;
end;
end;

procedure TForm6.Label2Click(Sender: TObject);
begin
form6.Width:=730;
end;

end.
