object FrameRegOwner: TFrameRegOwner
  Left = 0
  Top = 0
  Width = 295
  Height = 453
  TabOrder = 0
  object PanelRegOwner: TPanel
    Left = 0
    Top = 0
    Width = 295
    Height = 453
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 283
    object Label1: TLabel
      Left = 36
      Top = 24
      Width = 104
      Height = 15
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1092#1072#1084#1080#1083#1080#1102':'
    end
    object Label2: TLabel
      Left = 36
      Top = 73
      Width = 71
      Height = 15
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1080#1084#1103':'
    end
    object Label3: TLabel
      Left = 36
      Top = 126
      Width = 98
      Height = 15
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1086#1090#1095#1077#1089#1090#1074#1086':'
    end
    object Label4: TLabel
      Left = 36
      Top = 175
      Width = 97
      Height = 15
      Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072':'
    end
    object Label5: TLabel
      Left = 36
      Top = 226
      Width = 135
      Height = 15
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103':'
    end
    object Label6: TLabel
      Left = 36
      Top = 280
      Width = 94
      Height = 15
      Caption = #1053#1086#1084#1077#1088' '#1087#1086#1076#1098#1077#1079#1076#1072':'
    end
    object Label7: TLabel
      Left = 36
      Top = 314
      Width = 97
      Height = 15
      Caption = #1053#1086#1084#1077#1088' '#1082#1074#1072#1088#1090#1080#1088#1099':'
    end
    object sDBLookupComboBoxRegUser: TsDBLookupComboBox
      Left = 36
      Top = 247
      Width = 221
      Height = 23
      Color = 2103573
      DataField = 'id_user'
      DataSource = DataModule1.DS_owners
      KeyField = 'id_user'
      ListField = 'user_login'
      ListSource = DataModule1.DS_users
      TabOrder = 0
      ShowFocus = False
    end
    object sDBLookupComboBoxRegEntrance: TsDBLookupComboBox
      Left = 196
      Top = 276
      Width = 61
      Height = 23
      Color = 2103573
      KeyField = 'id_entrance'
      ListField = 'number_entrance'
      ListSource = DataModule1.DS_entrance
      TabOrder = 1
      ShowFocus = False
    end
    object DBEditRegFirstName: TDBEdit
      Left = 36
      Top = 45
      Width = 221
      Height = 25
      Color = 2103573
      DataField = 'firstname'
      DataSource = DataModule1.DS_owners
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16183278
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEditRegName: TDBEdit
      Left = 36
      Top = 95
      Width = 221
      Height = 25
      Color = 2103573
      DataField = 'middlename'
      DataSource = DataModule1.DS_owners
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16183278
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 36
      Top = 147
      Width = 221
      Height = 25
      Color = 2103573
      DataField = 'lastname'
      DataSource = DataModule1.DS_owners
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16183278
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 36
      Top = 195
      Width = 221
      Height = 25
      Color = 2103573
      DataField = 'phone'
      DataSource = DataModule1.DS_owners
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16183278
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object AddOwnerButton: TsButton
      Left = 36
      Top = 347
      Width = 221
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 6
      OnClick = AddOwnerButtonClick
    end
    object CancelOwnerButton: TsButton
      Left = 36
      Top = 386
      Width = 221
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 7
      OnClick = CancelOwnerButtonClick
    end
    object sEditFlat: TsEdit
      Left = 196
      Top = 305
      Width = 61
      Height = 23
      TabOrder = 8
    end
  end
end
