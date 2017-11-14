unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
form3.show;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
form4.Show;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
form5.show;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
form6.show;
end;

end.
