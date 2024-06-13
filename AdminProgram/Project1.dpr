program Project1;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {FormMain},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule},
  RegUserFrame in 'RegUserFrame.pas' {FrameRegUser: TFrame},
  RegOwnerFrame in 'RegOwnerFrame.pas' {FrameRegOwner: TFrame},
  RegCarFrame in 'RegCarFrame.pas' {FrameRegCar: TFrame},
  RequestListForm in 'RequestListForm.pas' {FormRequestList};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormRequestList, FormRequestList);
  Application.Run;
end.
