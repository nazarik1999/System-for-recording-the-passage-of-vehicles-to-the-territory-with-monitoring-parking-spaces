object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = #1055#1072#1088#1082#1086#1074#1082#1072
  ClientHeight = 642
  ClientWidth = 1188
  Color = clBtnFace
  Constraints.MinHeight = 680
  Constraints.MinWidth = 1200
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCanResize = FormCanResize
  OnCreate = FormCreate
  OnResize = FormResize
  TextHeight = 15
  object sSplitView1: TsSplitView
    Left = 0
    Top = 0
    Width = 50
    Height = 642
    Cursor = crHandPoint
    Margins.Left = 0
    AnimatedShowing = False
    BlurData.Color = clBtnShadow
    BlurData.Opacity = 164
    BlurData.Size = 14
    CloseStyle = svcaCompact
    Opened = False
    OpenedSize = 180
    Placement = svpaLeft
    BevelOuter = bvNone
    Alignment = taLeftJustify
    Color = clInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    ExplicitHeight = 641
    object sSpeedButtonOpen: TsSpeedButton
      Left = 0
      Top = 0
      Width = 50
      Height = 64
      Align = alTop
      DisabledImageName = 'sSpeedButtonOpen'
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100
      ImageIndex = 0
      Images = sCharImageList1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Margin = 8
      ParentFont = False
      OnClick = sSpeedButtonOpenClick
      Alignment = taLeftJustify
      ExplicitLeft = -3
    end
    object sSpeedButtonProezd: TsSpeedButton
      Left = 0
      Top = 64
      Width = 50
      Height = 64
      Align = alTop
      DisabledImageName = 'sSpeedButtonProezd'
      Caption = #1046#1091#1088#1085#1072#1083#13#10#1087#1088#1086#1077#1079#1076#1086#1074
      ImageIndex = 5
      Images = sCharImageList1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Margin = 8
      ParentFont = False
      OnClick = sSpeedButtonProezdClick
      Alignment = taLeftJustify
      ExplicitLeft = -6
      ExplicitTop = 70
    end
    object sSpeedButtonOwner: TsSpeedButton
      Left = 0
      Top = 128
      Width = 50
      Height = 64
      Align = alTop
      DisabledImageName = 'sSpeedButtonOwner'
      Caption = #1057#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1080
      ImageIndex = 4
      Images = sCharImageList1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Margin = 8
      ParentFont = False
      OnClick = sSpeedButtonOwnerClick
      Alignment = taLeftJustify
      ExplicitLeft = -5
      ExplicitTop = 134
    end
    object sSpeedButtonExit: TsSpeedButton
      Left = 0
      Top = 578
      Width = 50
      Height = 64
      Align = alBottom
      DisabledImageName = 'sSpeedButtonExit'
      Caption = #1042#1099#1093#1086#1076
      ImageIndex = 1
      Images = sCharImageList1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Margin = 8
      ParentFont = False
      OnClick = sSpeedButtonExitClick
      Alignment = taLeftJustify
      ExplicitLeft = -5
      ExplicitTop = 582
    end
    object sSpeedButtonGraph: TsSpeedButton
      Left = 0
      Top = 192
      Width = 50
      Height = 64
      Align = alTop
      DisabledImageName = 'sSpeedButtonGraph'
      Caption = #1043#1088#1072#1092#1080#1082#1080
      ImageIndex = 6
      Images = sCharImageList1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Margin = 8
      ParentFont = False
      OnClick = sSpeedButtonGraphClick
      Alignment = taLeftJustify
      ExplicitTop = 198
    end
    object sSpeedButtonReport: TsSpeedButton
      Left = 0
      Top = 256
      Width = 50
      Height = 64
      Align = alTop
      DisabledImageName = 'sSpeedButtonReport'
      Caption = #1054#1090#1095#1105#1090#1099
      ImageIndex = 7
      Images = sCharImageList1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Margin = 8
      ParentFont = False
      OnClick = sSpeedButtonReportClick
      Alignment = taLeftJustify
      ExplicitLeft = -5
      ExplicitTop = 250
    end
  end
  object sScrollBoxPanels: TsScrollBox
    Left = 50
    Top = 0
    Width = 1138
    Height = 642
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 1134
    ExplicitHeight = 641
    object sPanelLogs: TsPanel
      Left = 0
      Top = 0
      Width = 1134
      Height = 638
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 1130
      ExplicitHeight = 637
      object sGroupBoxLogs: TsGroupBox
        Left = 1
        Top = 129
        Width = 1132
        Height = 508
        Align = alClient
        Caption = #1046#1091#1088#1085#1072#1083' '#1087#1088#1086#1077#1079#1076#1086#1074' '#1085#1072' '#1087#1072#1088#1082#1086#1074#1082#1091
        TabOrder = 0
        ExplicitWidth = 1128
        ExplicitHeight = 507
        object sDBGridCarLogs: TsDBGrid
          Left = 2
          Top = 17
          Width = 1128
          Height = 489
          Align = alClient
          Color = 2103573
          DataSource = DataModule1.DS_Query_driveway_car
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
              Expanded = False
              FieldName = 'date_driveway'
              Title.Alignment = taCenter
              Title.Caption = #1044#1072#1090#1072
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'time_driveway'
              Title.Alignment = taCenter
              Title.Caption = #1042#1088#1077#1084#1103
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gate_name'
              Title.Alignment = taCenter
              Title.Caption = #1042#1086#1088#1086#1090#1072
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'name_drivewaytype'
              Title.Alignment = taCenter
              Title.Caption = #1058#1080#1087' '#1087#1088#1086#1077#1079#1076#1072
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'name_brand'
              Title.Alignment = taCenter
              Title.Caption = #1052#1072#1088#1082#1072' '#1084#1072#1096#1080#1085#1099
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'name_model'
              Title.Alignment = taCenter
              Title.Caption = #1052#1086#1076#1077#1083#1100' '#1084#1072#1096#1080#1085#1099
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'number'
              Title.Alignment = taCenter
              Title.Caption = #1053#1086#1084#1077#1088' '#1084#1072#1096#1080#1085#1099
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'name_color'
              Title.Alignment = taCenter
              Title.Caption = #1062#1074#1077#1090' '#1084#1072#1096#1080#1085#1099
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'u_number'
              Title.Alignment = taCenter
              Title.Caption = #1053#1077#1080#1079#1074#1077#1089#1090#1085#1099#1081
              Width = 100
              Visible = True
            end>
        end
      end
      object sGroupBoxInfoAboutDriveways: TsGroupBox
        Left = 1
        Top = 1
        Width = 1132
        Height = 128
        Align = alTop
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1080' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
        TabOrder = 1
        ExplicitWidth = 1128
        object sLabel2: TsLabel
          Left = 25
          Top = 35
          Width = 106
          Height = 15
          Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1078#1091#1088#1085#1072#1083#1091':'
        end
        object sLabel3: TsLabel
          Left = 496
          Top = 35
          Width = 109
          Height = 15
          Caption = #1055#1072#1088#1082#1086#1074#1086#1095#1085#1099#1093' '#1084#1077#1089#1090':'
        end
        object sLabel4: TsLabel
          Left = 496
          Top = 67
          Width = 115
          Height = 15
          Caption = #1052#1072#1096#1080#1085' '#1085#1072' '#1087#1072#1088#1082#1086#1074#1082#1077':'
        end
        object sDBTextPlace: TsDBText
          Left = 617
          Top = 67
          Width = 48
          Height = 17
          Caption = '69'
          Color = clYellow
          ParentColor = False
          ParentFont = False
          ShowAccelChar = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCream
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          DataField = 'all_used'
          DataSource = DataModule1.DS_Q_Parked_Car
        end
        object sDBTextAllCars: TsDBText
          Left = 611
          Top = 35
          Width = 65
          Height = 17
          Caption = '128'
          ParentFont = False
          ShowAccelChar = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          DataField = 'all_places'
          DataSource = DataModule1.DS_Q_Parked_Car
        end
        object EditCarSearch: TsEdit
          Left = 137
          Top = 32
          Width = 339
          Height = 23
          TabOrder = 0
          OnChange = EditCarSearchChange
        end
        object sGroupBoxLogsFilter: TsGroupBox
          Left = 22
          Top = 67
          Width = 155
          Height = 44
          Caption = #1060#1080#1083#1100#1090#1088#1099
          TabOrder = 1
          object sCheckBoxIn: TsCheckBox
            Left = 8
            Top = 19
            Width = 57
            Height = 19
            Caption = #1042#1098#1077#1079#1076
            TabOrder = 0
            OnClick = sCheckBoxInClick
            ShowFocus = False
          end
          object sCheckBoxOut: TsCheckBox
            Left = 86
            Top = 19
            Width = 59
            Height = 19
            Caption = #1042#1099#1077#1079#1076
            TabOrder = 1
            OnClick = sCheckBoxOutClick
            ShowFocus = False
          end
        end
      end
    end
    object sPanelOwners: TsPanel
      Left = 0
      Top = 0
      Width = 1134
      Height = 638
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 1130
      ExplicitHeight = 637
      object sScrollBoxReg: TsScrollBox
        Left = 820
        Top = 1
        Width = 313
        Height = 636
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 816
        ExplicitHeight = 635
        object sFrameBarReg: TsFrameBar
          Left = 0
          Top = 0
          Width = 309
          Height = 632
          Cursor = crHandPoint
          HorzScrollBar.Visible = False
          VertScrollBar.Range = 96
          VertScrollBar.Tracking = True
          Align = alClient
          AutoScroll = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DLight
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Font.Quality = fqProof
          ParentFont = False
          TabOrder = 0
          SkinData.SkinSection = 'BAR'
          ActiveFrameIndex = -1
          Spacing = 0
          Items = <
            item
              DisplayName = 'TsTitleItem'
              Margin = 0
              ImageIndex = 0
              ShowArrow = True
              TextAlignment = taCenter
              Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
              SkinSection = 'BARTITLE'
              OnCreateFrame = sFrameBarRegItems1CreateFrame
            end
            item
              DisplayName = 'TsTitleItem'
              ImageIndex = 1
              ShowArrow = True
              TextAlignment = taLeftJustify
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1072
              SkinSection = 'BARTITLE'
              OnCreateFrame = sFrameBarRegItems2CreateFrame
            end
            item
              DisplayName = 'TsTitleItem'
              ImageIndex = 2
              ShowArrow = True
              TextAlignment = taLeftJustify
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1072#1096#1080#1085#1091' '#1074' '#1041#1044
              SkinSection = 'BARTITLE'
              OnCreateFrame = sFrameBarRegItems3CreateFrame
            end>
          ExplicitLeft = 1
          ExplicitTop = -3
          ExplicitWidth = 308
          ExplicitHeight = 635
        end
      end
      object sGroupBoxMain: TsGroupBox
        Left = 1
        Top = 1
        Width = 819
        Height = 636
        Align = alClient
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1072#1093
        TabOrder = 1
        ExplicitWidth = 815
        ExplicitHeight = 635
        object sPanelOwner: TsPanel
          Left = 2
          Top = 17
          Width = 815
          Height = 425
          Align = alTop
          TabOrder = 0
          object sLabel1: TsLabel
            Left = 20
            Top = 18
            Width = 82
            Height = 15
            Caption = #1057#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1080':'
          end
          object sEditSearchOwner: TsEdit
            Left = 108
            Top = 15
            Width = 237
            Height = 23
            ImeName = 'sEdit'
            TabOrder = 0
            TextHint = #1055#1086#1080#1089#1082
            OnChange = sEditSearchOwnerChange
          end
          object sDBGridOwners: TsDBGrid
            Left = 1
            Top = 50
            Width = 813
            Height = 374
            Align = alBottom
            Color = 2103573
            DataSource = DataModule1.DS_Query_Owners
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
            PopupMenu = PopupMenuDeleteOwner
            ReadOnly = True
            TabOrder = 1
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
                FieldName = 'firstname'
                Title.Alignment = taCenter
                Title.Caption = #1060#1072#1084#1080#1083#1080#1103
                Width = 110
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'middlename'
                Title.Alignment = taCenter
                Title.Caption = #1048#1084#1103
                Width = 110
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'lastname'
                Title.Alignment = taCenter
                Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
                Width = 110
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'phone'
                Title.Alignment = taCenter
                Title.Caption = #1058#1077#1083#1077#1092#1086#1085
                Width = 110
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'user_login'
                Title.Alignment = taCenter
                Title.Caption = #1051#1086#1075#1080#1085
                Width = 110
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'flat'
                Title.Alignment = taCenter
                Title.Caption = #1050#1074#1072#1088#1090#1080#1088#1072
                Width = 110
                Visible = True
              end>
          end
          object sButtonRequest: TsButton
            Left = 356
            Top = 15
            Width = 137
            Height = 23
            Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1079#1072#1103#1074#1086#1082
            DisabledImageName = 'sButtonRequest'
            TabOrder = 2
            OnClick = sButtonRequestClick
          end
        end
        object sPanelCar: TsPanel
          Left = 2
          Top = 442
          Width = 815
          Height = 192
          Align = alClient
          TabOrder = 1
          ExplicitWidth = 811
          ExplicitHeight = 191
          object sGroupBoxCar: TsGroupBox
            Left = 1
            Top = 1
            Width = 813
            Height = 190
            Align = alClient
            Caption = #1052#1072#1096#1080#1085#1099' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1086#1074
            TabOrder = 0
            ExplicitWidth = 809
            ExplicitHeight = 189
            object sDBGridCars: TsDBGrid
              Left = 2
              Top = 17
              Width = 809
              Height = 171
              Align = alClient
              Color = 2103573
              DataSource = DataModule1.DS_Query_Cars
              DrawingStyle = gdsGradient
              GradientEndColor = 3681061
              GradientStartColor = 2826524
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 16183278
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              PopupMenu = PopupMenuDeleteCar
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
                  FieldName = 'name_brand'
                  Title.Alignment = taCenter
                  Title.Caption = #1052#1072#1088#1082#1072' '#1084#1072#1096#1080#1085#1099
                  Width = 166
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'name_model'
                  Title.Alignment = taCenter
                  Title.Caption = #1052#1086#1076#1077#1083#1100
                  Width = 166
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'number'
                  Title.Alignment = taCenter
                  Title.Caption = #1053#1086#1084#1077#1088
                  Width = 166
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'name_color'
                  Title.Alignment = taCenter
                  Title.Caption = #1062#1074#1077#1090
                  Width = 166
                  Visible = True
                end>
            end
          end
        end
      end
    end
    object sPanelAutorize: TsPanel
      Left = 0
      Top = 0
      Width = 1134
      Height = 638
      Align = alClient
      TabOrder = 2
      ExplicitLeft = 648
      ExplicitTop = 357
      ExplicitWidth = 449
      ExplicitHeight = 283
      object sLabel5: TsLabel
        Left = 48
        Top = 32
        Width = 82
        Height = 15
        Caption = #1042#1074#1077#1076#1080#1090#1077' '#1083#1086#1075#1080#1085':'
      end
      object sLabel6: TsLabel
        Left = 48
        Top = 96
        Width = 89
        Height = 15
        Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100':'
      end
      object E_Log: TsEdit
        Left = 48
        Top = 53
        Width = 193
        Height = 23
        TabOrder = 0
      end
      object E_Pass: TsEdit
        Left = 48
        Top = 117
        Width = 193
        Height = 23
        PasswordChar = '*'
        TabOrder = 1
      end
      object sButtonAutorize: TsButton
        Left = 48
        Top = 160
        Width = 193
        Height = 25
        Caption = #1042#1086#1081#1090#1080
        DisabledImageName = 'sButtonAutorize'
        TabOrder = 2
        OnClick = sButtonAutorizeClick
      end
    end
    object sPanelGraph: TsPanel
      Left = 0
      Top = 0
      Width = 1134
      Height = 638
      Align = alClient
      TabOrder = 3
      ExplicitLeft = 760
      ExplicitTop = 443
      ExplicitWidth = 370
      ExplicitHeight = 194
      object sPageControlGraph: TsPageControl
        Left = 1
        Top = 1
        Width = 1132
        Height = 636
        ActivePage = sTabSheet1
        Align = alClient
        TabOrder = 0
        ExplicitLeft = -409
        ExplicitTop = -13
        ExplicitWidth = 696
        ExplicitHeight = 381
        object sTabSheet1: TsTabSheet
          Caption = #1043#1088#1072#1092#1080#1082' '#1079#1072#1077#1079#1076#1086#1074'/'#1074#1099#1077#1079#1076#1086#1074
          object sPanelDrivewayInfo: TsPanel
            Left = 0
            Top = 0
            Width = 1124
            Height = 65
            Align = alTop
            TabOrder = 0
            ExplicitWidth = 1120
            object sLabel7: TsLabel
              Left = 41
              Top = 21
              Width = 17
              Height = 15
              Caption = #1054#1090':'
            end
            object sLabel8: TsLabel
              Left = 224
              Top = 21
              Width = 18
              Height = 15
              Caption = #1044#1086':'
            end
            object sButtonViewDriveway: TsButton
              Left = 408
              Top = 20
              Width = 169
              Height = 20
              Caption = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100
              DisabledImageName = 'sButtonViewDriveway'
              TabOrder = 0
              OnClick = sButtonViewDrivewayClick
            end
            object sDateEditStart: TsDateEdit
              Left = 64
              Top = 18
              Width = 129
              Height = 23
              ImeName = 'sDateEditStart'
              MaxLength = 10
              TabOrder = 1
            end
            object sDateEditEnd: TsDateEdit
              Left = 248
              Top = 18
              Width = 129
              Height = 23
              MaxLength = 10
              TabOrder = 2
            end
          end
          object DBChart4: TDBChart
            Left = 0
            Top = 65
            Width = 1124
            Height = 541
            Gradient.Colors = <
              item
                Color = clSilver
              end
              item
                Color = clWhite
                Offset = 0.452095808383233500
              end
              item
                Color = clGray
                Offset = 1.000000000000000000
              end>
            Gradient.EndColor = clGray
            Gradient.MidColor = clWhite
            Gradient.StartColor = clSilver
            Gradient.Visible = True
            Title.Font.Color = clBlack
            Title.Font.Height = -21
            Title.Text.Strings = (
              #1043#1088#1072#1092#1080#1082' '#1079#1072#1077#1079#1076#1086#1074'/'#1074#1099#1077#1079#1076#1086#1074)
            LeftAxis.Axis.Width = 0
            LeftAxis.ExactDateTime = False
            LeftAxis.Increment = 1.000000000000000000
            View3D = False
            Align = alClient
            TabOrder = 1
            ExplicitWidth = 1120
            ExplicitHeight = 540
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object Series4: TFastLineSeries
              HoverElement = []
              DataSource = DataModule1.Q_date_zaezd
              LinePen.Color = clRed
              XValues.DateTime = True
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'date_driveway'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = 'CountCarOfDate'
            end
          end
        end
        object sTabSheet2: TsTabSheet
          Caption = #1043#1088#1072#1092#1080#1082' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1081' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
          object sPanelMoveInfo: TsPanel
            Left = 0
            Top = 0
            Width = 1124
            Height = 63
            Align = alTop
            TabOrder = 0
            object sLabel9: TsLabel
              Left = 26
              Top = 20
              Width = 17
              Height = 15
              Caption = #1054#1090':'
            end
            object sLabel10: TsLabel
              Left = 210
              Top = 20
              Width = 18
              Height = 15
              Caption = #1044#1086':'
            end
            object sLabel11: TsLabel
              Left = 407
              Top = 20
              Width = 85
              Height = 15
              Caption = #1059#1082#1072#1079#1072#1090#1100' '#1087#1088#1086#1077#1079#1076':'
            end
            object sDateEditMoveStart: TsDateEdit
              Left = 49
              Top = 17
              Width = 127
              Height = 23
              MaxLength = 10
              TabOrder = 0
            end
            object sDateEditMoveEnd: TsDateEdit
              Left = 234
              Top = 17
              Width = 127
              Height = 23
              MaxLength = 10
              TabOrder = 1
            end
            object sDBLookupComboBoxSelectGate: TsDBLookupComboBox
              Left = 499
              Top = 17
              Width = 145
              Height = 23
              Color = 2103573
              KeyField = 'gate_name'
              ListField = 'gate_name'
              ListSource = DataModule1.DS_gate
              TabOrder = 2
              OnCloseUp = sDBLookupComboBoxSelectGateCloseUp
            end
          end
          object DBChart1: TDBChart
            Left = 0
            Top = 63
            Width = 1124
            Height = 543
            Gradient.EndColor = clGray
            Gradient.MidColor = clWhite
            Gradient.StartColor = clSilver
            Gradient.Visible = True
            Title.Font.Color = clBlack
            Title.Font.Height = -21
            Title.Text.Strings = (
              #1043#1088#1072#1092#1080#1082' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103' '#1087#1086' '#1087#1088#1086#1077#1079#1076#1072#1084)
            LeftAxis.ExactDateTime = False
            LeftAxis.Increment = 1.000000000000000000
            Align = alClient
            TabOrder = 1
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 6
            object Series1: TBarSeries
              HoverElement = []
              DataSource = DataModule1.Q_chart_gate
              XLabelsSource = 'name_drivewaytype'
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = 'CountZaezd'
            end
          end
        end
        object sTabSheet3: TsTabSheet
          Caption = #1050#1086#1083'-'#1074#1086' '#1079#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1085#1099#1093' '#1084#1072#1096#1080#1085
          object DBChart3: TDBChart
            Left = 0
            Top = 0
            Width = 1124
            Height = 606
            Gradient.EndColor = clGray
            Gradient.MidColor = clWhite
            Gradient.StartColor = clSilver
            Gradient.Visible = True
            Title.Font.Color = clBlack
            Title.Font.Height = -21
            Title.Text.Strings = (
              #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1084#1086#1076#1077#1083#1077#1081' '#1084#1072#1096#1080#1085)
            LeftAxis.ExactDateTime = False
            LeftAxis.Increment = 1.000000000000000000
            Align = alClient
            TabOrder = 0
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object Series3: TBarSeries
              HoverElement = []
              DataSource = DataModule1.Q_count_brands
              XLabelsSource = 'name_brand'
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = 'CountCars'
            end
          end
        end
      end
    end
    object sPanelReports: TsPanel
      Left = 0
      Top = 0
      Width = 1134
      Height = 638
      Align = alClient
      TabOrder = 4
      Visible = False
      ExplicitLeft = 826
      ExplicitTop = 488
      ExplicitWidth = 304
      ExplicitHeight = 149
      object sPageControlReports: TsPageControl
        Left = 1
        Top = 1
        Width = 1132
        Height = 636
        ActivePage = sTabSheet4
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 600
        ExplicitHeight = 323
        object sTabSheet4: TsTabSheet
          Caption = #1054#1090#1095#1105#1090' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1081' '#1087#1086' '#1087#1088#1086#1077#1079#1076#1072#1084
          object sPanelReport1Info: TsPanel
            Left = 0
            Top = 0
            Width = 1124
            Height = 113
            Align = alTop
            TabOrder = 0
            ExplicitLeft = -272
            ExplicitTop = -6
            ExplicitWidth = 592
            object sLabel12: TsLabel
              Left = 39
              Top = 16
              Width = 75
              Height = 15
              Caption = #1059#1082#1072#1078#1080#1090#1077' '#1076#1072#1090#1091':'
            end
            object sLabel13: TsLabel
              Left = 24
              Top = 48
              Width = 90
              Height = 15
              Caption = #1059#1082#1072#1078#1080#1090#1077' '#1087#1088#1086#1077#1079#1076':'
            end
            object sComboBoxSelectProezd: TsComboBox
              Left = 120
              Top = 45
              Width = 153
              Height = 23
              TabOrder = 0
              ShowFocus = False
              TextHint = #1042#1099#1073#1088#1072#1090#1100' '#1087#1088#1086#1077#1079#1076
              Items.Strings = (
                #1057#1077#1074#1077#1088#1085#1099#1081' '#1087#1088#1086#1077#1079#1076
                #1047#1072#1087#1072#1076#1085#1099#1081' '#1087#1088#1086#1077#1079#1076)
            end
            object sButtonViewReport1: TsButton
              Left = 120
              Top = 75
              Width = 153
              Height = 21
              Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1105#1090
              TabOrder = 1
              OnClick = sButtonViewReport1Click
            end
            object sButtonExportReport1: TsButton
              Left = 304
              Top = 75
              Width = 153
              Height = 21
              Caption = #1069#1082#1089#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
              Enabled = False
              TabOrder = 2
              OnClick = sButtonExportReport1Click
            end
            object sDBDateEditReport1: TsDBDateEdit
              Left = 120
              Top = 13
              Width = 153
              Height = 23
              MaxLength = 10
              TabOrder = 3
              OnChange = sDBDateEditReport1Change
              DataField = 'date_driveway'
              DataSource = DataModule1.DS_driveway
            end
            object sComboBoxSelectExport1: TsComboBox
              Left = 304
              Top = 45
              Width = 153
              Height = 23
              Enabled = False
              TabOrder = 4
              ShowFocus = False
              TextHint = #1069#1082#1089#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1074
              Items.Strings = (
                'Word'
                'Excel'
                'PDF')
            end
            object sRadioButtonAllTimeReport1: TsRadioButton
              Left = 303
              Top = 16
              Width = 93
              Height = 19
              Caption = #1047#1072' '#1074#1089#1105' '#1074#1088#1077#1084#1103
              TabOrder = 5
            end
            object sEditHideDate: TsEdit
              Left = 402
              Top = 14
              Width = 84
              Height = 23
              TabOrder = 6
              Visible = False
            end
          end
          object sDBGridReport1: TsDBGrid
            Left = 0
            Top = 113
            Width = 1124
            Height = 493
            Align = alClient
            Color = 2103573
            DataSource = DataModule1.DS_Parking_report
            DrawingStyle = gdsGradient
            GradientEndColor = 3681061
            GradientStartColor = 2826524
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16183278
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            DefaultRowHeight = 19
          end
        end
        object sTabSheet5: TsTabSheet
          Caption = #1054#1090#1095#1105#1090' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1081' '#1087#1086' '#1074#1088#1077#1084#1077#1085#1080
          object sPanelReport2Info: TsPanel
            Left = 0
            Top = 0
            Width = 1124
            Height = 113
            Align = alTop
            TabOrder = 0
            object sLabel14: TsLabel
              Left = 47
              Top = 13
              Width = 75
              Height = 15
              Caption = #1059#1082#1072#1078#1080#1090#1077' '#1076#1072#1090#1091':'
            end
            object sLabel15: TsLabel
              Left = 26
              Top = 48
              Width = 96
              Height = 15
              Caption = #1055#1077#1088#1080#1086#1076' '#1074#1088#1077#1084#1077#1085#1080':'
            end
            object sDBDateEditReport2: TsDBDateEdit
              Left = 133
              Top = 10
              Width = 153
              Height = 23
              MaxLength = 10
              TabOrder = 0
              OnChange = sDBDateEditReport2Change
              DataField = 'date_driveway'
              DataSource = DataModule1.DS_driveway
            end
            object sComboBoxChooseTime: TsComboBox
              Left = 133
              Top = 46
              Width = 153
              Height = 23
              TabOrder = 1
              ShowFocus = False
              TextHint = #1042#1099#1073#1088#1072#1090#1100' '#1080#1085#1090#1077#1088#1074#1072#1083' '#1074#1088#1077#1084#1077#1085#1080
              Items.Strings = (
                #1089' 8:00 '#1076#1086' 12:00'
                #1089' 12:00 '#1076#1086' 17:00'
                #1089' 17:00 '#1076#1086' 22:00')
            end
            object sButtonViewReport2: TsButton
              Left = 133
              Top = 75
              Width = 153
              Height = 25
              Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1105#1090
              DisabledImageName = 'sButtonViewReport2'
              TabOrder = 2
              OnClick = sButtonViewReport2Click
            end
            object sRadioButtonAllTimeReport2: TsRadioButton
              Left = 312
              Top = 12
              Width = 93
              Height = 19
              Caption = #1047#1072' '#1074#1089#1105' '#1074#1088#1077#1084#1103
              TabOrder = 3
            end
            object sComboBoxSelectExport2: TsComboBox
              Left = 312
              Top = 47
              Width = 153
              Height = 23
              Enabled = False
              TabOrder = 4
              ShowFocus = False
              TextHint = #1069#1082#1089#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1074
              Items.Strings = (
                'Word'
                'Excel'
                'PDF')
            end
            object sButtonExportReport2: TsButton
              Left = 312
              Top = 76
              Width = 153
              Height = 25
              Caption = #1069#1082#1089#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
              Enabled = False
              TabOrder = 5
              OnClick = sButtonExportReport2Click
            end
            object sEditHideDate2: TsEdit
              Left = 424
              Top = 12
              Width = 62
              Height = 23
              TabOrder = 6
              Text = 'sEditHideDate2'
              Visible = False
            end
          end
          object sDBGridReport2: TsDBGrid
            Left = 0
            Top = 113
            Width = 1124
            Height = 493
            Align = alClient
            DataSource = DataModule1.DS_time_driveway_report
            DrawingStyle = gdsGradient
            GradientEndColor = 3681061
            GradientStartColor = 2826524
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            DefaultRowHeight = 19
          end
        end
        object sTabSheet6: TsTabSheet
          Caption = #1054#1090#1095#1105#1090' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1081' '#1087#1086' '#1074#1098#1077#1079#1076#1091'/'#1074#1099#1077#1079#1076#1091
          object sPanel1: TsPanel
            Left = 0
            Top = 0
            Width = 1124
            Height = 113
            Align = alTop
            TabOrder = 0
            object sLabel16: TsLabel
              Left = 41
              Top = 14
              Width = 75
              Height = 15
              Caption = #1059#1082#1072#1078#1080#1090#1077' '#1076#1072#1090#1091':'
            end
            object sLabel17: TsLabel
              Left = 46
              Top = 47
              Width = 70
              Height = 15
              Caption = #1058#1080#1087' '#1087#1088#1086#1077#1079#1076#1072':'
            end
            object sDBDateEditReport3: TsDBDateEdit
              Left = 131
              Top = 12
              Width = 153
              Height = 23
              MaxLength = 10
              TabOrder = 0
              OnChange = sDBDateEditReport3Change
              DataField = 'date_driveway'
              DataSource = DataModule1.DS_driveway
            end
            object sComboBoxChooseDrivewaytype: TsComboBox
              Left = 131
              Top = 46
              Width = 153
              Height = 23
              TabOrder = 1
              ShowFocus = False
              TextHint = #1042#1099#1073#1088#1072#1090#1100' '#1090#1080#1087' '#1087#1088#1086#1077#1079#1076#1072
              Items.Strings = (
                #1042#1098#1077#1079#1076
                #1042#1099#1077#1079#1076)
            end
            object sButtonViewReport3: TsButton
              Left = 131
              Top = 75
              Width = 153
              Height = 25
              Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1105#1090
              TabOrder = 2
              OnClick = sButtonViewReport3Click
            end
            object sRadioButtonAllTimeReport3: TsRadioButton
              Left = 316
              Top = 13
              Width = 93
              Height = 19
              Caption = #1047#1072' '#1074#1089#1105' '#1074#1088#1077#1084#1103
              TabOrder = 3
            end
            object sComboBoxSelectExport3: TsComboBox
              Left = 316
              Top = 47
              Width = 153
              Height = 23
              Enabled = False
              TabOrder = 4
              TextHint = #1069#1082#1089#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1074
              Items.Strings = (
                'Word'
                'Excel'
                'PDF')
            end
            object sButtonExportReport3: TsButton
              Left = 316
              Top = 76
              Width = 153
              Height = 25
              Caption = #1069#1082#1089#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
              Enabled = False
              TabOrder = 5
              OnClick = sButtonExportReport3Click
            end
            object sEditHideDate3: TsEdit
              Left = 432
              Top = 12
              Width = 89
              Height = 23
              TabOrder = 6
              Text = 'sEditHideDate3'
              Visible = False
            end
          end
          object sDBGridReport3: TsDBGrid
            Left = 0
            Top = 113
            Width = 1124
            Height = 493
            Align = alClient
            DataSource = DataModule1.DS_Q_parking_drivewaytype_report
            DrawingStyle = gdsGradient
            GradientEndColor = 3681061
            GradientStartColor = 2826524
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            DefaultRowHeight = 19
          end
        end
      end
    end
  end
  object sSkinManager1: TsSkinManager
    ButtonsOptions.OldGlyphsMode = True
    InternalSkins = <>
    MenuSupport.Font.Charset = DEFAULT_CHARSET
    MenuSupport.Font.Color = clWindowText
    MenuSupport.Font.Height = -11
    MenuSupport.Font.Name = 'Segoe UI'
    MenuSupport.Font.Style = []
    SkinDirectory = 'C:\Program Files (x86)\Embarcadero\AlphaControls\Skins'
    SkinName = 'Fluent Night'
    SkinInfo = '15'
    ThirdParty.ThirdEdits = 
      'TEdit'#13#10'TMemo'#13#10'TMaskEdit'#13#10'TLabeledEdit'#13#10'THotKey'#13#10'TListBox'#13#10'TCheck' +
      'ListBox'#13#10'TRichEdit'#13#10'TDateTimePicker'
    ThirdParty.ThirdButtons = 'TButton'
    ThirdParty.ThirdBitBtns = 'TBitBtn'
    ThirdParty.ThirdCheckBoxes = 'TCheckBox'#13#10'TRadioButton'#13#10'TGroupButton'
    ThirdParty.ThirdGroupBoxes = 'TGroupBox'#13#10'TRadioGroup'
    ThirdParty.ThirdListViews = 'TListView'
    ThirdParty.ThirdPanels = 'TPanel'
    ThirdParty.ThirdGrids = 'TStringGrid'#13#10'TDrawGrid'
    ThirdParty.ThirdTreeViews = 'TTreeView'
    ThirdParty.ThirdComboBoxes = 'TComboBox'#13#10'TColorBox'
    ThirdParty.ThirdWWEdits = ' '
    ThirdParty.ThirdVirtualTrees = ' '
    ThirdParty.ThirdGridEh = ' '
    ThirdParty.ThirdPageControl = 'TPageControl'
    ThirdParty.ThirdTabControl = 'TTabControl'
    ThirdParty.ThirdToolBar = 'TToolBar'
    ThirdParty.ThirdStatusBar = 'TStatusBar'
    ThirdParty.ThirdSpeedButton = 'TSpeedButton'
    ThirdParty.ThirdScrollControl = 'TScrollBox'
    ThirdParty.ThirdUpDown = 'TUpDown'
    ThirdParty.ThirdScrollBar = 'TScrollBar'
    ThirdParty.ThirdStaticText = 'TStaticText'
    ThirdParty.ThirdNativePaint = ' '
    Left = 1104
    Top = 576
  end
  object sCharImageList1: TsCharImageList
    EmbeddedFonts = <
      item
        FontName = 'FontAwesome'
        FontData = {}
      end>
    Items = <
      item
        Char = 61641
      end
      item
        Char = 61584
      end
      item
        Char = 61459
      end
      item
        Char = 61475
      end
      item
        Char = 61447
      end
      item
        Char = 61881
      end
      item
        Char = 61953
      end
      item
        Char = 61646
      end>
    Left = 1002
    Top = 576
    Bitmap = {}
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DataModule1.Query_parking_report
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1020
    Top = 376
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = DataModule1.Query_time_driveway_report
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1020
    Top = 440
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    DataSet = DataModule1.Q_parking_drivewaytype_report
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1020
    Top = 504
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 916
    Top = 504
  end
  object frxReport1: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44921.689099664300000000
    ReportOptions.LastChange = 44921.689099664300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 1100
    Top = 376
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      HGuides.Strings = (
        '325,03958')
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 241.308453850000000000
          Top = 1.453665380000000000
          Width = 224.155202310000000000
          Height = 17.443984620000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1054#1090#1095#1105#1090' '#1086' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1080' '#1087#1086' '#1087#1088#1086#1077#1079#1076#1091)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1name_brand: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 188.976500000000000000
          Height = 26.456710000000000000
          DataField = 'name_brand'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."name_brand"]')
          ParentFont = False
        end
        object frxDBDataset1name_model: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 188.976500000000000000
          Width = 188.976500000000000000
          Height = 26.456710000000000000
          DataField = 'name_model'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."name_model"]')
          ParentFont = False
        end
        object frxDBDataset1name_driveway_type: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 188.976500000000000000
          Height = 26.456710000000000000
          DataField = 'name_driveway_type'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."name_driveway_type"]')
          ParentFont = False
        end
        object frxDBDataset1time_driveway: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 566.929500000000000000
          Width = 151.181200000000000000
          Height = 26.456710000000000000
          DataField = 'time_driveway'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."time_driveway"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.351315380000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 5.709266920000000000
          Width = 188.976500000000000000
          Height = 20.351315380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '                  '#1052#1072#1088#1082#1072)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 6.000000000000000000
          Width = 188.976500000000000000
          Height = 20.351315380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '                  '#1052#1086#1076#1077#1083#1100)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 6.000000000000000000
          Width = 188.976500000000000000
          Height = 20.351315380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '                  '#1058#1080#1087' '#1087#1088#1086#1077#1079#1076#1072)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 6.000000000000000000
          Width = 151.181200000000000000
          Height = 20.351315380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '               '#1042#1088#1077#1084#1103
            '')
          ParentFont = False
        end
      end
    end
  end
  object frxReport2: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44921.698381794000000000
    ReportOptions.LastChange = 44921.698381794000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 1100
    Top = 440
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 206.420484615384600000
          Top = -1.453665384615384000
          Width = 284.918415384615400000
          Height = 23.258646153846150000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1054#1090#1095#1105#1090' '#1086' '#1087#1088#1086#1077#1079#1076#1072#1093' '#1079#1072' '#1080#1085#1090#1077#1088#1074#1072#1083' '#1074#1088#1077#1084#1077#1085#1080)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2name_brand: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 188.976500000000000000
          Height = 22.677180000000000000
          DataField = 'name_brand'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset2."name_brand"]')
          ParentFont = False
        end
        object frxDBDataset2name_model: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 188.976500000000000000
          Width = 188.976500000000000000
          Height = 22.677180000000000000
          DataField = 'name_model'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset2."name_model"]')
          ParentFont = False
        end
        object frxDBDataset2name_driveway_type: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 188.976500000000000000
          Height = 22.677180000000000000
          DataField = 'name_driveway_type'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset2."name_driveway_type"]')
          ParentFont = False
        end
        object frxDBDataset2time_driveway: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 566.929500000000000000
          Width = 151.181200000000000000
          Height = 22.677180000000000000
          DataField = 'time_driveway'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset2."time_driveway"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 25.060582300000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 1.801936150000000000
          Width = 188.976500000000000000
          Height = 23.258646150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '                  '#1052#1072#1088#1082#1072)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 2.000000000000000000
          Width = 188.976500000000000000
          Height = 23.258646150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '                  '#1052#1086#1076#1077#1083#1100)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 2.000000000000000000
          Width = 188.976500000000000000
          Height = 23.258646150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '                  '#1058#1080#1087' '#1087#1088#1086#1077#1079#1076#1072)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 2.000000000000000000
          Width = 151.181200000000000000
          Height = 23.258646150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '                '#1042#1088#1077#1084#1103)
          ParentFont = False
        end
      end
    end
  end
  object frxReport3: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44921.704631168980000000
    ReportOptions.LastChange = 44921.704631168980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 1108
    Top = 504
    Datasets = <
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 229.679130769230800000
          Top = -1.453665384615384000
          Width = 258.752438461538500000
          Height = 23.258646153846150000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1054#1090#1095#1105#1090' '#1086' '#1087#1088#1086#1077#1079#1076#1072#1093' '#1087#1086' '#1074#1098#1077#1079#1076#1091'/'#1074#1099#1077#1079#1076#1091)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object frxDBDataset3name_brand: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 188.976500000000000000
          Height = 22.677180000000000000
          DataField = 'name_brand'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."name_brand"]')
          ParentFont = False
        end
        object frxDBDataset3name_model: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 188.976500000000000000
          Width = 188.976500000000000000
          Height = 22.677180000000000000
          DataField = 'name_model'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."name_model"]')
          ParentFont = False
        end
        object frxDBDataset3color_name: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 188.976500000000000000
          Height = 22.677180000000000000
          DataField = 'color_name'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."color_name"]')
          ParentFont = False
        end
        object frxDBDataset3time_driveway: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 566.929500000000000000
          Width = 151.181200000000000000
          Height = 22.677180000000000000
          DataField = 'time_driveway'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."time_driveway"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 2.709266920000000000
          Width = 188.976500000000000000
          Height = 20.351315380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '                  '#1052#1072#1088#1082#1072)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 2.000000000000000000
          Width = 188.976500000000000000
          Height = 20.351315380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '                  '#1052#1086#1076#1077#1083#1100)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 2.000000000000000000
          Width = 188.976500000000000000
          Height = 20.351315380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '                  '#1062#1074#1077#1090)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 2.000000000000000000
          Width = 151.181200000000000000
          Height = 20.351315380000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '                '#1042#1088#1077#1084#1103)
          ParentFont = False
        end
      end
    end
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = False
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 911
    Top = 443
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 911
    Top = 379
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 910
    Top = 580
  end
  object PopupMenuDeleteCar: TPopupMenu
    Left = 799
    Top = 555
    object N1: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1084#1072#1096#1080#1085#1091' '#1080#1079' '#1089#1087#1080#1089#1082#1072
      OnClick = N1Click
    end
  end
  object PopupMenuDeleteOwner: TPopupMenu
    Left = 799
    Top = 491
    object N2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1072' '#1080#1079' '#1089#1087#1080#1089#1082#1072
      OnClick = N2Click
    end
  end
end
