unit bryly;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Menus;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    Label7: TLabel;
    Edit5: TEdit;
    Label8: TLabel;
    Edit6: TEdit;
    Button2: TButton;
    Edit7: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Edit8: TEdit;
    Label11: TLabel;
    Button3: TButton;
    Edit9: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Edit10: TEdit;
    Button4: TButton;
    Edit11: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Edit12: TEdit;
    Label16: TLabel;
    Edit13: TEdit;
    Button5: TButton;
    Edit14: TEdit;
    Label17: TLabel;
    Edit15: TEdit;
    Label18: TLabel;
    Edit16: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    Button6: TButton;
    Edit17: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Edit18: TEdit;
    Label24: TLabel;
    Edit19: TEdit;
    Label25: TLabel;
    Edit20: TEdit;
    Button7: TButton;
    Edit21: TEdit;
    Label26: TLabel;
    Edit22: TEdit;
    Label27: TLabel;
    Edit23: TEdit;
    Label28: TLabel;
    Label29: TLabel;
    Edit24: TEdit;
    Button8: TButton;
    Edit25: TEdit;
    Label30: TLabel;
    Label31: TLabel;
    Edit26: TEdit;
    Button9: TButton;
    Edit27: TEdit;
    Label32: TLabel;
    Label33: TLabel;
    Edit28: TEdit;
    Button10: TButton;
    Edit29: TEdit;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Edit30: TEdit;
    Label37: TLabel;
    Label38: TLabel;
    Edit31: TEdit;
    Button11: TButton;
    Edit32: TEdit;
    Label39: TLabel;
    Label40: TLabel;
    Edit33: TEdit;
    Label41: TLabel;
    Edit34: TEdit;
    Button12: TButton;
    Edit35: TEdit;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Edit36: TEdit;
    Label45: TLabel;
    Edit37: TEdit;
    Button13: TButton;
    Edit38: TEdit;
    Label46: TLabel;
    Label47: TLabel;
    Edit39: TEdit;
    Label48: TLabel;
    Edit40: TEdit;
    Button14: TButton;
    Edit41: TEdit;
    Label49: TLabel;
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit12Change(Sender: TObject);
    procedure Edit13Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit15Change(Sender: TObject);
    procedure Edit16Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Edit18Change(Sender: TObject);
    procedure Edit19Change(Sender: TObject);
    procedure Edit20Change(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit22Change(Sender: TObject);
    procedure Edit23Change(Sender: TObject);
    procedure Edit24Change(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Edit26Change(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Edit28Change(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Edit30Change(Sender: TObject);
    procedure Edit31Change(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Edit33Change(Sender: TObject);
    procedure Edit34Change(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Edit36Change(Sender: TObject);
    procedure Edit37Change(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Edit39Change(Sender: TObject);
    procedure Edit40Change(Sender: TObject);
    procedure Button14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  pi:real;
  h_gran:real;
  pp_gran:real;
  v_gran:real;
  pp_p_gran:real;
  pb_gran:real;
  p_gran:real;
  temp_gran:real;


  a_szes:real;
  v_szes:real;
  a_p_szes:real;
  temp_szes:real;
  p_szes:real;



  pp_os:real;
  h_os:real;
  v_os:real;
  pp_p_os:real;
  pb_os:real;
  pc_os:real;


  a_pro:real;
  b_pro:real;
  h_pro:real;
  v_pro:real;
  a_p_pro:real;
  b_p_pro:real;
  h_p_pro:real;
  temp1_pro:real;
  temp2_pro:real;
  temp3_pro:real;
  temp4_pro:real;
  pc_pro:real;


  r_k:real;
  v_k:real;
  temp_k:real;
  r_p_k:real;
  temp_p_k:real;
  p_k:real;


  r_os:real;
  h_ost:real;
  temp_ost:real;
  v_ost:real;
  r_p_ost:real;
  l_p_ost:real;
  pc_ost:real;


  r_wa:real;
  h_wa:real;
  temp_wa:real;
  v_wa:real;
  pb_wa:real;
  pp_wa:real;
  temp_wal:real;
  pc_wa:real;

implementation

{$R *.DFM}

procedure TForm1.Edit1Change(Sender: TObject);
begin
 try
    pi:=StrToFloat(Edit1.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;

end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
try
    h_gran:=StrToFloat(Edit2.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
 try
    pp_gran:=StrToFloat(Edit3.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
v_gran:=h_gran*pp_gran;
edit4.text:=floattostr(v_gran);
end;















procedure TForm1.Edit5Change(Sender: TObject);
begin
try
    pp_p_gran:=StrToFloat(Edit5.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Edit6Change(Sender: TObject);
begin
 try
    pb_gran:=StrToFloat(Edit6.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
temp_gran:=2*pp_p_gran;
p_gran:=temp_gran+pb_gran;
edit7.text:=floattostr(p_gran);
end;












procedure TForm1.Edit8Change(Sender: TObject);
begin
a_szes:=strtofloat(edit8.text)
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
v_szes:=a_szes*a_szes*a_szes;
edit9.text:=floattostr(v_szes);
end;

procedure TForm1.Edit10Change(Sender: TObject);
begin
try
a_p_szes:=strtoint(edit10.text);
except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
temp_szes:=a_p_szes*a_p_szes;
p_szes:=6*a_p_szes;
edit11.text:=floattostr(p_szes);

end;











procedure TForm1.Edit12Change(Sender: TObject);
begin
try
    pp_os:=StrToFloat(Edit12.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Edit13Change(Sender: TObject);
begin
try
    h_os:=StrToFloat(Edit13.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
v_os:=pp_os*h_os/3;
edit14.text:=floattostr(v_os);
end;












procedure TForm1.Edit15Change(Sender: TObject);
begin
 try
    pp_p_os:=StrToFloat(Edit15.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Edit16Change(Sender: TObject);
begin
try
    pb_os:=StrToFloat(Edit16.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
pc_os:=pb_os+pp_p_os;
edit17.text:=floattostr(pc_os);
end;











procedure TForm1.Edit18Change(Sender: TObject);
begin
try
    a_pro:=StrToFloat(Edit18.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Edit19Change(Sender: TObject);
begin
try
    b_pro:=StrToFloat(Edit19.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Edit20Change(Sender: TObject);
begin
try
    h_pro:=StrToFloat(Edit20.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
 v_pro:=a_pro*b_pro*h_pro;
 edit21.text:=floattostr(v_pro);
end;





procedure TForm1.Edit22Change(Sender: TObject);
begin
try
    a_p_pro:=StrToFloat(Edit22.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Edit23Change(Sender: TObject);
begin
try
    b_p_pro:=StrToFloat(Edit23.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Edit24Change(Sender: TObject);
begin
try
    h_p_pro:=StrToFloat(Edit24.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
temp1_pro:=a_p_pro*b_p_pro;
temp2_pro:=a_p_pro*h_p_pro;
temp3_pro:=b_p_pro*h_p_pro;
temp4_pro:=temp1_pro+temp2_pro+temp3_pro;
pc_pro:=temp4_pro*2;
edit25.text:=floattostr(pc_pro);
end;













procedure TForm1.Edit26Change(Sender: TObject);
begin
try
    r_k:=StrToFloat(Edit26.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
 temp_k:=r_k*r_k*r_k;
 v_k:=1.33*pi*temp_k;
 if v_k=0 then showmessage('Brawo!!!Zapomnia³eœ wprowadziæ pi');
 edit27.text:=floattostr(v_k);
end;

procedure TForm1.Edit28Change(Sender: TObject);
begin
try
    r_p_k:=StrToFloat(Edit28.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
temp_p_k:=r_p_k*r_p_k;
p_k:=4*pi*temp_p_k;
if p_k=0 then showmessage('Brawo!!!Zapomnia³eœ wprowadziæ pi');
edit29.text:=floattostr(p_k);
end;











procedure TForm1.Edit30Change(Sender: TObject);
begin
try
    r_os:=StrToFloat(Edit30.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Edit31Change(Sender: TObject);
begin
 try
    h_ost:=StrToFloat(Edit31.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
temp_ost:=r_os*r_os;
v_ost:=temp_ost*h_ost*pi/3;
if v_ost=0 then showmessage('Brawo!!!Zapomnia³eœ wprowadziæ pi');
 edit32.text:=floattostr(v_ost);
end;

procedure TForm1.Edit33Change(Sender: TObject);
begin
 try
    r_p_ost:=StrToFloat(Edit33.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Edit34Change(Sender: TObject);
begin
try
    l_p_ost:=StrToFloat(Edit34.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
pc_ost:=pi*r_p_ost*l_p_ost;
if pc_ost=0 then showmessage('Brawo!!!Zapomnia³eœ wprowadziæ pi');
edit35.text:=floattostr(pc_ost);

end;









procedure TForm1.Edit36Change(Sender: TObject);
begin
try
    r_wa:=StrToFloat(Edit36.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Edit37Change(Sender: TObject);
begin
try
    h_wa:=StrToFloat(Edit37.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
 temp_wa:=r_wa*r_wa;
 v_wa:=pi*temp_wa*h_wa;
 if v_wa=0 then showmessage('Brawo!!!Zapomnia³eœ wprowadziæ pi');
 edit38.text:=floattostr(v_wa);
end;

procedure TForm1.Edit39Change(Sender: TObject);
begin
try
    pb_wa:=StrToFloat(Edit39.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Edit40Change(Sender: TObject);
begin
 try
    pp_wa:=StrToFloat(Edit40.Text);
       except on E: EConvertError do showmessage('Wprowadzaj tylko liczby');
       end;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
temp_wal:=2*pp_wa;
v_wa:=temp_wal+pb_wa;
edit41.text:=floattostr(v_wa);

end;




end.
















