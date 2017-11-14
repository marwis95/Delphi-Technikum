unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, Mask;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    Label1: TLabel;
    Memo2: TMemo;
    Label2: TLabel;
    Memo3: TMemo;
    Label3: TLabel;
    Memo4: TMemo;
    Label4: TLabel;
    Memo5: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    Memo7: TMemo;
    Label7: TLabel;
    Memo8: TMemo;
    Label8: TLabel;
    MaskEdit1: TMaskEdit;
    Edit1: TEdit;
    Label9: TLabel;
    Edit2: TEdit;
    Label10: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i,x,licznik:integer;

implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
licznik:=0;
i:=strtoint(edit1.text);
for x:=1 to i do
begin
licznik:=licznik+1;
edit2.Text:=inttostr(licznik);

IdMessage1.Body.Append(memo1.text);
IdMessage1.Recipients.EMailAddresses := (memo2.text);
IdMessage1.Subject := (memo3.Text);
IdMessage1.From.Name := (memo4.text);
IdMessage1.From.Address := (memo5.Text);
idSMTP1.Password := (maskedit1.Text);
idSMTP1.Username := (memo7.Text);
idSMTP1.Host := (memo8.Text);
IdSMTP1.Connect;
try
  IdSMTP1.Send(IdMessage1);
finally
  IdSMTP1.Disconnect;
end;

end;
end;






procedure TForm1.FormCreate(Sender: TObject);
begin
memo1.Clear;
memo2.Clear;
memo3.Clear;
memo4.Clear;
memo5.Clear;
maskedit1.Clear;
memo7.Clear;
memo8.Clear;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
showmessage('Osoba która otrzyma maila');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
showmessage('Zawartoœæ tego okienka bêdziê siê wyœwietla³a w polu TEMAT');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
showmessage('Zawartoœæ tego okienka bêdziê siê wyœwietla³a w polu OD. Mo¿esz sk³amaæ ;-)')
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
showmessage('Tutaj musisz wpisaæ swój adres e-mail')
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
form3.show;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
form4.show;
end;

end.
