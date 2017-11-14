object Form1: TForm1
  Left = 297
  Top = 178
  Width = 1118
  Height = 466
  Caption = 'Mailer'
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
  object Label1: TLabel
    Left = 128
    Top = 32
    Width = 126
    Height = 29
    Caption = 'Tre'#347#263' maila'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 528
    Top = 32
    Width = 100
    Height = 29
    Caption = 'Odbiorca'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 536
    Top = 120
    Width = 69
    Height = 29
    Caption = 'Temat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 496
    Top = 208
    Width = 173
    Height = 29
    Caption = 'Nazwa nadawcy'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 512
    Top = 296
    Width = 121
    Height = 29
    Caption = 'Tw'#243'j adres'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 832
    Top = 32
    Width = 132
    Height = 29
    Caption = 'Twoje has'#322'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 848
    Top = 120
    Width = 113
    Height = 29
    Caption = 'Tw'#243'j login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 864
    Top = 208
    Width = 105
    Height = 29
    Caption = 'Tw'#243'j host'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 792
    Top = 296
    Width = 297
    Height = 57
    Caption = 'Wy'#347'lij'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 64
    Width = 401
    Height = 281
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Memo2: TMemo
    Left = 472
    Top = 64
    Width = 225
    Height = 25
    Lines.Strings = (
      'Memo2')
    TabOrder = 2
  end
  object Button2: TButton
    Left = 704
    Top = 64
    Width = 57
    Height = 25
    Caption = 'Help'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Memo3: TMemo
    Left = 472
    Top = 152
    Width = 225
    Height = 25
    Lines.Strings = (
      'Memo3')
    TabOrder = 4
  end
  object Button3: TButton
    Left = 704
    Top = 152
    Width = 57
    Height = 25
    Caption = 'Help'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Memo4: TMemo
    Left = 472
    Top = 240
    Width = 225
    Height = 25
    Lines.Strings = (
      'Memo4')
    TabOrder = 6
  end
  object Button4: TButton
    Left = 704
    Top = 240
    Width = 57
    Height = 25
    Caption = 'Help'
    TabOrder = 7
    OnClick = Button4Click
  end
  object Memo5: TMemo
    Left = 472
    Top = 328
    Width = 225
    Height = 25
    Lines.Strings = (
      'Memo5')
    TabOrder = 8
  end
  object Button5: TButton
    Left = 704
    Top = 328
    Width = 57
    Height = 25
    Caption = 'Help'
    TabOrder = 9
    OnClick = Button5Click
  end
  object Memo6: TMemo
    Left = 800
    Top = 64
    Width = 225
    Height = 25
    Lines.Strings = (
      'Memo6')
    TabOrder = 10
  end
  object Memo7: TMemo
    Left = 800
    Top = 152
    Width = 225
    Height = 25
    Lines.Strings = (
      'Memo7')
    TabOrder = 11
  end
  object Button6: TButton
    Left = 1032
    Top = 64
    Width = 57
    Height = 25
    Caption = 'Help'
    TabOrder = 12
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 1032
    Top = 152
    Width = 57
    Height = 25
    Caption = 'Help'
    TabOrder = 13
    OnClick = Button7Click
  end
  object Memo8: TMemo
    Left = 800
    Top = 240
    Width = 225
    Height = 25
    Lines.Strings = (
      'Memo8')
    TabOrder = 14
  end
  object Button8: TButton
    Left = 1032
    Top = 240
    Width = 57
    Height = 25
    Caption = 'Help'
    TabOrder = 15
    OnClick = Button8Click
  end
  object IdSMTP1: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 25
    AuthenticationType = atLogin
    Left = 424
    Top = 152
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 424
    Top = 192
  end
end
