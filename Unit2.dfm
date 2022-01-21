object Form2: TForm2
  Left = 289
  Top = 218
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1043#1083#1072#1074#1085#1072#1103' '#1092#1086#1088#1084#1072
  ClientHeight = 509
  ClientWidth = 1062
  Color = clYellow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 40
    Top = 24
    Width = 987
    Height = 26
    Caption = 
      #1069#1083#1077#1082#1090#1088#1086#1085#1085#1086'-'#1086#1073#1091#1095#1072#1102#1097#1077#1077' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1087#1086' '#1075#1077#1086#1084#1077#1090#1088#1080#1080' '#1087#1086' '#1088#1072#1079#1076#1077#1083#1091' "'#1054#1073#1098#1105#1084#1085#1099 +
      #1077' '#1090#1077#1083#1072' '#1074#1088#1072#1097#1077#1085#1080#1103'"'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn1: TButton
    Left = 368
    Top = 88
    Width = 321
    Height = 121
    Caption = #1058#1077#1086#1088#1077#1090#1080#1095#1077#1089#1082#1080#1081' '#1084#1072#1090#1077#1088#1080#1072#1083' '#1087#1086' '#1076#1072#1085#1085#1086#1084#1091' '#1088#1072#1079#1076#1077#1083#1091
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 368
    Top = 232
    Width = 321
    Height = 121
    Caption = #1050#1086#1085#1090#1088#1086#1083#1100' '#1079#1085#1072#1085#1080#1081
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 368
    Top = 368
    Width = 321
    Height = 121
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn6: TButton
    Left = 736
    Top = 376
    Width = 289
    Height = 105
    Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1077' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072' '#1082#1086#1085#1090#1088#1086#1083#1103' '#1079#1085#1072#1085#1080#1081
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btn6Click
  end
  object mm1: TMainMenu
    Left = 8
    object N1: TMenuItem
      Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      object N2: TMenuItem
        Caption = '&'#1058#1077#1086#1088#1077#1090#1080#1095#1077#1089#1082#1080#1081' '#1084#1072#1090#1077#1088#1080#1072#1083
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = '&'#1050#1086#1085#1090#1088#1086#1083#1100' '#1079#1085#1072#1085#1080#1081
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object N5: TMenuItem
        Caption = '&'#1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = '&'#1054' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1077
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = '&'#1057#1087#1088#1072#1074#1082#1072
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object N9: TMenuItem
        Caption = '&'#1042#1099#1093#1086#1076
        OnClick = N9Click
      end
    end
  end
end
