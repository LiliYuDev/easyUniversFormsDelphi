object fMain: TfMain
  Left = 0
  Top = 0
  Caption = #1055#1077#1088#1077#1074#1086#1076' '#1074#1077#1083#1080#1095#1080#1085
  ClientHeight = 101
  ClientWidth = 274
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 42
    Height = 23
    AutoSize = False
    Caption = #1064#1090#1086#1092#1099
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 49
    Height = 13
    AutoSize = False
    Caption = #1051#1080#1090#1088#1099
  end
  object lRes: TLabel
    Left = 8
    Top = 67
    Width = 258
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object eShtof: TEdit
    Left = 56
    Top = 8
    Width = 65
    Height = 21
    TabOrder = 0
    Text = '0,0'
    OnChange = eShtofChange
  end
  object eCalc: TButton
    Left = 127
    Top = 8
    Width = 75
    Height = 25
    Caption = #1055#1077#1088#1077#1074#1086#1076
    TabOrder = 1
    OnClick = eCalcClick
  end
end
