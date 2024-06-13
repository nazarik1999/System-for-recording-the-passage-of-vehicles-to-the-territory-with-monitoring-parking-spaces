unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, sPanel, sScrollBox, Vcl.ExtCtrls,
  sSkinManager, Vcl.Buttons, sSpeedButton, System.ImageList, Vcl.ImgList,
  acAlphaImageList, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, acDBGrid,
  sGroupBox, sEdit, sCheckBox, sMonthCalendar, sFrameBar, sBevel, sLabel,
  sDBText, Vcl.DBCtrls, sButton, registry, Vcl.ComCtrls, sPageControl,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, Vcl.Mask, sMaskEdit, sCustomComboEdit, sToolEdit,
  fs_ichartrtti, sDBLookupComboBox, sComboBox, frxClass, frxExportBaseDialog,
  frxExportPDF, frxDBSet, sDBDateEdit, frxExportCSV, frxExportRTF, sRadioButton,
  Vcl.Menus;

type
  TFormMain = class(TForm)
    sSkinManager1: TsSkinManager;
    sSplitView1: TsSplitView;
    sCharImageList1: TsCharImageList;
    sSpeedButtonOpen: TsSpeedButton;
    sSpeedButtonProezd: TsSpeedButton;
    sSpeedButtonOwner: TsSpeedButton;
    sSpeedButtonExit: TsSpeedButton;
    sSpeedButtonGraph: TsSpeedButton;
    sSpeedButtonReport: TsSpeedButton;
    sScrollBoxPanels: TsScrollBox;
    sPanelLogs: TsPanel;
    sGroupBoxLogs: TsGroupBox;
    sGroupBoxInfoAboutDriveways: TsGroupBox;
    EditCarSearch: TsEdit;
    sGroupBoxLogsFilter: TsGroupBox;
    sCheckBoxIn: TsCheckBox;
    sCheckBoxOut: TsCheckBox;
    sPanelOwners: TsPanel;
    sScrollBoxReg: TsScrollBox;
    sFrameBarReg: TsFrameBar;
    sGroupBoxMain: TsGroupBox;
    sPanelOwner: TsPanel;
    sPanelCar: TsPanel;
    sLabel1: TsLabel;
    sEditSearchOwner: TsEdit;
    sDBGridOwners: TsDBGrid;
    sDBGridCars: TsDBGrid;
    sGroupBoxCar: TsGroupBox;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sDBTextPlace: TsDBText;
    sPanelAutorize: TsPanel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    E_Log: TsEdit;
    E_Pass: TsEdit;
    sButtonAutorize: TsButton;
    sButtonRequest: TsButton;
    sDBGridCarLogs: TsDBGrid;
    sPanelGraph: TsPanel;
    sPageControlGraph: TsPageControl;
    sTabSheet1: TsTabSheet;
    sPanelDrivewayInfo: TsPanel;
    sButtonViewDriveway: TsButton;
    DBChart4: TDBChart;
    Series4: TFastLineSeries;
    sDateEditStart: TsDateEdit;
    sDateEditEnd: TsDateEdit;
    sLabel7: TsLabel;
    sLabel8: TsLabel;
    sTabSheet2: TsTabSheet;
    sPanelMoveInfo: TsPanel;
    sDateEditMoveStart: TsDateEdit;
    sDateEditMoveEnd: TsDateEdit;
    sLabel9: TsLabel;
    sLabel10: TsLabel;
    sDBLookupComboBoxSelectGate: TsDBLookupComboBox;
    sLabel11: TsLabel;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    sTabSheet3: TsTabSheet;
    DBChart3: TDBChart;
    Series3: TBarSeries;
    sPanelReports: TsPanel;
    sPageControlReports: TsPageControl;
    sTabSheet4: TsTabSheet;
    sTabSheet5: TsTabSheet;
    sTabSheet6: TsTabSheet;
    sPanelReport1Info: TsPanel;
    sLabel12: TsLabel;
    sLabel13: TsLabel;
    sComboBoxSelectProezd: TsComboBox;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    frxReport2: TfrxReport;
    frxReport3: TfrxReport;
    sButtonViewReport1: TsButton;
    sButtonExportReport1: TsButton;
    sDBDateEditReport1: TsDBDateEdit;
    sDBGridReport1: TsDBGrid;
    frxRTFExport1: TfrxRTFExport;
    frxCSVExport1: TfrxCSVExport;
    sComboBoxSelectExport1: TsComboBox;
    sRadioButtonAllTimeReport1: TsRadioButton;
    sEditHideDate: TsEdit;
    sPanelReport2Info: TsPanel;
    sDBDateEditReport2: TsDBDateEdit;
    sLabel14: TsLabel;
    sLabel15: TsLabel;
    sComboBoxChooseTime: TsComboBox;
    sButtonViewReport2: TsButton;
    sRadioButtonAllTimeReport2: TsRadioButton;
    sComboBoxSelectExport2: TsComboBox;
    sButtonExportReport2: TsButton;
    sEditHideDate2: TsEdit;
    sDBGridReport2: TsDBGrid;
    sPanel1: TsPanel;
    sLabel16: TsLabel;
    sLabel17: TsLabel;
    sDBDateEditReport3: TsDBDateEdit;
    sComboBoxChooseDrivewaytype: TsComboBox;
    sButtonViewReport3: TsButton;
    sDBGridReport3: TsDBGrid;
    sRadioButtonAllTimeReport3: TsRadioButton;
    sComboBoxSelectExport3: TsComboBox;
    sButtonExportReport3: TsButton;
    sEditHideDate3: TsEdit;
    Timer1: TTimer;
    sDBTextAllCars: TsDBText;
    PopupMenuDeleteCar: TPopupMenu;
    N1: TMenuItem;
    PopupMenuDeleteOwner: TPopupMenu;
    N2: TMenuItem;
    procedure sSpeedButtonOpenClick(Sender: TObject);
    procedure sSpeedButtonExitClick(Sender: TObject);
    procedure EditCarSearchChange(Sender: TObject);
    procedure sCheckBoxInClick(Sender: TObject);
    procedure sCheckBoxOutClick(Sender: TObject);
    procedure sSpeedButtonProezdClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure sSpeedButtonOwnerClick(Sender: TObject);
    procedure sFrameBarRegItems1CreateFrame(Sender: TObject;
      var Frame: TCustomFrame);
    procedure sEditSearchOwnerChange(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure FormResize(Sender: TObject);
    procedure sFrameBarRegItems3CreateFrame(Sender: TObject;
      var Frame: TCustomFrame);
    procedure FormPaint(Sender: TObject);
    procedure sFrameBarRegItems2CreateFrame(Sender: TObject;
      var Frame: TCustomFrame);
    procedure sButtonRequestClick(Sender: TObject);
    procedure sButtonAutorizeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sButtonViewDrivewayClick(Sender: TObject);
    procedure sSpeedButtonGraphClick(Sender: TObject);
    procedure sDBLookupComboBoxSelectGateCloseUp(Sender: TObject);
    procedure sButtonViewReport1Click(Sender: TObject);
    procedure sButtonExportReport1Click(Sender: TObject);
    procedure sSpeedButtonReportClick(Sender: TObject);
    procedure sDBDateEditReport1Change(Sender: TObject);
    procedure sButtonViewReport2Click(Sender: TObject);
    procedure sButtonExportReport2Click(Sender: TObject);
    procedure sDBDateEditReport2Change(Sender: TObject);
    procedure sButtonViewReport3Click(Sender: TObject);
    procedure sButtonExportReport3Click(Sender: TObject);
    procedure sDBDateEditReport3Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;
  Frame: TFrame;
  // список доступных ODBC драйверов
  ListSQLDriverName: TStringList;
  // Имя используемого драйвера
  MySQLDriverUnicode: string;
  FirstRun: boolean;
  isstarted: boolean;

implementation

{$R *.dfm}

uses DataModule, RegOwnerFrame, RegUserFrame, RegCarFrame, RequestListFrame,
  RequestListForm;


procedure ListMySQLDriverUnicode(ListMySQLName: TStrings);
var
  reg: TRegistry; // Переменная для доступа к реестру
  ListDriverName: TStringList; // Список ODBC драйверов
  i: integer; // Переменная для цикла
begin
  // Выполняем очистку списка полученного как параметр
  ListMySQLName.Clear;
  // Создаем новый объект списка
  ListDriverName := TStringList.Create;
  // Создаем объект для доступа к реестру
  reg := TRegistry.Create;
  try
    // пытаемся определить корневой параметр локальной машины для
    // поиска установленных ODBC драйверов
    reg.RootKey := HKEY_LOCAL_MACHINE;
    // В зависимости от версии компилируемой программы x64 или x86
    // (64-бит или 32-бита) открывается соответствующая ветка реестра
    if
{$IFDEF CPUX64} // для случая 64-битной программы
      reg.OpenKeyReadOnly('\Software\ODBC\ODBCINST.INI')
{$ELSE} // для случая 32-битной программы
      reg.OpenKeyReadOnly('SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI')
{$ENDIF}
    then
    begin // при успешном открытии ветки реестра с ODBC драйверами
      // заносим их в список ListDriverName
      reg.GetKeyNames(ListDriverName);
      // перебираем в списке драйверов все элементы
      for i := 0 to ListDriverName.Count - 1 do
        // если найдутся совпадения MySQL и Unicode
        if pos('MySQL', ListDriverName[i]) <> 0 then
          if pos('Unicode', ListDriverName[i]) <> 0 then
            // то записывае информацию в возращаемый список
            ListMySQLName.Add(ListDriverName[i])
    end;
  finally // в завершении закрываем ветку реестра и очищаем объект
    reg.CloseKey;
    FreeAndNil(reg);
  end;
end;

procedure TFormMain.EditCarSearchChange(Sender: TObject);
var help3, help4: string;
begin
  help3:= '%' + FormMain.EditCarSearch.Text + '%';
  help4:= QuotedStr(help3);

  with DataModule1.Query_driveway_car do
    begin
      close;
      SQL.Clear;
      SQL.Add('SELECT * FROM view_driveway_car WHERE gate_name like' + help4 +
          ' OR name_drivewaytype like' + help4 + ' OR name_brand like' + help4 +
            ' OR name_model like' + help4 + ' OR number like' + help4 + ' OR name_color like' + help4 +
               ' ORDER BY date_driveway');
      Open;
    end;

end;

procedure TFormMain.FormActivate(Sender: TObject);
var
 ConnectionStr:string;
 s_password:string;
begin
  isStarted := true;
  // создаем список для определения драйверов
  ListSQLDriverName := TStringList.Create;
  ListMySQLDriverUnicode(ListSQLDriverName);
  if ListSQLDriverName.Count > 0 then
    // то назначаем его переменной MySQLDriverUnicode
    MySQLDriverUnicode := ListSQLDriverName.Strings[0];
 DataModule1.ConnectionUser.Connected:=false;
   ConnectionStr := 'Driver=' + MySQLDriverUnicode + ';' +
    'SERVER=localhost;' + // задаем адрес сервера
    'PORT=3306;'+ // указываем порт соединения
   // указываем имя базы данных, с которой соединяться
    'DATABASE=parking;' +
   // задаем параметры пользователя
    'UID=admin;'; // временно указал root, у ва имя пользователя
    s_password := 'root';
  // проверяем если длина пароля хотя бы один знак
  if Length(s_password) > 0 then
    // добавляем параметр использования пароля в строке подключения
    ConnectionStr := ConnectionStr + 'PWD=' + s_password + ';';
   // устанавливаем дополнительные параметры в виде кодировки
  ConnectionStr := ConnectionStr + 'CHARSET=utf8;' +
	'COLUMN_SIZE_S32=1'; // и настройки колонок
    DataModule1.ConnectionUser.ConnectionString:=ConnectionStr;
    DataModule1.ConnectionUser.Connected := true;
   firstRun := false;

  //Отключим все панели и кнопки, пока не произойдёт авторизация пользователя
   sPanelAutorize.Visible := true;
   sPanelLogs.Visible := false;
   sPanelOwners.Visible := false;
   sPanelGraph.Visible := false;
   sPanelReports.Visible := false;


   sSpeedButtonProezd.Enabled := false;
   sSpeedButtonOwner.Enabled := false;
   sSpeedButtonGraph.Enabled := false;
   sSpeedButtonReport.Enabled := false;
end;


// Делаем автоматическое выравнивание колонок в таблицах
procedure TFormMain.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
var
  ColumnWidth: Integer;
  TotalWidth: Integer;
  i: Integer;
begin
  // Получаем общую ширину всех колонок
  TotalWidth := 0;

  // Работаем с журналом проездов
  for i := 0 to sDBGridCarLogs.Columns.Count - 1 do
    TotalWidth := TotalWidth + sDBGridCarLogs.Columns[i].Width;

  ColumnWidth := sDBGridCarLogs.ClientWidth div sDBGridCarLogs.Columns.Count;

  for i := 0 to sDBGridCarLogs.Columns.Count - 1 do
    sDBGridCarLogs.Columns[i].Width := ColumnWidth;

  // Работаем с таблицей собственников
  for i := 0 to sDBGridOwners.Columns.Count - 1 do
    TotalWidth := TotalWidth + sDBGridOwners.Columns[i].Width;

  ColumnWidth := sDBGridOwners.ClientWidth div sDBGridOwners.Columns.Count;

  for i := 0 to sDBGridOwners.Columns.Count - 1 do
    sDBGridOwners.Columns[i].Width := ColumnWidth;

  // Работаем с таблицей машин
  for i := 0 to sDBGridCars.Columns.Count - 1 do
    TotalWidth := TotalWidth + sDBGridCars.Columns[i].Width;

  ColumnWidth := sDBGridCars.ClientWidth div sDBGridCars.Columns.Count;

  for i := 0 to sDBGridCars.Columns.Count - 1 do
    sDBGridCars.Columns[i].Width := ColumnWidth;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  firstRun := true;
  isStarted := false;
end;

procedure TFormMain.FormPaint(Sender: TObject);
begin

end;

// Делаем автоматическое выравнивание колонок в таблицах
procedure TFormMain.FormResize(Sender: TObject);
var
  ColumnWidth: Integer;
  TotalWidth: Integer;
  i: Integer;
begin
  // Получаем общую ширину всех колонок
  TotalWidth := 0;

  // Работаем с журналом проездов
  for i := 0 to sDBGridCarLogs.Columns.Count - 1 do
    TotalWidth := TotalWidth + sDBGridCarLogs.Columns[i].Width;

  ColumnWidth := sDBGridCarLogs.ClientWidth div sDBGridCarLogs.Columns.Count;

  for i := 0 to sDBGridCarLogs.Columns.Count - 1 do
    sDBGridCarLogs.Columns[i].Width := ColumnWidth;

  // Работаем с таблицей собственников
  for i := 0 to sDBGridOwners.Columns.Count - 1 do
    TotalWidth := TotalWidth + sDBGridOwners.Columns[i].Width;

  ColumnWidth := sDBGridOwners.ClientWidth div sDBGridOwners.Columns.Count;

  for i := 0 to sDBGridOwners.Columns.Count - 1 do
    sDBGridOwners.Columns[i].Width := ColumnWidth;

  // Работаем с таблицей машин
  for i := 0 to sDBGridCars.Columns.Count - 1 do
    TotalWidth := TotalWidth + sDBGridCars.Columns[i].Width;

  ColumnWidth := sDBGridCars.ClientWidth div sDBGridCars.Columns.Count;

  for i := 0 to sDBGridCars.Columns.Count - 1 do
    sDBGridCars.Columns[i].Width := ColumnWidth;

end;


procedure TFormMain.N1Click(Sender: TObject);
begin
  if DataModule1.link_car.State = dsBrowse then
   if MessageDlg('Удалить машину из списка?', mtConfirmation,
   [mbYes, mbNo], 0) = mrYes then
     DataModule1.link_car.Delete;
end;

procedure TFormMain.N2Click(Sender: TObject);
begin
  if DataModule1.owners.State = dsBrowse then
   if MessageDlg('Удалить собственника из списка?', mtConfirmation,
   [mbYes, mbNo], 0) = mrYes then
     DataModule1.owners.Delete;
end;

procedure TFormMain.sButtonViewDrivewayClick(Sender: TObject);
var
 baseSQL, basegr, filter_s, filter_date: string;
begin
 baseSQL := 'SELECT '+
  'view_driveway_car.date_driveway,' +
  'COUNT(view_driveway_car.id_driveway) AS CountCarOfDate '+
   'FROM view_driveway_car  ';
 basegr:=' GROUP BY view_driveway_car.date_driveway ';
 filter_s := '';
 filter_date := 'view_driveway_car.date_driveway BETWEEN ' + QuotedStr(FormatDateTime('YYYY-MM-DD', sDateEditStart.Date)) + ' AND '
  + QuotedStr(FormatDateTime('YYYY-MM-DD', sDateEditEnd.Date));

 filter_s := 'WHERE ' + filter_date;

 DataModule1.Q_date_zaezd.sql.text := baseSQL + filter_s+basegr;
 DataModule1.Q_date_zaezd.Active := true;
 DBChart4.RefreshData;
end;

procedure TFormMain.sButtonViewReport1Click(Sender: TObject);
begin
  DataModule1.Query_parking_report.Active:=false;
  DataModule1.Query_parking_report.SQL.Text := 'CALL parking_driveway_report (' + QuotedStr(FormatDateTime('YYYY-MM-DD', sDBDateEditReport1.Date)) +
    ' , ' + Quotedstr(IntToStr(sComboBoxSelectProezd.ItemIndex+1)) + ')';

  // Если хотим увидеть данные за всё время
  if sRadioButtonAllTimeReport1.Checked = true then
  begin
    sEditHideDate.Text := '*';
    DataModule1.Query_parking_report.Active:=false;
    DataModule1.Query_parking_report.SQL.Text := 'CALL parking_driveway_report (' + Quotedstr(sEditHideDate.Text) +
    ' , ' + Quotedstr(IntToStr(sComboBoxSelectProezd.ItemIndex+1)) + ')';
    DataModule1.Query_parking_report.Active:=true;
  end;

  DataModule1.Query_parking_report.Active:=true;

  frxReport1.ShowReport();

  sComboBoxSelectExport1.Enabled := true;
  sButtonExportReport1.Enabled := true;
end;

procedure TFormMain.sButtonViewReport2Click(Sender: TObject);
begin
  DataModule1.Query_time_driveway_report.Active:=false;
  DataModule1.Query_time_driveway_report.SQL.Text := 'CALL parking_time_driveway_report (' + QuotedStr(FormatDateTime('YYYY-MM-DD', sDBDateEditReport2.Date)) +
    ' , ' + Quotedstr(IntToStr(sComboBoxChooseTime.ItemIndex+1)) + ')';

  // Если хотим увидеть данные за всё время
  if sRadioButtonAllTimeReport2.Checked = true then
  begin
    sEditHideDate2.Text := '*';
    DataModule1.Query_time_driveway_report.Active:=false;
    DataModule1.Query_time_driveway_report.SQL.Text := 'CALL parking_time_driveway_report (' + Quotedstr(sEditHideDate2.Text) +
    ' , ' + Quotedstr(IntToStr(sComboBoxChooseTime.ItemIndex+1)) + ')';
    DataModule1.Query_time_driveway_report.Active:=true;
  end;

  DataModule1.Query_time_driveway_report.Active:=true;

  frxReport2.ShowReport();

  sComboBoxSelectExport2.Enabled := true;
  sButtonExportReport2.Enabled := true;
end;

procedure TFormMain.sButtonViewReport3Click(Sender: TObject);
begin
  DataModule1.Q_parking_drivewaytype_report.Active:=false;
  DataModule1.Q_parking_drivewaytype_report.SQL.Text := 'CALL parking_drivewaytype_report (' + QuotedStr(FormatDateTime('YYYY-MM-DD', sDBDateEditReport3.Date)) +
    ' , ' + Quotedstr(IntToStr(sComboBoxChooseDrivewaytype.ItemIndex+1)) + ')';

  // Если хотим увидеть данные за всё время
  if sRadioButtonAllTimeReport3.Checked = true then
  begin
    sEditHideDate3.Text := '*';
    DataModule1.Q_parking_drivewaytype_report.Active:=false;
    DataModule1.Q_parking_drivewaytype_report.SQL.Text := 'CALL parking_drivewaytype_report (' + Quotedstr(sEditHideDate3.Text) +
    ' , ' + Quotedstr(IntToStr(sComboBoxChooseDrivewaytype.ItemIndex+1)) + ')';
    DataModule1.Q_parking_drivewaytype_report.Active:=true;
  end;

  DataModule1.Q_parking_drivewaytype_report.Active:=true;

  frxReport3.ShowReport();

  sComboBoxSelectExport3.Enabled := true;
  sButtonExportReport3.Enabled := true;
end;

procedure TFormMain.sButtonExportReport1Click(Sender: TObject);
begin
  if sComboBoxSelectExport1.ItemIndex = 0 then
    frxReport1.Export(frxRTFExport1);
  if sComboBoxSelectExport1.ItemIndex = 1 then
    frxReport1.Export(frxCSVExport1);
  if sComboBoxSelectExport1.ItemIndex = 2 then
    frxReport1.Export(frxPDFExport1);

  //Закрыть все панели
  sPanelReports.Visible := true;
  sPanelLogs.Visible := false;
  sPanelOwners.Visible := false;
  sPanelAutorize.Visible := false;
  sPanelGraph.Visible := false;
  sSpeedButtonProezd.Enabled := true;
  sSpeedButtonOwner.Enabled := true;
  sSpeedButtonGraph.Enabled := true;
  sSpeedButtonReport.Enabled := true;

  sComboBoxSelectExport1.Enabled := false;
  sButtonExportReport1.Enabled := false;
end;

procedure TFormMain.sButtonExportReport2Click(Sender: TObject);
begin
  if sComboBoxSelectExport2.ItemIndex = 0 then
    frxReport1.Export(frxRTFExport1);
  if sComboBoxSelectExport2.ItemIndex = 1 then
    frxReport1.Export(frxCSVExport1);
  if sComboBoxSelectExport2.ItemIndex = 2 then
    frxReport1.Export(frxPDFExport1);

  //Закрыть все панели
  sPanelReports.Visible := true;
  sPanelLogs.Visible := false;
  sPanelOwners.Visible := false;
  sPanelAutorize.Visible := false;
  sPanelGraph.Visible := false;
  sSpeedButtonProezd.Enabled := true;
  sSpeedButtonOwner.Enabled := true;
  sSpeedButtonGraph.Enabled := true;
  sSpeedButtonReport.Enabled := true;

  sComboBoxSelectExport2.Enabled := false;
  sButtonExportReport2.Enabled := false;
end;

procedure TFormMain.sButtonExportReport3Click(Sender: TObject);
begin
  if sComboBoxSelectExport3.ItemIndex = 0 then
    frxReport1.Export(frxRTFExport1);
  if sComboBoxSelectExport3.ItemIndex = 1 then
    frxReport1.Export(frxCSVExport1);
  if sComboBoxSelectExport3.ItemIndex = 2 then
    frxReport1.Export(frxPDFExport1);

  //Закрыть все панели
  sPanelReports.Visible := true;
  sPanelLogs.Visible := false;
  sPanelOwners.Visible := false;
  sPanelAutorize.Visible := false;
  sPanelGraph.Visible := false;
  sSpeedButtonProezd.Enabled := true;
  sSpeedButtonOwner.Enabled := true;
  sSpeedButtonGraph.Enabled := true;
  sSpeedButtonReport.Enabled := true;


  sComboBoxSelectExport3.Enabled := false;
  sButtonExportReport3.Enabled := false;
end;

procedure TFormMain.sButtonAutorizeClick(Sender: TObject);
var
  i: integer; // переменная для цикла
  ConnectionStr: string;
begin
  // работа с элементами ADOConnection1
  with DataModule1.ADOConnection1 do
    // Перебираем все элементы
    for i := 0 to DataSetCount - 1 do
      try // Пытаемся активировать связанный НД
        DataSets[i].Active := false;
      except
        // В случае ошибки ничего не делаем
      end;

  DataModule1.Query_Check_Users.Active := false;
  DataModule1.Query_Check_Users.SQL.Text :=
    'SELECT * FROM users WHERE (user_login = ' + QuotedStr(E_log.Text) + ')' +
    ' AND (user_pass = ' + QuotedStr(E_Pass.Text) + ')';
  DataModule1.Query_Check_Users.Active := true;

  if DataModule1.Query_Check_Users.FieldByName('id_access').Value = '1' then
  begin
    DataModule1.ADOConnection1.Connected := false;
       ConnectionStr := 'Driver=' + MySQLDriverUnicode + ';' +
        'SERVER=localhost;' + // задаем адрес сервера
        'PORT=3306;'+ // указываем порт соединения
       // указываем имя базы данных, с которой соединяться
        'DATABASE=parking;' +
       // задаем параметры пользователя
        'UID=admin;'; // временно указал root, у ва имя пользователя
        // добавляем параметр использования пароля в строке подключения
        ConnectionStr := ConnectionStr + 'PWD=' + 'root' + ';';
       // устанавливаем дополнительные параметры в виде кодировки
      ConnectionStr := ConnectionStr + //'CHARSET=utf8;' +
      'COLUMN_SIZE_S32=1'; // и настройки колонок
        DataModule1.ADOConnection1.ConnectionString:=ConnectionStr;
        DataModule1.ADOConnection1.Connected := true;
        FormMain.sPanelLogs.Visible := true;
        sSpeedButtonProezd.Enabled := true;
        sSpeedButtonOwner.Enabled := true;
        sSpeedButtonGraph.Enabled := true;
        sSpeedButtonReport.Enabled := true;
        FormMain.sPanelAutorize.Visible := false;
        Timer1.Enabled := true;
  end
    else
    ShowMessage('Администратора с таким логином и паролем не существует!');
end;

procedure TFormMain.sButtonRequestClick(Sender: TObject);
begin
  DataModule1.request.Active := false;
  DataModule1.request.Active := true;
  FormRequestList.ShowModal;
end;

procedure TFormMain.sCheckBoxInClick(Sender: TObject);
begin
  if FormMain.sCheckBoxIn.Checked = false then
     begin
       DataModule1.Query_driveway_car.Filtered := false;
       sCheckBoxOut.Enabled := true;
     end

  else
     begin
       sCheckBoxOut.Enabled := false;
       DataModule1.Query_driveway_car.Filtered := false;
       DataModule1.Query_driveway_car.Filter := 'name_drivewaytype like %Въезд%';
       DataModule1.Query_driveway_car.Filtered := true;
     end;
end;

procedure TFormMain.sCheckBoxOutClick(Sender: TObject);
begin
  if FormMain.sCheckBoxOut.Checked = false then
     begin
        DataModule1.Query_driveway_car.Filtered := false;
        sCheckBoxIn.Enabled := true;
     end

  else
     begin
       sCheckBoxIn.Enabled := false;
       DataModule1.Query_driveway_car.Filtered := false;
       DataModule1.Query_driveway_car.Filter := 'name_drivewaytype like %Выезд%';
       DataModule1.Query_driveway_car.Filtered := true;
    end;
end;

procedure TFormMain.sDBDateEditReport1Change(Sender: TObject);
begin
  sRadioButtonAllTimeReport1.Checked := false;
end;

procedure TFormMain.sDBDateEditReport2Change(Sender: TObject);
begin
  sRadioButtonAllTimeReport2.Checked := false;
end;

procedure TFormMain.sDBDateEditReport3Change(Sender: TObject);
begin
  sRadioButtonAllTimeReport3.Checked := false;
end;

procedure TFormMain.sDBLookupComboBoxSelectGateCloseUp(Sender: TObject);
var
 baseSQL, basegr, filter_s, filter_date: string;
begin
 baseSQL := 'SELECT '+
  'view_driveway_car.gate_name,'+
  'COUNT(view_driveway_car.id_driveway) AS CountZaezd, '+
  'view_driveway_car.name_drivewaytype '+
   'FROM view_driveway_car ';
 basegr:=' GROUP BY view_driveway_car.gate_name, view_driveway_car.name_drivewaytype ';
 filter_s := '';
 filter_date := 'view_driveway_car.date_driveway BETWEEN ' + QuotedStr(FormatDateTime('YYYY-MM-DD', sDateEditMoveStart.Date)) + ' AND '
  + QuotedStr(FormatDateTime('YYYY-MM-DD', sDateEditMoveEnd.Date));

 if sDBLookupComboBoxSelectGate.KeyValue <> null then
 filter_s := 'WHERE (gate_name = ' + QuotedStr(sDBLookupComboBoxSelectGate.KeyValue)+') AND (' + filter_date+ ' )';

 DataModule1.Q_chart_gate.sql.text := baseSQL + filter_s+basegr;
 DataModule1.Q_chart_gate.Active := true;
 DBChart1.RefreshData;

end;

procedure TFormMain.sEditSearchOwnerChange(Sender: TObject);
var help1, help2: string;
begin
  help1:= '%' + FormMain.sEditSearchOwner.Text + '%';
  help2:= QuotedStr(help1);

  with DataModule1.Query_Owners do
    begin
      close;
      SQL.Clear;
      SQL.Add('SELECT * FROM view_owners WHERE firstname like' + help2 +
        ' OR middlename like' + help2 + ' OR lastname like' + help2 +
          ' OR phone like' + help2 + ' OR user_login like' + help2 +
            ' OR flat like' + help2 + ' ORDER BY firstname');
      Open;
    end;
end;

procedure TFormMain.sFrameBarRegItems1CreateFrame(Sender: TObject;
  var Frame: TCustomFrame);
begin
  Frame := TFrameRegUser.Create(nil);
  DataModule1.users.Append;

end;

procedure TFormMain.sFrameBarRegItems2CreateFrame(Sender: TObject;
  var Frame: TCustomFrame);
begin
  Frame := TFrameRegOwner.Create(nil);
  DataModule1.owners.Append;
end;

procedure TFormMain.sFrameBarRegItems3CreateFrame(Sender: TObject;
  var Frame: TCustomFrame);
begin
  Frame := TFrameRegCar.Create(nil);
  DataModule1.cars.Append;
end;

procedure TFormMain.sSpeedButtonExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.sSpeedButtonGraphClick(Sender: TObject);
begin
  sPanelGraph.Visible := true;
  sPanelOwners.Visible := false;
  sPanelLogs.Visible := false;
  sPanelAutorize.Visible := false;
  sPanelReports.Visible := false;

  DataModule1.Q_date_zaezd.Active := false;
  DataModule1.Q_chart_gate.Active := false;
end;

procedure TFormMain.sSpeedButtonOpenClick(Sender: TObject);
begin
  if sSplitView1.Opened then
    sSplitView1.Close
  else
    sSplitView1.Open;
end;

procedure TFormMain.sSpeedButtonOwnerClick(Sender: TObject);
begin
  //Вызвать панель собственников и пользователей и закрывать все остальные
  sPanelOwners.Visible := true;
  sPanelLogs.Visible := false;
  sPanelAutorize.Visible := false;
  sPanelGraph.Visible := false;
  sPanelReports.Visible := false;
end;

procedure TFormMain.sSpeedButtonProezdClick(Sender: TObject);
begin
  //Вызвать панель журнала проезда транспорта и закрывать все остальные
  sPanelLogs.Visible := true;
  sPanelOwners.Visible := false;
  sPanelAutorize.Visible := false;
  sPanelGraph.Visible := false;
  sPanelReports.Visible := false;
end;

procedure TFormMain.sSpeedButtonReportClick(Sender: TObject);
begin
  sPanelReports.Visible := true;
  sPanelGraph.Visible := false;
  sPanelOwners.Visible := false;
  sPanelLogs.Visible := false;
  sPanelAutorize.Visible := false;
end;

procedure TFormMain.Timer1Timer(Sender: TObject);
begin
  DataModule1.Query_driveway_car.Requery();
  DataModule1.Query_Parked_Car.Requery();
  DataModule1.request.Active := false;
  DataModule1.request.Active := true;
end;

end.
