object Form2: TForm2
  Left = 533
  Top = 197
  Width = 553
  Height = 432
  Caption = 'Wiadomosc'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 521
    Height = 329
    TabOrder = 0
  end
  object Button1: TButton
    Left = 216
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Wyslij'
    TabOrder = 1
    OnClick = Button1Click
  end
  object IdSMTP1: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 25
    AuthenticationType = atLogin
    Left = 496
    Top = 360
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 456
    Top = 360
  end
end
