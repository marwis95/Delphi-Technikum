object Form1: TForm1
  Left = 192
  Top = 114
  Width = 211
  Height = 142
  Caption = 'Shooter'
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
    Left = 8
    Top = 48
    Width = 58
    Height = 20
    Caption = 'Licznik:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 0
    Top = 0
    Width = 75
    Height = 25
    Caption = 'R'#243'b screena'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 72
    Top = 48
    Width = 97
    Height = 25
    ReadOnly = True
    TabOrder = 1
  end
  object Button2: TButton
    Left = 96
    Top = 0
    Width = 75
    Height = 25
    Caption = 'Resetuj licznik'
    TabOrder = 2
    OnClick = Button2Click
  end
end
