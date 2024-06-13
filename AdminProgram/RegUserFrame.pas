unit RegUserFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls,
  sDBLookupComboBox, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, sDBEdit, sPanel,
  sButton;

type
  TFrameRegUser = class(TFrame)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    sDBLookupComboBoxRegAccess: TsDBLookupComboBox;
    sPanelRegUser: TsPanel;
    DBEditRegLog: TDBEdit;
    DBEditRegPass: TDBEdit;
    sButtonPostUser: TsButton;
    sButtonCancelUser: TsButton;
    procedure AddOwnerButtonClick(Sender: TObject);
    procedure sButtonPostUserClick(Sender: TObject);
    procedure sButtonCancelUserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses DataModule, MainForm;

procedure TFrameRegUser.AddOwnerButtonClick(Sender: TObject);
begin
  DataModule1.users.Append;
end;

procedure TFrameRegUser.sButtonCancelUserClick(Sender: TObject);
begin
 DataModule1.users.Cancel;
 DataModule1.users.Append;
end;

procedure TFrameRegUser.sButtonPostUserClick(Sender: TObject);
begin
 DataModule1.users.Post;
 DataModule1.users.Append;
 ShowMessage('Пользователь добавлен!');
end;

end.
