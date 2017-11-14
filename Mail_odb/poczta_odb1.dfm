object Form1: TForm1
  Left = 484
  Top = 160
  Width = 1142
  Height = 656
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 288
    Top = 400
    Width = 163
    Height = 65
    Caption = 'Odbierz'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 336
    Top = 120
    Width = 329
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 336
    Top = 160
    Width = 329
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 336
    Top = 200
    Width = 329
    Height = 21
    TabOrder = 3
    Text = 'Edit3'
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 552
    Width = 1134
    Height = 72
    Panels = <>
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 120
    Top = 208
  end
  object IdPOP31: TIdPOP3
    MaxLineAction = maException
    ReadTimeout = 0
    Left = 120
    Top = 240
  end
end
