unit RegOwnerFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, sDBLookupComboBox, sDBEdit, sButton, sEdit;

type
  TFrameRegOwner = class(TFrame)
    PanelRegOwner: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    sDBLookupComboBoxRegUser: TsDBLookupComboBox;
    sDBLookupComboBoxRegEntrance: TsDBLookupComboBox;
    Label7: TLabel;
    DBEditRegFirstName: TDBEdit;
    DBEditRegName: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    AddOwnerButton: TsButton;
    CancelOwnerButton: TsButton;
    sEditFlat: TsEdit;
    procedure AddOwnerButtonClick(Sender: TObject);
    procedure CancelOwnerButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses DataModule, MainForm;

procedure TFrameRegOwner.AddOwnerButtonClick(Sender: TObject);
begin
 DataModule1.information_owners.Append;
 DataModule1.information_ownersid_entrance.value:=sDBLookupComboBoxRegEntrance.KeyValue;
 DataModule1.information_ownersflat.value:=sEditFlat.text;
 DataModule1.information_owners.Post;
 DataModule1.information_owners.Last;
 DataModule1.ownersid_ownerinfo.value:=DataModule1.information_ownersid_ownerinfo.value;
 DataModule1.owners.Post;
  sEditFlat.text:='';
  sDBLookupComboBoxRegEntrance.KeyValue:=null;
 DataModule1.owners.Append;
 ShowMessage('Собственник добавлен!');
 DataModule1.Q_owner_selector.Requery();
end;

procedure TFrameRegOwner.CancelOwnerButtonClick(Sender: TObject);
begin
 DataModule1.owners.Cancel;
 DataModule1.owners.Append;
end;

end.
