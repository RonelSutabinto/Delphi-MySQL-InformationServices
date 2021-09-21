unit queHistoryForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvPanel, AdvSmoothLabel,
  AdvSmoothButton, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, Data.DB,
  DBAccess, MyAccess, MemDS;

type
  TquehistoryFrm = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    DBAdvGrid1: TDBAdvGrid;
    AdvSmoothButton13: TAdvSmoothButton;
    number_lb2: TAdvSmoothLabel;
    manageOutQ: TMyQuery;
    manageoutDS: TMyDataSource;
    manageOutQentry: TIntegerField;
    manageOutQtype: TStringField;
    manageOutQnumber: TIntegerField;
    manageOutQdate: TDateField;
    manageOutQtime: TTimeField;
    manageOutQcode: TStringField;
    manageOutQqueid: TIntegerField;
    manageOutQgroupno: TIntegerField;
    manageOutQexecutedby: TStringField;
    manageOutQDepartment: TStringField;
    manageOutQuserid: TStringField;
    manageOutQcounter: TStringField;
    manageOutQqNumber: TStringField;
    procedure AdvSmoothButton13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  quehistoryFrm: TquehistoryFrm;

implementation

{$R *.dfm}

uses Data;

procedure TquehistoryFrm.AdvSmoothButton13Click(Sender: TObject);
begin
  close;
end;

procedure TquehistoryFrm.FormShow(Sender: TObject);
begin
  manageOutQ.Close;
  manageOutQ.ParamByName('date').AsDate := now;
  manageOutQ.Open;
end;

end.
