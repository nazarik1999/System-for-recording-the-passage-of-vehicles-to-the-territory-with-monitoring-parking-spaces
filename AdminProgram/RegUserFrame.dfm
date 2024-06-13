object FrameRegUser: TFrameRegUser
  Left = 0
  Top = 0
  Width = 303
  Height = 312
  TabOrder = 0
  object sPanelRegUser: TsPanel
    Left = 0
    Top = 0
    Width = 303
    Height = 312
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 43
      Top = 16
      Width = 88
      Height = 17
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1083#1086#1075#1080#1085':'
    end
    object Label2: TLabel
      Left = 43
      Top = 75
      Width = 98
      Height = 17
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100':'
    end
    object Label3: TLabel
      Left = 43
      Top = 142
      Width = 104
      Height = 17
      Caption = #1059#1088#1086#1074#1077#1085#1100' '#1076#1086#1089#1090#1091#1087#1072':'
    end
    object DBEditRegLog: TDBEdit
      Left = 43
      Top = 39
      Width = 222
      Height = 25
      Color = 2103573
      DataField = 'user_login'
      DataSource = DataModule1.DS_users
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16183278
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEditRegPass: TDBEdit
      Left = 43
      Top = 98
      Width = 222
      Height = 25
      Color = 2103573
      DataField = 'user_pass'
      DataSource = DataModule1.DS_users
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16183278
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
    end
    object sButtonCancelUser: TsButton
      Left = 43
      Top = 242
      Width = 222
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 2
      OnClick = sButtonCancelUserClick
    end
    object sButtonPostUser: TsButton
      Left = 43
      Top = 206
      Width = 222
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 3
      OnClick = sButtonPostUserClick
    end
    object sDBLookupComboBoxRegAccess: TsDBLookupComboBox
      Left = 43
      Top = 165
      Width = 145
      Height = 25
      Color = 2103573
      DataField = 'id_access'
      DataSource = DataModule1.DS_users
      KeyField = 'id_access_right'
      ListField = 'name_access_right'
      ListSource = DataModule1.DS_access_right
      TabOrder = 4
      ShowFocus = False
    end
  end
end
