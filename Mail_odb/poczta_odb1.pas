unit poczta_odb1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdMessage, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdPOP3, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    IdMessage1: TIdMessage;
    IdPOP31: TIdPOP3;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    StatusBar1: TStatusBar;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  il_wiad : integer;     //ilo�� wiadomo�ci
  il_zal : integer;      //ilo�� za��cznik�w
  zal_nazwa : string;    //nazwa za��cznika

implementation

{$R *.dfm}

// ------------------------



// ------------------------


procedure TForm1.Button1Click(Sender: TObject);

begin
  //czyszczenie komponentu IdMessage
  IdMessage1.Clear;
  //ustawienie adresu IP/nazwy serwera
  IdPOP31.Host := Edit1.Text;
  //ustawienie nazwy u�ytkownika
  IdPOP31.Username := Edit2.Text;
  //ustawienie has�a u�ytkownika
  IdPOP31.Password := Edit3.Text;

  //nawi�zanie po��czenia w przypadku jego braku
  If not IdPOP31.Connected then
  begin
    try
      statusbar1.SimpleText := 'Odbieranie poczty - zestawianie po��czenia!!!';
      //zestawianie po��czenia
      IdPOP31.Connect(-1);
      statusbar1.SimpleText := 'Odbieranie poczty - po��czony!!!';
    except
      on exception do
      begin
        statusbar1.SimpleText := 'Odbieranie poczty - b��d po��czenia!!!';
      end;
    end;
  end;
 
  //odebranie wiadomo�ci w przypadku pomy�lnego nawi�zania po��czenia
  if IdPOP31.Connected then
  begin
    //sprawdzenie ilo�ci wiadomo�ci na serwerze
    il_wiad := IdPOP31.CheckMessages;
    statusbar1.SimpleText := IntToStr(il_wiad);
 
    while il_wiad > 0 do
    begin
      //czyszczenie komponentu IdMessage
      IdMessage1.Clear;
      //odbi�r wiadomo�ci z serwera, wype�nienie komponentu IdMessage
      IdPOP31.Retrieve(il_wiad, IdMessage1);
      //sprawdzenie ilo�ci za��cznik�w w wiadomo�ci
      il_zal := IdMessage1.MessageParts.Count - 1;
      Showmessage('Odbieranie wiadomo�ci: ' + inttostr(il_wiad) + ' Od: ' + IdMessage1.From.Text + ' Temat: ' + IdMessage1.Subject + 'Za��cznik�w:' + inttostr(il_zal));

      while il_zal > 0 do
      begin
        if (IdMessage1.MessageParts.Items[il_zal] is TIdAttachment) then
        begin
          zal_nazwa := TIdAttachment(IdMessage1.MessageParts.Items[il_zal]).Filename;      TIdAttachment(IdMessage1.MessageParts.Items[il_zal]).SaveToFile(ExtractFilePath(ParamStr(0)) + zal_nazwa);
        end;
        il_zal := il_zal + 1;
      end;

      //kasowanie wiadomo�ci na serwerze
      IdPOP31.Delete(il_wiad);
      il_wiad := il_wiad - 1;
    end;

  end;
end;

end.
