unit Ver1;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Buttons, StdCtrls, MPlayer, ComCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel8: TPanel;
    SpeedButton6: TSpeedButton;
    Bevel1: TBevel;
    Label1: TLabel;
    MediaPlayer2: TMediaPlayer;
    Bevel2: TBevel;
    SpeedButton7: TSpeedButton;
    Panel6: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure MediaPlayer1Click(Sender: TObject; Button: TMPBtnType;
      var DoDefault: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   Form1: TForm1;
   dlugosc:integer;
   pozycja:integer;
   wynik1, wynik2, wynik3 : integer;
   i:byte;

const {Tablica czasownikÛw - t≥umaczenie polskie}

czaspol:array[1..169]of string[40]=
  ('PowstawaÊ, pojawiaÊ siÍ', 'BudziÊ', 'ByÊ', 'NieúÊ, nosiÊ',
   'BiÊ, ubijaÊ, pokonaÊ', '(Zo)stawaÊ (siÍ)', 'PrzytrafiaÊ siÍ', 'RozpoczynaÊ',
   'UjrzeÊ', 'ZginaÊ, giπÊ', 'DrÍczyÊ, przeúladowaÊ', 'Zak≥adaÊ siÍ',
   '(Za)licytowaÊ', '(Za)oferowaÊ, zapraszaÊ, øegnaÊ', '(Zobo)wiπzaÊ, przywiπzywaÊ, oprawiaÊ', 'GryüÊ',
   'KrwawiÊ', 'WiaÊ, dmuchaÊ', 'T≥uc, ≥amaÊ', 'HodowaÊ',
   'PrzynosiÊ', 'BudowaÊ', 'PaliÊ, spalaÊ', 'PrzebijaÊ, rozrywaÊ',
   'KupowaÊ', 'MÛc, potrafiÊ', 'ZrzucaÊ, zarzucaÊ', '£apaÊ',
   'WybieraÊ' ,'TrwaÊ przy', 'PrzychodziÊ', 'KosztowaÊ',
   'KosztorysowaÊ, ustalaÊ koszt', 'Sk≥adaÊ siÍ', 'KroiÊ, ciπÊ', 'ZadawaÊ, wymierzaÊ',
   '(Wy)kopaÊ', 'RobiÊ', 'RysowaÊ, ciπgnπÊ', 'åniÊ, marzyÊ',
   'PiÊ, wypijaÊ', 'KierowaÊ', 'MieszkaÊ', 'JeúÊ',
   'UpadaÊ', '(Na)karmiÊ', 'CzuÊ, dotykaÊ', 'WalczyÊ',
   'OdnajdywaÊ', 'UciekaÊ', 'RzucaÊ', 'LecieÊ, lataÊ',
   'ZabraniaÊ', 'PrzewidywaÊ', 'ZapominaÊ', 'WybaczaÊ',
   'PorzucaÊ', 'MroziÊ, marznπÊ', 'StawaÊ siÍ, robiÊ siÍ', 'DawaÊ',
   'IúÊ, jeüdziÊ', 'KruszyÊ, mieliÊ', 'RosnπÊ', 'ZawieszaÊ',
   'PowiesiÊ kogoú na szubienicy', 'MieÊ', 'S≥yszeÊ', 'UkrywaÊ',
   'UderzaÊ, trafiaÊ', 'TrzymaÊ, mieÊ', '(Z)raniÊ', 'ZachowywaÊ, utrzymywaÊ, przechowywaÊ',
   'KlÍkaÊ', 'WiedzieÊ', 'K≥aúÊ', 'KierowaÊ, prowadziÊ',
   'PochylaÊ siÍ', 'SkakaÊ', 'UczyÊ siÍ', 'ZostawiaÊ, opuszczaÊ',
   'PoøyczaÊ komuú', 'PozwalaÊ', 'LeøeÊ', 'RozpalaÊ, oúwietlaÊ',
   'GubiÊ', 'RobiÊ, produkowaÊ', 'MÛc, mieÊ pozwolenie', 'ZnaczyÊ',
   'SpotykaÊ siÍ', '(Po)myliÊ siÍ', '(S)kosiÊ', 'MusieÊ',
   'P≥aciÊ', 'K≥aúÊ', 'RezygnowaÊ, opuszczaÊ', 'CzytaÊ',
   'UwalniaÊ', 'JechaÊ na', 'DzwoniÊ', 'RosnπÊ',
   'Biec, uruchamiaÊ', 'Pi≥owaÊ', 'MÛwiÊ', 'WidzieÊ',
   'SzukaÊ', 'SprzedawaÊ', 'Wysy≥aÊ', 'UstalaÊ, nastawiaÊ',
   '(Z)szyÊ', 'TrzπúÊ siÍ', 'MieÊ obowiπzek, powinnoúÊ (shall)', 'åcinaÊ, strzyc, obdzieraÊ',
   '(Z)rzuciÊ, zstrzπsaÊ', 'åwieciÊ, b≥yszczeÊ', '(Za)strzeliÊ', 'PokazywaÊ',
   'KurczyÊ siÍ', 'ZamykaÊ', 'åpiewaÊ', '(Za)topiÊ, tonπÊ',
   'SiadaÊ', 'Zg≥adziÊ, uúmierciÊ', 'SpaÊ', 'PrzesuwaÊ siÍ',
   'WystrzeliÊ, ciskaÊ coú (czymú)', 'RozcinaÊ, podrzynaÊ', 'PachnieÊ','(Za)siaÊ, wysiewaÊ',
   'MÛwiÊ', 'PÍdziÊ', 'LiterowaÊ', 'WydawaÊ pieniπdze, spÍdzaÊ',
   'RozlewaÊ', 'OdwirowywaÊ', 'SplunπÊ, wypluÊ', 'PsuÊ',
   'RozchodziÊ siÍ', 'SkakaÊ', 'StaÊ', 'KraúÊ',
   'KleiÊ, lepiÊ siÍ', 'K≥uÊ', 'åmierdzieÊ', '(Prze)kroczyÊ (duøymi krokami)',
   'UderzaÊ', 'DπøyÊ do', 'PrzysiÍgaÊ, przeklinaÊ', 'WiaÊ',
   'WzrastaÊ', 'P≥ynπÊ, p≥ywaÊ', 'HuútaÊ', 'BraÊ, zabieraÊ',
   'UczyÊ kogoú', 'RwaÊ, porwaÊ, podrzeÊ', 'MÛwiÊ', 'MyúleÊ',
   'RzuciÊ', 'PchaÊ, wypychaÊ', 'StπpaÊ, deptaÊ', 'BudziÊ',
   'UbieraÊ, nosiÊ ubranie', 'TkaÊ, pleúÊ', 'PrzemykaÊ siÍ', 'BraÊ úlub',
   'P≥akaÊ', 'ZwyciÍøaÊ', 'NawijaÊ, zwijaÊ, owijaÊ', 'WykrÍciÊ, wyrzymaÊ',
   'PisaÊ');

{1 forma}
forma1:array[1..169]of string[20]=('arise', 'awake', 'be', 'bear',
					'beat', 'become', 'befall', 'begin',
					'behold', 'bend', 'beset', 'bet',
					'bid', 'bid', 'bind', 'bite',
					'bleed', 'blow', 'break', 'breed',
					'bring', 'build', 'burn', 'burst',
					'buy', 'can', 'cast', 'catch',
					'choose', 'cling', 'come', 'cost',
					'cost', 'creep', 'cut', 'deal',
					'dig', 'do', 'draw', 'dream',
					'drink', 'drive', 'dwell', 'eat',
					'fall', 'feed', 'feel', 'fight',
					'find', 'flee', 'fling', 'fly',
					'forbid', 'forecast', 'forget', 'forgive',
					'forsake', 'freeze', 'get', 'give',
					'go', 'grind', 'grow', 'hang',
					'hang', 'have', 'hear', 'hide',
					'hit', 'hold', 'hurt', 'keep',
					'kneel', 'know', 'lay', 'lead',
					'lean', 'leep', 'learn', 'leave',
					'lend', 'let', 'lie', 'light',
					'lose', 'make', 'may', 'mean',
					'meet', 'mistake', 'mow', 'must',
					'pay', 'put', 'quit', 'read',
					'rid', 'ride', 'ring', 'rise',
					'run', 'saw', 'say', 'see',
					'seek', 'sell', 'send', 'set',
					'sew', 'shake', 'shall', 'shear',
					'shed', 'shine', 'shoot', 'show',
					'shrink', 'shut', 'sing', 'sink',
					'sit', 'sley', 'sleep', 'slide',
					'sling', 'slit', 'smell', 'sow',
					'speak', 'speed', 'spell', 'spend',
					'spill', 'spin', 'spit', 'spoil',
					'spread', 'spring', 'stand', 'steal',
					'stick', 'sting', 'stink', 'stride',
					'strike', 'strive', 'swear', 'sweep',
					'swell', 'swim', 'swing', 'take',
					'teach', 'tear', 'tell', 'think',
					'throw', 'thrust', 'tread', 'wake',
					'wear', 'weave', 'weave', 'wed ',
					'weep','win', 'wind', 'wring',
					'write');

{2 forma}
forma2:array[1..169]of string[20]=('arose', 'awoke', 'was,were', 'bore',
					'beat', 'became', 'befell', 'began',
					'beheld', 'bent', 'beset', 'bet,betted',
					'bid', 'bade', 'bound', 'bit',
					'bled', 'blew', 'broke', 'bred',
					'brought', 'built', 'burnt,burned', 'burst',
					'bought', 'could', 'cast', 'caught',
					'chose', 'clung', 'came', 'cost',
					'costed', 'crept', 'cut', 'dealt',
					'dug', 'did', 'drew', 'dreamed,dremt',
					'drank', 'drove', 'dwelt', 'ate',
					'fell', 'fed', 'felt', 'fought',
					'found', 'fled', 'flung', 'flew',
					'forbad,forbade', 'forecast', 'forgot', 'forgave',
					'forsooke', 'froze', 'got', 'gave',
					'went', 'ground', 'grew', 'hung',
					'hanged', 'had', 'heard', 'hid',
					'hit', 'held', 'hurt', 'kept',
					'knelt,kneeled', 'knew', 'laid', 'led',
					'leant,leaned', 'leapt,leaped', 'learnt,learned', 'left',
					'lent', 'let', 'lay', 'lit,lighted',
					'lost', 'made', 'might', 'meant',
					'met', 'mistook', 'mowed', 'had to',
					'paid', 'put', 'quit,quitted', 'read',
					'rid', 'rode', 'rang', 'rose',
					'ran', 'sawed', 'said', 'saw',
					'sought', 'sold', 'sent', 'set',
					'sewed', 'shook', 'should', 'sheared',
					'shed', 'shone', 'shot', 'showed',
					'shrank', 'shut', 'sang', 'sank',
					'sat', 'slew', 'slept', 'slid',
					'slung', 'slit', 'smelt,smelled', 'sowed',
					'spoke', 'sped,speeded', 'spelt,spelled', 'spent',
					'spilt,spilled', 'spun', 'spat', 'spoiled,spoilt',
					'spread', 'sprang', 'stood', 'stole',
					'stuck', 'stung', 'stank', 'strode',
					'struck', 'strove', 'swore', 'swept',
					'swelled', 'swam', 'swung', 'took',
					'taught', 'tore', 'told', 'thought',
					'threw', 'thrust', 'trod', 'woke,waked',
					'wore', 'wove', 'weaveed', 'wedded,wed',
					'wept','won', 'wound', 'wrung',
					'wrote');

{3 forma}
forma3:array[1..169]of string[20]=('arisen', 'awoken', 'been', 'born,borne',
					'beaten', 'become', 'befallen', 'begun',
					'beheld', 'bent', 'beset', 'bet,betted',
					'bid', 'bidden', 'bound', 'bitten',
					'bled', 'blown', 'broken', 'bred',
					'brought', 'built', 'burnt,burned', 'burst',
					'bought', 'been able', 'cast', 'caught',
					'chosen', 'clung', 'come', 'cost',
					'costed', 'crept', 'cut', 'dealt',
					'dug', 'done', 'drawn', 'dreamed,dremt',
					'drunk', 'driven', 'dwelt', 'eaten',
					'fallen', 'fed', 'felt', 'fought',
					'found', 'fled', 'flung', 'flown',
					'forbidden', 'forecast', 'forgotten', 'forgiven',
					'forsaken', 'frozen', 'got', 'given',
					'gone', 'ground', 'grown', 'hung',
					'hanged', 'had', 'heard', 'hidden',
					'hit', 'held', 'hurt', 'kept',
					'knelt,kneeled', 'known', 'laid', 'led',
					'leant,leaned', 'leapt,leaped', 'learnt,learned', 'left',
					'lent', 'let', 'lain', 'lit,lighted',
					'lost', 'made', '-', 'meant',
					'met', 'mistaken', 'mown,moved', 'had to',
					'paid', 'put', 'quit,quitted', 'read',
					'rid', 'ridden', 'rung', 'risen',
					'run', 'sawed,sawn', 'said', 'seen',
					'sought', 'sold', 'sent', 'set',
					'sewn', 'shaken', '-', 'shorn,sheared',
					'shed', 'shone', 'shot', 'shown',
					'shrank', 'shut', 'sung', 'sunk',
					'sat', 'slain', 'slept', 'slid',
					'slung', 'slit', 'smelt,smelled', 'sown,sowed',
					'spoken', 'sped,speeded', 'spelt,spelled', 'spent',
					'spilt,spilled', 'spun', 'spat', 'spoiled,spoilt',
					'spread', 'sprung', 'stood', 'stolen',
					'stuck', 'stung', 'stunk', 'stridden',
					'struck', 'striven', 'sworn', 'swept',
					'swollen,swelled', 'swum', 'swung', 'taken',
					'taught', 'torn', 'told', 'thought',
					'thrown', 'thrust', 'trodden', 'woken,waked',
					'worn', 'woven', 'weaveed', 'wedded,wed',
					'wept','won', 'wound', 'wrung',
					'written');

{Tablica wav-Ûw}
dzwiek:array[1..169]of string[12]=  ('c0001','c0002','c0003','c0004',
                                     'c0005','c0006','c0007','c0008',
                                     'c0009','c0010','c0011','c0012',
                                     'c0013','c0014','c0015','c0016',
                                     'c0017','c0018','c0019','c0020',
                                     'c0021','c0022','c0023','c0024',
                                     'c0025','c0026','c0027','c0028',
                                     'c0029','c0030','c0031','c0032',
                                     'c0033','c0034','c0035','c0036',
                                     'c0037','c0038','c0039','c0040',
                                     'c0041','c0042','c0043','c0044',
                                     'c0045','c0046','c0047','c0048',
                                     'c0049','c0050','c0051','c0052',
                                     'c0053','c0054','c0055','c0056',
                                     'c0057','c0058','c0059','c0060',
                                     'c0061','c0062','c0063','c0064',
                                     'c0065','c0066','c0067','c0068',
                                     'c0069','c0070','c0071','c0072',
                                     'c0073','c0074','c0075','c0076',
                                     'c0077','c0078','c0079','c0080',
                                     'c0081','c0082','c0083','c0084',
                                     'c0085','c0086','c0087','c0088',
                                     'c0089','c0090','c0091','c0092',
                                     'c0093','c0094','c0095','c0096',
                                     'c0097','c0098','c0099','c0100',
                                     'c0101','c0102','c0103','c0104',
                                     'c0105','c0106','c0107','c0108',
                                     'c0109','c0110','c0111','c0112',
                                     'c0113','c0114','c0115','c0116',
                                     'c0117','c0118','c0119','c0120',
                                     'c0121','c0122','c0123','c0124',
                                     'c0125','c0126','c0127','c0128',
                                     'c0129','c0130','c0131','c0132',
                                     'c0133','c0134','c0135','c0136',
                                     'c0137','c0138','c0139','c0140',
                                     'c0141','c0142','c0143','c0144',
                                     'c0145','c0146','c0147','c0148',
                                     'c0149','c0150','c0151','c0152',
                                     'c0153','c0154','c0155','c0156',
                                     'c0157','c0158','c0159','c0160',
                                     'c0161','c0162','c0163','c0164',
                                     'c0165','c0166','c0167','c0168',
                                     'c0169');

start:array[1..169]of word= (1000,1000,7000,1000,
                          1000,1000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1100,1000,1000,{do32}
                          1000,1000,1000,1000,
                          1000,2000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1000,1000,2500,
                          1000,1000,1000,1000,
                          1000,1000,1000,1000, {do 60}
                          2100,1000,1000,1000,
                          1000,2800,1000,1000,
                           900,1000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1000,2100,1100,
                          1000,1000, 800,1000,
                          1000,1000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1000,1000,1000,{do 100}
                          1000,1000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1000,1000,1000, {do 140}
                          1000,1000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1000,1000,1000,
                          1000,1000, 850,1000,
                          1000,1000,800,1000,
                          1000,1000,1000,950,
                          900,950,1000,1000,
                          1000);

koniec:array[1..169]of word=(2600,2500,10600,2000,
                          2000,2000,2100,2000,
                          2150,2000,2000,3300,
                          2000,2100,2200,2000,
                          2000,2000,2000,2000,
                          2100,2000,2000,2000,
                          2000,2000,2300,2100,
                          2000,2100,2000,2200,{do32}
                          2000,2000,2000,2000,
                          2000,3200,2000,2000,
                          2000,2000,2000,2000,
                          2000,2000,2000,2000,
                          2000,2000,2000,4000,
                          2000,2400,2000,2000,
                          2000,2200,2000,2000, {do 60}
                          3200,2200,2000,2000,
                          2000,4100,2000,2000,
                          1800,2000,2000,2000,
                          2000,2000,2000,2000,
                          2000,2000,2000,2200,
                          2000,2000,3500,3700,
                          2000,2000,1900,2000,
                          2000,2200,2000,2000,
                          2000,2000,2000,2000,
                          2000,2000,2000,2200,{do 100}
                          2000,2000,2000,2000,
                          2000,2200,2000,2000,
                          2200,2000,1600,2000,
                          2000,2000,2000,2000,
                          2000,2000,2000,2300, {do 120}
                          2000,2000,2000,2000,
                          2000,2000,2000,2000,
                          2300,2000,3500,2300,
                          3500,2000,2000,3800,
                          2000,2300,2600,2300, {do 140}
                          2000,2100,2000,2300,
                          2000,2100,2000,2100,
                          2100,2000,2000,2000,
                          2000,2000,2000,2000,
                          2000,2000,2000,2000,
                          2000,2000,2200,3000,
                          2000,1800,2000,2000,
                          2000);
implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
{Zerowanie zmiennych oraz napisÛw}
Panel4.Caption:='';
Panel5.Caption:='';
Panel6.Caption:='';
Panel7.Caption:='';
Panel8.Caption:='';
Edit1.Text:='';
Edit1.Color:=clWindow;
Edit2.Text:='';
Edit2.Color:=clWindow;
Edit3.Text:='';
Edit3.Color:=clWindow;

{Automatyczne podanie 1-szego czasownika}
i:=1;
Panel4.Caption:=' Podaj formy czasownika: '+czaspol[i];
Panel7.Caption:=' Czasownik nr: '+IntToStr(i);
MediaPlayer2.Filename:=dzwiek[i]+'.wav';
MediaPlayer2.Open;
end;

procedure TForm1.MediaPlayer1Click(Sender: TObject; Button: TMPBtnType;
  var DoDefault: Boolean);
begin
{Odtwarzanie wszyskich 3 form - start od pozycji 0}
mediaplayer2.startpos:=0;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
{Odtwarzanie 1 formy}
mediaplayer2.startpos:=0;
mediaplayer2.endpos:=start[i];
mediaplayer2.play;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
{Odtwarzanie 2 formy}
mediaplayer2.startpos:=start[i]+20;
mediaplayer2.endpos:=koniec[i];
mediaplayer2.play;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
{Odtwarzanie 3 formy}
mediaplayer2.startpos:=koniec[i]+5;
mediaplayer2.play;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
mediaplayer2.startpos:=0;
mediaplayer2.play;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
{Obs≥uga prÛbkowania przez Timer}
{Tylko podczas odtwarzania}
If Mediaplayer2.Mode=mpPlaying then
                               begin
   dlugosc:=MediaPlayer2.length;
   Panel5.Caption:=' D≥ugoúÊ: '+FloatToStr(dlugosc/1000)+' s';

   pozycja:=MediaPlayer2.Position;
   Panel6.Caption:=' Pozycja: '+FloatToStr(pozycja/1000)+' s';
                               end;
end;



procedure TForm1.SpeedButton5Click(Sender: TObject);
var
wynik:integer;

begin
{Przycisk >NastÍpny czasownik< }
If (wynik1=0) and (wynik2=0) and (wynik3=0) then

begin

Edit1.Enabled:=true;
Edit2.Enabled:=true;
Edit3.Enabled:=true;
Edit1.Setfocus;
Edit2.Clear;
Edit2.Color:=clWindow;
Edit3.Clear;
Edit3.Color:=clWindow;
Edit1.Clear;
Edit1.Color:=clWindow;

i:=i+1;
if (i<=169)  then begin
            Panel4.Caption:=' Podaj formy czasownika: '+czaspol[i];
            Panel7.Caption:=' Czasownik nr: '+IntToStr(i);
            MediaPlayer2.Filename:=dzwiek[i]+'.wav';
            MediaPlayer2.Open;
            Edit1.Setfocus;
            end
else i:=0;

end;
end;



procedure TForm1.Edit1Exit(Sender: TObject);
begin
wynik1:=CompareText(Edit1.Text,forma1[i]);
if wynik1<>0 then begin
            MessageDlg('Z≥a odpowiedü!', mtCustom, [mbOK], 0);
            wynik1:=0;
            Edit1.Setfocus;
            end
            else begin
            Edit1.Color:=clYellow;
            Edit2.SetFocus;
                 end;
end;

procedure TForm1.Edit2Exit(Sender: TObject);
begin
wynik2:=CompareText(Edit2.Text,forma2[i]);
if wynik2<>0 then begin
            MessageDlg('Z≥a odpowiedü!', mtCustom, [mbOK], 0);
            wynik2:=0;
            Edit2.Setfocus;
            end
            else begin
            Edit2.Color:=clYellow;
            Edit3.SetFocus;
              end;
end;

procedure TForm1.Edit3Exit(Sender: TObject);
begin
wynik3:=CompareText(Edit3.Text,forma3[i]);
if wynik3<>0 then begin
            MessageDlg('Z≥a odpowiedü!', mtCustom, [mbOK], 0);
            Edit3.Color:=clWindow;
            Edit3.Setfocus;
            wynik3:=0;
            end
            else begin
            Edit3.Color:=clYellow;
                 end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
wynik1:=CompareText(Edit1.Text,forma1[i]);
if wynik1<>0 then begin
                 Edit1.Color:=clWindow;
                 end
            else begin
                 Edit1.Color:=clYellow;
                 end;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
wynik2:=CompareText(Edit2.Text,forma2[i]);
if wynik2<>0 then begin
                 Edit2.Color:=clWindow;
                 end
            else begin
                 Edit2.Color:=clYellow;
              end;
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
wynik3:=CompareText(Edit3.Text,forma3[i]);
if wynik3<>0 then begin
                 Edit3.Color:=clWindow;
                 end
            else begin
                 Edit3.Color:=clYellow;
                 Edit1.Enabled:=true;
                 Edit1.Setfocus;
                 Edit1.Enabled:=false;
                 Edit2.Enabled:=false;
                 Edit3.Enabled:=false;
                 end;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
Panel8.Caption:=forma1[i]+',   '+forma2[i]+',   '+forma3[i];
end;

procedure TForm1.SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
{Shape1.Visible:=true;}
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
Close;
end;

end.
