object FMain: TFMain
  Left = 204
  Top = 209
  Caption = #1051#1072#1073#1086#1088#1072#1090#1086#1088#1085#1072#1103' '#1088#1072#1073#1086#1090#1072' '#8470' 4'
  ClientHeight = 292
  ClientWidth = 353
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LabelLine: TLabel
    Left = 32
    Top = 32
    Width = 289
    Height = 29
    Cursor = crHandPoint
    AutoSize = False
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089#1090#1088#1086#1082#1091' '#1080' '#1085#1072#1078#1084#1080#1090#1077' Enter:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LRes: TLabel
    Left = 32
    Top = 175
    Width = 289
    Height = 57
    Cursor = crHandPoint
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
    OnClick = LResClick
  end
  object Label1: TLabel
    Left = 32
    Top = 112
    Width = 289
    Height = 41
    AutoSize = False
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1089#1090#1088#1086#1082#1091' '#1080' '#1085#1072#1078#1084#1080#1090#1077' '#1085#1072' '#1089#1074#1086#1073#1086#1076#1085#1091#1102' '#1086#1073#1083#1072#1089#1090#1100' '#1085#1080#1078#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object FieldOfText: TComboBox
    Left = 32
    Top = 67
    Width = 289
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = RestrictionOfInput
  end
  object BBClose: TBitBtn
    Left = 138
    Top = 259
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 1
  end
end
