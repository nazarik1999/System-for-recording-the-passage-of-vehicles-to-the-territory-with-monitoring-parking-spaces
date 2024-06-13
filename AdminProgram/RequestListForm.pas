unit RequestListForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  acDBGrid, Vcl.ExtCtrls, sPanel;

type
  TFormRequestList = class(TForm)
    sPanelRequestList: TsPanel;
    sDBGridRequest: TsDBGrid;
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRequestList: TFormRequestList;

implementation

{$R *.dfm}

uses DataModule, MainForm;

procedure TFormRequestList.FormResize(Sender: TObject);
var
  ColumnWidth: Integer;
  TotalWidth: Integer;
  i: Integer;
begin
  // Получаем общую ширину всех колонок
  TotalWidth := 0;

  for i := 0 to sDBGridRequest.Columns.Count - 1 do
    TotalWidth := TotalWidth + sDBGridRequest.Columns[i].Width;

  ColumnWidth := sDBGridRequest.ClientWidth div sDBGridRequest.Columns.Count;

  for i := 0 to sDBGridRequest.Columns.Count - 1 do
    sDBGridRequest.Columns[i].Width := ColumnWidth;
end;

end.
