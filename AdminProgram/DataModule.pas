unit DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Variants;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    car_brands: TADOTable;
    DS_car_brands: TDataSource;
    car_models: TADOTable;
    DS_car_models: TDataSource;
    cars: TADOTable;
    DS_cars: TDataSource;
    color: TADOTable;
    DS_color: TDataSource;
    information_owners: TADOTable;
    DS_information_owners: TDataSource;
    owners: TADOTable;
    DS_owners: TDataSource;
    users: TADOTable;
    usersid_user: TAutoIncField;
    usersuser_login: TWideStringField;
    usersuser_pass: TWideStringField;
    usersid_access: TIntegerField;
    usersisDeleted: TIntegerField;
    DS_users: TDataSource;
    access_right: TADOTable;
    DS_access_right: TDataSource;
    driveway: TADOTable;
    DS_driveway: TDataSource;
    driveway_type: TADOTable;
    DS_driveway_type: TDataSource;
    ConnectionUser: TADOConnection;
    Query_Check_Users: TADOQuery;
    DS_Q_check_users: TDataSource;
    gate: TADOTable;
    DS_gate: TDataSource;
    link_car: TADOTable;
    link_carid_car: TIntegerField;
    link_carid_owner: TIntegerField;
    DS_link_car: TDataSource;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    Q_chart_gate: TADOQuery;
    DS_Q_chart_gate: TDataSource;
    Q_count_car_entrance: TADOQuery;
    DS_Q_count_car_entrance: TDataSource;
    Q_count_brands: TADOQuery;
    DS_Q_count_brands: TDataSource;
    Q_date_zaezd: TADOQuery;
    DS_Q_date_zaezd: TDataSource;
    Q_parking_drivewaytype_report: TADOQuery;
    DS_Q_parking_drivewaytype_report: TDataSource;
    Q_numberOfUsers: TADOQuery;
    DS_Q_numberOfUsers: TDataSource;
    Q_userCar: TADOQuery;
    DS_Q_userCar: TDataSource;
    Query_Owners: TADOQuery;
    Query_Ownersfirstname: TWideStringField;
    Query_Ownersmiddlename: TWideStringField;
    Query_Ownerslastname: TWideStringField;
    Query_Ownersphone: TWideStringField;
    Query_Ownersuser_login: TWideStringField;
    Query_Ownersflat: TWideStringField;
    Query_Ownersid_owner: TAutoIncField;
    DS_Query_Owners: TDataSource;
    Query_Cars: TADOQuery;
    Query_Carsname_brand: TWideStringField;
    Query_Carsname_model: TWideStringField;
    Query_Carsnumber: TWideStringField;
    Query_Carsname_color: TWideStringField;
    Query_Carsid_car: TIntegerField;
    Query_Carsid_owner: TIntegerField;
    DS_Query_Cars: TDataSource;
    Query_View_Car_Concat: TADOQuery;
    DS_Query_Car_Concat: TDataSource;
    Query_users_list: TADOQuery;
    Query_users_listid_user: TAutoIncField;
    Query_users_listuser_login: TWideStringField;
    Query_users_listuser_pass: TWideStringField;
    Query_users_listname_access_right: TWideStringField;
    DS_Query_users_list: TDataSource;
    Query_driveway_car: TADOQuery;
    Query_driveway_cardate_driveway: TDateField;
    Query_driveway_cartime_driveway: TTimeField;
    Query_driveway_cargate_name: TWideStringField;
    Query_driveway_carname_drivewaytype: TWideStringField;
    Query_driveway_carname_color: TWideStringField;
    Query_driveway_carnumber: TWideStringField;
    Query_driveway_carname_model: TWideStringField;
    Query_driveway_carname_brand: TWideStringField;
    DS_Query_driveway_car: TDataSource;
    Query_number_entrance: TADOQuery;
    Query_flat: TADOQuery;
    DS_Query_number_entrance: TDataSource;
    DS_Query_flat: TDataSource;
    Query_Car_NOTIN_owner: TADOQuery;
    DS_Query_Car_NOTIN_owner: TDataSource;
    Query_car_number_concat: TADOQuery;
    DS_Query_car_number_concat: TDataSource;
    Query_parking_report: TADOQuery;
    DS_Parking_report: TDataSource;
    Query_time_driveway_report: TADOQuery;
    DS_time_driveway_report: TDataSource;
    Query_Parked_Car: TADOQuery;
    DS_Q_Parked_Car: TDataSource;
    request: TADOTable;
    DS_request: TDataSource;
    Query_driveway_caru_number: TWideStringField;
    Query_driveway_carid_driveway: TIntegerField;
    entrance: TADOTable;
    DS_entrance: TDataSource;
    information_ownersid_ownerinfo: TAutoIncField;
    information_ownersflat: TWideStringField;
    information_ownersid_entrance: TIntegerField;
    ownersid_owner: TAutoIncField;
    ownersfirstname: TWideStringField;
    ownersmiddlename: TWideStringField;
    ownerslastname: TWideStringField;
    ownersphone: TWideStringField;
    ownersid_user: TIntegerField;
    ownersid_ownerinfo: TIntegerField;
    Query_Parked_Carall_used: TFMTBCDField;
    Query_Parked_Carall_places: TFMTBCDField;
    gateid_gate: TAutoIncField;
    gategate_name: TWideStringField;
    gategate_description: TWideStringField;
    Q_owner_selector: TADOQuery;
    DS_Q_owner_selector: TDataSource;
    carsid_car: TAutoIncField;
    carsid_model: TIntegerField;
    carsnumber: TWideStringField;
    carsid_color: TIntegerField;
    Q_count_brandsname_brand: TWideStringField;
    Q_count_brandsCountCars: TLargeintField;
    procedure ADOConnection1AfterConnect(Sender: TObject);
    procedure ownersAfterDelete(DataSet: TDataSet);
    procedure ownersAfterPost(DataSet: TDataSet);
    procedure link_carAfterPost(DataSet: TDataSet);
    procedure link_carAfterDelete(DataSet: TDataSet);
    procedure Query_CarsAfterScroll(DataSet: TDataSet);
    procedure Query_OwnersAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MainForm;

