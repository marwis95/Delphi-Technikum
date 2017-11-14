unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i:integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Canvas.Pen.Width := 3;
//Canvas.PenPos:=Point(735,0);

for i:=1 to 735 do
begin
Canvas.PenPos:=Point(735,0);
  Canvas.lineto(735,i);
sleep(1);

end;

i:=0;
for i:=1 to 1024 do
begin
Canvas.PenPos:=Point(115,500);
Canvas.lineto(i+115,500);
sleep(1);
end;
end;

end.
