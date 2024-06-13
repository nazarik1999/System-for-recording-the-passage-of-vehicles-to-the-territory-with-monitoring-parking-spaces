object FrameRegCar: TFrameRegCar
  Left = 0
  Top = 0
  Width = 325
  Height = 393
  TabOrder = 0
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 325
    Height = 393
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 302
    object Label1: TLabel
      Left = 33
      Top = 23
      Width = 87
      Height = 15
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1084#1072#1088#1082#1091':'
    end
    object Label2: TLabel
      Left = 33
      Top = 69
      Width = 94
      Height = 15
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1084#1086#1076#1077#1083#1100':'
    end
    object Label3: TLabel
      Left = 33
      Top = 119
      Width = 63
      Height = 15
      Caption = #1043#1086#1089'.'#1053#1086#1084#1077#1088':'
    end
    object Label4: TLabel
      Left = 33
      Top = 169
      Width = 29
      Height = 15
      Caption = #1062#1074#1077#1090':'
    end
    object Label5: TLabel
      Left = 33
      Top = 219
      Width = 129
      Height = 15
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1072':'
    end
    object sDBLookupComboBoxBrand: TsDBLookupComboBox
      Left = 33
      Top = 44
      Width = 264
      Height = 23
      Color = 2103573
      KeyField = 'name_brand'
      ListField = 'name_brand'
      ListSource = DataModule1.DS_car_brands
      TabOrder = 0
      ShowFocus = False
    end
    object sDBLookupComboBoxModel: TsDBLookupComboBox
      Left = 33
      Top = 90
      Width = 264
      Height = 23
      Color = 2103573
      DataField = 'id_model'
      DataSource = DataModule1.DS_cars
      KeyField = 'id_model'
      ListField = 'name_model'
      ListSource = DataModule1.DS_car_models
      TabOrder = 1
      ShowFocus = False
    end
    object sDBLookupComboBoxColor: TsDBLookupComboBox
      Left = 33
      Top = 190
      Width = 264
      Height = 23
      Color = 2103573
      DataField = 'id_color'
      DataSource = DataModule1.DS_cars
      KeyField = 'id_color'
      ListField = 'name_color'
      ListSource = DataModule1.DS_color
      TabOrder = 2
      ShowFocus = False
    end
    object sButtonAddCar: TsButton
      Left = 33
      Top = 287
      Width = 264
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1072#1096#1080#1085#1091
      DisabledImageName = 'sButtonAddCar'
      TabOrder = 3
      OnClick = sButtonAddCarClick
    end
    object DBEditNumber: TDBEdit
      Left = 33
      Top = 140
      Width = 264
      Height = 25
      Color = 2103573
      DataField = 'number'
      DataSource = DataModule1.DS_cars
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16183278
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object sButtonCancelCar: TsButton
      Left = 33
      Top = 328
      Width = 264
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 5
      OnClick = sButtonCancelCarClick
    end
    object sDBLookupComboBoxChangeOwner: TsDBLookupComboBox
      Left = 33
      Top = 240
      Width = 264
      Height = 23
      Color = 2103573
      KeyField = 'id_owner'
      ListField = 'owner_fio'
      ListSource = DataModule1.DS_Q_owner_selector
      TabOrder = 6
    end
  end
end
