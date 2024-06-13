object FormRequestList: TFormRequestList
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1079#1072#1103#1074#1086#1082
  ClientHeight = 370
  ClientWidth = 1188
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 1200
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnResize = FormResize
  TextHeight = 15
  object sPanelRequestList: TsPanel
    Left = 0
    Top = 0
    Width = 1188
    Height = 370
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1184
    ExplicitHeight = 369
    object sDBGridRequest: TsDBGrid
      Left = 1
      Top = 1
      Width = 1186
      Height = 368
      Align = alClient
      Color = 2103573
      DataSource = DataModule1.DS_request
      DrawingStyle = gdsGradient
      GradientEndColor = 3681061
      GradientStartColor = 2826524
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16183278
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      DefaultRowHeight = 19
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'fio'
          Title.Alignment = taCenter
          Title.Caption = #1060#1048#1054
          Width = 194
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'login_user'
          Title.Alignment = taCenter
          Title.Caption = #1051#1086#1075#1080#1085
          Width = 194
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'pass'
          Title.Alignment = taCenter
          Title.Caption = #1055#1072#1088#1086#1083#1100
          Width = 194
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'number_request'
          Title.Alignment = taCenter
          Title.Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
          Width = 194
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'location_user'
          Title.Alignment = taCenter
          Title.Caption = #1040#1076#1088#1077#1089
          Width = 194
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'date_request'
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072' '#1079#1072#1103#1074#1082#1080
          Width = 194
          Visible = True
        end>
    end
  end
end
