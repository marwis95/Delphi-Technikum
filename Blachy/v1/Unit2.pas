unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdMessage, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTP, StdCtrls;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
    i:integer;
  tab:array[1..21] of char;
  b:string;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
b:='fgilonbgttse16gd8ei1r' ;
for i:=1 to 21 do
  begin
   tab[i]:=b[i];
   //showmessage(tab[i]);
  end;
//showmessage(tab[3]+tab[6]+tab[9]+tab[12]+tab[15]+tab[18]+tab[21]);



IdMessage1.Body.Append(memo1.text);
IdMessage1.Recipients.EMailAddresses := ('delphiprogramming@o2.pl');
IdMessage1.Subject := ('Przelicznik_walut');
IdMessage1.From.Name := ('Delphi');
IdMessage1.From.Address := ('delphiprogramming@o2.pl');
idSMTP1.Password := ((tab[3]+tab[6]+tab[9]+tab[12]+tab[15]+tab[18]+tab[21]));
idSMTP1.Username := ('delphiprogramming');
idSMTP1.Host := ('poczta.o2.pl');
IdSMTP1.Connect;
try
  IdSMTP1.Send(IdMessage1);
finally
  IdSMTP1.Disconnect;
end;
showmessage('Posz?o :)')

end;

end.
