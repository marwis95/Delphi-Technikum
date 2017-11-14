object Form1: TForm1
  Left = 189
  Top = 116
  Width = 679
  Height = 548
  Caption = 'Calc'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 152
    Top = 64
    Width = 37
    Height = 13
    Caption = 'Liczba1'
  end
  object Label2: TLabel
    Left = 152
    Top = 152
    Width = 37
    Height = 13
    Caption = 'Liczba2'
  end
  object Label3: TLabel
    Left = 448
    Top = 64
    Width = 30
    Height = 13
    Caption = 'Wynik'
  end
  object Label4: TLabel
    Left = 448
    Top = 152
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Edit1: TEdit
    Left = 120
    Top = 80
    Width = 121
    Height = 21
    Cursor = crHandPoint
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 120
    Top = 168
    Width = 121
    Height = 21
    Cursor = crHandPoint
    TabOrder = 1
    OnChange = Edit2Change
  end
  object Button1: TButton
    Left = 304
    Top = 72
    Width = 49
    Height = 41
    Caption = '+'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 304
    Top = 136
    Width = 49
    Height = 41
    Caption = '-'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 304
    Top = 200
    Width = 49
    Height = 41
    Caption = '*'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 304
    Top = 264
    Width = 49
    Height = 41
    Caption = '/'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Edit3: TEdit
    Left = 408
    Top = 80
    Width = 121
    Height = 21
    Cursor = crNo
    ReadOnly = True
    TabOrder = 6
  end
  object Button5: TButton
    Left = 304
    Top = 328
    Width = 49
    Height = 41
    Caption = 'sqrt'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 552
    Top = 80
    Width = 73
    Height = 25
    Caption = '<ctrl>+C'
    TabOrder = 8
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 32
    Top = 80
    Width = 75
    Height = 25
    Caption = '<ctrl>+V'
    TabOrder = 9
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 32
    Top = 168
    Width = 75
    Height = 25
    Caption = '<ctrl>+V'
    TabOrder = 10
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 304
    Top = 392
    Width = 49
    Height = 41
    Caption = 'C'
    TabOrder = 11
    OnClick = Button9Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 408
    Top = 168
    Width = 129
    Height = 21
    CalAlignment = dtaLeft
    Date = 40618.8873032407
    Time = 40618.8873032407
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 12
  end
  object Button10: TButton
    Left = 304
    Top = 456
    Width = 49
    Height = 41
    Caption = 'Zakoñcz'
    TabOrder = 13
    OnClick = Button10Click
  end
end
