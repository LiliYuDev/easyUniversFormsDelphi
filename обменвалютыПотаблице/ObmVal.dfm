object FMain: TFMain
  Left = 0
  Top = 0
  Caption = #1054#1073#1084#1077#1085' '#1074#1072#1083#1102#1090#1099
  ClientHeight = 435
  ClientWidth = 469
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MMall
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 169
    Height = 17
    AutoSize = False
    Caption = #1057#1091#1084#1084#1072' '#1076#1077#1085#1077#1075' '#1074' '#1088#1091#1073#1083#1103#1093':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object SGVal: TStringGrid
    Left = 24
    Top = 112
    Width = 417
    Height = 305
    ColCount = 3
    FixedCols = 0
    RowCount = 12
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
  end
  object EVvod: TEdit
    Left = 24
    Top = 56
    Width = 169
    Height = 33
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = EVvodChange
    OnKeyPress = EVvodKeyPress
  end
  object MMall: TMainMenu
    Left = 336
    Top = 65520
    object Mabout: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = MaboutClick
    end
    object Mmaxmin: TMenuItem
      Caption = #1052#1080#1085'. '#1080' '#1052#1072#1082#1089'. '#1082#1091#1088#1089#1099
      OnClick = MmaxminClick
    end
    object N3: TMenuItem
      Caption = #1054#1082#1088#1091#1075#1083#1077#1085#1080#1077
      object TOkr: TMenuItem
        Caption = #1044#1086' 2'#1093' '#1079#1085#1072#1082#1086#1074
        Hint = #1054#1082#1088#1091#1075#1083#1077#1085#1080#1077' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#1076#1086' '#1076#1074#1091#1093' '#1079#1085#1072#1082#1086#1074' '#1087#1086#1089#1083#1077' '#1079#1072#1087#1103#1090#1086#1081
        OnClick = EVvodChange
      end
    end
  end
end
