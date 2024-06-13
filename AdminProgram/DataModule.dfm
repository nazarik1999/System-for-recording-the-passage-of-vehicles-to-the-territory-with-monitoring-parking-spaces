object DataModule1: TDataModule1
  Height = 1029
  Width = 1373
  PixelsPerInch = 120
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="Driver=MySQL ODBC 8.0 Unicode Driver;SERVER=localhost;UID=ro' +
      'ot;DATABASE=parking;PORT=3306;COLUMN_SIZE_S32=1"'
    LoginPrompt = False
    AfterConnect = ADOConnection1AfterConnect
    Left = 160
    Top = 20
  end
  object car_brands: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'car_brands'
    Left = 90
    Top = 90
  end
  object DS_car_brands: TDataSource
    DataSet = car_brands
    Left = 250
    Top = 90
  end
  object car_models: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'id_brand'
    MasterFields = 'id_brand'
    MasterSource = DS_car_brands
    TableName = 'car_models'
    Left = 90
    Top = 160
  end
  object DS_car_models: TDataSource
    DataSet = car_models
    Left = 250
    Top = 160
  end
  object cars: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'cars'
    Left = 90
    Top = 230
    object carsid_car: TAutoIncField
      FieldName = 'id_car'
      ReadOnly = True
    end
    object carsid_model: TIntegerField
      FieldName = 'id_model'
    end
    object carsnumber: TWideStringField
      FieldName = 'number'
      Size = 50
    end
    object carsid_color: TIntegerField
      FieldName = 'id_color'
    end
  end
  object DS_cars: TDataSource
    DataSet = cars
    Left = 250
    Top = 230
  end
  object color: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'color'
    Left = 90
    Top = 300
  end
  object DS_color: TDataSource
    DataSet = color
    Left = 250
    Top = 300
  end
  object information_owners: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'infomation_owners'
    Left = 90
    Top = 370
    object information_ownersid_ownerinfo: TAutoIncField
      FieldName = 'id_ownerinfo'
      ReadOnly = True
    end
    object information_ownersflat: TWideStringField
      FieldName = 'flat'
      Size = 255
    end
    object information_ownersid_entrance: TIntegerField
      FieldName = 'id_entrance'
    end
  end
  object DS_information_owners: TDataSource
    DataSet = information_owners
    Left = 250
    Top = 370
  end
  object owners: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterPost = ownersAfterPost
    AfterDelete = ownersAfterDelete
    TableName = 'owner'
    Left = 90
    Top = 450
    object ownersid_owner: TAutoIncField
      FieldName = 'id_owner'
      ReadOnly = True
    end
    object ownersfirstname: TWideStringField
      FieldName = 'firstname'
      Size = 255
    end
    object ownersmiddlename: TWideStringField
      FieldName = 'middlename'
      Size = 255
    end
    object ownerslastname: TWideStringField
      FieldName = 'lastname'
      Size = 255
    end
    object ownersphone: TWideStringField
      FieldName = 'phone'
    end
    object ownersid_user: TIntegerField
      FieldName = 'id_user'
    end
    object ownersid_ownerinfo: TIntegerField
      FieldName = 'id_ownerinfo'
    end
  end
  object DS_owners: TDataSource
    DataSet = owners
    Left = 250
    Top = 450
  end
  object users: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'users'
    Left = 90
    Top = 530
    object usersid_user: TAutoIncField
      FieldName = 'id_user'
      ReadOnly = True
    end
    object usersuser_login: TWideStringField
      FieldName = 'user_login'
      Size = 50
    end
    object usersuser_pass: TWideStringField
      FieldName = 'user_pass'
      Size = 50
    end
    object usersid_access: TIntegerField
      FieldName = 'id_access'
    end
    object usersisDeleted: TIntegerField
      FieldName = 'isDeleted'
    end
  end
  object DS_users: TDataSource
    DataSet = users
    Left = 250
    Top = 530
  end
  object access_right: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'access_right'
    Left = 90
    Top = 610
  end
  object DS_access_right: TDataSource
    DataSet = access_right
    Left = 250
    Top = 610
  end
  object driveway: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'driveway'
    Left = 90
    Top = 690
  end
  object DS_driveway: TDataSource
    DataSet = driveway
    Left = 260
    Top = 690
  end
  object driveway_type: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'driveway_type'
    Left = 90
    Top = 760
  end
  object DS_driveway_type: TDataSource
    DataSet = driveway_type
    Left = 260
    Top = 760
  end
  object ConnectionUser: TADOConnection
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 440
    Top = 20
  end
  object Query_Check_Users: TADOQuery
    Connection = ConnectionUser
    Parameters = <>
    Left = 560
    Top = 20
  end
  object DS_Q_check_users: TDataSource
    DataSet = Query_Check_Users
    Left = 690
    Top = 20
  end
  object gate: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'gate'
    Left = 460
    Top = 120
    object gateid_gate: TAutoIncField
      FieldName = 'id_gate'
      ReadOnly = True
    end
    object gategate_name: TWideStringField
      FieldName = 'gate_name'
      Size = 50
    end
    object gategate_description: TWideStringField
      FieldName = 'gate_description'
      Size = 70
    end
  end
  object DS_gate: TDataSource
    DataSet = gate
    Left = 560
    Top = 120
  end
  object link_car: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterPost = link_carAfterPost
    AfterDelete = link_carAfterDelete
    IndexFieldNames = 'id_owner'
    MasterFields = 'id_owner'
    TableName = 'link_car'
    Left = 460
    Top = 190
    object link_carid_car: TIntegerField
      FieldName = 'id_car'
    end
    object link_carid_owner: TIntegerField
      FieldName = 'id_owner'
    end
  end
  object DS_link_car: TDataSource
    DataSet = link_car
    Left = 560
    Top = 190
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'car_models'
    Left = 460
    Top = 270
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 560
    Top = 270
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'id_car'
    TableName = 'link_car'
    Left = 460
    Top = 350
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 560
    Top = 350
  end
  object Q_chart_gate: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  view_driveway_car.gate_name,'
      '  COUNT(view_driveway_car.id_driveway) AS CountZaezd,'
      '  view_driveway_car.name_drivewaytype'
      'FROM view_driveway_car'
      'GROUP BY view_driveway_car.gate_name,'
      '         view_driveway_car.name_drivewaytype')
    Left = 460
    Top = 470
  end
  object DS_Q_chart_gate: TDataSource
    DataSet = Q_chart_gate
    Left = 590
    Top = 470
  end
  object Q_count_car_entrance: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  infomation_owners.number_entrance,'
      '  COUNT(cars.id_car) AS CarCount'
      'FROM link_car'
      '  RIGHT OUTER JOIN owner'
      '    ON link_car.id_owner = owner.id_owner'
      '  INNER JOIN cars'
      '    ON link_car.id_car = cars.id_car'
      '  RIGHT OUTER JOIN infomation_owners'
      '    ON owner.id_ownerinfo = infomation_owners.id_ownerinfo'
      'GROUP BY infomation_owners.number_entrance')
    Left = 460
    Top = 540
  end
  object DS_Q_count_car_entrance: TDataSource
    DataSet = Q_count_car_entrance
    Left = 590
    Top = 540
  end
  object Q_count_brands: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  car_brands.name_brand,'
      '  COUNT(cars.id_car) AS CountCars'
      'FROM car_models'
      '  LEFT OUTER JOIN car_brands'
      '    ON car_models.id_brand = car_brands.id_brand'
      '  RIGHT OUTER JOIN cars'
      '    ON cars.id_model = car_models.id_model'
      '  RIGHT OUTER JOIN link_car'
      '    ON link_car.id_car = cars.id_car'
      '  INNER JOIN owner'
      '    ON link_car.id_owner = owner.id_owner'
      'GROUP BY car_brands.name_brand')
    Left = 460
    Top = 620
    object Q_count_brandsname_brand: TWideStringField
      FieldName = 'name_brand'
      Size = 60
    end
    object Q_count_brandsCountCars: TLargeintField
      FieldName = 'CountCars'
      ReadOnly = True
    end
  end
  object DS_Q_count_brands: TDataSource
    DataSet = Q_count_brands
    Left = 590
    Top = 620
  end
  object Q_date_zaezd: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  view_driveway_car.date_driveway,'
      '  COUNT(view_driveway_car.id_driveway) AS CountCarOfDate'
      'FROM view_driveway_car'
      'GROUP BY view_driveway_car.date_driveway')
    Left = 460
    Top = 690
  end
  object DS_Q_date_zaezd: TDataSource
    DataSet = Q_date_zaezd
    Left = 590
    Top = 690
  end
  object Q_parking_drivewaytype_report: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 440
    Top = 800
  end
  object DS_Q_parking_drivewaytype_report: TDataSource
    DataSet = Q_parking_drivewaytype_report
    Left = 680
    Top = 800
  end
  object Q_numberOfUsers: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM view_numberofuser')
    Left = 710
    Top = 120
  end
  object DS_Q_numberOfUsers: TDataSource
    DataSet = Q_numberOfUsers
    Left = 840
    Top = 120
  end
  object Q_userCar: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 710
    Top = 200
  end
  object DS_Q_userCar: TDataSource
    DataSet = Q_userCar
    Left = 840
    Top = 200
  end
  object Query_Owners: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = Query_OwnersAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM view_owners'
      'ORDER BY 1'
      '')
    Left = 1010
    Top = 20
    object Query_Ownersfirstname: TWideStringField
      FieldName = 'firstname'
      Size = 255
    end
    object Query_Ownersmiddlename: TWideStringField
      FieldName = 'middlename'
      Size = 255
    end
    object Query_Ownerslastname: TWideStringField
      FieldName = 'lastname'
      Size = 255
    end
    object Query_Ownersphone: TWideStringField
      FieldName = 'phone'
    end
    object Query_Ownersuser_login: TWideStringField
      FieldName = 'user_login'
      Size = 50
    end
    object Query_Ownersflat: TWideStringField
      FieldName = 'flat'
      Size = 255
    end
    object Query_Ownersid_owner: TAutoIncField
      FieldName = 'id_owner'
      ReadOnly = True
    end
  end
  object DS_Query_Owners: TDataSource
    DataSet = Query_Owners
    Left = 1160
    Top = 20
  end
  object Query_Cars: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = Query_CarsAfterScroll
    DataSource = DS_Query_Owners
    Parameters = <
      item
        Name = 'id_owner'
        DataType = ftInteger
        Value = 30
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM view_cars'
      'WHERE view_cars.id_owner = :id_owner'
      '')
    Left = 1010
    Top = 90
    object Query_Carsname_brand: TWideStringField
      FieldName = 'name_brand'
      Size = 60
    end
    object Query_Carsname_model: TWideStringField
      FieldName = 'name_model'
      Size = 50
    end
    object Query_Carsnumber: TWideStringField
      FieldName = 'number'
      Size = 50
    end
    object Query_Carsname_color: TWideStringField
      FieldName = 'name_color'
    end
    object Query_Carsid_car: TIntegerField
      FieldName = 'id_car'
    end
    object Query_Carsid_owner: TIntegerField
      FieldName = 'id_owner'
    end
  end
  object DS_Query_Cars: TDataSource
    DataSet = Query_Cars
    Left = 1160
    Top = 90
  end
  object Query_View_Car_Concat: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_car_concat')
    Left = 1010
    Top = 180
  end
  object DS_Query_Car_Concat: TDataSource
    DataSet = Query_View_Car_Concat
    Left = 1160
    Top = 180
  end
  object Query_users_list: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  users.id_user,'
      '  users.user_login,'
      '  users.user_pass,'
      '  access_right.name_access_right,'
      '  users.isDeleted'
      'FROM users'
      '  INNER JOIN access_right'
      '    ON users.id_access = access_right.id_access_right'
      'WHERE users.isDeleted = 0')
    Left = 1010
    Top = 250
    object Query_users_listid_user: TAutoIncField
      FieldName = 'id_user'
      ReadOnly = True
    end
    object Query_users_listuser_login: TWideStringField
      FieldName = 'user_login'
      Size = 50
    end
    object Query_users_listuser_pass: TWideStringField
      FieldName = 'user_pass'
      Size = 50
    end
    object Query_users_listname_access_right: TWideStringField
      FieldName = 'name_access_right'
      Size = 255
    end
  end
  object DS_Query_users_list: TDataSource
    DataSet = Query_users_list
    Left = 1160
    Top = 250
  end
  object Query_driveway_car: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM view_driveway_car'
      'ORDER BY date_driveway DESC')
    Left = 1010
    Top = 320
    object Query_driveway_carid_driveway: TIntegerField
      FieldName = 'id_driveway'
    end
    object Query_driveway_cardate_driveway: TDateField
      Alignment = taCenter
      FieldName = 'date_driveway'
    end
    object Query_driveway_cartime_driveway: TTimeField
      Alignment = taCenter
      FieldName = 'time_driveway'
    end
    object Query_driveway_cargate_name: TWideStringField
      Alignment = taCenter
      FieldName = 'gate_name'
      Size = 50
    end
    object Query_driveway_carname_drivewaytype: TWideStringField
      Alignment = taCenter
      FieldName = 'name_drivewaytype'
      Size = 255
    end
    object Query_driveway_carname_brand: TWideStringField
      Alignment = taCenter
      FieldName = 'name_brand'
      Size = 60
    end
    object Query_driveway_carname_model: TWideStringField
      Alignment = taCenter
      FieldName = 'name_model'
      Size = 50
    end
    object Query_driveway_carnumber: TWideStringField
      Alignment = taCenter
      FieldName = 'number'
      Size = 50
    end
    object Query_driveway_carname_color: TWideStringField
      Alignment = taCenter
      FieldName = 'name_color'
    end
    object Query_driveway_caru_number: TWideStringField
      Alignment = taCenter
      FieldName = 'u_number'
      Size = 15
    end
  end
  object DS_Query_driveway_car: TDataSource
    DataSet = Query_driveway_car
    Left = 1160
    Top = 320
  end
  object Query_number_entrance: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT'
      '  infomation_owners.number_entrance'
      'FROM infomation_owners'
      'ORDER BY 1')
    Left = 1010
    Top = 390
  end
  object Query_flat: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DS_Query_number_entrance
    Parameters = <
      item
        Name = 'number_entrance'
        DataType = ftWideString
        Size = 255
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT'
      '  infomation_owners.id_ownerinfo,'
      '  infomation_owners.flat'
      'FROM infomation_owners'
      'WHERE infomation_owners.number_entrance = :number_entrance')
    Left = 1010
    Top = 460
  end
  object DS_Query_number_entrance: TDataSource
    DataSet = Query_number_entrance
    Left = 1160
    Top = 390
  end
  object DS_Query_flat: TDataSource
    DataSet = Query_flat
    Left = 1160
    Top = 460
  end
  object Query_Car_NOTIN_owner: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  cars.id_car,'
      
        '  CONCAT(name_brand, '#39' '#39',car_models.name_model, '#39'['#39', cars.number' +
        ', '#39']'#39', '#39' - '#39', color.name_color) AS CarName'
      'FROM cars'
      '  INNER JOIN car_models'
      '    ON cars.id_model = car_models.id_model'
      '  INNER JOIN color'
      '    ON cars.id_color = color.id_color'
      '  INNER JOIN car_brands'
      '    ON car_models.id_brand = car_brands.id_brand'
      'WHERE cars.id_car NOT IN (SELECT'
      '    link_car.id_car'
      '  FROM link_car)')
    Left = 1010
    Top = 530
  end
  object DS_Query_Car_NOTIN_owner: TDataSource
    DataSet = Query_Car_NOTIN_owner
    Left = 1180
    Top = 530
  end
  object Query_car_number_concat: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_car_number_concat')
    Left = 1010
    Top = 600
  end
  object DS_Query_car_number_concat: TDataSource
    DataSet = Query_car_number_concat
    Left = 1170
    Top = 600
  end
  object Query_parking_report: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 1020
    Top = 680
  end
  object DS_Parking_report: TDataSource
    DataSet = Query_parking_report
    Left = 1180
    Top = 680
  end
  object Query_time_driveway_report: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 1020
    Top = 760
  end
  object DS_time_driveway_report: TDataSource
    DataSet = Query_time_driveway_report
    Left = 1190
    Top = 760
  end
  object Query_Parked_Car: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  SUM(parking_plan.car_place_used) AS all_used,'
      '  SUM(parking_plan.max_cars_parking) AS all_places'
      'FROM parking_plan')
    Left = 1020
    Top = 840
    object Query_Parked_Carall_used: TFMTBCDField
      FieldName = 'all_used'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object Query_Parked_Carall_places: TFMTBCDField
      FieldName = 'all_places'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object DS_Q_Parked_Car: TDataSource
    DataSet = Query_Parked_Car
    Left = 1188
    Top = 846
  end
  object request: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'request'
    Left = 98
    Top = 850
  end
  object DS_request: TDataSource
    DataSet = request
    Left = 258
    Top = 850
  end
  object entrance: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'entrance'
    Left = 96
    Top = 944
  end
  object DS_entrance: TDataSource
    DataSet = entrance
    Left = 264
    Top = 944
  end
  object Q_owner_selector: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      
        '  CONCAT_WS('#39' '#39', owner.firstname, owner.middlename, owner.lastna' +
        'me, '#39'['#39', infomation_owners.flat, '#39']'#39') AS owner_fio,'
      '  owner.id_owner'
      'FROM owner'
      '  INNER JOIN infomation_owners'
      '    ON owner.id_ownerinfo = infomation_owners.id_ownerinfo')
    Left = 472
    Top = 936
  end
  object DS_Q_owner_selector: TDataSource
    DataSet = Q_owner_selector
    Left = 608
    Top = 936
  end
end
