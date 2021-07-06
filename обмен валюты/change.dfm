object FMain: TFMain
  Left = 0
  Top = 0
  Caption = #1054#1073#1084#1077#1085' '#1074#1072#1083#1102#1090#1099
  ClientHeight = 334
  ClientWidth = 396
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
    Left = 24
    Top = 8
    Width = 169
    Height = 25
    AutoSize = False
    Caption = #1057#1091#1084#1084#1072' '#1076#1077#1085#1077#1075' '#1074' '#1088#1091#1073#1083#1103#1093': '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 248
    Top = 8
    Width = 105
    Height = 25
    AutoSize = False
    Caption = #1050#1091#1088#1089' '#1074#1072#1083#1102#1090#1099':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 176
    Width = 145
    Height = 19
    AutoSize = False
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1086#1073#1084#1077#1085#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LRes: TLabel
    Left = 8
    Top = 216
    Width = 377
    Height = 33
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object CBtwo: TCheckBox
    Left = 8
    Top = 96
    Width = 329
    Height = 17
    Caption = #1086#1082#1088#1091#1075#1083#1080#1090#1100' '#1076#1086' '#1076#1074#1091#1093' '#1079#1085#1072#1082#1086#1074' '#1087#1086#1089#1083#1077' '#1079#1072#1087#1103#1090#1086#1081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BChangeClick
  end
  object BClose: TButton
    Left = 152
    Top = 288
    Width = 113
    Height = 25
    Cursor = crHandPoint
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 1
    OnClick = BCloseClick
  end
  object Emoney: TEdit
    Left = 24
    Top = 48
    Width = 121
    Height = 27
    Cursor = crIBeam
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = '0,0'
  end
  object Ecourse: TEdit
    Left = 248
    Top = 48
    Width = 121
    Height = 27
    Cursor = crIBeam
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = '0,0'
  end
  object BChange: TButton
    Left = 152
    Top = 137
    Width = 113
    Height = 25
    Cursor = crHandPoint
    Caption = #1054#1073#1084#1077#1085#1103#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BChangeClick
  end
end
