object Form1: TForm1
  Left = 192
  Top = 114
  Width = 870
  Height = 640
  Caption = 'Klima'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 40
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 40
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
    OnChange = Edit2Change
  end
  object Button1: TButton
    Left = 336
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Licz'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 184
    Top = 48
    Width = 121
    Height = 21
    DragCursor = crNo
    ReadOnly = True
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 440
    Top = 48
    Width = 121
    Height = 21
    DragCursor = crNo
    ReadOnly = True
    TabOrder = 4
  end
end