{$R *.dfm}

procedure TDataModule1.ADOConnection1AfterConnect(Sender: TObject);
var
  i: integer;  // переменная для цикла
begin
  // работа с элементами ADOConnection1
  with ADOConnection1 do
  begin // Перебираем все элементы и сначала активируем НД TADOTable
    for I := 0 to DataSetCount-1 do
      try // Проверяем относится ли НД к TADOTable
        if DataSets[i] is TADOTable then
          DataSets[i].Active:=true; // и пытаемся активировать НД
      except
        // В случае ошибки ничего не делаем
      end;
    for I := 0 to DataSetCount-1 do  // Перебираем все элементы
      try // Проверяем относится ли НД к TADOQuery
        if DataSets[i] is TADOQuery then
        // и пытаемся активировать НД
          DataSets[i].Active:=true;
      except
        // В случае ошибки ничего не делаем
      end;
    end;

end;

procedure TDataModule1.link_carAfterDelete(DataSet: TDataSet);
begin
  Query_owners.Requery();
  Query_cars.Requery();
  Q_count_brands.Requery();
  FormMain.DBChart3.RefreshData;
end;

procedure TDataModule1.link_carAfterPost(DataSet: TDataSet);
begin
  Query_owners.Requery();
  Query_cars.Requery();
  Q_count_brands.Requery();
  FormMain.DBChart3.RefreshData;
end;

procedure TDataModule1.ownersAfterDelete(DataSet: TDataSet);
begin
  Query_owners.Requery();
end;

procedure TDataModule1.ownersAfterPost(DataSet: TDataSet);
begin
  Query_owners.Requery();
end;

procedure TDataModule1.Query_CarsAfterScroll(DataSet: TDataSet);
begin
if isstarted then
  DataModule1.link_car.Locate('id_car;id_owner', VarArrayOf([DataModule1.Query_Carsid_car.Value,
  DataModule1.Query_Carsid_owner.Value]), [])
end;

procedure TDataModule1.Query_OwnersAfterScroll(DataSet: TDataSet);
begin
if isstarted then
  DataModule1.owners.Locate('id_owner', DataModule1.Query_Ownersid_owner.Value, [])
end;

end.
