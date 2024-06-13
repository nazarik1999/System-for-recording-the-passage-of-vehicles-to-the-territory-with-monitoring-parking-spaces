unit RegCarFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, sPanel,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, sDBEdit, sDBLookupComboBox, sButton,
  sDBComboBox;

type
  TFrameRegCar = class(TFrame)
    sPanel1: TsPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    sDBLookupComboBoxBrand: TsDBLookupComboBox;
    sDBLookupComboBoxModel: TsDBLookupComboBox;
    sDBLookupComboBoxColor: TsDBLookupComboBox;
    sButtonAddCar: TsButton;
    DBEditNumber: TDBEdit;
    sButtonCancelCar: TsButton;
    sDBLookupComboBoxChangeOwner: TsDBLookupComboBox;
    Label5: TLabel;
    procedure sButtonAddCarClick(Sender: TObject);
    procedure sButtonCancelCarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses DataModule, MainForm;

procedure TFrameRegCar.sButtonAddCarClick(Sender: TObject);
begin
 DataModule1.cars.Post;
 DataModule1.cars.Last;
 DataModule1.link_car.Append;
 DataModule1.link_carid_car.Value := DataModule1.carsid_car.Value;
 DataModule1.link_carid_owner.value:=sDBLookupComboBoxChangeOwner.KeyValue;
 DataModule1.link_car.Post;
 DataModule1.cars.Append;
 sDBLookupComboBoxChangeOwner.KeyValue:=null;
 sDBLookupComboBoxBrand.KeyValue:=null;
 ShowMessage('Транспорт добавлен!');
end;

procedure TFrameRegCar.sButtonCancelCarClick(Sender: TObject);
begin
 DataModule1.cars.Cancel;
 DataModule1.cars.Append;
end;

end.
