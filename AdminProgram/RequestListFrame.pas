unit RequestListFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, acDBGrid, Vcl.ExtCtrls, sPanel;

type
  TFrame1 = class(TFrame)
    sPanel1: TsPanel;
    sDBGrid1: TsDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
