unit shedUserFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MyAccess, StdCtrls, Mask, DBCtrls, NxEdit,
  ExtCtrls, AdvSmoothLabel, NxCollection;

type
  TschedUserForm = class(TForm)
    DBEdit1: TDBEdit;
    schedQ: TMyQuery;
    schedDS: TMyDataSource;
    schedQidloguser: TIntegerField;
    schedQusername: TStringField;
    schedQmonEnd: TTimeField;
    schedQmonStart: TTimeField;
    schedQtueEnd: TTimeField;
    schedQtueStart: TTimeField;
    schedQwenEnd: TTimeField;
    schedQwenStart: TTimeField;
    schedQthuEnd: TTimeField;
    schedQthuStart: TTimeField;
    schedQfriEnd: TTimeField;
    schedQfriStart: TTimeField;
    schedQsatEnd: TTimeField;
    schedQsatStart: TTimeField;
    schedQsunEnd: TTimeField;
    schedQsunStart: TTimeField;
    schedQdateStart: TDateField;
    schedQdateEnd: TDateField;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    AdvSmoothLabel1: TAdvSmoothLabel;
    NxButton1: TNxButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Bevel1: TBevel;
    NxButton2: TNxButton;
    Label14: TLabel;
    DBEdit8: TDBEdit;
    Label15: TLabel;
    DBEdit9: TDBEdit;
    Label16: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit12: TDBEdit;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    Label20: TLabel;
    DBEdit14: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  schedUserForm: TschedUserForm;

implementation

uses Data, FlexMenu;

{$R *.dfm}

procedure TschedUserForm.FormShow(Sender: TObject);
begin
  with FPISDMainMenuForm do
  begin
    schedQ.Close;
    schedQ.FilterSQL := 'username like '+ quotedstr(MyUsersUserName.Text);
    schedQ.Open;

    Edit1.Text := MyUsersUserName.Text;
    Edit2.Text := MyUsersUserID.Text;
    Edit3.Text := MyUsersUserRestriction.Text;
    Edit4.Text := MyUsersPosition.Text;

    NxDatePicker1.Date := schedQdateStart.AsDateTime;
    NxDatePicker2.Date := schedQdateEnd.AsDateTime;

    schedQ.Edit;
  end;
end;

procedure TschedUserForm.NxButton1Click(Sender: TObject);
begin
  schedQ.Cancel;
  close;
end;

procedure TschedUserForm.NxButton2Click(Sender: TObject);
begin
  schedQdateStart.AsDateTime := NxDatePicker1.Date;
  schedQdateEnd.AsDateTime   := NxDatePicker2.Date;
  schedQ.Post;

  messagedlg('Schedule access successfully saved..',mtInformation,[mbOK],0);
  close;
end;

end.
{
 case NxOutlookBar2.Selected.Index of
     0: begin
         With ISDData do
           begin
             complaints.Close;
             complaints.ParamByName('consumername').Text := '%';
             complaints.ParamByName('datefrom').AsDate   := StartOfTheMonth(Now);
             complaints.ParamByName('dateto').AsDate     := EndOfTheMonth(Now);
             complaints.Open;
           end;
         complaintdatefrom.Date  := StartOfTheMonth(Now);
         complaintdateto.Date    := EndOfTheMonth(Now);

         MyNoteBook.ActivePage         := TabComplaints;
         SearchComplaint.SetFocus;
     end;
  end;
}
