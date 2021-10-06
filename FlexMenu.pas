unit FlexMenu;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  Menus,
  StdCtrls,
  ExtCtrls,
  DBCtrls,
  NxToolBox,
  NxCollection,
  NxPageControl,
  DsFancyButton,
  Mask,
  NxFocus,
  NxEdit,
  ExtDlgs,
  DB,
  MemDS,
  DBAccess,
  MyAccess,
  NxColumns,
  NxDBColumns,
  NxScrollControl,
  NxCustomGridControl,
  NxCustomGrid,
  NxDBGrid,
  PDJButton,
  ImgList,
  Grids,
  DBGrids,
  ComCtrls,
  QuickRpt,
  QRCtrls,
  jpeg, CRGrid,DateUtils, AdvOfficeButtons, Tabs, Buttons, ShellApi, PngImage,
  CRDBGrid1, AdvSmoothButton, frxClass, frxDBSet, QExport4, QExport4XLS;

type
  TFPISDMainMenuForm = class(TForm)
    Timer1: TTimer;
    NxFlipContainer1: TNxFlipContainer;
    NxOutlookBar1: TNxOutlookBar;
    OpenPictureDialog1: TOpenPictureDialog;
    MyUsers: TMyQuery;
    dsMyUsers: TMyDataSource;
    MyConnection1: TMyConnection;
    Maintenance: TMyQuery;
    MyConnection2: TMyConnection;
    Consumer: TMyQuery;
    dsConsumer: TMyDataSource;
    complaintsreport: TMyQuery;
    Master: TMyQuery;
    dsMaster: TMyDataSource;
    Vicinity: TMyQuery;
    dsVicinity: TMyDataSource;
    printcomplaintsheet: TMyQuery;
    MyNoteBook: TNxNotebook;
    TabHome: TNxTabSheet;
    NxLabel2: TNxLabel;
    Image1: TImage;
    TabCompany: TNxTabSheet;
    NxHeaderPanel1: TNxHeaderPanel;
    TabUsers: TNxTabSheet;
    NxHeaderPanel2: TNxHeaderPanel;
    TabComplaints: TNxTabSheet;
    NxHeaderPanel3: TNxHeaderPanel;
    NxLabel3: TNxLabel;
    ComplaintAdd: TNxLinkLabel;
    ComplaintEdit: TNxLinkLabel;
    SearchComplaint: TNxButtonEdit;
    complaintdatefrom: TDateTimePicker;
    complaintdateto: TDateTimePicker;
    NxLinkLabel3: TNxLinkLabel;
    NxLinkLabel4: TNxLinkLabel;
    NxLinkLabel6: TNxLinkLabel;
    ComplaintUserPanel: TNxHeaderPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    NxLinkLabel7: TNxLinkLabel;
    NxLinkLabel11: TNxLinkLabel;
    NxButton1: TNxButton;
    TabNewApplicant: TNxTabSheet;
    NxHeaderPanel4: TNxHeaderPanel;
    TabMembership: TNxTabSheet;
    NxHeaderPanel5: TNxHeaderPanel;
    NxFlipContainer5: TNxFlipContainer;
    MembershipMainPanel: TNxFlipPanel;
    NxLabel33: TNxLabel;
    SearchMemberEdit: TNxEdit;
    SearchMember: TNxLinkLabel;
    NxLinkLabel15: TNxLinkLabel;
    NxLinkLabel16: TNxLinkLabel;
    NxLinkLabel17: TNxLinkLabel;
    NextDBGrid17: TNextDBGrid;
    NxLinkLabel18: TNxLinkLabel;
    NxLinkLabel20: TNxLinkLabel;
    NxLinkLabel24: TNxLinkLabel;
    MembershipMasterPanel: TNxFlipPanel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    DBImage2: TDBImage;
    DBImage3: TDBImage;
    NxLinkLabel19: TNxLinkLabel;
    NxLinkLabel22: TNxLinkLabel;
    NxLinkLabel25: TNxLinkLabel;
    NxLinkLabel26: TNxLinkLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    ConsumerDetailPanel: TNxFlipPanel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    NxLabel38: TNxLabel;
    NxLabel39: TNxLabel;
    NxLabel40: TNxLabel;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    NxLinkLabel28: TNxLinkLabel;
    NxLinkLabel29: TNxLinkLabel;
    NxLinkLabel30: TNxLinkLabel;
    NxLinkLabel31: TNxLinkLabel;
    StaticMemberNumber: TStaticText;
    StaticMemberName: TStaticText;
    StaticMemberSpouse: TStaticText;
    MemberFindConsumerPanel: TNxHeaderPanel;
    Bevel10: TBevel;
    NxLabel43: TNxLabel;
    SearchCDPEdit: TNxEdit;
    FindConsumerCDP: TNxLinkLabel;
    NxLinkLabel35: TNxLinkLabel;
    DBGrid2: TDBGrid;
    SelectConsumerCDP: TNxLinkLabel;
    MeterInstallCalendar: TNxMonthCalendar;
    TabNewConnection: TNxTabSheet;
    NxHeaderPanel6: TNxHeaderPanel;
    AddNewConnection: TNxLinkLabel;
    NewConnectionEditPanel: TNxHeaderPanel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    NxLinkLabel37: TNxLinkLabel;
    NxLinkLabel38: TNxLinkLabel;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    TabMeterManagement: TNxTabSheet;
    NxHeaderPanel7: TNxHeaderPanel;
    printcomplaintsheetDateFiled: TDateTimeField;
    printcomplaintsheetAccountNumber: TStringField;
    printcomplaintsheetRoverBook: TStringField;
    printcomplaintsheetConsumerName: TStringField;
    printcomplaintsheetAddress: TStringField;
    printcomplaintsheetTelNo: TStringField;
    printcomplaintsheetComplaint: TStringField;
    printcomplaintsheetActionTaken: TStringField;
    printcomplaintsheetReceivedBy: TStringField;
    printcomplaintsheetTimedEndorsed: TTimeField;
    printcomplaintsheetStatusOfComplaint: TStringField;
    printcomplaintsheetDateAccomplished: TDateTimeField;
    complaintsreportDateFiled: TDateTimeField;
    complaintsreportAccountNumber: TStringField;
    complaintsreportRoverBook: TStringField;
    complaintsreportConsumerName: TStringField;
    complaintsreportAddress: TStringField;
    complaintsreportTelNo: TStringField;
    complaintsreportComplaint: TStringField;
    complaintsreportActionTaken: TStringField;
    complaintsreportReceivedBy: TStringField;
    complaintsreportTimedEndorsed: TTimeField;
    complaintsreportStatusOfComplaint: TStringField;
    complaintsreportDateAccomplished: TDateTimeField;
    NewApplicantAdd: TNxLinkLabel;
    NewApplicantEdit: TNxLinkLabel;
    NewApplicantDelete: TNxLinkLabel;
    NewApplicantsPanel: TNxHeaderPanel;
    Label26: TLabel;
    DBEdit13: TDBEdit;
    Label27: TLabel;
    DBEdit55: TDBEdit;
    Label28: TLabel;
    DBEdit56: TDBEdit;
    Label29: TLabel;
    DBEdit57: TDBEdit;
    SaveNewApplicant: TNxLinkLabel;
    CancelNewApplicant: TNxLinkLabel;
    SumKWHR: TMyQuery;
    SumKWHRkilowatthour: TFloatField;
    NxLinkLabel2: TNxLinkLabel;
    ConnectOrder: TMyQuery;
    ConnectOrderArea: TStringField;
    ConnectOrderBook: TStringField;
    ConnectOrderName: TStringField;
    ConnectOrderAddress: TStringField;
    ConnectOrderORNumber: TStringField;
    ConnectOrderDatePaid: TDateTimeField;
    Voters: TMyQuery;
    VotersListPanel: TNxHeaderPanel;
    VoterDistrict: TNxEdit;
    whatever: TNxLabel;
    NxButton6: TNxButton;
    CloseBtn: TNxButton;
    InsertNewConnArchive: TMyQuery;
    NxLinkLabel5: TNxLinkLabel;
    BODApprovalPanel: TNxHeaderPanel;
    GroupBox1: TGroupBox;
    ORDateFrom: TDateTimePicker;
    ORDateTo: TDateTimePicker;
    NxLabel15: TNxLabel;
    NxButton7: TNxButton;
    NxLabel16: TNxLabel;
    MemberBOD: TMyQuery;
    NxLinkLabel8: TNxLinkLabel;
    NxLinkLabel12: TNxLinkLabel;
    dsMemberBOD: TMyDataSource;
    filtercomplaints_link: TNxLinkLabel;
    NxLinkLabel14: TNxLinkLabel;
    NxLinkLabel27: TNxLinkLabel;
    NextDBGrid5: TNextDBGrid;
    TNxDBTextColumn45: TNxDBTextColumn;
    TNxDBTextColumn46: TNxDBTextColumn;
    TNxDBTextColumn47: TNxDBTextColumn;
    TNxDBDateColumn3: TNxDBDateColumn;
    TNxDBTextColumn48: TNxDBTextColumn;
    TNxDBTextColumn49: TNxDBTextColumn;
    TNxDBTextColumn50: TNxDBTextColumn;
    TNxDBTextColumn51: TNxDBTextColumn;
    TNxDBTextColumn52: TNxDBTextColumn;
    TNxDBDateColumn11: TNxDBDateColumn;
    TNxDBTextColumn53: TNxDBTextColumn;
    TNxDBDateColumn12: TNxDBDateColumn;
    TNxDBDateColumn13: TNxDBDateColumn;
    TNxDBTextColumn54: TNxDBTextColumn;
    TNxDBNumberColumn16: TNxDBNumberColumn;
    TNxDBTextColumn55: TNxDBTextColumn;
    TNxDBDateColumn14: TNxDBDateColumn;
    ResolutionNumberPanel: TNxHeaderPanel;
    BoardResolutionNumber: TNxEdit;
    Label106: TLabel;
    DateApproved: TDateTimePicker;
    Label107: TLabel;
    NxButton8: TNxButton;
    NxButton9: TNxButton;
    UpdateBODRes: TMyQuery;
    NxLinkLabel36: TNxLinkLabel;
    VoterDistrictMainPanel: TNxHeaderPanel;
    NextDBGrid6: TNextDBGrid;
    VoterDistrictAdd: TNxLinkLabel;
    VoterDistrictEdit: TNxLinkLabel;
    VoterDistrictDelete: TNxLinkLabel;
    VoterDistrictEditPanel: TNxHeaderPanel;
    Label108: TLabel;
    DBEdit65: TDBEdit;
    Label109: TLabel;
    DBEdit66: TDBEdit;
    Label110: TLabel;
    DBEdit67: TDBEdit;
    VoterDistrictSave: TNxLinkLabel;
    VoterDistrictCancel: TNxLinkLabel;
    VoterDistrictClose: TNxLinkLabel;
    NxButton10: TNxButton;
    VoterDistrictList: TNxHeaderPanel;
    NxLinkLabel39: TNxLinkLabel;
    NxLinkLabel41: TNxLinkLabel;
    DBEdit68: TDBEdit;
    Label111: TLabel;
    printcomplaintsheetOthers: TStringField;
    PendingComplaintsReport: TMyQuery;
    LargeintField1: TLargeintField;
    DateTimeField1: TDateTimeField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    TimeField1: TTimeField;
    StringField9: TStringField;
    DateTimeField2: TDateTimeField;
    PendingComplaintsReportOthers: TStringField;
    NewApplicantVoterDistrict: TNxHeaderPanel;
    NxLinkLabel42: TNxLinkLabel;
    NxLinkLabel43: TNxLinkLabel;
    NxButton11: TNxButton;
    NxLinkLabel44: TNxLinkLabel;
    DBEdit69: TDBEdit;
    Label112: TLabel;
    printcomplaintsheetlandmark: TStringField;
    NextDBGrid9: TNextDBGrid;
    NxLabel17: TNxLabel;
    MMSearch: TNxButtonEdit;
    MMAdd: TNxLinkLabel;
    TNxDBDateColumn15: TNxDBDateColumn;
    TNxDBTextColumn59: TNxDBTextColumn;
    TNxDBTextColumn60: TNxDBTextColumn;
    TNxDBTextColumn62: TNxDBTextColumn;
    TNxDBTextColumn63: TNxDBTextColumn;
    TNxDBNumberColumn17: TNxDBNumberColumn;
    TNxDBTextColumn64: TNxDBTextColumn;
    TNxDBTextColumn65: TNxDBTextColumn;
    TNxDBNumberColumn18: TNxDBNumberColumn;
    TNxDBNumberColumn19: TNxDBNumberColumn;
    TNxDBTextColumn66: TNxDBTextColumn;
    TNxDBTextColumn67: TNxDBTextColumn;
    TNxDBNumberColumn20: TNxDBNumberColumn;
    TNxDBTextColumn68: TNxDBTextColumn;
    TNxDBNumberColumn21: TNxDBNumberColumn;
    TNxDBTextColumn69: TNxDBTextColumn;
    MMEditorPanel: TNxHeaderPanel;
    MMSave: TNxLinkLabel;
    MMCancel: TNxLinkLabel;
    CheckChangeMeter: TMyQuery;
    FindConsumerPanel: TNxHeaderPanel;
    Bevel4: TBevel;
    NxLabel19: TNxLabel;
    SearchRCDConsumer: TNxEdit;
    FindConsumer: TNxLinkLabel;
    NxLinkLabel9: TNxLinkLabel;
    DBGrid1: TDBGrid;
    NxLinkLabel10: TNxLinkLabel;
    MMSummary: TNxLinkLabel;
    ComputeCharges: TNxLinkLabel;
    Label100: TLabel;
    DBEdit64: TDBEdit;
    Label113: TLabel;
    DBEdit70: TDBEdit;
    Label114: TLabel;
    Label115: TLabel;
    DBEdit72: TDBEdit;
    Label116: TLabel;
    DBEdit73: TDBEdit;
    Label117: TLabel;
    DBEdit74: TDBEdit;
    Label118: TLabel;
    DBEdit75: TDBEdit;
    Label119: TLabel;
    DBEdit76: TDBEdit;
    Label120: TLabel;
    DBEdit77: TDBEdit;
    GroupBox2: TGroupBox;
    Label121: TLabel;
    DBEdit78: TDBEdit;
    Label122: TLabel;
    DBEdit79: TDBEdit;
    Label123: TLabel;
    DBEdit80: TDBEdit;
    Label124: TLabel;
    DBEdit81: TDBEdit;
    GroupBox3: TGroupBox;
    Label125: TLabel;
    DBEdit82: TDBEdit;
    Label126: TLabel;
    DBEdit83: TDBEdit;
    Label127: TLabel;
    DBEdit84: TDBEdit;
    Label128: TLabel;
    DBEdit85: TDBEdit;
    MMMaster: TMyQuery;
    MMChangeMeter: TMyQuery;
    MMChangeMeterCode: TFloatField;
    MMChangeMeterDate: TDateField;
    MMChangeMeterArea: TStringField;
    MMChangeMeterBook: TStringField;
    MMChangeMeterSequence: TStringField;
    MMChangeMeterAccountNumber: TStringField;
    MMChangeMeterName: TStringField;
    MMChangeMeterLastReading: TFloatField;
    MMChangeMeterOldMeterBrand: TStringField;
    MMChangeMeterOldSerialNumber: TStringField;
    MMChangeMeterOldMeterMult: TFloatField;
    MMChangeMeterInitialReading: TFloatField;
    MMChangeMeterNewMeterBrand: TStringField;
    MMChangeMeterNewMeterSerial: TStringField;
    MMChangeMeterNewMeterMult: TFloatField;
    MMChangeMeterFeedback: TStringField;
    MMChangeMeterAveCons: TFloatField;
    MMChangeMeterRemarks: TStringField;
    MMChangeMeterLTSerial: TStringField;
    MMChangeMeterLTDate: TDateField;
    DBEdit86: TDBEdit;
    Label129: TLabel;
    MMSummaryPanel: TNxHeaderPanel;
    PrintMMSummary: TMyQuery;
    PrintMMSummaryEntry: TIntegerField;
    PrintMMSummaryCode: TFloatField;
    PrintMMSummaryDate: TDateField;
    PrintMMSummaryArea: TStringField;
    PrintMMSummaryBook: TStringField;
    PrintMMSummarySequence: TStringField;
    PrintMMSummaryAccountNumber: TStringField;
    PrintMMSummaryName: TStringField;
    PrintMMSummaryLastReading: TFloatField;
    PrintMMSummaryOldMeterBrand: TStringField;
    PrintMMSummaryOldSerialNumber: TStringField;
    PrintMMSummaryOldMeterMult: TFloatField;
    PrintMMSummaryInitialReading: TFloatField;
    PrintMMSummaryNewMeterBrand: TStringField;
    PrintMMSummaryNewMeterSerial: TStringField;
    PrintMMSummaryNewMeterMult: TFloatField;
    PrintMMSummaryFeedback: TStringField;
    PrintMMSummaryAveCons: TFloatField;
    PrintMMSummaryRemarks: TStringField;
    PrintMMSummaryLTSerial: TStringField;
    PrintMMSummaryLTDate: TDateField;
    MMDateFrom: TDateTimePicker;
    NxLabel18: TNxLabel;
    MMDateTo: TDateTimePicker;
    NxLabel22: TNxLabel;
    NxButton2: TNxButton;
    NxButton12: TNxButton;
    MMReportType: TRadioGroup;
    Label130: TLabel;
    NxLinkLabel45: TNxLinkLabel;
    NxLabel20: TNxLabel;
    MMVDateFrom: TDateTimePicker;
    NxLabel21: TNxLabel;
    MMVDateTo: TDateTimePicker;
    TabReconnection: TNxTabSheet;
    NxHeaderPanel8: TNxHeaderPanel;
    NxLabel23: TNxLabel;
    ReconSearch: TNxButtonEdit;
    ReconAdd: TNxLinkLabel;
    ReconSummary: TNxLinkLabel;
    ReconVDateFrom: TDateTimePicker;
    ReconVDateTo: TDateTimePicker;
    NxLabel24: TNxLabel;
    NxLabel25: TNxLabel;
    ReconVPeriodCovered: TNxLinkLabel;
    NxLinkLabel46: TNxLinkLabel;
    NxLinkLabel47: TNxLinkLabel;
    ReconDelete: TNxLinkLabel;
    ReconPanel: TNxHeaderPanel;
    Label131: TLabel;
    DBEdit87: TDBEdit;
    Label132: TLabel;
    DBEdit88: TDBEdit;
    Label133: TLabel;
    DBEdit89: TDBEdit;
    Label134: TLabel;
    DBEdit90: TDBEdit;
    Label135: TLabel;
    DBEdit91: TDBEdit;
    Label136: TLabel;
    DBEdit92: TDBEdit;
    Label137: TLabel;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    Label140: TLabel;
    DBEdit96: TDBEdit;
    Label141: TLabel;
    DBEdit97: TDBEdit;
    Label142: TLabel;
    DBEdit98: TDBEdit;
    Label143: TLabel;
    DBEdit99: TDBEdit;
    Label144: TLabel;
    DBEdit100: TDBEdit;
    Label145: TLabel;
    DBEdit101: TDBEdit;
    Label146: TLabel;
    DBEdit102: TDBEdit;
    Label147: TLabel;
    DBEdit103: TDBEdit;
    Label148: TLabel;
    DBEdit104: TDBEdit;
    Label138: TLabel;
    ReconSave: TNxLinkLabel;
    ReconCancel: TNxLinkLabel;
    ReconSurveyPanel: TNxHeaderPanel;
    Label139: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    NxLabel29: TNxLabel;
    NxLabel30: TNxLabel;
    NxLabel31: TNxLabel;
    NxLabel32: TNxLabel;
    ReconDesc: TNxEdit;
    ReconWattage: TNxEdit;
    ReconHrsUsed: TNxEdit;
    ReconKWHR: TNxEdit;
    NxLinkLabel48: TNxLinkLabel;
    ReconUnits: TNxEdit;
    ReconLoadAdd: TNxButton;
    ReconLoadClose: TNxButton;
    NextDBGrid12: TNextDBGrid;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBNumberColumn2: TNxDBNumberColumn;
    NxDBNumberColumn3: TNxDBNumberColumn;
    NxDBNumberColumn4: TNxDBNumberColumn;
    ReconLoadDelete: TNxButton;
    ReconTKilowattHour: TStaticText;
    ReconRate: TNxEdit;
    ReconFixFee: TNxEdit;
    ReconTBillDeposit: TStaticText;
    ReconSummKwhr: TMyQuery;
    ReconSummKwhrkilowatthour: TFloatField;
    Label153: TLabel;
    DBEdit95: TDBEdit;
    Label156: TLabel;
    DBEdit107: TDBEdit;
    Label154: TLabel;
    PrintReconOrder: TMyQuery;
    DBEdit105: TDBEdit;
    Label155: TLabel;
    NxLabel26: TNxLabel;
    Image2: TImage;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape13: TQRShape;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape1: TQRShape;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel80: TQRLabel;
    QRLabel96: TQRLabel;
    QRDBText44: TQRDBText;
    QRDBImage5: TQRDBImage;
    QRDBText80: TQRDBText;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    QuickRep3: TQuickRep;
    QRBand1: TQRBand;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel46: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel45: TQRLabel;
    QRShape20: TQRShape;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRLabel61: TQRLabel;
    QRShape36: TQRShape;
    QRLabel62: TQRLabel;
    QRShape37: TQRShape;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRDBImage7: TQRDBImage;
    QRDBText82: TQRDBText;
    TabSheet4: TTabSheet;
    QuickRep4: TQuickRep;
    QRBand2: TQRBand;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRBand3: TQRBand;
    QRLabel79: TQRLabel;
    Municipal: TQRLabel;
    QRBand4: TQRBand;
    QRSysData3: TQRSysData;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    TabSheet5: TTabSheet;
    QuickRep5: TQuickRep;
    QRBand5: TQRBand;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel77: TQRLabel;
    QRBand6: TQRBand;
    QRLabel76: TQRLabel;
    NewMemberPeriodCovered: TQRLabel;
    QRDBImage9: TQRDBImage;
    QRDBText84: TQRDBText;
    QRBand7: TQRBand;
    QRSysData4: TQRSysData;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    TabSheet6: TTabSheet;
    QuickRep6: TQuickRep;
    QRBand8: TQRBand;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRBand9: TQRBand;
    QRLabel95: TQRLabel;
    PendingPeriodCovered: TQRLabel;
    QRBand10: TQRBand;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    TabSheet7: TTabSheet;
    QuickRep7: TQuickRep;
    QRBand11: TQRBand;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel101: TQRLabel;
    QRBand12: TQRBand;
    QRLabel102: TQRLabel;
    QRBand13: TQRBand;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    TabSheet8: TTabSheet;
    QuickRep8: TQuickRep;
    QRBand14: TQRBand;
    QRLabel100: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRLabel118: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRShape47: TQRShape;
    QRBand15: TQRBand;
    QRLabel106: TQRLabel;
    MMReportTypeLable: TQRLabel;
    MMReportCoveredPeriod: TQRLabel;
    QRBand16: TQRBand;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRSysData6: TQRSysData;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    TabSheet9: TTabSheet;
    QuickRep9: TQuickRep;
    QRBand17: TQRBand;
    QRShape57: TQRShape;
    QRShape56: TQRShape;
    QRShape55: TQRShape;
    QRLabel111: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRSysData7: TQRSysData;
    QRLabel128: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel141: TQRLabel;
    QRShape72: TQRShape;
    QRLabel142: TQRLabel;
    QRShape73: TQRShape;
    QRLabel144: TQRLabel;
    QRLabel145: TQRLabel;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel126: TQRLabel;
    QRLabel134: TQRLabel;
    QRLabel135: TQRLabel;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRLabel127: TQRLabel;
    QRLabel136: TQRLabel;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRLabel152: TQRLabel;
    QRLabel153: TQRLabel;
    QRLabel155: TQRLabel;
    QRLabel156: TQRLabel;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    TabSheet10: TTabSheet;
    QuickRep10: TQuickRep;
    QRBand18: TQRBand;
    QRLabel137: TQRLabel;
    QRLabel138: TQRLabel;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    QRLabel143: TQRLabel;
    QRLabel146: TQRLabel;
    QRLabel150: TQRLabel;
    QRLabel151: TQRLabel;
    QRLabel154: TQRLabel;
    QRBand19: TQRBand;
    QRLabel147: TQRLabel;
    ReconPeriodCovered: TQRLabel;
    QRBand20: TQRBand;
    QRSysData8: TQRSysData;
    QRDBText68: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    Image3: TImage;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DateStr: TNxLabel;
    NxLabel1: TNxLabel;
    Label13: TLabel;
    ACRONYM: TNxLabel;
    DBImage1: TDBImage;
    QRDBImage8: TQRDBImage;
    QRDBText83: TQRDBText;
    QRDBImage10: TQRDBImage;
    QRDBText85: TQRDBText;
    QRDBImage1: TQRDBImage;
    QRDBText76: TQRDBText;
    QRDBImage2: TQRDBImage;
    QRDBText77: TQRDBText;
    QRDBImage3: TQRDBImage;
    QRDBText78: TQRDBText;
    QRDBImage4: TQRDBImage;
    QRDBText79: TQRDBText;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LoadLogo: TNxLinkLabel;
    EditLink: TNxLinkLabel;
    SaveLink: TNxLinkLabel;
    CancelLink: TNxLinkLabel;
    DBEdit108: TDBEdit;
    DBEdit109: TDBEdit;
    DBEdit110: TDBEdit;
    DBImage4: TDBImage;
    NxFlipContainer2: TNxFlipContainer;
    UserListPanel: TNxFlipPanel;
    NextDBGrid1: TNextDBGrid;
    TNxDBTextColumn2: TNxDBTextColumn;
    TNxDBTextColumn5: TNxDBTextColumn;
    TNxDBTextColumn6: TNxDBTextColumn;
    SearchUser: TNxButtonEdit;
    EditButton: TNxLinkLabel;
    AddLink: TNxLinkLabel;
    DeleteLink: TNxLinkLabel;
    UserMaintenancePanel: TNxFlipPanel;
    Label10: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    EditConfirmPassword: TNxEdit;
    NxLinkLabel1: TNxLinkLabel;
    SaveUser: TNxLinkLabel;
    CancelUser: TNxLinkLabel;
    DBEdit111: TDBEdit;
    DBEdit112: TDBEdit;
    DBEdit113: TDBEdit;
    DBEdit114: TDBEdit;
    DBImage6: TDBImage;
    VicinityArea: TStringField;
    VicinityBook: TStringField;
    VicinityAddress: TStringField;
    VotersMunCode: TStringField;
    VotersDistrictCode: TStringField;
    VotersBrgyCode: TStringField;
    VotersMembername: TStringField;
    VotersAddress: TStringField;
    VotersGender: TStringField;
    VotersBirthDate: TDateField;
    VotersSpouse: TStringField;
    VotersMemberStatus: TStringField;
    VotersMemberNumber: TStringField;
    VotersIDNo: TStringField;
    VotersBODResNumber: TStringField;
    VotersDateApproved: TDateField;
    VotersMFORNumber: TStringField;
    VotersMFORDate: TDateField;
    VotersDateTurnOn: TDateField;
    VotersTOOrderNo: TStringField;
    VotersEDAmount: TFloatField;
    VotersEDOrNo: TStringField;
    VotersEDDate: TDateField;
    VotersMemberPic: TBlobField;
    VotersSpousePic: TBlobField;
    DBEdit3: TDBEdit;
    DBEdit39: TDBEdit;
    Label16: TLabel;
    Label56: TLabel;
    VoterOption: TRadioGroup;
    NxButton13: TNxButton;
    Brgy: TMyQuery;
    BrgyList: TNxHeaderPanel;
    NxLinkLabel21: TNxLinkLabel;
    NxLinkLabel23: TNxLinkLabel;
    dsBrgy: TMyDataSource;
    TNxDBTextColumn72: TNxDBTextColumn;
    TNxDBTextColumn73: TNxDBTextColumn;
    TNxDBTextColumn74: TNxDBTextColumn;
    TNxDBTextColumn75: TNxDBTextColumn;
    TNxDBTextColumn76: TNxDBTextColumn;
    TNxDBDateColumn16: TNxDBDateColumn;
    TNxDBNumberColumn5: TNxDBNumberColumn;
    TNxDBNumberColumn6: TNxDBNumberColumn;
    TNxDBNumberColumn7: TNxDBNumberColumn;
    TNxDBNumberColumn8: TNxDBNumberColumn;
    TNxDBNumberColumn9: TNxDBNumberColumn;
    TNxDBTextColumn77: TNxDBTextColumn;
    TNxDBTextColumn78: TNxDBTextColumn;
    TNxDBTextColumn79: TNxDBTextColumn;
    PrintVoterDistrict: TMyQuery;
    PrintVoterDistrictMunCode: TStringField;
    PrintVoterDistrictMunicipality: TStringField;
    PrintVoterDistrictDistrictCode: TStringField;
    PrintVoterDistrictDistrict: TStringField;
    DBEdit40: TDBEdit;
    Label57: TLabel;
    TNxDBTextColumn56: TNxDBTextColumn;
    TNxDBTextColumn57: TNxDBTextColumn;
    TNxDBTextColumn58: TNxDBTextColumn;
    TNxDBTextColumn80: TNxDBTextColumn;
    NextDBGrid8: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    Label58: TLabel;
    DBEdit41: TDBEdit;
    NxButton14: TNxButton;
    NewAppBrgyList: TNxHeaderPanel;
    NextDBGrid14: TNextDBGrid;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxLinkLabel32: TNxLinkLabel;
    NxLinkLabel33: TNxLinkLabel;
    QRDBText18: TQRDBText;
    QRLabel2: TQRLabel;
    DataSource1: TDataSource;
    TabSheet11: TTabSheet;
    QuickRep11: TQuickRep;
    TitleBand1: TQRBand;
    QRDBImage11: TQRDBImage;
    QRLabel69: TQRLabel;
    QRDBText86: TQRDBText;
    QRDBText87: TQRDBText;
    QRDBImage12: TQRDBImage;
    QRDBText88: TQRDBText;
    QRDBText89: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel68: TQRLabel;
    QRDBText90: TQRDBText;
    QRLabel78: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel97: TQRLabel;
    QRDBText91: TQRDBText;
    QRDBText92: TQRDBText;
    QRDBText93: TQRDBText;
    QRDBText94: TQRDBText;
    QRDBText95: TQRDBText;
    QRDBText96: TQRDBText;
    QRLabel104: TQRLabel;
    QRLabel107: TQRLabel;
    QRImage1: TQRImage;
    QRShape66: TQRShape;
    PopupMenu1: TPopupMenu;
    PrintMemberConsumerID1: TMenuItem;
    QRLabel110: TQRLabel;
    ConsumerArea: TStringField;
    ConsumerBook: TStringField;
    ConsumerSequence: TStringField;
    ConsumerAccountNumber: TStringField;
    ConsumerName: TStringField;
    ConsumerAddress: TStringField;
    ConsumerRateCode: TStringField;
    ConsumerConsCode: TStringField;
    ConsumerConnCode: TStringField;
    ConsumerTransformer: TStringField;
    ConsumerMeterBrand: TStringField;
    ConsumerSerial: TStringField;
    ConsumerMultiplier: TFloatField;
    ConsumerNewConnectionDate: TDateField;
    ConsumerReconnectionDate: TDateField;
    ConsumerDisconnectionDate: TDateField;
    ConsumerPreviousReadingDate: TDateField;
    ConsumerPresentReadingDate: TDateField;
    ConsumerPreviousReadingKWH: TFloatField;
    ConsumerPresentReadingKWH: TFloatField;
    ConsumerDiff: TFloatField;
    ConsumerDemand: TFloatField;
    ConsumerFlatRateWattage: TFloatField;
    ConsumerFeedBackCode: TStringField;
    ConsumerCM: TStringField;
    ConsumerCMMultiplier: TFloatField;
    ConsumerCMPreviousReadingKWH: TFloatField;
    ConsumerCMPresentReadingKWH: TFloatField;
    ConsumerCMKilowattHour: TFloatField;
    ConsumerCMDemand: TFloatField;
    ConsumerKilowattHour: TFloatField;
    ConsumerKilowattUsed: TFloatField;
    ConsumerGenSysCharge: TFloatField;
    ConsumerHostCommCharge: TFloatField;
    ConsumerForexCharge: TFloatField;
    ConsumerTCDemandCharge: TFloatField;
    ConsumerTCTransSystemCharge: TFloatField;
    ConsumerSystemLossCharge: TFloatField;
    ConsumerDCDemandCharge: TFloatField;
    ConsumerDCDistributionCharge: TFloatField;
    ConsumerSCRetCustCharge: TFloatField;
    ConsumerSCSupplySysCharge: TFloatField;
    ConsumerMCRetailCustCharge: TFloatField;
    ConsumerMCSystemCharge: TFloatField;
    ConsumerUCNPCStrandedDebts: TFloatField;
    ConsumerUCNPCStrandedContCost: TFloatField;
    ConsumerUCDUStrandedContCost: TFloatField;
    ConsumerUCME: TFloatField;
    ConsumerUCEqTaxesAndRoyalties: TFloatField;
    ConsumerUCEC: TFloatField;
    ConsumerUCCrossSubRemoval: TFloatField;
    ConsumerICCrossSubsidyCharge: TFloatField;
    ConsumerPowerActRateRed: TFloatField;
    ConsumerLifelineDiscSubs: TFloatField;
    ConsumerLoanCondo: TFloatField;
    ConsumerTransformerRental: TFloatField;
    ConsumerOCCode1: TStringField;
    ConsumerOCAmount1: TFloatField;
    ConsumerOCMo1: TFloatField;
    ConsumerOCTotal1: TFloatField;
    ConsumerOCCode2: TStringField;
    ConsumerOCAmount2: TFloatField;
    ConsumerOCMo2: TFloatField;
    ConsumerOCTotal2: TFloatField;
    ConsumerOCCode3: TStringField;
    ConsumerOCAmount3: TFloatField;
    ConsumerOCMo3: TFloatField;
    ConsumerOCTotal3: TFloatField;
    ConsumerTotalBill: TFloatField;
    ConsumerBillNumber: TStringField;
    ConsumerOEBRNumber: TStringField;
    ConsumerBillMonth: TStringField;
    ConsumerDeleteRemarks: TStringField;
    ConsumerPoleNumber: TStringField;
    ConsumerFeederNumber: TStringField;
    ConsumerXFormerQty: TIntegerField;
    ConsumerXFormerKVA: TStringField;
    ConsumerAge30: TFloatField;
    ConsumerAge60: TFloatField;
    ConsumerAge90: TFloatField;
    ConsumerAge120: TFloatField;
    ConsumerAgeOver120: TFloatField;
    ConsumerAgeTotal: TFloatField;
    ConsumerTotalPayments: TFloatField;
    ConsumerARBalance: TFloatField;
    ConsumerLCCustMo: TFloatField;
    ConsumerPrevYearAdjPowerCost: TFloatField;
    ConsumerSysLossUnderRecov: TFloatField;
    ConsumerVATDisc: TFloatField;
    ConsumerVATDiscAmt: TFloatField;
    ConsumerVATDistDiscAmt: TFloatField;
    ConsumerVATGenCoDiscAmt: TFloatField;
    ConsumerVATTransCoDiscAmt: TFloatField;
    ConsumerVATSystemLossDiscAmt: TFloatField;
    ConsumerVATDist: TFloatField;
    ConsumerVATGenCO: TFloatField;
    ConsumerVATTransCO: TFloatField;
    ConsumerVATSystemLossGenCO: TFloatField;
    ConsumerVATSystemLossTransCO: TFloatField;
    ConsumerVAT: TFloatField;
    MasterArea: TStringField;
    MasterBook: TStringField;
    MasterSequence: TStringField;
    MasterAccountNumber: TStringField;
    MasterName: TStringField;
    MasterAddress: TStringField;
    MasterRateCode: TStringField;
    MasterConsCode: TStringField;
    MasterConnCode: TStringField;
    MasterTransformer: TStringField;
    MasterMeterBrand: TStringField;
    MasterSerial: TStringField;
    MasterMultiplier: TFloatField;
    MasterNewConnectionDate: TDateField;
    MasterReconnectionDate: TDateField;
    MasterDisconnectionDate: TDateField;
    MasterPreviousReadingDate: TDateField;
    MasterPresentReadingDate: TDateField;
    MasterPreviousReadingKWH: TFloatField;
    MasterPresentReadingKWH: TFloatField;
    MasterDiff: TFloatField;
    MasterDemand: TFloatField;
    MasterFlatRateWattage: TFloatField;
    MasterFeedBackCode: TStringField;
    MasterCM: TStringField;
    MasterCMMultiplier: TFloatField;
    MasterCMPreviousReadingKWH: TFloatField;
    MasterCMPresentReadingKWH: TFloatField;
    MasterCMKilowattHour: TFloatField;
    MasterCMDemand: TFloatField;
    MasterKilowattHour: TFloatField;
    MasterKilowattUsed: TFloatField;
    MasterGenSysCharge: TFloatField;
    MasterHostCommCharge: TFloatField;
    MasterForexCharge: TFloatField;
    MasterTCDemandCharge: TFloatField;
    MasterTCTransSystemCharge: TFloatField;
    MasterSystemLossCharge: TFloatField;
    MasterDCDemandCharge: TFloatField;
    MasterDCDistributionCharge: TFloatField;
    MasterSCRetCustCharge: TFloatField;
    MasterSCSupplySysCharge: TFloatField;
    MasterMCRetailCustCharge: TFloatField;
    MasterMCSystemCharge: TFloatField;
    MasterUCNPCStrandedDebts: TFloatField;
    MasterUCNPCStrandedContCost: TFloatField;
    MasterUCDUStrandedContCost: TFloatField;
    MasterUCME: TFloatField;
    MasterUCEqTaxesAndRoyalties: TFloatField;
    MasterUCEC: TFloatField;
    MasterUCCrossSubRemoval: TFloatField;
    MasterICCrossSubsidyCharge: TFloatField;
    MasterPowerActRateRed: TFloatField;
    MasterLifelineDiscSubs: TFloatField;
    MasterLoanCondo: TFloatField;
    MasterTransformerRental: TFloatField;
    MasterOCCode1: TStringField;
    MasterOCAmount1: TFloatField;
    MasterOCMo1: TFloatField;
    MasterOCTotal1: TFloatField;
    MasterOCCode2: TStringField;
    MasterOCAmount2: TFloatField;
    MasterOCMo2: TFloatField;
    MasterOCTotal2: TFloatField;
    MasterOCCode3: TStringField;
    MasterOCAmount3: TFloatField;
    MasterOCMo3: TFloatField;
    MasterOCTotal3: TFloatField;
    MasterTotalBill: TFloatField;
    MasterBillNumber: TStringField;
    MasterOEBRNumber: TStringField;
    MasterBillMonth: TStringField;
    MasterDeleteRemarks: TStringField;
    MasterPoleNumber: TStringField;
    MasterFeederNumber: TStringField;
    MasterXFormerQty: TIntegerField;
    MasterXFormerKVA: TStringField;
    MasterAge30: TFloatField;
    MasterAge60: TFloatField;
    MasterAge90: TFloatField;
    MasterAge120: TFloatField;
    MasterAgeOver120: TFloatField;
    MasterAgeTotal: TFloatField;
    MasterTotalPayments: TFloatField;
    MasterARBalance: TFloatField;
    MasterLCCustMo: TFloatField;
    MasterPrevYearAdjPowerCost: TFloatField;
    MasterSysLossUnderRecov: TFloatField;
    MasterVATDisc: TFloatField;
    MasterVATDiscAmt: TFloatField;
    MasterVATDistDiscAmt: TFloatField;
    MasterVATGenCoDiscAmt: TFloatField;
    MasterVATTransCoDiscAmt: TFloatField;
    MasterVATSystemLossDiscAmt: TFloatField;
    MasterVATDist: TFloatField;
    MasterVATGenCO: TFloatField;
    MasterVATTransCO: TFloatField;
    MasterVATSystemLossGenCO: TFloatField;
    MasterVATSystemLossTransCO: TFloatField;
    MasterVAT: TFloatField;
    MMMasterArea: TStringField;
    MMMasterBook: TStringField;
    MMMasterSequence: TStringField;
    MMMasterAccountNumber: TStringField;
    MMMasterName: TStringField;
    MMMasterAddress: TStringField;
    MMMasterRateCode: TStringField;
    MMMasterConsCode: TStringField;
    MMMasterConnCode: TStringField;
    MMMasterTransformer: TStringField;
    MMMasterMeterBrand: TStringField;
    MMMasterSerial: TStringField;
    MMMasterMultiplier: TFloatField;
    MMMasterNewConnectionDate: TDateField;
    MMMasterReconnectionDate: TDateField;
    MMMasterDisconnectionDate: TDateField;
    MMMasterPreviousReadingDate: TDateField;
    MMMasterPresentReadingDate: TDateField;
    MMMasterPreviousReadingKWH: TFloatField;
    MMMasterPresentReadingKWH: TFloatField;
    MMMasterDiff: TFloatField;
    MMMasterDemand: TFloatField;
    MMMasterFlatRateWattage: TFloatField;
    MMMasterFeedBackCode: TStringField;
    MMMasterCM: TStringField;
    MMMasterCMMultiplier: TFloatField;
    MMMasterCMPreviousReadingKWH: TFloatField;
    MMMasterCMPresentReadingKWH: TFloatField;
    MMMasterCMKilowattHour: TFloatField;
    MMMasterCMDemand: TFloatField;
    MMMasterKilowattHour: TFloatField;
    MMMasterKilowattUsed: TFloatField;
    MMMasterGenSysCharge: TFloatField;
    MMMasterHostCommCharge: TFloatField;
    MMMasterForexCharge: TFloatField;
    MMMasterTCDemandCharge: TFloatField;
    MMMasterTCTransSystemCharge: TFloatField;
    MMMasterSystemLossCharge: TFloatField;
    MMMasterDCDemandCharge: TFloatField;
    MMMasterDCDistributionCharge: TFloatField;
    MMMasterSCRetCustCharge: TFloatField;
    MMMasterSCSupplySysCharge: TFloatField;
    MMMasterMCRetailCustCharge: TFloatField;
    MMMasterMCSystemCharge: TFloatField;
    MMMasterUCNPCStrandedDebts: TFloatField;
    MMMasterUCNPCStrandedContCost: TFloatField;
    MMMasterUCDUStrandedContCost: TFloatField;
    MMMasterUCME: TFloatField;
    MMMasterUCEqTaxesAndRoyalties: TFloatField;
    MMMasterUCEC: TFloatField;
    MMMasterUCCrossSubRemoval: TFloatField;
    MMMasterICCrossSubsidyCharge: TFloatField;
    MMMasterPowerActRateRed: TFloatField;
    MMMasterLifelineDiscSubs: TFloatField;
    MMMasterLoanCondo: TFloatField;
    MMMasterTransformerRental: TFloatField;
    MMMasterOCCode1: TStringField;
    MMMasterOCAmount1: TFloatField;
    MMMasterOCMo1: TFloatField;
    MMMasterOCTotal1: TFloatField;
    MMMasterOCCode2: TStringField;
    MMMasterOCAmount2: TFloatField;
    MMMasterOCMo2: TFloatField;
    MMMasterOCTotal2: TFloatField;
    MMMasterOCCode3: TStringField;
    MMMasterOCAmount3: TFloatField;
    MMMasterOCMo3: TFloatField;
    MMMasterOCTotal3: TFloatField;
    MMMasterTotalBill: TFloatField;
    MMMasterBillNumber: TStringField;
    MMMasterOEBRNumber: TStringField;
    MMMasterBillMonth: TStringField;
    MMMasterDeleteRemarks: TStringField;
    MMMasterPoleNumber: TStringField;
    MMMasterFeederNumber: TStringField;
    MMMasterXFormerQty: TIntegerField;
    MMMasterXFormerKVA: TStringField;
    MMMasterAge30: TFloatField;
    MMMasterAge60: TFloatField;
    MMMasterAge90: TFloatField;
    MMMasterAge120: TFloatField;
    MMMasterAgeOver120: TFloatField;
    MMMasterAgeTotal: TFloatField;
    MMMasterTotalPayments: TFloatField;
    MMMasterARBalance: TFloatField;
    MMMasterLCCustMo: TFloatField;
    MMMasterPrevYearAdjPowerCost: TFloatField;
    MMMasterSysLossUnderRecov: TFloatField;
    MMMasterVATDisc: TFloatField;
    MMMasterVATDiscAmt: TFloatField;
    MMMasterVATDistDiscAmt: TFloatField;
    MMMasterVATGenCoDiscAmt: TFloatField;
    MMMasterVATTransCoDiscAmt: TFloatField;
    MMMasterVATSystemLossDiscAmt: TFloatField;
    MMMasterVATDist: TFloatField;
    MMMasterVATGenCO: TFloatField;
    MMMasterVATTransCO: TFloatField;
    MMMasterVATSystemLossGenCO: TFloatField;
    MMMasterVATSystemLossTransCO: TFloatField;
    MMMasterVAT: TFloatField;
    TabDisconnection: TNxTabSheet;
    NxHeaderPanel9: TNxHeaderPanel;
    NxLabel14: TNxLabel;
    NxLabel27: TNxLabel;
    NxLabel28: TNxLabel;
    DiscoSearch: TNxButtonEdit;
    DiscoAdd: TNxLinkLabel;
    NxLinkLabel51: TNxLinkLabel;
    DiscoDateFrom: TDateTimePicker;
    DiscoDateTo: TDateTimePicker;
    DiscoPeriodCovered: TNxLinkLabel;
    NxLinkLabel54: TNxLinkLabel;
    DiscoDelete: TNxLinkLabel;
    DiscoPanel: TNxHeaderPanel;
    Label59: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label92: TLabel;
    Label164: TLabel;
    DBEdit42: TDBEdit;
    DBEdit115: TDBEdit;
    DBEdit116: TDBEdit;
    DBEdit117: TDBEdit;
    DBEdit118: TDBEdit;
    DBEdit119: TDBEdit;
    DBEdit121: TDBEdit;
    NxLinkLabel56: TNxLinkLabel;
    NxLinkLabel57: TNxLinkLabel;
    DBEdit120: TDBEdit;
    DBEdit123: TDBEdit;
    Label91: TLabel;
    Label93: TLabel;
    TabSheet12: TTabSheet;
    QuickRep12: TQuickRep;
    TabSheet13: TTabSheet;
    QuickRep13: TQuickRep;
    QRBand22: TQRBand;
    QRLabel173: TQRLabel;
    QRLabel176: TQRLabel;
    QRLabel180: TQRLabel;
    QRLabel181: TQRLabel;
    QRLabel182: TQRLabel;
    QRLabel183: TQRLabel;
    QRLabel184: TQRLabel;
    QRBand23: TQRBand;
    QRLabel187: TQRLabel;
    DiscoVPeriodCovered: TQRLabel;
    QRDBImage14: TQRDBImage;
    QRDBText105: TQRDBText;
    QRBand24: TQRBand;
    QRSysData10: TQRSysData;
    QRDBText106: TQRDBText;
    QRDBText109: TQRDBText;
    QRDBText110: TQRDBText;
    QRDBText111: TQRDBText;
    QRDBText112: TQRDBText;
    QRDBText113: TQRDBText;
    QRDBText114: TQRDBText;
    InsertMaster: TMyQuery;
    Bevel1: TBevel;
    NxLinkLabel50: TNxLinkLabel;
    NxLinkLabel52: TNxLinkLabel;
    Label161: TLabel;
    Label162: TLabel;
    NxLabel34: TNxLabel;
    NxLabel35: TNxLabel;
    NCSearch: TNxEdit;
    NCSearchBtn: TNxLinkLabel;
    QRDBText115: TQRDBText;
    ConnectOrderratecode: TStringField;
    ConnectOrderconsumertype: TStringField;
    QRLabel185: TQRLabel;
    QRDBText116: TQRDBText;
    QRLabel186: TQRLabel;
    QRLabel188: TQRLabel;
    QRLabel189: TQRLabel;
    QRDBText43: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel190: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel191: TQRLabel;
    QRLabel192: TQRLabel;
    QRLabel193: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel195: TQRLabel;
    QRLabel196: TQRLabel;
    QRLabel198: TQRLabel;
    QRLabel199: TQRLabel;
    QRLabel200: TQRLabel;
    QRLabel201: TQRLabel;
    AP: TMyQuery;
    DBEdit124: TDBEdit;
    Label163: TLabel;
    DBEdit125: TDBEdit;
    Label165: TLabel;
    QuickRep2: TQuickRep;
    ColumnHeaderBand2: TQRBand;
    QRLabel32: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel44: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel29: TQRLabel;
    PeriodCovered: TQRLabel;
    QRDBImage6: TQRDBImage;
    QRDBText81: TQRDBText;
    DetailBand2: TQRBand;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    GroupBox4: TGroupBox;
    Label166: TLabel;
    Label168: TLabel;
    DBEdit139: TDBEdit;
    DBEdit130: TDBEdit;
    Label167: TLabel;
    DBEdit126: TDBEdit;
    Label169: TLabel;
    DBEdit127: TDBEdit;
    QRBand26: TQRBand;
    QRDBText121: TQRDBText;
    QRDBText122: TQRDBText;
    QRLabel39: TQRLabel;
    QRLabel206: TQRLabel;
    QRDBText123: TQRDBText;
    QRDBText124: TQRDBText;
    QRBand25: TQRBand;
    QRDBText107: TQRDBText;
    QRDBText118: TQRDBText;
    QRLabel27: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText119: TQRDBText;
    QRDBText120: TQRDBText;
    createsign: TMyQuery;
    ModifyTransaction: TMyQuery;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBMemo1: TDBMemo;
    Label170: TLabel;
    NxLinkLabel34: TNxLinkLabel;
    Label171: TLabel;
    Label172: TLabel;
    DBEdit7: TDBEdit;
    DBEdit71: TDBEdit;
    NxLinkLabel55: TNxLinkLabel;
    TabSheet14: TTabSheet;
    QuickRep14: TQuickRep;
    QRBand28: TQRBand;
    QRLabel209: TQRLabel;
    QRLabel210: TQRLabel;
    QRBand29: TQRBand;
    QRLabel218: TQRLabel;
    QRLabel219: TQRLabel;
    QRDBImage15: TQRDBImage;
    QRDBText129: TQRDBText;
    QRBand30: TQRBand;
    QRDBText131: TQRDBText;
    QRDBText132: TQRDBText;
    QRBand31: TQRBand;
    QRDBText139: TQRDBText;
    QRDBText140: TQRDBText;
    QRLabel220: TQRLabel;
    QRLabel221: TQRLabel;
    QRDBText141: TQRDBText;
    QRDBText142: TQRDBText;
    QRLabel211: TQRLabel;
    QRDBText130: TQRDBText;
    QRLabel212: TQRLabel;
    QRLabel213: TQRLabel;
    QRLabel214: TQRLabel;
    QRLabel215: TQRLabel;
    QRLabel216: TQRLabel;
    QRLabel217: TQRLabel;
    QRDBText133: TQRDBText;
    QRDBText134: TQRDBText;
    NxLinkLabel58: TNxLinkLabel;
    DBMemo2: TDBMemo;
    Label101: TLabel;
    DBMemo3: TDBMemo;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    NxLinkLabel40: TNxLinkLabel;
    Label30: TLabel;
    DBEdit58: TDBEdit;
    Label95: TLabel;
    DBEdit59: TDBEdit;
    DBMemo4: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    Label96: TLabel;
    DBText4: TDBText;
    Label97: TLabel;
    DBText5: TDBText;
    Label98: TLabel;
    DBText6: TDBText;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    Label1: TLabel;
    Label5: TLabel;
    DBEdit62: TDBEdit;
    Label6: TLabel;
    DBEdit63: TDBEdit;
    Label72: TLabel;
    DBEdit106: TDBEdit;
    Label73: TLabel;
    DBEdit122: TDBEdit;
    DBEdit128: TDBEdit;
    DBEdit129: TDBEdit;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    QRShape2: TQRShape;
    DBMemo5: TDBMemo;
    Label77: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    ComboBox1: TComboBox;
    MasterCode: TIntegerField;
    MasterDiffBillPerKwhr: TFloatField;
    MasterDiffBillPerKW: TFloatField;
    MasterDiffBillPerCust: TFloatField;
    MasterMCC: TFloatField;
    MasterPKVROebrNumber: TStringField;
    MasterPKVRBillMonth: TStringField;
    MasterPKVRAmount: TFloatField;
    MasterSCDisc: TFloatField;
    MasterWRateCode: TStringField;
    MasterSCAmt4Disc: TFloatField;
    MasterDWLEN1: TFloatField;
    MasterDWLEN2: TFloatField;
    MasterCBook: TStringField;
    ConsumerCode: TIntegerField;
    ConsumerDiffBillPerKwhr: TFloatField;
    ConsumerDiffBillPerKW: TFloatField;
    ConsumerDiffBillPerCust: TFloatField;
    ConsumerMCC: TFloatField;
    ConsumerPKVROebrNumber: TStringField;
    ConsumerPKVRBillMonth: TStringField;
    ConsumerPKVRAmount: TFloatField;
    ConsumerSCDisc: TFloatField;
    ConsumerWRateCode: TStringField;
    ConsumerSCAmt4Disc: TFloatField;
    ConsumerDWLEN1: TFloatField;
    ConsumerDWLEN2: TFloatField;
    ConsumerCBook: TStringField;
    MMMasterCode: TIntegerField;
    MMMasterDiffBillPerKwhr: TFloatField;
    MMMasterDiffBillPerKW: TFloatField;
    MMMasterDiffBillPerCust: TFloatField;
    MMMasterMCC: TFloatField;
    MMMasterPKVROebrNumber: TStringField;
    MMMasterPKVRBillMonth: TStringField;
    MMMasterPKVRAmount: TFloatField;
    MMMasterSCDisc: TFloatField;
    MMMasterWRateCode: TStringField;
    MMMasterSCAmt4Disc: TFloatField;
    MMMasterDWLEN1: TFloatField;
    MMMasterDWLEN2: TFloatField;
    MMMasterCBook: TStringField;
    ConnectOrderTechArea: TStringField;
    ConnectOrderCrew: TStringField;
    ConnectOrderAccomplished: TStringField;
    ConnectOrderDateAccomplished: TDateTimeField;
    ConnectOrderMeterBrand: TStringField;
    ConnectOrderSerial: TStringField;
    ConnectOrderRemarks: TMemoField;
    ConnectOrderTransformer: TStringField;
    ConnectOrderPoleNumber: TStringField;
    ConnectOrderMultiplier: TFloatField;
    ConnectOrderDemand: TFloatField;
    ConnectOrderTransformerRental: TFloatField;
    ConnectOrderAccountNumber: TStringField;
    ConnectOrderInitialReading: TFloatField;
    ConnectOrderFeeder: TStringField;
    ConnectOrderPosted: TStringField;
    ConnectOrderSealNumber: TStringField;
    MMChangeMeterEntry: TIntegerField;
    MMChangeMeterPosted: TStringField;
    MMChangeMeterSealNumber: TStringField;
    complaintsreportidComplaints: TLargeintField;
    complaintsreportOthers: TStringField;
    complaintsreportlandmark: TStringField;
    complaintsreportwithcharge: TStringField;
    complaintsreportremarks: TMemoField;
    complaintsreportTechArea: TStringField;
    complaintsreportCrew: TStringField;
    complaintsreportAccomplished: TStringField;
    complaintsreportBatch: TStringField;
    complaintsreportORNumber: TStringField;
    complaintsreportORDate: TDateField;
    printcomplaintsheetwithcharge: TStringField;
    printcomplaintsheetremarks: TMemoField;
    printcomplaintsheetTechArea: TStringField;
    printcomplaintsheetCrew: TStringField;
    printcomplaintsheetAccomplished: TStringField;
    printcomplaintsheetBatch: TStringField;
    printcomplaintsheetORNumber: TStringField;
    printcomplaintsheetORDate: TDateField;
    CRDBGrid1: TCRDBGrid;
    PrintReconOrderidrecon: TLongWordField;
    PrintReconOrderrecondate: TDateTimeField;
    PrintReconOrdercode: TFloatField;
    PrintReconOrderArea: TStringField;
    PrintReconOrderBook: TStringField;
    PrintReconOrderAccountnumber: TStringField;
    PrintReconOrderName: TStringField;
    PrintReconOrderAddress: TStringField;
    PrintReconOrderreconnectionfee: TFloatField;
    PrintReconOrderBillDeposit: TFloatField;
    PrintReconOrderRemarks: TStringField;
    PrintReconOrderMeterBrand: TStringField;
    PrintReconOrderSerial: TStringField;
    PrintReconOrderAmp: TStringField;
    PrintReconOrderPhase: TStringField;
    PrintReconOrderMeterType: TStringField;
    PrintReconOrderMultiplier: TFloatField;
    PrintReconOrderInitialReading: TFloatField;
    PrintReconOrderReadingDate: TDateField;
    PrintReconOrderDiscoDate: TDateField;
    PrintReconOrderORNumber: TStringField;
    PrintReconOrderORDate: TDateField;
    PrintReconOrderEVAT: TFloatField;
    PrintReconOrderCrew: TStringField;
    PrintReconOrderDateRecon: TDateTimeField;
    PrintReconOrdermoreremarks: TMemoField;
    PrintReconOrderTechArea: TStringField;
    PrintReconOrderAccomplished: TStringField;
    PrintReconOrderBatch: TStringField;
    PrintReconOrderSealNumber: TStringField;
    PrintReconOrderpolenumber: TStringField;
    QRLabel70: TQRLabel;
    QRDBText19: TQRDBText;
    PrintReconOrdertotalpaid: TCurrencyField;
    QRDBText135: TQRDBText;
    Panel2: TPanel;
    Image4: TImage;
    Panel3: TPanel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Image5: TImage;
    Label81: TLabel;
    printcomplaintsheetidComplaints: TLargeintField;
    PrintVoterDistrictidVoterDistrict: TLargeintField;
    Votersidmembermaster: TLargeintField;
    VotersIdNewApply: TLargeintField;
    ConnectOrderidNewConnection: TLargeintField;
    ConnectOrderidNewApply: TLargeintField;
    masterQ: TMyQuery;
    QRDBText136: TQRDBText;
    DBImage7: TDBImage;
    MyUsersUserPassWord: TStringField;
    MyUsersUserName: TStringField;
    MyUsersUserID: TStringField;
    MyUsersUserPic: TBlobField;
    MyUsersPosition: TStringField;
    MyUsersUserRestriction: TStringField;
    MyUsersIdUsers: TLongWordField;
    MemberBODidmembermaster: TLargeintField;
    MemberBODIdNewApply: TLargeintField;
    MemberBODMunCode: TStringField;
    MemberBODDistrictCode: TStringField;
    MemberBODBrgyCode: TStringField;
    MemberBODMembername: TStringField;
    MemberBODAddress: TStringField;
    MemberBODGender: TStringField;
    MemberBODBirthDate: TDateField;
    MemberBODSpouse: TStringField;
    MemberBODMemberStatus: TStringField;
    MemberBODMemberNumber: TStringField;
    MemberBODIDNo: TStringField;
    MemberBODBODResNumber: TStringField;
    MemberBODDateApproved: TDateField;
    MemberBODMFORNumber: TStringField;
    MemberBODMFORDate: TDateField;
    MemberBODDateTurnOn: TDateField;
    MemberBODTOOrderNo: TStringField;
    MemberBODEDAmount: TFloatField;
    MemberBODEDOrNo: TStringField;
    MemberBODEDDate: TDateField;
    MemberBODMemberPic: TBlobField;
    MemberBODSpousePic: TBlobField;
    DBCheckBox2: TDBCheckBox;
    PopupMenu2: TPopupMenu;
    sched: TMenuItem;
    MyUsersisSched: TBooleanField;
    insertLoguserQ: TMyQuery;
    QRLabel222: TQRLabel;
    QRDBText137: TQRDBText;
    printcomplaintsheetisuedBy: TStringField;
    QRDBText143: TQRDBText;
    QRDBText144: TQRDBText;
    QRDBText145: TQRDBText;
    QRDBText146: TQRDBText;
    Label82: TLabel;
    DBEdit131: TDBEdit;
    QRDBText138: TQRDBText;
    QRDBText147: TQRDBText;
    printcomplaintsheetnotefiedBy: TStringField;
    userentry_box: TAdvOfficeCheckBox;
    CRDBGrid2: TCRDBGrid;
    QRLabel15: TQRLabel;
    QRLabel21: TQRLabel;
    tmpQ: TMyQuery;
    DBEdit132: TDBEdit;
    DBEdit133: TDBEdit;
    Label83: TLabel;
    Label84: TLabel;
    printcomplaintsheetcategorydesc: TStringField;
    printcomplaintsheetcategory: TStringField;
    printcomplaintsheetisPrint: TBooleanField;
    printcomplaintsheettimeAccomplished: TTimeField;
    printcomplaintsheetserial: TStringField;
    printcomplaintsheetpolenumber: TStringField;
    Panel4: TPanel;
    TabSet1: TTabSet;
    lblM: TLabel;
    lblSD: TLabel;
    lblPL: TLabel;
    lblSL: TLabel;
    lblDT: TLabel;
    lblDSP: TLabel;
    lblOE: TLabel;
    lblO: TLabel;
    Label85: TLabel;
    TabMunicipality: TNxTabSheet;
    NxHeaderPanel10: TNxHeaderPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    CRDBGrid3: TCRDBGrid;
    CRDBGrid4: TCRDBGrid;
    CRDBGrid5: TCRDBGrid;
    NxHeaderPanel11: TNxHeaderPanel;
    NxLinkLabel60: TNxLinkLabel;
    NxLinkLabel61: TNxLinkLabel;
    DBEdit134: TDBEdit;
    DBEdit135: TDBEdit;
    DBEdit136: TDBEdit;
    DBEdit137: TDBEdit;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label157: TLabel;
    Panel8: TPanel;
    NxLinkLabel53: TNxLinkLabel;
    NxLinkLabel49: TNxLinkLabel;
    NxLinkLabel59: TNxLinkLabel;
    Label102: TLabel;
    Panel9: TPanel;
    Label99: TLabel;
    NxLinkLabel62: TNxLinkLabel;
    NxLinkLabel63: TNxLinkLabel;
    NxLinkLabel64: TNxLinkLabel;
    Panel10: TPanel;
    Label94: TLabel;
    NxLinkLabel65: TNxLinkLabel;
    NxLinkLabel67: TNxLinkLabel;
    NxHeaderPanel12: TNxHeaderPanel;
    NxHeaderPanel13: TNxHeaderPanel;
    Label158: TLabel;
    Label159: TLabel;
    NxLinkLabel68: TNxLinkLabel;
    NxLinkLabel69: TNxLinkLabel;
    DBEdit138: TDBEdit;
    DBEdit141: TDBEdit;
    DBEdit142: TDBEdit;
    DBEdit140: TDBEdit;
    Label160: TLabel;
    Label173: TLabel;
    SpeedButton1: TSpeedButton;
    Label174: TLabel;
    Label175: TLabel;
    DBEdit143: TDBEdit;
    DBEdit144: TDBEdit;
    DBEdit145: TDBEdit;
    DBEdit146: TDBEdit;
    Label176: TLabel;
    Label177: TLabel;
    SpeedButton2: TSpeedButton;
    NxLinkLabel70: TNxLinkLabel;
    NxLinkLabel71: TNxLinkLabel;
    NxLinkLabel72: TNxLinkLabel;
    Brgyidbarangay: TLongWordField;
    Brgydistrictcode: TStringField;
    Brgydistrict: TStringField;
    Brgymunicipalitycode: TStringField;
    Brgymunicipality: TStringField;
    Brgybarangaycode: TStringField;
    Brgybarangay: TStringField;
    Brgysitiocode: TStringField;
    Brgysitio: TStringField;
    Brgynewbarangay: TStringField;
    DBEdit147: TDBEdit;
    DBEdit148: TDBEdit;
    DBEdit149: TDBEdit;
    Label178: TLabel;
    Label179: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    DBEdit150: TDBEdit;
    QRBand21: TQRBand;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRLabel148: TQRLabel;
    QRLabel149: TQRLabel;
    QRLabel157: TQRLabel;
    QRLabel158: TQRLabel;
    QRLabel159: TQRLabel;
    QRLabel160: TQRLabel;
    QRDBText97: TQRDBText;
    QRDBText98: TQRDBText;
    QRDBText99: TQRDBText;
    QRDBText100: TQRDBText;
    QRSysData9: TQRSysData;
    QRLabel161: TQRLabel;
    QRLabel162: TQRLabel;
    QRLabel163: TQRLabel;
    QRLabel164: TQRLabel;
    QRLabel167: TQRLabel;
    QRLabel168: TQRLabel;
    QRLabel169: TQRLabel;
    QRLabel170: TQRLabel;
    QRLabel171: TQRLabel;
    QRLabel172: TQRLabel;
    QRShape83: TQRShape;
    QRLabel174: TQRLabel;
    QRLabel175: TQRLabel;
    QRDBText101: TQRDBText;
    QRDBText102: TQRDBText;
    QRDBText103: TQRDBText;
    QRDBText104: TQRDBText;
    QRLabel177: TQRLabel;
    QRLabel178: TQRLabel;
    QRLabel179: TQRLabel;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRDBImage13: TQRDBImage;
    QRDBText108: TQRDBText;
    QRLabel202: TQRLabel;
    QRDBText66: TQRDBText;
    QRLabel203: TQRLabel;
    QRDBText117: TQRDBText;
    QRLabel204: TQRLabel;
    QRLabel165: TQRLabel;
    QRLabel166: TQRLabel;
    QRDBText148: TQRDBText;
    QRDBText149: TQRDBText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRDBText151: TQRDBText;
    QRShape8: TQRShape;
    QRShape12: TQRShape;
    QRLabel194: TQRLabel;
    QRDBText152: TQRDBText;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape70: TQRShape;
    QRLabel197: TQRLabel;
    QRShape18: TQRShape;
    QRShape71: TQRShape;
    CRDBGrid6: TCRDBGrid;
    CRDBGrid7: TCRDBGrid;
    CRDBGrid8: TCRDBGrid;
    DBImage5: TDBImage;
    SpeedButton3: TSpeedButton;
    CRDBGrid11: TCRDBGrid1;
    CRDBGrid12: TCRDBGrid1;
    Panel11: TPanel;
    DateTimePicker1: TDateTimePicker;
    EndDate: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    CRDBGrid13: TCRDBGrid1;
    DBText7: TDBText;
    QRDBText153: TQRDBText;
    DeletedMemberPanel: TNxFlipPanel;
    SearchDeletedMemberEdit: TNxEdit;
    Label182: TLabel;
    CRDBGrid14: TCRDBGrid1;
    SearchDeletedMember: TNxLinkLabel;
    RestorDeletedMember: TNxLinkLabel;
    NxLinkLabel66: TNxLinkLabel;
    NxLinkLabel73: TNxLinkLabel;
    DateFrom: TDateTimePicker;
    DateTo: TDateTimePicker;
    Label183: TLabel;
    Label184: TLabel;
    DeleteMemberPanel: TNxHeaderPanel;
    NxLinkLabel74: TNxLinkLabel;
    DeletePasswordTxt: TNxEdit;
    ConfirmDelButton: TNxButton;
    Label185: TLabel;
    Label186: TLabel;
    ComboBox2: TComboBox;
    DBCheckBox3: TDBCheckBox;
    QRLabel205: TQRLabel;
    QRDBText154: TQRDBText;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label187: TLabel;
    Label188: TLabel;
    Label189: TLabel;
    QRDBText155: TQRDBText;
    RadioGroupRecon: TRadioGroup;
    DBEdit151: TDBEdit;
    DBEdit152: TDBEdit;
    Label190: TLabel;
    Label191: TLabel;
    QRDBText150: TQRDBText;
    QRDBText156: TQRDBText;
    PrintReconOrderidmeterTrans: TIntegerField;
    PrintReconOrderrequestedBy: TStringField;
    PrintReconOrderisuedBy: TStringField;
    Panel12: TPanel;
    DBEdit153: TDBEdit;
    DBEdit154: TDBEdit;
    Label192: TLabel;
    Label193: TLabel;
    NxLinkLabel75: TNxLinkLabel;
    FindConsumerPanel2: TNxHeaderPanel;
    Bevel2: TBevel;
    NxLabel4: TNxLabel;
    NxEdit1: TNxEdit;
    NxLinkLabel76: TNxLinkLabel;
    NxLinkLabel77: TNxLinkLabel;
    DBGrid3: TDBGrid;
    NxLinkLabel78: TNxLinkLabel;
    DBEdit155: TDBEdit;
    Label194: TLabel;
    QRDBText157: TQRDBText;
    PrintDiscoOrder: TMyQuery;
    PrintDiscoOrderiddisco: TLongWordField;
    PrintDiscoOrderdiscodate: TDateField;
    PrintDiscoOrdercode: TFloatField;
    PrintDiscoOrderArea: TStringField;
    PrintDiscoOrderBook: TStringField;
    PrintDiscoOrderAccountnumber: TStringField;
    PrintDiscoOrderName: TStringField;
    PrintDiscoOrderAddress: TStringField;
    PrintDiscoOrderdiscofee: TFloatField;
    PrintDiscoOrderremarks: TMemoField;
    PrintDiscoOrderORNumber: TStringField;
    PrintDiscoOrderORDate: TDateField;
    PrintDiscoOrderevat: TFloatField;
    PrintDiscoOrderTechArea: TStringField;
    PrintDiscoOrderDateAccomplished: TDateTimeField;
    PrintDiscoOrderCrew: TStringField;
    PrintDiscoOrderAccomplished: TStringField;
    PrintDiscoOrderBatch: TStringField;
    PrintDiscoOrderserial: TStringField;
    PrintDiscoOrderpolenumber: TStringField;
    PrintDiscoOrderdiscocol: TStringField;
    PrintDiscoOrderrequestedBy: TStringField;
    PrintDiscoOrderisuedBy: TStringField;
    PrintDiscoOrderlocation: TStringField;
    nonpay: TCheckBox;
    DiscoEdit: TNxLinkLabel;
    Complaintsummarypanel: TNxHeaderPanel;
    ComboBoxCategory: TComboBox;
    NxLinkLabel79: TNxLinkLabel;
    DateTimeFrom: TDateTimePicker;
    DateTimeTo: TDateTimePicker;
    Label195: TLabel;
    Label196: TLabel;
    Label197: TLabel;
    NxLinkLabel80: TNxLinkLabel;
    PComplaintsummarypanel: TNxHeaderPanel;
    Label198: TLabel;
    Label199: TLabel;
    Label200: TLabel;
    PComboBoxCategory: TComboBox;
    NxLinkLabel81: TNxLinkLabel;
    PDateTimeFrom: TDateTimePicker;
    PDateTimeTo: TDateTimePicker;
    NxLinkLabel82: TNxLinkLabel;
    QRDBText8: TQRDBText;
    NxHeaderPanel14: TNxHeaderPanel;
    AdvSmoothButton26: TAdvSmoothButton;
    AdvSmoothButton30: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    AdvSmoothButton2: TAdvSmoothButton;
    ComboBox3: TComboBox;
    Label201: TLabel;
    AdvSmoothButton3: TAdvSmoothButton;
    Label202: TLabel;
    Label203: TLabel;
    Label204: TLabel;
    newApplicant_label: TLabel;
    conComplaint_label: TLabel;
    recoDisco_label: TLabel;
    Timer2: TTimer;
    PopupMenu3: TPopupMenu;
    RefreshRecords1: TMenuItem;
    tmpQuery: TMyQuery;
    QRDBText20: TQRDBText;
    QRDBText125: TQRDBText;
    QRExpr1: TQRExpr;
    QRSysData5: TQRSysData;
    QRLabel207: TQRLabel;
    complaintRep: TfrxReport;
    complnDB: TfrxDBDataset;
    company: TfrxDBDataset;
    signatories: TfrxDBDataset;
    Pcomplaint: TfrxDBDataset;
    PcomplaintRep: TfrxReport;
    PendingComplaintsReport2: TMyQuery;
    PendingComplaintsReport2idComplaints: TLargeintField;
    PendingComplaintsReport2DateFiled: TDateTimeField;
    PendingComplaintsReport2AccountNumber: TStringField;
    PendingComplaintsReport2RoverBook: TStringField;
    PendingComplaintsReport2ConsumerName: TStringField;
    PendingComplaintsReport2Address: TStringField;
    PendingComplaintsReport2TelNo: TStringField;
    PendingComplaintsReport2Complaint: TStringField;
    PendingComplaintsReport2ActionTaken: TStringField;
    PendingComplaintsReport2ReceivedBy: TStringField;
    PendingComplaintsReport2TimedEndorsed: TTimeField;
    PendingComplaintsReport2StatusOfComplaint: TStringField;
    PendingComplaintsReport2DateAccomplished: TDateTimeField;
    PendingComplaintsReport2Others: TStringField;
    PendingComplaintsReport2landmark: TStringField;
    PendingComplaintsReport2withcharge: TStringField;
    PendingComplaintsReport2remarks: TMemoField;
    PendingComplaintsReport2TechArea: TStringField;
    PendingComplaintsReport2Crew: TStringField;
    PendingComplaintsReport2Accomplished: TStringField;
    PendingComplaintsReport2Batch: TStringField;
    PendingComplaintsReport2ORNumber: TStringField;
    PendingComplaintsReport2ORDate: TDateField;
    PendingComplaintsReport2notefiedBy: TStringField;
    PendingComplaintsReport2isuedBy: TStringField;
    PendingComplaintsReport2categorydesc: TStringField;
    PendingComplaintsReport2category: TStringField;
    PendingComplaintsReport2isPrint: TBooleanField;
    PendingComplaintsReport2timeAccomplished: TTimeField;
    PendingComplaintsReport2serial: TStringField;
    PendingComplaintsReport2polenumber: TStringField;
    PendingComplaintsReport2complaintF: TStringField;
    complaintsreport2: TMyQuery;
    DateTimeField3: TDateTimeField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    TimeField2: TTimeField;
    StringField18: TStringField;
    DateTimeField4: TDateTimeField;
    LargeintField2: TLargeintField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    MemoField1: TMemoField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    DateField1: TDateField;
    complaintsreport2complaintF: TStringField;
    isoQuery: TMyQuery;
    isoQueryidisofmnumber: TIntegerField;
    isoQueryrevision: TStringField;
    isoQuerydatestarted: TDateField;
    isoQueryreportType: TStringField;
    isoQueryDepartment: TStringField;
    isoQuerydateF: TStringField;
    isoTFRX: TfrxDBDataset;
    QRDBText33: TQRDBText;
    QRDBText126: TQRDBText;
    QRDBText127: TQRDBText;
    QRDBText128: TQRDBText;
    QRDBText158: TQRDBText;
    QRDBText159: TQRDBText;
    QRDBText160: TQRDBText;
    QRDBText161: TQRDBText;
    QRDBText162: TQRDBText;
    QRDBText163: TQRDBText;
    QRDBText164: TQRDBText;
    QRDBText165: TQRDBText;
    isoComplaintsQ: TMyQuery;
    isoComplaintsQidisofmnumber: TIntegerField;
    isoComplaintsQrevision: TStringField;
    isoComplaintsQdatestarted: TDateField;
    isoComplaintsQreportType: TStringField;
    isoComplaintsQDepartment: TStringField;
    isoComplaintsFrx: TfrxDBDataset;
    isoComplaintsQisoNumber122019: TStringField;
    isoQueryisoNumber122019: TStringField;
    isoComplaintsQ2: TMyQuery;
    IntegerField1: TIntegerField;
    StringField27: TStringField;
    DateField2: TDateField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    complintsPfrx: TfrxDBDataset;
    checkUserQ: TMyQuery;
    memberName_tf: TEdit;
    Label205: TLabel;
    updateQ: TMyQuery;
    checkQ: TMyQuery;
    delmemberFilterQ: TMyQuery;
    delmemberFilterQpass: TStringField;
    complaintExp: TQExport4XLS;
    NxLinkLabel13: TNxLinkLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure NxOutlookBar1Select(Sender: TObject);
    procedure EditLinkClick(Sender: TObject);
    procedure CompanyNameEditKeyPress(Sender: TObject; var Key: Char);
    procedure SaveLinkClick(Sender: TObject);
    procedure CancelLinkClick(Sender: TObject);
    procedure LoadLogoClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure SearchUserButtonClick(Sender: TObject);
    procedure SearchUserEnter(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure CancelUserClick(Sender: TObject);
    procedure SaveUserClick(Sender: TObject);
    procedure DeleteLinkClick(Sender: TObject);
    procedure AddLinkClick(Sender: TObject);
    procedure FindConsumerClick(Sender: TObject);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel5Click3(Sender: TObject);
    procedure NxLinkLabel16Click(Sender: TObject);
    procedure NxLinkLabel17Click(Sender: TObject);
    procedure NxLinkLabel18Click(Sender: TObject);
    procedure NxLinkLabel20Click(Sender: TObject);
    procedure NxLinkLabel19Click(Sender: TObject);
    procedure NxLinkLabel22Click(Sender: TObject);
    procedure NxLinkLabel25Click(Sender: TObject);
    procedure NxLinkLabel26Click(Sender: TObject);
    procedure NxLinkLabel30Click(Sender: TObject);
    procedure NxLinkLabel35Click(Sender: TObject);
    procedure FindConsumerCDPClick(Sender: TObject);
    procedure SelectConsumerCDPClick(Sender: TObject);
    procedure NxLinkLabel31Click(Sender: TObject);
    procedure MeterInstallCalendarDblClick(Sender: TObject);
    procedure DBEdit26KeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel28Click(Sender: TObject);
    procedure NxLinkLabel29Click(Sender: TObject);
    procedure DBEdit39KeyPress(Sender: TObject; var Key: Char);
    procedure SearchCDPEditKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure EditUserNameKeyPress(Sender: TObject; var Key: Char);
    procedure AddNewConnectionClick(Sender: TObject);
    procedure DBEdit49KeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel37Click(Sender: TObject);
    procedure NxLinkLabel38Click(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure ComplaintAddClick(Sender: TObject);
    procedure ComplaintEditClick(Sender: TObject);
    procedure NxLinkLabel6Click(Sender: TObject);
    procedure SearchComplaintButtonClick(Sender: TObject);
    procedure NxLinkLabel7Click(Sender: TObject);
    procedure NxLinkLabel11Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure NxButton1Click(Sender: TObject);
    procedure NxLinkLabel10Click(Sender: TObject);
    procedure NxLinkLabel9Click(Sender: TObject);
    procedure NxLinkLabel3Click(Sender: TObject);
    procedure SearchRCDConsumerKeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel4Click(Sender: TObject);
    procedure NewApplicantAddClick(Sender: TObject);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure NewApplicantEditClick(Sender: TObject);
    procedure NewApplicantDeleteClick(Sender: TObject);
    procedure SaveNewApplicantClick(Sender: TObject);
    procedure CancelNewApplicantClick(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure NxLinkLabel24Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure NxButton6Click(Sender: TObject);
    procedure NxLinkLabel5Click(Sender: TObject);
    procedure NxLinkLabel27Click(Sender: TObject);
    procedure NxButton7Click(Sender: TObject);
    procedure NxLinkLabel8Click(Sender: TObject);
    procedure NxLinkLabel12Click(Sender: TObject);
    procedure NxButton9Click(Sender: TObject);
    procedure NxButton8Click(Sender: TObject);
    procedure BoardResolutionNumberKeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel36Click(Sender: TObject);
    procedure VoterDistrictCloseClick(Sender: TObject);
    procedure VoterDistrictAddClick(Sender: TObject);
    procedure DBEdit65KeyPress(Sender: TObject; var Key: Char);
    procedure VoterDistrictEditClick(Sender: TObject);
    procedure VoterDistrictDeleteClick(Sender: TObject);
    procedure VoterDistrictSaveClick(Sender: TObject);
    procedure VoterDistrictCancelClick(Sender: TObject);
    procedure NxButton10Click(Sender: TObject);
    procedure NxLinkLabel41Click(Sender: TObject);
    procedure NxLinkLabel39Click(Sender: TObject);
    procedure filtercomplaints_linkClick(Sender: TObject);
    procedure NxLinkLabel14Click(Sender: TObject);
    procedure NxButton11Click(Sender: TObject);
    procedure NxLinkLabel42Click(Sender: TObject);
    procedure NxLinkLabel43Click(Sender: TObject);
    procedure NxLinkLabel44Click(Sender: TObject);
    procedure MMAddClick(Sender: TObject);
    procedure ComputeChargesClick(Sender: TObject);
    procedure DBEdit62KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit70KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit71KeyPress(Sender: TObject; var Key: Char);
    procedure MMSaveClick(Sender: TObject);
    procedure MMCancelClick(Sender: TObject);
    procedure MMSummaryClick(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton12Click(Sender: TObject);
    procedure NxLinkLabel45Click(Sender: TObject);
    procedure MMSearchButtonClick(Sender: TObject);
    procedure ReconSearchButtonClick(Sender: TObject);
    procedure ReconVPeriodCoveredClick(Sender: TObject);
    procedure ReconAddClick(Sender: TObject);
    procedure DBEdit88KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit94KeyPress(Sender: TObject; var Key: Char);
    procedure ReconSaveClick(Sender: TObject);
    procedure ReconCancelClick(Sender: TObject);
    procedure ReconDeleteClick(Sender: TObject);
    procedure NxLinkLabel48Click(Sender: TObject);
    procedure ReconWattageKeyPress(Sender: TObject; var Key: Char);
    procedure ReconLoadAddClick(Sender: TObject);
    procedure ReconLoadDeleteClick(Sender: TObject);
    procedure ReconLoadCloseClick(Sender: TObject);
    procedure NxLinkLabel46Click(Sender: TObject);
    procedure NxLinkLabel47Click(Sender: TObject);
    procedure PrintReconOrderCalcFields(DataSet: TDataSet);
    procedure ReconSummaryClick(Sender: TObject);
    procedure NxButton13Click(Sender: TObject);
    procedure NxLinkLabel23Click(Sender: TObject);
    procedure NxLinkLabel21Click(Sender: TObject);
    procedure SearchMemberClick(Sender: TObject);
    procedure NxButton14Click(Sender: TObject);
    procedure NxLinkLabel32Click(Sender: TObject);
    procedure NxLinkLabel33Click(Sender: TObject);
    procedure PrintMemberConsumerID1Click(Sender: TObject);
    procedure DiscoSearchButtonClick(Sender: TObject);
    procedure DiscoAddClick(Sender: TObject);
    procedure DiscoDeleteClick(Sender: TObject);
    procedure DiscoPeriodCoveredClick(Sender: TObject);
    procedure NxLinkLabel56Click(Sender: TObject);
    procedure NxLinkLabel57Click(Sender: TObject);
    procedure addmunicipalityClick(Sender: TObject);
    procedure NxLinkLabel51Click(Sender: TObject);
    procedure DBEdit115KeyPress(Sender: TObject; var Key: Char);
    procedure NCSearchBtnClick(Sender: TObject);
    procedure ConnectOrderCalcFields(DataSet: TDataSet);
    procedure DBEdit121Exit(Sender: TObject);
    procedure DBComboBox4Change(Sender: TObject);
    procedure NxLinkLabel34Click(Sender: TObject);
    procedure NxLinkLabel55Click(Sender: TObject);
    procedure ReconVDateFromChange(Sender: TObject);
    procedure NxLinkLabel58Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel40Click(Sender: TObject);
    procedure schedClick(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure NxOutlookBar3Click(Sender: TObject);
    procedure userentry_boxClick(Sender: TObject);
    procedure CRDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBEdit132KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit133KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit131KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure TabSet1Click(Sender: TObject);
    procedure countcomplaintsrecords();
    procedure NxLinkLabel53Click(Sender: TObject);
    procedure NxLinkLabel60Click(Sender: TObject);
    procedure NxLinkLabel61Click(Sender: TObject);
    procedure NxLinkLabel49Click(Sender: TObject);
    procedure NxLinkLabel59Click(Sender: TObject);
    procedure NxLinkLabel64Click(Sender: TObject);
    procedure NxLinkLabel69Click(Sender: TObject);
    procedure NxLinkLabel68Click(Sender: TObject);
    procedure NxLinkLabel63Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CRDBGrid3CellClick(Column: TColumn);
    procedure CRDBGrid4CellClick(Column: TColumn);
    procedure NxLinkLabel67Click(Sender: TObject);
    procedure NxLinkLabel62Click(Sender: TObject);
    procedure NxLinkLabel65Click(Sender: TObject);
    procedure NxLinkLabel70Click(Sender: TObject);
    procedure NxLinkLabel71Click(Sender: TObject);
    procedure NxLinkLabel72Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBImage5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBImage2Click(Sender: TObject);
    procedure DBImage3Click(Sender: TObject);
    procedure DBRadioGroup2Click(Sender: TObject);
    procedure SearchDeletedClick(Sender: TObject);
    procedure SearchDeletedMemberClick(Sender: TObject);
    procedure NxLinkLabel73Click(Sender: TObject);
    procedure NxLinkLabel66Click(Sender: TObject);
    procedure ConfirmDelButtonClick(Sender: TObject);
    procedure NxLinkLabel74Click(Sender: TObject);
    procedure RestorDeletedMemberClick(Sender: TObject);
    procedure ComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit68KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit69KeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroupReconClick(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel75Click(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DiscoEditClick(Sender: TObject);
    procedure NxLinkLabel79Click(Sender: TObject);
    procedure NxLinkLabel81Click(Sender: TObject);
    procedure NxLinkLabel80Click(Sender: TObject);
    procedure ComboBoxCategoryKeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel82Click(Sender: TObject);
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure AdvSmoothButton26Click(Sender: TObject);
    procedure AdvSmoothButton30Click(Sender: TObject);
    procedure NxOutlookBar1Click(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure NxOutlookBar1DblClick(Sender: TObject);
    procedure AdvSmoothButton3Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure RefreshRecords1Click(Sender: TObject);
    procedure complaintCategory();
    procedure SearchUserClick(Sender: TObject);
    procedure NxLinkLabel13Click(Sender: TObject);
    procedure complaintExportOrPreview();
  private
    { Private declarations }
  public
   Complaintcategorystr : String;
   LogoFileName : String;
   addUser : Boolean;
  end;

var
  FPISDMainMenuForm: TFPISDMainMenuForm;
  UpdateSelect : Integer;
  complaintisExport : Boolean ;
  isReconadd : Boolean;

implementation

uses Data, FPISDIntro,  ModTools, SeniorCitizen, computecharges,
  shedUserFrm, CameraForm, callerISDForm, queHistoryForm, proceedCashierFrm;

{$R *.dfm}

procedure TFPISDMainMenuForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   FPISDMainMenuForm := Nil;
   IntroForm.Close;
end;

procedure TFPISDMainMenuForm.TabSet1Click(Sender: TObject);
begin
  With ISDData do
   begin
    complaints.Close;
    complaints.ParamByName('consumername').Text := '%'+SearchComplaint.Text+'%';
    complaints.ParamByName('datefrom').AsDate   := complaintdatefrom.Date;
    complaints.ParamByName('Dateto').AsDate     := complaintdateto.Date;
      case tabset1.tabindex of
        0:  begin
              complaints.ParamByName('category').text     := 'METERING';
              Complaintcategorystr := 'METERING';
              ComplaintUserPanel.Caption := 'METERING';
              DBComboBox2.items.Clear;
              DBComboBox2.Items.BeginUpdate;
              DBComboBox2.Items.Add('MTR CHANGE') ;
              DBComboBox2.Items.Add('MTR DISLOCATED') ;
              DBComboBox2.Items.Add('MTR ERRATIC REGISTRATION') ;
              DBComboBox2.Items.Add('MTR GLASS BROKEN') ;
              DBComboBox2.Items.Add('MTR LOOSE CONNECTION') ;
              DBComboBox2.Items.Add('MTR TEST') ;
              DBComboBox2.Items.Add('MTR NOT RUNNING') ;
              DBComboBox2.Items.Add('MTR REMOVAL') ;
              DBComboBox2.Items.Add('MTR RUNNING TO FAST') ;
              DBComboBox2.Items.Add('MTR RUNNING TO SLOW') ;
              DBComboBox2.Items.Add('MTR RUNNING WITHOUT LOAD') ;
              DBComboBox2.Items.Add('MTR STUCK UP METER') ;
              DBComboBox2.Items.Add('MTR TRANSFER') ;
              DBComboBox2.Items.Add('MTR BURNED') ;
              DBComboBox2.Items.EndUpdate;
            end;
        1:  begin
              complaints.ParamByName('category').text     := 'SERVICE DROP';
              Complaintcategorystr := 'SERVICE DROP';
              ComplaintUserPanel.Caption := 'SERVICE DROP';
              DBComboBox2.items.Clear;
              DBComboBox2.Items.BeginUpdate;
              DBComboBox2.Items.Add('SDW CHANGE/UPGRADE') ;
              DBComboBox2.Items.Add('SDW CUT/BROKEN') ;
              DBComboBox2.Items.Add('SDW LOOSE CONNECTION') ;
              DBComboBox2.Items.Add('SDW NO CURRENT') ;
              DBComboBox2.Items.Add('SDW RE-ROUTE') ;
              DBComboBox2.Items.Add('SDW RECONNECTION / RETAPPING');
              DBComboBox2.Items.Add('SDW SAGGING') ;
              DBComboBox2.Items.Add('SDW TRANSFER') ;
              DBComboBox2.Items.Add('SDW DISCO / RECO') ;
              //DBComboBox2.Items.Add('DISCONNECTION') ;
              //DBComboBox2.Items.Add('RECONNECTION WITH METER') ;
              DBComboBox2.Items.EndUpdate;
            end;
        2:  begin
              complaints.ParamByName('category').text     := 'PRIMARY / SECONDARY LINE';
              Complaintcategorystr := 'PRIMARY / SECONDARY LINE' ;
              ComplaintUserPanel.Caption := 'PRIMARY / SECONDARY LINE' ;
              DBComboBox2.items.Clear;
              DBComboBox2.Items.BeginUpdate;
              DBComboBox2.Items.Add('PSL LOOSE CONNECTION') ;
              DBComboBox2.Items.Add('PSL LOOSE CONNECTION (SEVERAL)') ;
              DBComboBox2.Items.Add('PSL SAGGING') ;
              DBComboBox2.Items.Add('PSL CUT/BROKEN') ;
              DBComboBox2.Items.Add('PSL CORRODED') ;
              DBComboBox2.Items.Add('PSL CHANGE/UPGRADE') ;
              DBComboBox2.Items.Add('PSL CLEARING OF VEGETATION') ;
              DBComboBox2.Items.Add('PSL NO CURRENT') ;
              DBComboBox2.Items.EndUpdate;
            end;
        {3:  begin
              complaints.ParamByName('category').text     := 'SECONDARY LINE';
              ComplaintUserPanel.Caption := 'SECONDARY LINE';
              DBComboBox2.items.Clear;
              DBComboBox2.Items.BeginUpdate;
              DBComboBox2.Items.Add('SAGGING') ;
              DBComboBox2.Items.Add('CUT/BROKEN') ;
              DBComboBox2.Items.Add('CORRODED') ;
              DBComboBox2.Items.Add('CHANGE/UPGRADE') ;
              DBComboBox2.Items.EndUpdate;
            end;



             }
        3:  begin
              complaints.ParamByName('category').text     := 'DISTRIBUTION TRANSFORMER';
              Complaintcategorystr := 'DISTRIBUTION TRANSFORMER';
              ComplaintUserPanel.Caption := 'DISTRIBUTION TRANSFORMER';
              DBComboBox2.items.Clear;
              DBComboBox2.Items.BeginUpdate;
              DBComboBox2.Items.Add('DT BANKING') ;
              DBComboBox2.Items.Add('DT REMOVAL') ;
              DBComboBox2.Items.Add('DT BUSTED/DAMAGE') ;
              DBComboBox2.Items.Add('DT TRANSFER') ;
              DBComboBox2.Items.Add('DT REPLACE') ;
              DBComboBox2.Items.Add('DT LOOSE CONNECTION') ;
              DBComboBox2.Items.Add('DT NO/BROKEN EQUIPMENT GROUNDING') ;
              DBComboBox2.Items.Add('DT (OWNERS) TRANSFORMER TESTING') ;
              DBComboBox2.Items.Add('DT (OWNERS)  TRANSFORMER INSTALLATION') ;
              DBComboBox2.Items.Add('DT (OWNERS)  TRANSFORMER REMOVAL') ;
              DBComboBox2.Items.EndUpdate;
            end;
        4:  begin
              complaints.ParamByName('category').text     := 'DISTRIBUTION / SERVICE POLE';
              Complaintcategorystr := 'DISTRIBUTION / SERVICE POLE';
              ComplaintUserPanel.Caption := 'DISTRIBUTION / SERVICE POLE';
              DBComboBox2.items.Clear;
              DBComboBox2.Items.BeginUpdate;
              DBComboBox2.Items.Add('DSP LEANING POLE') ;
              DBComboBox2.Items.Add('DSP ROTTEN POLE') ;
              DBComboBox2.Items.Add('DSP BROKEN POLE') ;
              DBComboBox2.Items.Add('DSP TRANSFER OF POLE') ;
              DBComboBox2.Items.Add('DSP RE-ROUTING OF POLE') ;
              DBComboBox2.Items.Add('DSP UPGRADING OF POLE') ;
              DBComboBox2.Items.Add('DSP INSTALLATION OF ADDITIONAL POLE') ;
              DBComboBox2.Items.Add('DSP BROKEN / CORRODED POLE ACCESSORIES') ;
              DBComboBox2.Items.Add('DSP NO / BROKEN EQUIPMENT GROUNDING') ;
              DBComboBox2.Items.EndUpdate;
            end;
        5:  begin
              complaints.ParamByName('category').text     := 'OTHER EQUIPMENT';
              Complaintcategorystr := 'OTHER EQUIPMENT';
              ComplaintUserPanel.Caption := 'OTHER EQUIPMENT';
              DBComboBox2.items.Clear;
              DBComboBox2.Items.BeginUpdate;
              DBComboBox2.Items.Add('BROKEN INSULATOR') ;
              DBComboBox2.Items.Add('DAMAGE FUSE TUBE') ;
              DBComboBox2.Items.Add('DAMAGE CUT-OUT ASSEMBLY') ;
              DBComboBox2.Items.Add('DAMAGE CAPACITOR BANK') ;
              DBComboBox2.Items.Add('DAMAGE 15-KV DISCONNECT SWITCH') ;
              DBComboBox2.Items.Add('DAMAGE SECTIONALIZER') ;
              DBComboBox2.Items.Add('DAMAGE RECLOSER / BREAKER') ;
              DBComboBox2.Items.Add('DAMAGE INSTRUMENT TRANSFORMERS') ;
              DBComboBox2.Items.Add('DAMAGE LIGHTNING ARRESTER') ;
              DBComboBox2.Items.Add('INSTALLATION OF RECLOSER / BREAKER') ;
              DBComboBox2.Items.EndUpdate;
            end;
        6:  begin
              complaints.ParamByName('category').text     := 'OTHERS';
              Complaintcategorystr := 'OTHERS';
              ComplaintUserPanel.Caption := 'OTHERS';
              DBComboBox2.items.Clear;
              DBComboBox2.Items.BeginUpdate;
              DBComboBox2.Items.Add('EXTENSION OF PRIMARY / SECONDARY LINE') ;
              DBComboBox2.Items.Add('CHANGE NAME') ;
              DBComboBox2.Items.Add('CERTIFICATION') ;
              DBComboBox2.Items.Add('NEW CONNECTION REQUEST') ;
              DBComboBox2.Items.Add('OTHERS') ;
              DBComboBox2.Items.EndUpdate;
            end;
      end;
    complaints.Open;
   end;

   complaintCategory();
end;

procedure TFPISDMainMenuForm.Timer1Timer(Sender: TObject);
begin
  DateStr.Caption := DateToStr(Now)+' '+TimeToStr(Now);
end;

procedure TFPISDMainMenuForm.Timer2Timer(Sender: TObject);
begin
  if not assigned(caller_Frm) then
  caller_Frm := Tcaller_frm.Create(Application);
  with caller_frm do
  begin
    queCntrQ.Close;
    queCntrQ.ParamByName('user').Text := ISDData.userQueQentryUser.Text;
    queCntrQ.Open;

    newApplicant_label.Caption  := queCntrQnewappC.Text;
    conComplaint_label.Caption  := queCntrQccomplaintC.Text;
    recoDisco_label.Caption     := queCntrQrecodescoC.Text;
  end;
end;

procedure TFPISDMainMenuForm.FormShow(Sender: TObject);
begin
DateTimePicker1.Date    := now;
case IntroForm.combobox1.ItemIndex of
    1 : begin
           try
            MyConnection1.Connected := false;
            MyConnection1.server := 'server';
            MyConnection1.Connected := true;

            MyConnection2.Connected := false;
            MyConnection2.server := 'server';
            MyConnection2.Connected := true;
           except
            MessageDlg('DIPOLOG MAIN OFFICE OFFLINE..', mtWarning, [mbOK], 0);
            end;
        end;
    2 : begin
          try
            MyConnection1.Connected := false;
            MyConnection1.server := 'serverpao';
            MyConnection1.Connected := true;

            MyConnection2.Connected := false;
            MyConnection2.server := 'serverpao';
            MyConnection2.Connected := true;
          except
            MessageDlg('PINAN AREA OFFICE OFFLINE..', mtWarning, [mbOK], 0);
          end;
        end;
    3 : begin
          try
            MyConnection1.Connected := false;
            MyConnection1.server := 'serversao';
            MyConnection1.Connected := true;

            MyConnection2.Connected := false;
            MyConnection2.server := 'serversao';
            MyConnection2.Connected := true;
          except
            MessageDlg('SINDANGAN AREA OFFICE OFFLINE..', mtWarning, [mbOK], 0);
          end;
        end;
    4 : begin
          try
            MyConnection1.Connected := false;
            MyConnection1.server := 'serverlao';
            MyConnection1.Connected := true;

            MyConnection2.Connected := false;
            MyConnection2.server := 'serverlao';
            MyConnection2.Connected := true;
          except
            MessageDlg('LILOY AREA OFFICE OFFLINE..', mtWarning, [mbOK], 0);
          end;
        end;
    end;

//======================
//======================

  Try
    ModifyTransaction.Execute;
  except
  end;

  With IsdData do
    begin
      Company.Open;
      If not Company.IsEmpty then
          ACRONYM.Caption := Companycompanyacro.Text
        else
          ACRONYM.Caption := 'Edit Company';
    end;

  MyNoteBook.ActivePage := TabHome;

  MyNoteBook.ActivePage := TabHome;
  FPISDMainMenuForm.Height := Screen.Height;
  FPISDMainMenuForm.Width  := Screen.Width;
  FPISDMainMenuForm.Left   := 0;
  FPISDMainMenuForm.Top    := 0;
  Timer2.Enabled := true;
end;

procedure TFPISDMainMenuForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TFPISDMainMenuForm.NxOutlookBar1Click(Sender: TObject);
begin
  {NxHeaderPanel14.Visible := false;
  MyNoteBook.Enabled      := true;

  if NxOutlookBar1.ItemIndex = 11 then
  begin
     MyNoteBook.Enabled   := false;
     NxHeaderPanel14.Top  := 178;
     NxHeaderPanel14.Left := 412;
     NxHeaderPanel14.BringToFront;
     NxHeaderPanel14.Visible := true;
  end;  }
end;

procedure TFPISDMainMenuForm.NxOutlookBar1DblClick(Sender: TObject);
begin
  if NxOutlookBar1.ItemIndex = 11 then
  begin
     MyNoteBook.Enabled   := false;
     NxHeaderPanel14.Top  := 178;
     NxHeaderPanel14.Left := 412;
     NxHeaderPanel14.BringToFront;
     NxHeaderPanel14.Visible := true;
  end;

     //==================================
     //==================================
     With ISDData do
      begin
        if (queServerQ.Server = 'server') then
        begin
          ComboBox3.ItemIndex     := 0;
          NxHeaderPanel14.Caption := 'Consumer Priority Number (Dipolog Main Office)';

        end else if  (queServerQ.Server = 'serverpao') then
        begin
          ComboBox3.ItemIndex     := 1;
          NxHeaderPanel14.Caption := 'Consumer Priority Number (Pi�an Area)';

        end else if  (queServerQ.Server = 'serversao') then
        begin
          ComboBox3.ItemIndex     := 2;
          NxHeaderPanel14.Caption := 'Consumer Priority Number (Sindangan Area)';

        end else if  (queServerQ.Server = 'serverlao') then
        begin
          ComboBox3.ItemIndex     := 3;
          NxHeaderPanel14.Caption := 'Consumer Priority Number (Liloy Area)';
        end;
      end;
      //==================================
      //==================================
end;

procedure TFPISDMainMenuForm.NxOutlookBar1Select(Sender: TObject);
begin
  Case NxOutlookBar1.Selected.Index of
   0 : MyNoteBook.ActivePage := TabHome;
   1 : begin
         With ISDData do
         begin
           If UsersUserRestriction.Text <> 'ADMINISTRATOR' then
            begin
              MessageDlg('Invalid Restriction', mtError, [mbOK], 0);
              exit;
            end;

           Company.Open;

           If not Company.IsEmpty then
             begin
               DBEdit108.ReadOnly := True;
               DBEdit109.ReadOnly := True;
               DBEdit110.ReadOnly := True;
             end
             else
             begin
               Company.AppendRecord([]);
               DBEdit108.ReadOnly := True;
               DBEdit109.ReadOnly := True;
               DBEdit110.ReadOnly := True;
             end;
            Signatories.Open;
            try
            createsign.Execute;
            except
            end;

           MyNoteBook.ActivePage := TabCompany;
         end;
       end;

   2 : begin
         If ISDData.UsersUserRestriction.Text <> 'ADMINISTRATOR' then
          begin
            MessageDlg('Invalid Restriction', mtError, [mbOK], 0);
            exit;
          end;
         MyUsers.Close;
         MyUsers.ParamByName('username').Text := '%';
         MyUsers.Open;
         MyNoteBook.ActivePage         := TabUsers;
         UserListPanel.Expanded        := True;
         UserMaintenancePanel.Visible  := False;
         UserMaintenancePanel.Expanded := False;
       end;

   3 : begin
        { With ISDData do
           begin
             complaints.Close;
             complaints.ParamByName('consumername').Text := '%';
             complaints.ParamByName('category').text     := 'METERING';
             Complaintcategorystr := 'METERING';
             complaints.ParamByName('datefrom').AsDate   := StartOfTheMonth(Now);
             complaints.ParamByName('dateto').AsDate     := EndOfTheMonth(Now);
             complaints.Open;
           end;  }
        complaintdatefrom.Date  := StartOfTheMonth(Now);
        complaintdateto.Date    := EndOfTheMonth(Now);


        ISDData.NewApplicants.Close;
        ISDData.NewApplicants.FilterSQL := '';
        ISDData.NewApplicants.Open;

        ISDData.NewApplicants.Last;
         
         MyNoteBook.ActivePage         := TabComplaints;
         SearchComplaint.SetFocus;

         //countcomplaintsrecords;
         filtercomplaints_link.Caption := 'View Pending Complaints - Off';
         filtercomplaints_linkClick(self);
       end;

   4 : begin
         With ISDData do
           begin
           If UsersUserRestriction.Text = 'COMD' then
            begin
              MessageDlg('Invalid Restriction', mtError, [mbOK], 0);
              exit;
            end;

             NewApplicants.Close;
             NewApplicantCharge.Close;
             LoadSurvey.Close;
             AccountCode.Close;

             NewApplicants.Open;
             NewApplicantCharge.Open;
             LoadSurvey.Open;
             AccountCode.Open;
             Edit1.Text := '';
             Edit2.Text := '';
             Edit3.Text := '';
           end;
         MyNoteBook.ActivePage         := TabNewApplicant;
       end;

   5 : begin
        with ISDData do
         begin
           If UsersUserRestriction.Text = 'COMD' then
            begin
              MessageDlg('Invalid Restriction', mtError, [mbOK], 0);
              exit;
            end;
           MemberMaster.Close;
           MemberDetail.Close;

           MemberMaster.ParamByName('membername').Text := '%';

           MemberMaster.Open;
           MemberDetail.Open;
         end;
         MembershipMainPanel.Expanded  := True;
         MembershipMainPanel.Visible   := True;
         MembershipMasterPanel.Visible := False;
         ConsumerDetailPanel.Visible   := False;
         MyNoteBook.ActivePage         := TabMembership;
       end;

   6 : begin
         ISDData.NewConnection.Close;
         ISDData.NewConnection.ParamByName('Name').Text := '%';
         ISDData.NewConnection.Open;
         MyNoteBook.ActivePage         := TabNewConnection;
       end;

   7 : begin
         With ISDData do
           begin
             Recon.Close;
             ReconSurvey.Close;

             Recon.ParamByName('datefrom').AsDatetime := StartOfTheMonth(now);
             Recon.ParamByName('dateto').AsDatetime   := EndOfTheMonth(now);
             Recon.ParamByName('name').Text       := '%';
             Recon.Open;

             ReconSurvey.Open;
           end;
        ReconVDateFrom.Date       := StartOfTheMonth(now);
        ReconVDateTo.Date         := EndOfTheMonth(now);
        MyNoteBook.ActivePage     := TabReconnection;
       end;

   8 : begin
         With ISDData do
           begin

             try
             AP.Execute;
             except
             end;

             Disco.Close;

             Disco.ParamByName('datefrom').AsDatetime := StartOfTheMonth(now);
             Disco.ParamByName('dateto').AsDatetime   := EndOfTheMonth(now);
             Disco.ParamByName('name').Text       := '%';
             Disco.Open;

           end;
         DiscoDateFrom.Date := StartOfTheMonth(now);
         DiscoDateTo.Date   := EndOfTheMonth(now);
         MyNoteBook.ActivePage    := TabDisconnection;
       end;

   9 : begin
         If ISDData.UsersUserRestriction.Text = 'COMD' then
          begin
            MessageDlg('Invalid Restriction', mtError, [mbOK], 0);
            exit;
          end;
          
        If not Assigned(SCForm) then
        SCForm := TSCForm.Create(Application);

        SCForm.Show;

       end;

   10: begin
          MyNoteBook.ActivePage    := TabMunicipality;
          isddata.VoterDistrct.Close;
          isddata.VoterDistrct.Execute;
       end;
   11:begin
     MyNoteBook.Enabled := false;
     NxHeaderPanel14.Top := 178;
     NxHeaderPanel14.Left := 412;
     NxHeaderPanel14.BringToFront;
     NxHeaderPanel14.Visible := true;

     //==================================
     //==================================
     With ISDData do
      begin
        if (queServerQ.Server = 'server') then
        begin
          ComboBox3.ItemIndex     := 0;
          NxHeaderPanel14.Caption := 'Consumer Priority Number (Dipolog Main Office)';

        end else if  (queServerQ.Server = 'serverpao') then
        begin
          ComboBox3.ItemIndex     := 1;
          NxHeaderPanel14.Caption := 'Consumer Priority Number (Pi�an Area)';

        end else if  (queServerQ.Server = 'serversao') then
        begin
          ComboBox3.ItemIndex     := 2;
          NxHeaderPanel14.Caption := 'Consumer Priority Number (Sindangan Area)';

        end else if  (queServerQ.Server = 'serverlao') then
        begin
          ComboBox3.ItemIndex     := 3;
          NxHeaderPanel14.Caption := 'Consumer Priority Number (Liloy Area)';
        end;
      end;
      //==================================
      //==================================
   end;
   12 : Close;
  end;
end;


procedure TFPISDMainMenuForm.NxOutlookBar3Click(Sender: TObject);
begin
  Close;
end;

procedure TFPISDMainMenuForm.EditLinkClick(Sender: TObject);
begin
   DBEdit108.ReadOnly               := False;
   DBEdit109.ReadOnly               := False;
   DBEdit110.ReadOnly               := False;

   dbedit130.ReadOnly               := false;
   dbedit126.ReadOnly               := false;
   dbedit139.ReadOnly               := false;
   dbedit127.ReadOnly               := false;

   DBEdit108.SetFocus;
   EditLink.Visible                 := False;
   SaveLink.Visible                 := True;
   CancelLink.Visible               := True;
   LoadLogo.Visible                 := True;
   
   isddata.Signatories.edit;
   ISDData.Company.Edit;
end;

procedure TFPISDMainMenuForm.ComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
 Key := #0;
end;

procedure TFPISDMainMenuForm.ComboBoxCategoryKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #13 then
    begin
      Key := #0;
      Perform(CM_DIALOGKEY,VK_TAB,0);
    end
   else
    begin
      Key := #0;
    end;
end;

procedure TFPISDMainMenuForm.CompanyNameEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Key := #0;
      Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TFPISDMainMenuForm.SaveLinkClick(Sender: TObject);
begin
  With ISDData do
    begin

      Company.Post;
      Signatories.post;
      dbedit130.ReadOnly               := true;
      dbedit126.ReadOnly               := true;
      dbedit139.ReadOnly               := true;
      dbedit127.ReadOnly               := true;
      DBEdit108.ReadOnly   := True;
      DBEdit109.ReadOnly   := True;
      DBEdit110.ReadOnly   := True;
      EditLink.Visible   := True;
      SaveLink.Visible   := False;
      CancelLink.Visible := False;
      LoadLogo.Visible   := False;
    end;
end;

procedure TFPISDMainMenuForm.CancelLinkClick(Sender: TObject);
begin
  ISDData.Company.Cancel;
  isddata.Signatories.cancel;
  dbedit130.ReadOnly               := true;
  dbedit126.ReadOnly               := true;
  dbedit139.ReadOnly               := true;
  dbedit127.ReadOnly               := true;
  DBEdit108.ReadOnly   := True;
  DBEdit109.ReadOnly   := True;
  DBEdit110.ReadOnly   := True;
  EditLink.Visible   := True;
  SaveLink.Visible   := False;
  CancelLink.Visible := False;
  LoadLogo.Visible   := False;
end;

procedure TFPISDMainMenuForm.LoadLogoClick(Sender: TObject);
begin
   If OpenPictureDialog1.Execute then ISDData.Companylogo.LoadFromFile(OpenPictureDialog1.FileName);
end;

// company ends here

procedure TFPISDMainMenuForm.EditButtonClick(Sender: TObject);
begin
  addUser                         := False;
  userlistpanel.Expanded          := False;
  UserMaintenancePanel.Expanded   := True;
  UserMaintenancePanel.Visible    := True;

  ComboBox1.ItemIndex := -1;
  if MyUsersUserRestriction.Text = 'ADMINISTRATOR' then
  ComboBox1.ItemIndex := 0
  else if MyUsersUserRestriction.Text = 'USER' then
  ComboBox1.ItemIndex := 1
  else if MyUsersUserRestriction.Text = 'GUEST' then
  ComboBox1.ItemIndex := 2
  else if MyUsersUserRestriction.Text = 'COMD' then
  ComboBox1.ItemIndex := 3
  else if MyUsersUserRestriction.Text = 'INSPECTOR' then
  ComboBox1.ItemIndex := 4
  else if MyUsersUserRestriction.Text = 'MOBILE ISD' then
  ComboBox1.ItemIndex := 5;
  MyUsers.Edit;
  DBEdit111.SetFocus;
end;

Procedure TFPISDMainMenuForm.SearchUserButtonClick(Sender: TObject);
begin
  MyUsers.Close;
  MyUsers.ParamByName('username').Text := '%'+SearchUser.Text+'%';
  MyUsers.Open;

  If MyUsers.IsEmpty then
    begin
      MessageDlg('No users found....', mtInformation, [mbOK], 0);
      MyUsers.Close;
      MyUsers.ParamByName('username').Text := '%';
      MyUsers.Open;
      exit;
    end;
end;

procedure TFPISDMainMenuForm.SearchUserClick(Sender: TObject);
begin
  SearchUser.SelectAll;
end;

procedure TFPISDMainMenuForm.SearchUserEnter(Sender: TObject);
begin
  SearchUser.Text := '';
end;

procedure TFPISDMainMenuForm.NxLinkLabel1Click(Sender: TObject);
begin
  If OpenPictureDialog1.Execute then
     MyUsersUserPic.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TFPISDMainMenuForm.CancelUserClick(Sender: TObject);
begin
  MyUsers.Cancel;
  UserMaintenancePanel.Expanded := False;
  UserMaintenancePanel.Visible  := False;
  UserListPanel.Expanded        := True;
end;

procedure TFPISDMainMenuForm.SaveUserClick(Sender: TObject);
var
  restrictionStr : String;
  username : String;
  pass : String;
begin
  username  := DBEdit111.Text;
  pass      :=  DBEdit112.Text;

  if(addUser) then
  begin
    checkQ.Close;
    checkQ.ParamByName('username').Text := username;
    checkQ.Open;

    if(Not checkQ.IsEmpty) then
    begin
        MessageDlg('User name already exist...', mtError, [mbOK], 0);
        DBEdit111.SetFocus;
        exit;
    end;
  end;

  If UpperCase(MyUsersUserPassWord.Text) <> UpperCase(EditConfirmPassword.Text) then
    begin
      MessageDlg('Password does not match...', mtError, [mbOK], 0);
      DBEdit5.SetFocus;
      exit;
    end;


  restrictionStr := '';
  case ComboBox1.ItemIndex of
    0: restrictionStr := 'ADMINISTRATOR';
    1: restrictionStr := 'USER';
    2: restrictionStr := 'GUEST';
    3: restrictionStr := 'COMD';
    4: restrictionStr := 'INSPECTOR';
    5: restrictionStr := 'MOBILE ISD';
  end;


  MyUsersUserRestriction.Text := restrictionStr;
  //showmessage(restrictionStr);
  MyUsers.Post;

  if DBCheckBox2.Checked then
  begin

      insertLoguserQ.ParamByName('username').Text  := MyUsersUserName.Text;
      insertLoguserQ.ParamByName('monEnd').text    := '23:00:00';
      insertLoguserQ.ParamByName('monStart').Text  := '17:00:00';
      insertLoguserQ.ParamByName('tueEnd').Text    := '23:00:00';
      insertLoguserQ.ParamByName('tueStart').Text  := '17:00:00';
      insertLoguserQ.ParamByName('wenEnd').Text    := '23:00:00';
      insertLoguserQ.ParamByName('wenStart').Text  := '17:00:00';
      insertLoguserQ.ParamByName('thuEnd').Text    := '23:00:00';
      insertLoguserQ.ParamByName('thuStart').Text  := '17:00:00';
      insertLoguserQ.ParamByName('friEnd').Text    := '23:00:00';
      insertLoguserQ.ParamByName('friStart').Text  := '17:00:00';
      insertLoguserQ.ParamByName('satEnd').Text    := '23:00:00';
      insertLoguserQ.ParamByName('satStart').Text  := '06:00:00';
      insertLoguserQ.ParamByName('sunEnd').Text    := '23:00:00';
      insertLoguserQ.ParamByName('sunStart').Text  := '06:00:00';
      insertLoguserQ.ParamByName('dateStart').Text := FormatDateTime('YYYY-MM-DD', StartOfTheYear(now));
      insertLoguserQ.ParamByName('dateEnd').Text   := FormatDateTime('YYYY-MM-DD', EndOfTheYear(now));

    try
      insertLoguserQ.Execute;
    except
    end;
  end;

  MyUsers.RefreshRecord;

  UserMaintenancePanel.Expanded := False;
  UserMaintenancePanel.Visible  := False;
  UserListPanel.Expanded        := True;


   updateQ.ParamByName('pass').Text     := pass;
   updateQ.ParamByName('username').Text := username;
   updateQ.Execute;
  {except
  on E: Exception do
  begin
   MessageDlg('Error...'+E.Message, mtWarning, [mbOK], 0);
   exit;
  end;
  end; }
end;

procedure TFPISDMainMenuForm.schedClick(Sender: TObject);
begin
  if MyUsersisSched.Value=false then
  exit;

  if not assigned(schedUserForm) then
  schedUserForm := TschedUserForm.Create(Application);


  schedUserForm.ShowModal;
end;

procedure TFPISDMainMenuForm.DeleteLinkClick(Sender: TObject);
begin
  if (MessageDlg('Are you sure?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;
  MyUsers.Delete;
end;

procedure TFPISDMainMenuForm.AddLinkClick(Sender: TObject);
begin

  addUser                         := true;
  userlistpanel.Expanded          := False;
  UserMaintenancePanel.Visible    := True;
  UserMaintenancePanel.Expanded   := True;
  MyUsers.Append;
  DBEdit111.SetFocus;
end;

procedure TFPISDMainMenuForm.FindConsumerClick(Sender: TObject);
begin
  If NxEdit1.Text = '' then
    begin
      MessageDlg('No name to search...', mtError, [mbOK], 0);
      NxEdit1.SetFocus;
      exit;
    end;

  Consumer.Close;
  Consumer.ParamByName('name').Text := '%'+NxEdit1.Text+'%';
  Consumer.Open;
  DBGrid3.SetFocus;
end;

procedure TFPISDMainMenuForm.DBEdit14KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
   begin
    Key := #0;
    Perform(CM_DIALOGKEY,VK_TAB,0);
   end;
end;

procedure TFPISDMainMenuForm.NxLinkLabel5Click3(Sender: TObject);
begin
  MembershipMainPanel.Visible    := False;
  MembershipMasterPanel.Visible  := True;
  MembershipMasterPanel.Expanded := True;

  ISDData.MemberMaster.Append;
  ISDData.MemberMasterBirthDate.EditMask    := '!99/99/00;1;_';
  ISDData.MemberMasterDateApproved.EditMask := '!99/99/00;1;_';
  ISDData.MemberMasterMFORDate.EditMask     := '!99/99/00;1;_';
  ISDData.MemberMasterDateTurnOn.EditMask   := '!99/99/00;1;_';
  ISDData.MemberMasterEDDate.EditMask       := '!99/99/00;1;_';
  DBEdit14.SetFocus;
end;

procedure TFPISDMainMenuForm.NxLinkLabel16Click(Sender: TObject);
begin
  If ISDData.MemberMaster.IsEmpty then
   begin
     MessageDlg('No record to edit', mtError, [mbOK], 0);
     Exit;
   end;

  MembershipMainPanel.Visible    := False;
  MembershipMasterPanel.Visible  := True;
  MembershipMasterPanel.Expanded := True;
  ISDData.MemberMaster.Edit;
  ISDData.MemberMasterBirthDate.EditMask    := '!99/99/00;1;_';
  ISDData.MemberMasterDateApproved.EditMask := '!99/99/00;1;_';
  ISDData.MemberMasterMFORDate.EditMask     := '!99/99/00;1;_';
  ISDData.MemberMasterDateTurnOn.EditMask   := '!99/99/00;1;_';
  ISDData.MemberMasterEDDate.EditMask       := '!99/99/00;1;_';
  DBEdit14.SetFocus;
end;

procedure TFPISDMainMenuForm.NxLinkLabel17Click(Sender: TObject);
begin
DeleteMemberPanel.BringToFront;
DeleteMemberPanel.Visible := true;
DeleteMemberPanel.top     := 163;
DeleteMemberPanel.left    := 399;

memberName_tf.Text := ISDData.MemberMasterMembername.Text;
DeletePasswordTxt.Text := '';
end;

procedure TFPISDMainMenuForm.NxLinkLabel18Click(Sender: TObject);
begin
  With ISDData do
   begin
    If MemberMaster.IsEmpty then
      begin
       MessageDlg('Member Master table is empty....', mtError, [mbOK], 0);
       exit;
      end;

     MembershipMainPanel.Visible  := False;
     ConsumerDetailPanel.Visible  := True;
     ConsumerDetailPanel.Expanded := True;
     ISDData.MemberDetail.Append;

     StaticMemberNumber.Caption   := MemberMasterMemberNumber.Text;
     StaticMemberName.Caption     := MemberMasterMembername.Text;
     StaticMemberSpouse.Caption   := MemberMasterSpouse.Text;
     DBEdit26.SetFocus;

   end;
end;

procedure TFPISDMainMenuForm.NxLinkLabel20Click(Sender: TObject);
begin

 With ISDData do
 begin
  If MemberDetail.IsEmpty then
    begin
     MessageDlg('No record to delete', mtInformation, [mbOK], 0);
     exit;
    end;

  if (MessageDlg('Confirm delete', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;

  MemberDetail.First;
  While not MemberDetail.Eof do
  begin
    Repeat
     LoadDetail.Delete;
    Until LoadDetail.IsEmpty;
   MemberDetail.Next;
  end;
 end;
end;

procedure TFPISDMainMenuForm.NxLinkLabel19Click(Sender: TObject);
begin

camerafrm.label4.caption := 'Member';
Camerafrm.showmodal;
{ With ISDData do
  begin
   If OpenPictureDialog1.Execute then
   MemberMasterMemberPic.LoadFromFile(OpenPictureDialog1.FileName);
  end;}
end;

procedure TFPISDMainMenuForm.NxLinkLabel22Click(Sender: TObject);
begin
Camerafrm.label4.caption := 'Members Spouse';
Camerafrm.showmodal;
{ With ISDData do
  begin
   If OpenPictureDialog1.Execute then
   MemberMasterSpousePic.LoadFromFile(OpenPictureDialog1.FileName);
  end;   }

end;

procedure TFPISDMainMenuForm.NxLinkLabel25Click(Sender: TObject);
begin
  ISDData.MemberMaster.Post;
  MembershipMasterPanel.Visible := False;
  MembershipMainPanel.Visible   := True;
  MembershipMainPanel.Enabled   := True;
end;

procedure TFPISDMainMenuForm.NxLinkLabel26Click(Sender: TObject);
begin
  ISDData.MemberMaster.Cancel;
  MembershipMasterPanel.Visible := False;
  MembershipMainPanel.Visible   := True;
  MembershipMainPanel.Enabled   := True;

end;

procedure TFPISDMainMenuForm.NxLinkLabel30Click(Sender: TObject);
begin
  MemberFindConsumerPanel.Left    := 93;
  MemberFindConsumerPanel.Top     := 85;
  MemberFindConsumerPanel.Visible := True;
  SearchCDPEdit.SetFocus;
end;

procedure TFPISDMainMenuForm.NxLinkLabel35Click(Sender: TObject);
begin
  MemberFindConsumerPanel.Visible := False;
  Consumer.Close;
end;

procedure TFPISDMainMenuForm.FindConsumerCDPClick(Sender: TObject);
begin
  Consumer.Close;
  Consumer.ParamByName('name').Text := '%'+SearchCDPEdit.Text+'%';
  Consumer.Open;
  DBGrid2.SetFocus;
end;

procedure TFPISDMainMenuForm.SelectConsumerCDPClick(Sender: TObject);
begin
  With ISDData do
    begin
      MemberDetailArea.Text          := ConsumerArea.Text;
      MemberDetailBook.Text          := ConsumerBook.Text;
      MemberDetailAccountNumber.Text := ConsumerAccountNumber.Text;
      MemberDetailConsumerName.Text  := ConsumerName.Text;
      DBEdit30.SetFocus;
      MemberFindConsumerPanel.Visible := False;
      Consumer.Close;
    end;
end;

procedure TFPISDMainMenuForm.SpeedButton1Click(Sender: TObject);
begin
  with isddata do begin
    barangay.Close;
    barangay.ParamByName('municipalitycode').Text := VoterDistrctMunCode.Text;
  end;
end;

procedure TFPISDMainMenuForm.SpeedButton2Click(Sender: TObject);
begin
  with isddata do begin
    barangay.Close;
    barangay.ParamByName('BARANGAYcode').Text := barangaybarangayCode.Text;
  end;
end;

procedure TFPISDMainMenuForm.SpeedButton3Click(Sender: TObject);
var runapplication : string;
begin
runapplication := 'C:\Program Files\signotec\signoPAD-API\Samples\C#.NET\Binary\STPadLibNetDemoApp\STPadLibNet Demo App.exe';
ShellExecute(0, 'Open', PChar(runapplication), PChar('123 999'), PChar(''), SW_SHOWMAXIMIZED);
end;

procedure TFPISDMainMenuForm.NxLinkLabel31Click(Sender: TObject);
begin
  MeterInstallCalendar.Left    := 188;
  MeterInstallCalendar.Top     := 264;
  MeterInstallCalendar.Visible := True;
  MeterInstallCalendar.SetFocus;

end;

procedure TFPISDMainMenuForm.MeterInstallCalendarDblClick(Sender: TObject);
begin
  ISDData.MemberDetailDateMeterInstalled.AsDateTime := MeterInstallCalendar.SelectedDate;
  MeterInstallCalendar.Visible := False;
  DBEdit31.SetFocus;
end;

procedure TFPISDMainMenuForm.DBEdit26KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TFPISDMainMenuForm.NxLinkLabel28Click(Sender: TObject);
begin
  ISDData.MemberDetail.Post;
  ConsumerDetailPanel.Visible  := False;
  MembershipMainPanel.Visible  := True;
  MembershipMainPanel.Expanded := True;
end;

procedure TFPISDMainMenuForm.NxLinkLabel29Click(Sender: TObject);
begin
  ISDData.MemberDetail.Cancel;
  ConsumerDetailPanel.Visible  := False;
  MembershipMainPanel.Visible  := True;
  MembershipMainPanel.Expanded := True;

end;


procedure TFPISDMainMenuForm.DBEdit39KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
       With ISDData do
         begin
           If (LoadDetailwattage.AsInteger > 0) and (LoadDetailhoursused.AsInteger > 0) then
             LoadDetailkilowatthour.AsFloat := ((LoadDetailwattage.AsFloat * LoadDetailhoursused.AsFloat)) / 1000 * 30;
         end;
    end;
end;

procedure TFPISDMainMenuForm.SearchCDPEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      FindConsumerCDPClick(self);
      DBGrid2.SetFocus;
    end;
end;

procedure TFPISDMainMenuForm.DBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then SelectConsumerCDPClick(self);
end;

procedure TFPISDMainMenuForm.DBImage2Click(Sender: TObject);
begin
NxLinkLabel19Click(self);
end;

procedure TFPISDMainMenuForm.DBImage3Click(Sender: TObject);
begin
NxLinkLabel22Click(self);
end;

procedure TFPISDMainMenuForm.DBImage5Click(Sender: TObject);
begin
if not DirectoryExists('c:\Sign') then MkDir('c:\Sign');
 With ISDData do
  begin
  OpenPictureDialog1.InitialDir := 'C:\Sign'  ;
   If OpenPictureDialog1.Execute then
   MemberMasterMembersign.LoadFromFile(OpenPictureDialog1.FileName);
  end;
end;

procedure TFPISDMainMenuForm.DBRadioGroup2Click(Sender: TObject);
begin
case DBRadioGroup2.ItemIndex of
   0  : begin
          panel11.Visible         := false;
          DBCheckBox3.Visible     := true;
          panel12.Visible         := false;
        end;
   1  : begin
          panel11.Visible         := true;
          DBCheckBox3.Visible     := false;
          panel12.Visible         := false;
        end;
   2  : begin
          panel11.Visible         := false;
          DBCheckBox3.Visible     := false;
          panel12.Visible         := false;
        end;
   3  : begin
          panel11.Visible         := false;
          DBCheckBox3.Visible     := false;
          panel12.Visible         := true;
        end;
end;
end;

procedure TFPISDMainMenuForm.EditUserNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
   begin
     Perform(CM_DIALOGKEY,VK_TAB,0);
     Key := #0;
   end;
end;

procedure TFPISDMainMenuForm.AddNewConnectionClick(Sender: TObject);
begin
  If ISDData.NewConnectionPosted.Text = '1' then
    begin
      MessageDlg('Update is not allowed for New Connection'+#13+#10+'already posted in billing by COMD.', mtError, [mbOK], 0);
      exit;
    end;

  NewConnectionEditPanel.Left  := 73;
  NewConnectionEditPanel.Top   := 100;
  NewConnectionEditPanel.BringToFront;
  NewConnectionEditPanel.Visible := True;
  NewConnectionEditPanel.Caption := 'Update New Connection';
  ISDData.NewConnection.Edit;
  DBEdit49.SetFocus;
end;

procedure TFPISDMainMenuForm.userentry_boxClick(Sender: TObject);
begin
  //SearchComplaintButtonClick(Sender);
  filtercomplaints_link.Caption := 'View Pending Complaints - Off';
  filtercomplaints_linkClick(self);
end;

procedure TFPISDMainMenuForm.AdvSmoothButton1Click(Sender: TObject);
begin
  if not assigned(proceedtoCashierFrm) then
  proceedtoCashierFrm := TproceedtoCashierFrm.Create(Application);
  proceedtoCashierFrm.ShowModal;
end;

procedure TFPISDMainMenuForm.AdvSmoothButton26Click(Sender: TObject);
begin
  if not assigned(caller_Frm) then
  caller_Frm := Tcaller_Frm.Create(Application);
  caller_Frm.ShowModal;
end;

procedure TFPISDMainMenuForm.AdvSmoothButton2Click(Sender: TObject);
begin
  NxHeaderPanel14.Visible := false;
  MyNoteBook.Enabled      := true;
end;

procedure TFPISDMainMenuForm.AdvSmoothButton30Click(Sender: TObject);
begin
  if not assigned(quehistoryFrm) then
  quehistoryFrm := TquehistoryFrm.Create(Application);
  quehistoryFrm.ShowModal;
end;

procedure TFPISDMainMenuForm.AdvSmoothButton3Click(Sender: TObject);
begin
  
   With ISDData do
    begin
      case ComboBox3.ItemIndex of
        0:begin
          try
            queServerQ.Connected    := false;
            queServerQ.Server       := 'server';
            queServerQ.Connected    := true;

            NxHeaderPanel14.Caption := 'Consumer Priority Number (Dipolog Main Office)';
            showmessage('Queuing Dipolog area successfully connected..')
          except
                MessageDlg('DIPOLOG MAIN OFFICE OFFLINE..', mtWarning, [mbOK], 0);
          end;
          end;
         1:begin
          try
            queServerQ.Connected    := false;
            queServerQ.Server       := 'serverpao';
            queServerQ.Connected    := true;

            NxHeaderPanel14.Caption := 'Consumer Priority Number (Pi�an Area)';
            showmessage('Queuing Pi�an area successfully connected..')
          except
                MessageDlg('PI�AN AREA OFFLINE..', mtWarning, [mbOK], 0);
          end;
          end;
         2:begin
          try
            queServerQ.Connected    := false;
            queServerQ.Server       := 'serversao';
            queServerQ.Connected    := true;

            NxHeaderPanel14.Caption := 'Consumer Priority Number (Sindangan Area)';
            showmessage('Queuing Sindangan area successfully connected..')
          except
                MessageDlg('SINDANGAN AREA OFFLINE..', mtWarning, [mbOK], 0);
          end;
          end;
         3:begin
          try
            queServerQ.Connected    := false;
            queServerQ.Server       := 'serverlao';
            queServerQ.Connected    := true;

            NxHeaderPanel14.Caption := 'Consumer Priority Number (Liloy Area)';
            showmessage('Queuing Liloy area successfully connected..')
          except
                MessageDlg('LILOY AREA OFFLINE..', mtWarning, [mbOK], 0);
          end;
          end;

       end;
    end;

end;

procedure TFPISDMainMenuForm.DBEdit49KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
   begin
     Perform(CM_DIALOGKEY,VK_TAB,0);
     Key := #0;
   end;
end;

procedure TFPISDMainMenuForm.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end
end;

procedure TFPISDMainMenuForm.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end ;
end;

procedure TFPISDMainMenuForm.NxLinkLabel37Click(Sender: TObject);
begin
  ISDData.NewConnection.Post;
  NewConnectionEditPanel.Visible := False;
end;

procedure TFPISDMainMenuForm.NxLinkLabel38Click(Sender: TObject);
begin
  ISDData.NewConnection.Cancel;
  NewConnectionEditPanel.Visible := False;
end;

procedure TFPISDMainMenuForm.SaveBtnClick(Sender: TObject);
begin
  Master.Post;
  Master.Close;
  ISDData.NewConnection.Delete;
  Vicinity.Close;
  NewConnectionEditPanel.Visible := False;
end;

procedure TFPISDMainMenuForm.CancelBtnClick(Sender: TObject);
begin
  Master.Cancel;
  Master.Close;
  Vicinity.Close;
  NewConnectionEditPanel.Visible := False;
end;

procedure TFPISDMainMenuForm.ComplaintAddClick(Sender: TObject);
begin
  TabSet1.Enabled            := false;
  ComplaintUserPanel.Left    := 32;
  ComplaintUserPanel.Top     := 85;
  ComplaintUserPanel.Caption := 'Add Service / Maintenance Order';
  ComplaintUserPanel.Visible := True;
  ComplaintUserPanel.BringToFront;

  With ISDData do
   begin
     complaints.Append;
     complaintsDateAccomplished.EditMask := '!99/99/00 !90:00:00>LL;1;_';
     complaintsTimedEndorsed.AsDateTime  := now;
     complaintsTimedEndorsed.EditMask    := '!90:00:00>LL;1;_';
     complaintsReceivedBy.Text           := UsersUserName.Text;
     complaintsDateFiled.AsDateTime      := Now;
     complaintsDateFiled.EditMask        := '!99/99/00 !90:00:00>LL;1;_';
  end;

  ComplaintAdd.Visible  := False;
  ComplaintEdit.Visible := False;
  NxLinkLabel7.Enabled := true;

  DBEdit2.SetFocus;
end;

procedure TFPISDMainMenuForm.ComplaintEditClick(Sender: TObject);
begin
  TabSet1.Enabled            := false;

  If ISDData.complaints.IsEmpty then
    begin
      MessageDlg('No records to edit...', mtError, [mbOK], 0);
      exit;
    end;

  if (ISDData.complaintsreceivedby.Text <> ISDData.UsersUserName.Text) or (copy(ISDdata.ComplaintsAccomplished.Text,1,8) = 'Executed') then
  NxLinkLabel7.Enabled := false
  else
  NxLinkLabel7.Enabled := true;

  if (copy(ISDdata.UsersUserRestriction.Text,1,9) = 'INSPECTOR' ) and (copy(ISDdata.ComplaintsAccomplished.Text,1,8) <> 'Executed') or
     (copy(ISDdata.UsersUserRestriction.Text,1,13) = 'ADMINISTRATOR' ) and (copy(ISDdata.ComplaintsAccomplished.Text,1,8) <> 'Executed') then
  NxLinkLabel7.Enabled := true;

  if isddata.UsersUserName.Text = 'von' then
  begin
      NxLinkLabel7.Enabled := true;
  end;

  //if(Not(copy(ISDData.complaintsAccomplished.Text,1,8) = 'Executed' )) then
  //  NxLinkLabel7.Enabled := true;

  ComplaintUserPanel.Left := 32;
  ComplaintUserPanel.Top  := 85;
  ComplaintUserPanel.Caption := 'Edit Service/Maintenance Order';
  ComplaintUserPanel.Visible := True;
  ComplaintUserPanel.BringToFront;

  ComplaintAdd.Visible  := False;
  ComplaintEdit.Visible := False;

  With ISDData do
   begin
     complaints.Edit;
     complaintsDateAccomplished.EditMask := '!99/99/00;1;_';
     complaintsTimedEndorsed.EditMask    := '!90:00:00>LL;1;_';
  end;

  DBEdit1.SetFocus;
     //(ISDData.UsersIdUsers.text='10998') or (ISDData.UsersIdUsers.text='115') or (ISDData.UsersIdUsers.text='1') or (ISDData.UsersIdUsers.text='101')
  {If (ISDData.complaintsreceivedby.Text = ISDData.UsersUserName.Text) and
     (ISDData.complaintsAccomplished.Text='Not Executed') and
     ((Complaintcategorystr = 'METERING') or
     (Complaintcategorystr = 'OTHER EQUIPMENT') or
     (Complaintcategorystr = 'OTHERS'))
     then
     NxLinkLabel7.Enabled := true
  else
     NxLinkLabel7.Enabled := false;  }

end;

procedure TFPISDMainMenuForm.NxLinkLabel60Click(Sender: TObject);
begin
  ISDData.VoterDistrct.Post;
  ISDData.VoterDistrct.close;
  ISDData.VoterDistrct.execute;
  panel6.Enabled          := true;
  panel7.Enabled          := true;
  NxHeaderPanel11.Visible := false;
  CRDBGrid3.Enabled       := true;
end;

procedure TFPISDMainMenuForm.NxLinkLabel61Click(Sender: TObject);
begin
  ISDData.VoterDistrct.Cancel;
  ISDData.VoterDistrct.close;
  ISDData.VoterDistrct.execute;
  panel6.Enabled          := true;
  panel7.Enabled          := true;
  NxHeaderPanel11.Visible := false;
  CRDBGrid3.Enabled       := true;
end;

procedure TFPISDMainMenuForm.NxLinkLabel62Click(Sender: TObject);
begin
if (MessageDlg('Confirm delete?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;
ISDData.barangay.Delete;
end;

procedure TFPISDMainMenuForm.NxLinkLabel63Click(Sender: TObject);
begin
  NxHeaderPanel12.Left    := 17;
  NxHeaderPanel12.Top     := 141;
  NxHeaderPanel12.Visible := True;
  NxHeaderPanel12.Caption := 'Edit Barangay';
  CRDBGrid4.Enabled       := false;
  panel5.Enabled          := false;
  panel7.Enabled          := false;
  ISDData.barangay.Edit;
  DBEdit138.SetFocus;
end;

procedure TFPISDMainMenuForm.NxLinkLabel64Click(Sender: TObject);
begin
  NxHeaderPanel12.Left    := 17;
  NxHeaderPanel12.Top     := 141;
  NxHeaderPanel12.Visible := True;
  NxHeaderPanel12.Caption := 'Add Barangay';
  CRDBGrid4.Enabled       := false;
  panel5.Enabled          := false;
  panel7.Enabled          := false;
  ISDData.barangay.Append;
  DBEdit138.SetFocus;
end;

procedure TFPISDMainMenuForm.NxLinkLabel65Click(Sender: TObject);
begin
if (MessageDlg('Confirm delete?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;
ISDData.sitio.Delete;
end;

procedure TFPISDMainMenuForm.NxLinkLabel66Click(Sender: TObject);
begin
  MembershipMainPanel.Expanded := true;
  MembershipMainPanel.visible  := true;
  DeletedMemberPanel.expanded  := false;
  DeletedMemberPanel.visible   := false;
end;

procedure TFPISDMainMenuForm.NxLinkLabel67Click(Sender: TObject);
begin
  NxHeaderPanel13.Left    := 17;
  NxHeaderPanel13.Top     := 141;
  NxHeaderPanel13.Visible := True;
  NxHeaderPanel13.Caption := 'Add Barangay';
  CRDBGrid5.Enabled       := false;
  panel5.Enabled          := false;
  panel6.Enabled          := false;
  ISDData.sitio.Append;
  DBEdit143.SetFocus;
end;

procedure TFPISDMainMenuForm.NxLinkLabel68Click(Sender: TObject);
begin
  ISDData.barangay.Cancel;
  ISDData.barangay.close;
  ISDData.barangay.execute;
  panel5.Enabled          := true;
  panel7.Enabled          := true;
  NxHeaderPanel12.Visible := false;
  CRDBGrid4.Enabled       := true;
end;

procedure TFPISDMainMenuForm.NxLinkLabel69Click(Sender: TObject);
begin
with ISDdata do begin
  Barangaydistrictcode.Text     := VoterDistrctDistrictCode.Text;
  Barangaydistrict.text         := VoterDistrctDistrict.Text;
  Barangaymunicipalitycode.Text := VoterDistrctMunCode.Text;
  Barangaymunicipality.text     := VoterDistrctMunicipality.Text;
  barangay.Post;
  barangay.close;
  barangay.execute;
  panel5.Enabled          := true;
  panel7.Enabled          := true;
  NxHeaderPanel12.Visible := false;
  CRDBGrid4.Enabled       := true;
end;
end;

procedure TFPISDMainMenuForm.NxLinkLabel6Click(Sender: TObject);
begin
  //SearchComplaintButtonClick(SELF);
  filtercomplaints_link.Caption := 'View Pending Complaints - Off';
  filtercomplaints_linkClick(self);
end;

procedure TFPISDMainMenuForm.SearchComplaintButtonClick(Sender: TObject);
begin
  filtercomplaints_link.Caption := 'View Pending Complaints - Off';
  filtercomplaints_linkClick(self);
{  With ISDData do
   begin
    complaints.Close;
    complaints.ParamByName('consumername').Text := '%'+SearchComplaint.Text+'%';
    complaints.ParamByName('datefrom').AsDate   := complaintdatefrom.Date;
    complaints.ParamByName('Dateto').AsDate     := complaintdateto.Date;
    case tabset1.tabindex of
      0:  complaints.ParamByName('category').text     := 'METERING';
      1:  complaints.ParamByName('category').text     := 'SERVICE DROP';
      2:  complaints.ParamByName('category').text     := 'PRIMARY / SECONDARY LINE';
      3:  complaints.ParamByName('category').text     := 'DISTRIBUTION TRANSFORMER';
      4:  complaints.ParamByName('category').text     := 'DISTRIBUTION / SERVICE POLE';
      5:  complaints.ParamByName('category').text     := 'OTHER EQUIPMENT';
      6:  complaints.ParamByName('category').text     := 'OTHERS';
    end;
    complaints.Open;

   if userentry_box.Checked = true then
    begin
       complaints.Filtered := false;
       complaints.FilterSQL := ' isuedBy like '+quotedstr(ISDData.UsersUserID.Text);
       complaints.Filtered := true;
    end
    else
    begin
       complaints.Filtered := false;
       complaints.FilterSQL := ' isuedBy like '+quotedstr('%');
       complaints.Filtered := true;
    end;

   end;}

end;

procedure TFPISDMainMenuForm.SearchDeletedClick(Sender: TObject);
begin
  With ISDData do
   begin
    MemberMaster.Close;
    MemberMaster.ParamByName('MemberName').Text := '%'+SearchMemberEdit.Text+'%';
    MemberMaster.Open;
   end;
end;

procedure TFPISDMainMenuForm.SearchDeletedMemberClick(Sender: TObject);
begin
  With ISDData do
   begin
    DeletedMember.Close;
    DeletedMember.ParamByName('MemberName').Text := '%'+SearchDeletedMemberEdit.Text+'%';
    DeletedMember.Open;
   end;
end;

procedure TFPISDMainMenuForm.NxLinkLabel70Click(Sender: TObject);
begin
  ISDData.sitio.Cancel;
  ISDData.sitio.close;
  ISDData.sitio.execute;
  panel5.Enabled          := true;
  panel6.Enabled          := true;
  NxHeaderPanel13.Visible := false;
  CRDBGrid5.Enabled       := true;
end;

procedure TFPISDMainMenuForm.NxLinkLabel71Click(Sender: TObject);
begin
with isddata do begin

  sitiodistrictcode.Text     := Barangaydistrictcode.Text;
  sitiodistrict.text         := Barangaydistrict.text ;
  sitiomunicipalitycode.Text := Barangaymunicipalitycode.Text;
  sitiomunicipality.text     := Barangaymunicipality.text;
  sitioBarangaycode.text     := BarangayBarangaycode.text ;
  sitioBarangay.text         := BarangayBarangay.text ;
  sitio.Post;
  sitio.close;
  sitio.execute;
  panel5.Enabled          := true;
  panel6.Enabled          := true;
  NxHeaderPanel13.Visible := false;
  CRDBGrid5.Enabled       := true;
end;
end;

procedure TFPISDMainMenuForm.NxLinkLabel72Click(Sender: TObject);
begin
  NxHeaderPanel13.Left    := 17;
  NxHeaderPanel13.Top     := 141;
  NxHeaderPanel13.Visible := True;
  NxHeaderPanel13.Caption := 'Edit Barangay';
  CRDBGrid5.Enabled       := false;
  panel5.Enabled          := false;
  panel6.Enabled          := false;
  ISDData.sitio.Edit;
  DBEdit143.SetFocus;
end;

procedure TFPISDMainMenuForm.NxLinkLabel73Click(Sender: TObject);
begin
  MembershipMainPanel.Expanded := false;
  MembershipMainPanel.visible  := false;
  DeletedMemberPanel.expanded  := true;
  DeletedMemberPanel.visible   := true;
  With ISDData do
   begin
    DeletedMember.Close;
    DeletedMember.SQL.Clear;
    DeletedMember.SQL.Add('select * from deletedmembermaster') ;
    DeletedMember.SQL.Add('where membername like :membername');
    DeletedMember.SQL.Add('order by iddeletedmembermaster');
    DeletedMember.ParamByName('MemberName').Text := '%'+SearchDeletedMemberEdit.Text+'%';
    DeletedMember.Open;
   end;
end;

procedure TFPISDMainMenuForm.NxLinkLabel74Click(Sender: TObject);
begin
DeleteMemberPanel.SendToBack;
DeleteMemberPanel.Visible := false;
end;

procedure TFPISDMainMenuForm.NxLinkLabel75Click(Sender: TObject);
begin
  FindConsumerPanel2.Left    := 129;
  FindConsumerPanel2.Top     := 90;
  FindConsumerPanel2.Visible := True;
  FindConsumerPanel2.BringToFront;
  NxEdit1.SetFocus;
end;

procedure TFPISDMainMenuForm.complaintExportOrPreview();
var
 Memo3 : TfrxMemoView;
 isuedStr : String;
begin
     Memo3      := complaintRep.FindComponent('Memo3') as TfrxMemoView;

   if userentry_box.Checked = true then
      isuedStr := ' isuedBy like '+quotedstr(ISDData.UsersUserID.Text)
    else
      isuedStr := 'isuedBy like '+quotedstr('%');

   isoComplaintsQ2.Close;
   isoComplaintsQ2.Open;

    if ComboBoxCategory.Text = 'PRINT ALL' then
    begin

      complaintsreport2.sql.Clear;
      complaintsreport2.sql.Add('select complaints.*, ');
      complaintsreport2.sql.Add('if(others is not NULL,concat(ifnull(complaint,''''),'' ( '',others,'' )''),ifnull(complaint,''''))  complaintF' );
      complaintsreport2.sql.Add('from complaints where date_format(datefiled,''%Y-%m-%d'') between :datefrom and :dateto  ');
      complaintsreport2.sql.Add(' order by idcomplaints');

      complaintsreport2.ParamByName('datefrom').AsDate := DateTimeFrom.Date;
      complaintsreport2.ParamByName('dateto').AsDate   := DateTimeTo.Date;
      complaintsreport2.Open;
      ISDData.Signatories.OPEN;

      Memo3.Text := 'Period Covered : '+datetostr(DateTimeFrom.Date) + ' - ' + datetostr(DateTimeTo.Date);
      //complaintRep.ShowReport;
      //complaintsreport2.Close;
    end

    //Print ALL Specific Category Printing=======================
    //===========================================================
    else if (ComboBoxCategory.Text ='PRINT ALL METERING')OR
            (ComboBoxCategory.Text ='PRINT ALL SERVICE DROP')OR
            (ComboBoxCategory.Text ='PRINT ALL PRIMARY/SECONDARY LINE')OR
            (ComboBoxCategory.Text ='PRINT ALL DISTRIBUTION TRANSFORMER')OR
            (ComboBoxCategory.Text ='PRINT ALL DISTRIBUTION POLE')OR
            (ComboBoxCategory.Text ='PRINT ALL OTHER EQUIP.')OR
            (ComboBoxCategory.Text ='PRINT ALL OTHERS') then
    begin

      complaintsreport2.sql.Clear;
      complaintsreport2.sql.Add('select complaints.*, ');
      complaintsreport2.sql.Add('if(others is not NULL,concat(ifnull(complaint,''''),'' ( '',others,'' )''),ifnull(complaint,''''))  complaintF' );
      complaintsreport2.sql.Add('from complaints where date_format(datefiled,''%Y-%m-%d'') between :datefrom and :dateto  ');


      //===========Feltering Category============================
      //=========================================================
      if ComboBoxCategory.Text ='PRINT ALL METERING' then
        complaintsreport2.sql.Add('and category =''METERING'' ')
      else if ComboBoxCategory.Text ='PRINT ALL SERVICE DROP' then
        complaintsreport2.sql.Add(' and category =''SERVICE DROP'' ')
      else if ComboBoxCategory.Text ='PRINT ALL PRIMARY/SECONDARY LINE' then
        complaintsreport2.sql.Add(' and category =''PRIMARY / SECONDARY LINE'' ')
      else if ComboBoxCategory.Text ='PRINT ALL DISTRIBUTION TRANSFORMER' then
        complaintsreport2.sql.Add(' and category =''DISTRIBUTION TRANSFORMER'' ')
      else if ComboBoxCategory.Text ='PRINT ALL DISTRIBUTION POLE' then
        complaintsreport2.sql.Add(' and category =''DISTRIBUTION / SERVICE POLE'' ')
      else if ComboBoxCategory.Text ='PRINT ALL OTHER EQUIP.' then
        complaintsreport2.sql.Add(' and category =''OTHER EQUIPMENT'' ')
      else if ComboBoxCategory.Text ='PRINT ALL OTHERS' then
        complaintsreport2.sql.Add(' and category =''OTHERS'' ');

      //======End Feltering Category===================================
      //===============================================================

      complaintsreport2.sql.Add(' order by idcomplaints');

      complaintsreport2.ParamByName('datefrom').AsDate := DateTimeFrom.Date;
      complaintsreport2.ParamByName('dateto').AsDate   := DateTimeTo.Date;
      complaintsreport2.Open;
      ISDData.Signatories.OPEN;

      Memo3.Text := 'Period Covered : '+datetostr(DateTimeFrom.Date) + ' - ' + datetostr(DateTimeTo.Date);
      //complaintRep.ShowReport;
      //complaintsreport2.Close;
    end
    else
      begin
          complaintsreport2.sql.Clear;
          complaintsreport2.sql.Add('select complaints.*, ');
          complaintsreport2.sql.Add('if(others is not NULL,concat(ifnull(complaint,''''),'' ( '',others,'' )''),ifnull(complaint,''''))  complaintF' );
          complaintsreport2.sql.Add(' from complaints where date_format(datefiled,''%Y-%m-%d'') between :datefrom and :dateto and');
          complaintsreport2.sql.Add(' complaint = :complaint order by idcomplaints');

          complaintsreport2.ParamByName('datefrom').AsDate := DateTimeFrom.Date;
          complaintsreport2.ParamByName('dateto').AsDate   := DateTimeTo.Date;
          complaintsreport2.ParamByName('complaint').Text  := ComboBoxCategory.text;
          complaintsreport2.Open;
          ISDData.Signatories.OPEN;
          Memo3.Text := 'Period Covered : '+datetostr(DateTimeFrom.Date) + ' - ' + datetostr(DateTimeTo.Date);
      end;

      //====Filtering the order response==================
      If (filtercomplaints_link.Caption = 'View Pending Complaints - Off') then
        begin
           complaintsreport2.Filtered := false;
           complaintsreport2.FilterSQL := 'accomplished like '+quotedstr('1')+ ' and '+ isuedStr;
           complaintsreport2.Filtered := true;
        end
      else if (filtercomplaints_link.Caption = 'View Pending Complaints - On') then
        begin
           complaintsreport2.Filtered := false;
           complaintsreport2.FilterSQL := 'accomplished like '+quotedstr('0')+ ' and '+ isuedStr;
           complaintsreport2.Filtered := true;
        end
      else if ((filtercomplaints_link.Caption = 'View All Complaints')) then
        begin
           complaintsreport2.Filtered := false;
           complaintsreport2.FilterSQL := isuedStr;
           complaintsreport2.Filtered := true;
        end;
end;
procedure TFPISDMainMenuForm.NxLinkLabel79Click(Sender: TObject);
begin
      complaintExportOrPreview;
      complaintRep.ShowReport;
      complaintsreport2.Close;
end;

procedure TFPISDMainMenuForm.NxLinkLabel7Click(Sender: TObject);
begin
  ISDData.complaintsisuedBy.Text := ISDData.UsersUserID.Text;
  ISDData.complaintscategory.text := Complaintcategorystr;
  ISDData.complaints.Post;
  ComplaintUserPanel.Visible := False;
  ComplaintAdd.Visible  := True;
  ComplaintEdit.Visible := True;
  TabSet1.Enabled       := True;
end;

procedure TFPISDMainMenuForm.NxLinkLabel11Click(Sender: TObject);
begin
  ISDData.complaints.Cancel;
  ComplaintUserPanel.Visible := False;
  ComplaintAdd.Visible  := True;
  ComplaintEdit.Visible := True;
  TabSet1.Enabled       := True;
end;

procedure TFPISDMainMenuForm.DBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end
end;

procedure TFPISDMainMenuForm.NxButton1Click(Sender: TObject);
begin
  FindConsumerPanel.Left    := 129;
  FindConsumerPanel.Top     := 90;
  FindConsumerPanel.Visible := True;
  FindConsumerPanel.BringToFront;
  SearchRCDConsumer.SetFocus;
end;

procedure TFPISDMainMenuForm.NxLinkLabel10Click(Sender: TObject);
begin
  With ISDData do
    begin
      NewApplicantsPrincipalAccountnumber.Text  := ConsumerAccountNumber.Text;
      NewApplicantsPrincipalName.Text  := ConsumerName.Text;
      consumer.Close;
      FindConsumerPanel2.Visible    := False;
      DBEdit153.SetFocus;
    end;
end;

procedure TFPISDMainMenuForm.NxLinkLabel9Click(Sender: TObject);
begin
   consumer.Close;
   FindConsumerPanel.Visible    := False;
end;

procedure TFPISDMainMenuForm.NxLinkLabel3Click(Sender: TObject);
begin
   isoQuery.Close;
   isoQuery.ParamByName('reporttype').Text := 'SMO';
   isoQuery.Open;

   printcomplaintsheet.ParamByName('idcomplaints').Text := isddata.complaintsidComplaints.Text;
   printcomplaintsheet.Open;

   masterQ.Close;
   masterQ.ParamByName('accountnumber').Text := printcomplaintsheetAccountNumber.Text;
   masterQ.Open;

   tmpQ.Close;
   tmpQ.SQL.Clear;
   tmpQ.SQL.Add('Select * from newapply where idcomplaints = :idcomplaints and ornumber is not null AND ');
   tmpQ.SQL.Add('  area = :area and book = :book and name = :name and ornumber is not null');
   tmpQ.ParamByName('idComplaints').Text := isddata.complaintsidComplaints.Text;
   tmpQ.ParamByName('area').Text         := '0'+copy(printcomplaintsheetAccountNumber.Text,1,2);
   tmpQ.ParamByName('book').Text         := '0'+copy(printcomplaintsheetAccountNumber.Text,3,2);
   tmpQ.ParamByName('name').Text         := printcomplaintsheetConsumerName.Text;
   tmpQ.Open;

   if not tmpQ.IsEmpty then
   begin
     QRLabel15.Caption       := tmpQ.FieldByName('ORNumber').Text;
     QRLabel21.Caption       := FormatDateTime('m/d/yyyy',tmpQ.FieldByName('ORDate').AsDateTime);
   end
   else
   begin
     QRLabel15.Caption       := '';
     QRLabel21.Caption       := '';
   end;

   QuickRep1.PreviewWidth  := Screen.Width;
   QuickRep1.PreviewHeight := Screen.Height;
   QuickRep1.Preview;
   printcomplaintsheet.Close
end;

procedure TFPISDMainMenuForm.SearchRCDConsumerKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then FindConsumerClick(self);
end;

procedure TFPISDMainMenuForm.NxLinkLabel4Click(Sender: TObject);
begin
  case tabset1.tabindex of
        0:  begin
              ComboBoxCategory.items.Clear;
              ComboBoxCategory.Items.BeginUpdate;
              ComboBoxCategory.Items.Add('PRINT ALL');
              ComboBoxCategory.Items.Add('PRINT ALL METERING') ;
              ComboBoxCategory.Items.Add('MTR CHANGE') ;
              ComboBoxCategory.Items.Add('MTR DISLOCATED') ;
              ComboBoxCategory.Items.Add('MTR ERRATIC REGISTRATION') ;
              ComboBoxCategory.Items.Add('MTR GLASS BROKEN') ;
              ComboBoxCategory.Items.Add('MTR LOOSE CONNECTION') ;
              ComboBoxCategory.Items.Add('MTR TEST') ;
              ComboBoxCategory.Items.Add('MTR NOT RUNNING') ;
              ComboBoxCategory.Items.Add('MTR REMOVAL') ;
              ComboBoxCategory.Items.Add('MTR RUNNING TO FAST') ;
              ComboBoxCategory.Items.Add('MTR RUNNING TO SLOW') ;
              ComboBoxCategory.Items.Add('MTR RUNNING WITHOUT LOAD') ;
              ComboBoxCategory.Items.Add('MTR STUCK UP METER') ;
              ComboBoxCategory.Items.Add('MTR TRANSFER') ;
              ComboBoxCategory.Items.Add('MTR BURNED') ;
              ComboBoxCategory.Items.EndUpdate;
            end;
        1:  begin
              ComboBoxCategory.items.Clear;
              ComboBoxCategory.Items.BeginUpdate;
              ComboBoxCategory.Items.Add('PRINT ALL');
              ComboBoxCategory.Items.Add('PRINT ALL SERVICE DROP') ;
              ComboBoxCategory.Items.Add('SDW CHANGE/UPGRADE') ;
              ComboBoxCategory.Items.Add('SDW CUT/BROKEN') ;
              ComboBoxCategory.Items.Add('SDW LOOSE CONNECTION') ;
              ComboBoxCategory.Items.Add('SDW NO CURRENT') ;
              ComboBoxCategory.Items.Add('SDW RE-ROUTE') ;
              ComboBoxCategory.Items.Add('SDW RECONNECTION / RETAPPING');
              ComboBoxCategory.Items.Add('SDW SAGGING') ;
              ComboBoxCategory.Items.Add('SDW TRANSFER') ;
              ComboBoxCategory.Items.Add('SDW DISCO / RECO') ;
              ComboBoxCategory.Items.EndUpdate;
            end;
        2:  begin
              ComboBoxCategory.items.Clear;
              ComboBoxCategory.Items.BeginUpdate;
              ComboBoxCategory.Items.Add('PRINT ALL');
              ComboBoxCategory.Items.Add('PRINT ALL PRIMARY/SECONDARY LINE') ;
              ComboBoxCategory.Items.Add('PSL LOOSE CONNECTION') ;
              ComboBoxCategory.Items.Add('PSL LOOSE CONNECTION (SEVERAL)') ;
              ComboBoxCategory.Items.Add('PSL SAGGING') ;
              ComboBoxCategory.Items.Add('PSL CUT/BROKEN') ;
              ComboBoxCategory.Items.Add('PSL CORRODED') ;
              ComboBoxCategory.Items.Add('PSL CHANGE/UPGRADE') ;
              ComboBoxCategory.Items.Add('PSL CLEARING OF VEGETATION') ;
              ComboBoxCategory.Items.EndUpdate;
            end;
        3:  begin
              ComboBoxCategory.items.Clear;
              ComboBoxCategory.Items.BeginUpdate;
              ComboBoxCategory.Items.Add('PRINT ALL');
              ComboBoxCategory.Items.Add('PRINT ALL DISTRIBUTION TRANSFORMER') ;
              ComboBoxCategory.Items.Add('DT BANKING') ;
              ComboBoxCategory.Items.Add('DT REMOVAL') ;
              ComboBoxCategory.Items.Add('DT BUSTED/DAMAGE') ;
              ComboBoxCategory.Items.Add('DT TRANSFER') ;
              ComboBoxCategory.Items.Add('DT REPLACE') ;
              ComboBoxCategory.Items.Add('DT LOOSE CONNECTION') ;
              ComboBoxCategory.Items.Add('DT NO/BROKEN EQUIPMENT GROUNDING') ;
              ComboBoxCategory.Items.Add('DT (OWNERS) TRANSFORMER TESTING') ;
              ComboBoxCategory.Items.Add('DT (OWNERS)  TRANSFORMER INSTALLATION') ;
              ComboBoxCategory.Items.Add('DT (OWNERS)  TRANSFORMER REMOVAL') ;
              ComboBoxCategory.Items.EndUpdate;
            end;
        4:  begin
              ComboBoxCategory.items.Clear;
              ComboBoxCategory.Items.BeginUpdate;
              ComboBoxCategory.Items.Add('PRINT ALL');
              ComboBoxCategory.Items.Add('PRINT ALL DISTRIBUTION POLE') ;
              ComboBoxCategory.Items.Add('DSP LEANING POLE') ;
              ComboBoxCategory.Items.Add('DSP ROTTEN POLE') ;
              ComboBoxCategory.Items.Add('DSP BROKEN POLE') ;
              ComboBoxCategory.Items.Add('DSP TRANSFER OF POLE') ;
              ComboBoxCategory.Items.Add('DSP RE-ROUTING OF POLE') ;
              ComboBoxCategory.Items.Add('DSP UPGRADING OF POLE') ;
              ComboBoxCategory.Items.Add('DSP INSTALLATION OF ADDITIONAL POLE') ;
              ComboBoxCategory.Items.Add('DSP BROKEN / CORRODED POLE ACCESSORIES') ;
              ComboBoxCategory.Items.Add('DSP NO / BROKEN EQUIPMENT GROUNDING') ;
              ComboBoxCategory.Items.EndUpdate;
            end;
        5:  begin
              ComboBoxCategory.items.Clear;
              ComboBoxCategory.Items.BeginUpdate;
              ComboBoxCategory.Items.Add('PRINT ALL');
              ComboBoxCategory.Items.Add('PRINT ALL OTHER EQUIP.') ;
              ComboBoxCategory.Items.Add('BROKEN INSULATOR') ;
              ComboBoxCategory.Items.Add('DAMAGE FUSE TUBE') ;
              ComboBoxCategory.Items.Add('DAMAGE CUT-OUT ASSEMBLY') ;
              ComboBoxCategory.Items.Add('DAMAGE CAPACITOR BANK') ;
              ComboBoxCategory.Items.Add('DAMAGE 15-KV DISCONNECT SWITCH') ;
              ComboBoxCategory.Items.Add('DAMAGE SECTIONALIZER') ;
              ComboBoxCategory.Items.Add('DAMAGE RECLOSER / BREAKER') ;
              ComboBoxCategory.Items.Add('DAMAGE INSTRUMENT TRANSFORMERS') ;
              ComboBoxCategory.Items.Add('DAMAGE LIGHTNING ARRESTER') ;
              ComboBoxCategory.Items.Add('INSTALLATION OF RECLOSER / BREAKER') ;
              ComboBoxCategory.Items.EndUpdate;
            end;
        6:  begin
              ComboBoxCategory.items.Clear;
              ComboBoxCategory.Items.BeginUpdate;
              ComboBoxCategory.Items.Add('PRINT ALL');
              ComboBoxCategory.Items.Add('PRINT ALL OTHERS');
              ComboBoxCategory.Items.Add('EXTENSION OF PRIMARY / SECONDARY LINE') ;
              ComboBoxCategory.Items.Add('CHANGE NAME') ;
              ComboBoxCategory.Items.Add('CERTIFICATION') ;
              ComboBoxCategory.Items.Add('NEW CONNECTION REQUEST') ;
              ComboBoxCategory.Items.Add('OTHERS') ;
              ComboBoxCategory.Items.EndUpdate;
            end;
  end;
   Complaintsummarypanel.BringToFront;
   Complaintsummarypanel.Visible  := true;
   Complaintsummarypanel.top      := 229;
   Complaintsummarypanel.left     := 233;
   datetimeFrom.DateTime:= complaintdatefrom.DateTime;
   datetimeTo.DateTime:= complaintdateto.DateTime;
   ComboBoxCategory.ItemIndex := 1;
end;

procedure TFPISDMainMenuForm.NewApplicantAddClick(Sender: TObject);
begin
  NewApplicantsPanel.Left := 28;
  NewApplicantsPanel.Top  := 44;
  NewApplicantsPanel.Visible := True;
  NewApplicantsPanel.BringToFront;

  ISDData.NewApplicants.Append;
  NewApplicantAdd.Visible    := False;
  NewApplicantEdit.Visible   := False;
  NewApplicantDelete.Visible := False;
  DBEdit56.Enabled           := false;
  Edit1.Enabled              := True;
  Edit2.Enabled              := True;
  Edit3.Enabled              := True;
  panel11.Visible     := false;
  DBCheckBox3.Visible := false;
  panel12.Visible     := false;
  Edit1.Text          := '';
  Edit2.Text          := '';
  Edit3.Text          := '';
  DBEdit13.SetFocus;
end;

procedure TFPISDMainMenuForm.DBEdit131KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TFPISDMainMenuForm.DBEdit132KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TFPISDMainMenuForm.DBEdit133KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TFPISDMainMenuForm.DBEdit13KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TFPISDMainMenuForm.NewApplicantEditClick(Sender: TObject);
begin
  If ISDData.NewApplicants.IsEmpty then
    begin
      MessageDlg('No records to edit....', mtError, [mbOK], 0);
      exit;
    end;

  NewApplicantsPanel.Left := 28;
  NewApplicantsPanel.Top  := 44;
  NewApplicantsPanel.Visible := True;
  NewApplicantsPanel.BringToFront;

  NewApplicantAdd.Visible    := False;
  NewApplicantEdit.Visible   := False;
  NewApplicantDelete.Visible := False;

  ISDData.NewApplicants.Edit;
  panel11.Visible     := false;
  DBCheckBox3.Visible := false;
  panel12.Visible     := false;
  if ISDData.NewApplicantsconntype.Text = 'Temporary' then begin
    panel11.Visible := true;
  end;
  if ISDData.NewApplicantsconntype.Text = 'Permanent' then begin
    DBCheckBox3.Visible := true;
  end;
  if ISDData.NewApplicantsconntype.Text = 'Separate Meter' then begin
    panel12.Visible := true;
  end;
  DateTimePicker1.Date       := ISDData.NewApplicantsConnTypeEndDate.Value;
  DBEdit56.Enabled           := True;
  Edit1.Enabled              := False;
  Edit2.Enabled              := False;
  Edit3.Enabled              := False;
  Edit1.Text          := '';
  Edit2.Text          := '';
  Edit3.Text          := '';
  DBEdit13.SetFocus;
end;

procedure TFPISDMainMenuForm.NewApplicantDeleteClick(Sender: TObject);
begin
  If ISDData.NewApplicants.IsEmpty then
    begin
      MessageDlg('No records to delete....', mtError, [mbOK], 0);
      exit;
    end;

if (MessageDlg('Confirm delete', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;

if ISDData.NewApplicantsORNumber.Text <> '' then  
begin
    MessageDlg('Unable to delete, transaction was already paid....', mtError, [mbOK], 0);
    exit;
end;

If not ISDData.LoadSurvey.IsEmpty then
begin
    ISDData.LoadSurvey.First;

    Repeat
       ISDData.LoadSurvey.Delete;
    Until ISDData.LoadSurvey.IsEmpty;
end;

If not ISDData.NewApplicantCharge.IsEmpty then
begin
    ISDData.NewApplicantCharge.First;

    Repeat
       ISDData.NewApplicantCharge.Delete;
    Until ISDData.NewApplicantCharge.IsEmpty;
end;

ISDData.NewApplicants.Delete;
end;

procedure TFPISDMainMenuForm.SaveNewApplicantClick(Sender: TObject);
begin
if dbedit56.Enabled = false then
begin
DBEdit56.Text := Edit3.Text + ', ' + Edit1 .text + ' ' + Edit2.Text;
end;
  if DBRadioGroup1.ItemIndex < 0 then
    begin
      MessageDlg('No rate selected... ', mtWarning, [mbOK], 0);
      DBRadioGroup1.SetFocus;
      exit;
    end;
  ISDData.NewApplicantsapplydate.AsDateTime := now;
  if DBRadioGroup2.ItemIndex = 1 then
  begin
     ISDData.NewApplicantsConnTypeEndDate.value      := DateTimePicker1.Date;
  end;
  ISDData.NewApplicants.Post;
  ISDData.NewApplicants.Close;
  ISDData.NewApplicants.Open;
  ISDData.NewApplicants.Last;
  NewApplicantsPanel.Visible := False;

  NewApplicantAdd.Visible    := true;
  NewApplicantEdit.Visible   := true;
  NewApplicantDelete.Visible := true;
  Panel11.Visible            := False;
  DBCheckBox3.Visible        := False;
  ISDData.VoterDistrct.Close;
  Brgy.Close;

end;

procedure TFPISDMainMenuForm.CancelNewApplicantClick(Sender: TObject);
begin
  NewApplicantAdd.Visible    := true;
  NewApplicantEdit.Visible   := true;
  NewApplicantDelete.Visible := true;
  Panel11.Visible            := False;
  DBCheckBox3.Visible        := False;

  ISDData.NewApplicants.Cancel;
  NewApplicantsPanel.Visible := False;

  ISDData.VoterDistrct.Close;
  Brgy.Close;
end;

procedure TFPISDMainMenuForm.NxLinkLabel2Click(Sender: TObject);
begin
  isoQuery.Close;
  isoQuery.ParamByName('reporttype').Text := 'TURN ON';
  isoQuery.Open;

  ConnectOrder.Close;
  ConnectOrder.ParamByName('idnewconnection').Text := ISDData.NewConnectionidNewConnection.Text;
  ConnectOrder.Open;

  QuickRep3.PreviewWidth  := Screen.Width;
  QuickRep3.PreviewHeight := Screen.Height;
  QuickRep3.Preview;

  ConnectOrder.Close;
end;

procedure TFPISDMainMenuForm.NxLinkLabel24Click(Sender: TObject);
begin
   VotersListPanel.Left    := 168;
   VotersListPanel.Top     := 73;
   VotersListPanel.Visible := True;
   VoterDistrict.SetFocus;
end;

procedure TFPISDMainMenuForm.CloseBtnClick(Sender: TObject);
begin
   VotersListPanel.Visible := False;
end;

procedure TFPISDMainMenuForm.NxButton6Click(Sender: TObject);
Var AddressStr : String;

begin
  AddressStr := '';

  Voters.Close;
  If VoterOption.ItemIndex = 0 then
    begin
      Voters.ParamByName('MunCode').Text      := '%'+VoterDistrict.Text+'%';
      Voters.ParamByName('DistrictCode').Text := '%';
      Voters.ParamByName('BrgyCode').Text     := '%';
      Voters.ParamByName('datefrom').asdate := datefrom.Date;
      Voters.ParamByName('dateto').asdate := dateto.Date;

      PrintVoterDistrict.ParamByName('MunCode').Text      := '%'+VoterDistrict.Text+'%';
      PrintVoterDistrict.ParamByName('DistrictCode').Text := '%';
      PrintVoterDistrict.open;

      AddressStr := PrintVoterDistrictMunicipality.Text;
      PrintVoterDistrict.Close;
    end;


  If VoterOption.ItemIndex = 1 then
    begin
      Voters.ParamByName('MunCode').Text      := '%';
      Voters.ParamByName('DistrictCode').Text := '%'+VoterDistrict.Text+'%';
      Voters.ParamByName('BrgyCode').Text     := '%';
      Voters.ParamByName('datefrom').asdate := datefrom.Date;
      Voters.ParamByName('dateto').asdate := dateto.Date;

      PrintVoterDistrict.ParamByName('MunCode').Text      := '%';
      PrintVoterDistrict.ParamByName('DistrictCode').Text := '%'+VoterDistrict.Text+'%';
      PrintVoterDistrict.open;

      AddressStr := PrintVoterDistrictDistrict.Text;
      PrintVoterDistrict.Close;
    end;

  If VoterOption.ItemIndex = 2 then
    begin
      Voters.ParamByName('MunCode').Text      := '%';
      Voters.ParamByName('DistrictCode').Text := '%';
      Voters.ParamByName('BrgyCode').Text     := '%'+VoterDistrict.Text+'%';
      Voters.ParamByName('datefrom').asdate := datefrom.Date;
      Voters.ParamByName('dateto').asdate := dateto.Date;
    end;

  If VoterOption.ItemIndex = 3 then
    begin
      Voters.ParamByName('MunCode').Text      := '%';
      Voters.ParamByName('DistrictCode').Text := '%';
      Voters.ParamByName('BrgyCode').Text     := '%';
      Voters.ParamByName('datefrom').asdate := datefrom.Date;
      Voters.ParamByName('dateto').asdate := dateto.Date;
    end;

  Voters.Open;
  If VoterOption.ItemIndex = 2 then AddressStr := VotersAddress.Text;

  If VoterOption.ItemIndex = 0 then Municipal.Caption := 'MUNICIPALITY '+AddressStr;
  If VoterOption.ItemIndex = 1 then Municipal.Caption := 'DISTRICT '+AddressStr;
  If VoterOption.ItemIndex = 2 then Municipal.Caption := 'BARANGAY '+AddressStr;
  If VoterOption.ItemIndex = 3 then Municipal.Caption := 'APLHA LIST ';

  QuickRep4.PreviewWidth  := Screen.Width;
  QuickRep4.PreviewHeight := Screen.Height;
  QuickRep4.Preview;

  Voters.Close;
end;

procedure TFPISDMainMenuForm.NxLinkLabel5Click(Sender: TObject);
begin
  BODApprovalPanel.Left    := 16;
  BODApprovalPanel.Top     := 31;
  BODApprovalPanel.Visible := True;
  ORDateFrom.Date          := StartOfTheMonth(Now);
  ORDateTo.Date            := EndOfTheMonth(Now);
  ORDateFrom.SetFocus;
end;

procedure TFPISDMainMenuForm.NxLinkLabel27Click(Sender: TObject);
begin
  BODApprovalPanel.Visible := False;
  MemberBOD.Close;
end;

procedure TFPISDMainMenuForm.NxButton7Click(Sender: TObject);
begin
  MemberBOD.Close;
  MemberBOD.ParamByName('Datefrom').AsDate := ORDateFrom.Date;
  MemberBOD.ParamByName('DateTo').AsDate   := ORDateTo.Date;
  MemberBOD.Open;
end;

procedure TFPISDMainMenuForm.NxLinkLabel80Click(Sender: TObject);
begin
  Complaintsummarypanel.visible := false;
end;

procedure TFPISDMainMenuForm.NxLinkLabel81Click(Sender: TObject);
var
  Memo3 : TfrxMemoView;
begin
   Memo3      := PcomplaintRep.FindComponent('Memo3') as TfrxMemoView;

   isoComplaintsQ.Close;
   isoComplaintsQ.Open;
   //Print All Printing===========================
  //==============================================
   if PComboBoxCategory.Text = 'PRINT ALL' then
   begin
      Pendingcomplaintsreport2.sql.Clear;
      Pendingcomplaintsreport2.sql.Add('select complaints.*, ');
      Pendingcomplaintsreport2.sql.Add('if(others is not NULL,concat(ifnull(complaint,''''),'' ( '',others,'' )''),ifnull(complaint,''''))  complaintF' );

      Pendingcomplaintsreport2.sql.Add('from complaints where date_format(datefiled,''%Y-%m-%d'') between :datefrom and :dateto and');
      Pendingcomplaintsreport2.sql.Add('actiontaken is null order by idcomplaints');

      PendingComplaintsReport2.ParamByName('datefrom').AsDate := PdateTimefrom.Date;
      PendingComplaintsReport2.ParamByName('dateto').AsDate   := PdateTimeto.Date;
      PendingComplaintsReport2.Open;
      ISDData.Signatories.OPEN;

      If Pendingcomplaintsreport2.IsEmpty then
        begin
          MessageDlg('No records to print....', mtError, [mbOK], 0);
          Pendingcomplaintsreport2.Close;
          exit;
        end;

      //PendingPeriodCovered.Caption  := 'Period Covered : '+datetostr(complaintdatefrom.Date) + ' - ' + datetostr(complaintdateto.Date);
      //QuickRep6.PreviewWidth  := Screen.Width;
      //QuickRep6.PreviewHeight := Screen.Height;
      //QuickRep6.Preview;

      Memo3.Text := 'Period Covered : '+datetostr(PDateTimeFrom.Date) + ' - ' + datetostr(PDateTimeTo.Date);
      PcomplaintRep.ShowReport;
      Pendingcomplaintsreport2.Close;
  end

  //Print ALL Specific Category Printing=======================
  //===========================================================
  else if (PComboBoxCategory.Text ='PRINT ALL METERING')OR
          (PComboBoxCategory.Text ='PRINT ALL SERVICE DROP')OR
          (PComboBoxCategory.Text ='PRINT ALL PRIMARY/SECONDARY LINE')OR
          (PComboBoxCategory.Text ='PRINT ALL DISTRIBUTION TRANSFORMER')OR
          (PComboBoxCategory.Text ='PRINT ALL DISTRIBUTION POLE')OR
          (PComboBoxCategory.Text ='PRINT ALL OTHER EQUIP.')OR
          (PComboBoxCategory.Text ='PRINT ALL OTHERS')then
  begin
    Pendingcomplaintsreport2.sql.Clear;
    Pendingcomplaintsreport2.sql.Add('select complaints.*, ');
    Pendingcomplaintsreport2.sql.Add('if(others is not NULL,concat(ifnull(complaint,''''),'' ( '',others,'' )''),ifnull(complaint,''''))  complaintF ' );
    Pendingcomplaintsreport2.sql.Add('from complaints where date_format(datefiled,''%Y-%m-%d'') between :datefrom and :dateto ');

    //===========Feltering Category============================
    //=========================================================
    if PComboBoxCategory.Text ='PRINT ALL METERING' then
      Pendingcomplaintsreport2.sql.Add('and category =''METERING'' ')
    else if PComboBoxCategory.Text ='PRINT ALL SERVICE DROP' then
      Pendingcomplaintsreport2.sql.Add(' and category =''SERVICE DROP'' ')
    else if PComboBoxCategory.Text ='PRINT ALL PRIMARY/SECONDARY LINE' then
      Pendingcomplaintsreport2.sql.Add(' and category =''PRIMARY / SECONDARY LINE'' ')
    else if PComboBoxCategory.Text ='PRINT ALL DISTRIBUTION TRANSFORMER' then
      Pendingcomplaintsreport2.sql.Add(' and category =''DISTRIBUTION TRANSFORMER'' ')
    else if PComboBoxCategory.Text ='PRINT ALL DISTRIBUTION POLE' then
      Pendingcomplaintsreport2.sql.Add(' and category =''DISTRIBUTION / SERVICE POLE'' ')
    else if PComboBoxCategory.Text ='PRINT ALL OTHER EQUIP.' then
      Pendingcomplaintsreport2.sql.Add(' and category =''OTHER EQUIPMENT'' ')
    else if PComboBoxCategory.Text ='PRINT ALL OTHERS' then
      Pendingcomplaintsreport2.sql.Add(' and category =''OTHERS'' ');

    //======End Feltering Category===================================
    //===============================================================

    Pendingcomplaintsreport2.sql.Add('and actiontaken is null order by idcomplaints');
    Pendingcomplaintsreport2.ParamByName('datefrom').AsDate := PdateTimefrom.Date;
    Pendingcomplaintsreport2.ParamByName('dateto').AsDate   := PdateTimeto.Date;
    Pendingcomplaintsreport2.Open;
    ISDData.Signatories.OPEN;

    If Pendingcomplaintsreport2.IsEmpty then
      begin
        MessageDlg('No records to print....', mtError, [mbOK], 0);
        Pendingcomplaintsreport2.Close;
        exit;
      end;

    Memo3.Text := 'Period Covered : '+datetostr(PDateTimeFrom.Date) + ' - ' + datetostr(PDateTimeTo.Date);
    PcomplaintRep.ShowReport;
    Pendingcomplaintsreport2.Close;
  end
  //=======================================================
  //=======================================================
  else
  BEGIN
     Pendingcomplaintsreport2.sql.Clear;
     Pendingcomplaintsreport2.sql.Add('select complaints.*, ');
     Pendingcomplaintsreport2.sql.Add('if(others is not NULL,concat(ifnull(complaint,''''),'' ( '',others,'' )''),ifnull(complaint,''''))  complaintF' );
     Pendingcomplaintsreport2.sql.Add('from complaints where date_format(datefiled,''%Y-%m-%d'') between :datefrom and :dateto and');
     Pendingcomplaintsreport2.sql.Add(' complaint = :complaint and actiontaken is null order by idcomplaints');


    Pendingcomplaintsreport2.ParamByName('datefrom').AsDate := PdateTimefrom.Date;
    Pendingcomplaintsreport2.ParamByName('dateto').AsDate   := PdateTimeto.Date;
    Pendingcomplaintsreport2.ParamByName('complaint').Text      := PComboBoxCategory.text;
    Pendingcomplaintsreport2.Open;
    ISDData.Signatories.OPEN;

    If Pendingcomplaintsreport2.IsEmpty then
      begin
        MessageDlg('No records to print....', mtError, [mbOK], 0);
        Pendingcomplaintsreport2.Close;
        exit;
      end;

    //PendingPeriodCovered.Caption  := 'Period Covered : '+datetostr(complaintdatefrom.Date) + ' - ' + datetostr(complaintdateto.Date);
    //QuickRep6.PreviewWidth  := Screen.Width;
    //QuickRep6.PreviewHeight := Screen.Height;
    //QuickRep6.Preview;

    Memo3.Text := 'Period Covered : '+datetostr(PDateTimeFrom.Date) + ' - ' + datetostr(PDateTimeTo.Date);
    PcomplaintRep.ShowReport;
    Pendingcomplaintsreport2.Close;
  END;
end;

procedure TFPISDMainMenuForm.NxLinkLabel82Click(Sender: TObject);
begin
  PComplaintsummarypanel.visible := false;
end;

procedure TFPISDMainMenuForm.NxLinkLabel8Click(Sender: TObject);
begin
  MemberBOD.Close;
  MemberBOD.ParamByName('Datefrom').AsDate := ORDateFrom.Date;
  MemberBOD.ParamByName('DateTo').AsDate   := ORDateTo.Date;
  MemberBOD.Open;
  
  If MemberBOD.IsEmpty then
    begin
      MessageDlg('No records to print....', mtInformation, [mbOK], 0);
      MemberBOD.Close;
      exit;
    end;

  NewMemberPeriodCovered.Caption := 'Period Covered '+DatetoStr(ORDateFrom.Date)+' - '+DatetoStr(ORDateTo.Date);
  QuickRep5.PreviewWidth  := Screen.Width;
  QuickRep5.PreviewHeight := Screen.Height;
  QuickRep5.Preview;

end;

procedure TFPISDMainMenuForm.NxLinkLabel12Click(Sender: TObject);
begin
  ResolutionNumberPanel.Left    := 115;
  ResolutionNumberPanel.Top     := 129;
  ResolutionNumberPanel.Visible := True;
  DateApproved.Date             := Now;
  BoardResolutionNumber.SetFocus;
end;

procedure TFPISDMainMenuForm.NxLinkLabel13Click(Sender: TObject);
begin
    complaintExportOrPreview;

    complaintExp.FileName := ExtractFilePath(Application.ExeName) + 'ComplaintsSummary.xls';
    complaintExp.Execute;
end;

procedure TFPISDMainMenuForm.NxButton9Click(Sender: TObject);
begin
  ResolutionNumberPanel.Visible := False;
end;

procedure TFPISDMainMenuForm.NxButton8Click(Sender: TObject);
begin
   If BoardResolutionNumber.Text = '' then
     begin
       MessageDlg('Please input BOD Resolution Number', mtError, [mbOK], 0);
       BoardResolutionNumber.SetFocus;
     end;
   if (MessageDlg('Updating resolution number for new members', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;

   UpdateBODRes.ParamByName('bodresolutionnumber').Text := BoardResolutionNumber.Text;
   UpdateBODRes.ParamByName('dateapproved').AsDate      := DateApproved.Date;
   UpdateBODRes.ParamByName('datefrom').AsDate          := ORDateFrom.Date;
   UpdateBODRes.ParamByName('dateto').AsDate            := ORDateTo.Date;
   UpdateBODRes.Execute;

   MessageDlg('Records Updated '+IntToStr(UpdateBODRes.RowsAffected), mtInformation, [mbOK], 0);
end;

procedure TFPISDMainMenuForm.BoardResolutionNumberKeyPress(Sender: TObject;
  var Key: Char);
begin
 If Key = #13 then
   begin
     Perform(CM_DIALOGKEY,VK_TAB,0);
     Key := #0;
   end;
end;

procedure TFPISDMainMenuForm.Button1Click(Sender: TObject);
begin
if not DirectoryExists('c:\Sign') then MkDir('c:\Sign');
 With ISDData do
  begin
   If OpenPictureDialog1.Execute then
   MemberMasterMembersign.LoadFromFile(OpenPictureDialog1.FileName);
  end;
end;

procedure TFPISDMainMenuForm.countcomplaintsrecords;
var
  CustName: string ;
begin
with ISDData do
begin
   countcomplaints.Close;
   countcomplaints.open;
   countcomplaints.First; // move to the first record
    while(not countcomplaints.EOF)do
      begin
      CustName := countcomplaints.FieldByName('category').AsString;
      if custname = 'METERING' then
         begin lblM.Caption := countcomplaints.FieldByName('count(*)').AsString;; end
      else if custname = 'SERVICE DROP' then
         begin lblSD.Caption := countcomplaints.FieldByName('count(*)').AsString;; end
      else if custname = 'PRIMARY LINE' then
         begin lblPL.Caption := countcomplaints.FieldByName('count(*)').AsString;; end
      else if custname = 'SECONDARY LINE' then
         begin lblSL.Caption := countcomplaints.FieldByName('count(*)').AsString;; end
      else if custname = 'DISTRIBUTION TRANSFORMER' then
         begin lblDT.Caption := countcomplaints.FieldByName('count(*)').AsString;; end
      else if custname = 'DISTRIBUTION / SERVICE POLE' then
         begin lblDSP.Caption := countcomplaints.FieldByName('count(*)').AsString;; end
      else if custname = 'OTHER EQUIPMENT' then
         begin lblOE.Caption := countcomplaints.FieldByName('count(*)').AsString;; end
      else if custname = 'OTHERS' then
         begin lblO.Caption := countcomplaints.FieldByName('count(*)').AsString;; end;
      countcomplaints.Next;
      end;

end;
end;

procedure TFPISDMainMenuForm.NxLinkLabel36Click(Sender: TObject);
begin
  VoterDistrictMainPanel.Left    := 24;
  VoterDistrictMainPanel.Top     := 23;
  VoterDistrictMainPanel.Visible := True;
  ISDData.VoterDistrct.Open;
end;

procedure TFPISDMainMenuForm.VoterDistrictCloseClick(Sender: TObject);
begin
  ISDData.VoterDistrct.Close;
  VoterDistrictMainPanel.Visible := False;
end;

procedure TFPISDMainMenuForm.VoterDistrictAddClick(Sender: TObject);
begin
  VoterDistrictAdd.Visible       := False;
  VoterDistrictEdit.Visible      := False;
  VoterDistrictDelete.Visible    := False;
  VoterDistrictClose.Visible     := False;
  VoterDistrictEditPanel.Left    := 80;
  VoterDistrictEditPanel.Top     := 179;
  VoterDistrictEditPanel.Visible := True;
  VoterDistrictEditPanel.Caption := 'Add Voter''s District Record';
  ISDData.VoterDistrct.Append;
  DBEdit65.SetFocus;
end;

procedure TFPISDMainMenuForm.DBEdit65KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TFPISDMainMenuForm.DBEdit68KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TFPISDMainMenuForm.DBEdit69KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TFPISDMainMenuForm.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TFPISDMainMenuForm.VoterDistrictEditClick(Sender: TObject);
begin
  VoterDistrictAdd.Visible       := False;
  VoterDistrictEdit.Visible      := False;
  VoterDistrictDelete.Visible    := False;
  VoterDistrictClose.Visible     := False;
  VoterDistrictEditPanel.Left    := 80;
  VoterDistrictEditPanel.Top     := 179;
  VoterDistrictEditPanel.Visible := True;
  VoterDistrictEditPanel.Caption := 'Edit Voter''s District Record';
  ISDData.VoterDistrct.Edit;
  DBEdit65.SetFocus;
end;

procedure TFPISDMainMenuForm.VoterDistrictDeleteClick(Sender: TObject);
begin
if (MessageDlg('Confirm delete?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;
ISDData.VoterDistrct.Delete;
end;

procedure TFPISDMainMenuForm.VoterDistrictSaveClick(Sender: TObject);
begin
  ISDData.VoterDistrct.Post;
  VoterDistrictEditPanel.Visible := False;
  VoterDistrictAdd.Visible       := True;
  VoterDistrictEdit.Visible      := True;
  VoterDistrictDelete.Visible    := True;
  VoterDistrictClose.Visible     := True;
end;

procedure TFPISDMainMenuForm.VoterDistrictCancelClick(Sender: TObject);
begin
  ISDData.VoterDistrct.Cancel;
  VoterDistrictEditPanel.Visible := False;
  VoterDistrictAdd.Visible       := True;
  VoterDistrictEdit.Visible      := True;
  VoterDistrictDelete.Visible    := True;
  VoterDistrictClose.Visible     := True;
end;

procedure TFPISDMainMenuForm.NxButton10Click(Sender: TObject);
begin
  VoterDistrictList.Left    := 60;
  VoterDistrictList.Top     := 32;
  VoterDistrictList.Visible := True;
  ISDData.VoterDistrct.Open;
end;

procedure TFPISDMainMenuForm.NxLinkLabel41Click(Sender: TObject);
begin
  VoterDistrictList.Visible := False;
  ISDData.VoterDistrct.Close;
end;

procedure TFPISDMainMenuForm.NxLinkLabel39Click(Sender: TObject);
begin
  ISDData.MemberMasterMunCode.Text      := ISDData.VoterDistrctMunCode.Text;
  ISDData.MemberMasterDistrictCode.Text := ISDData.VoterDistrctDistrictCode.Text;
  VoterDistrictList.Visible := False;
end;

procedure TFPISDMainMenuForm.filtercomplaints_linkClick(Sender: TObject);
var
 isuedStr : String;
begin
with ISDData do
begin
    complaints.Close;
    complaints.ParamByName('consumername').Text := '%'+SearchComplaint.Text+'%';
    complaints.ParamByName('datefrom').AsDate   := complaintdatefrom.Date;
    complaints.ParamByName('Dateto').AsDate     := complaintdateto.Date;
    case tabset1.tabindex of
      0:  complaints.ParamByName('category').text     := 'METERING';
      1:  complaints.ParamByName('category').text     := 'SERVICE DROP';
      2:  complaints.ParamByName('category').text     := 'PRIMARY / SECONDARY LINE';
      3:  complaints.ParamByName('category').text     := 'DISTRIBUTION TRANSFORMER';
      4:  complaints.ParamByName('category').text     := 'DISTRIBUTION / SERVICE POLE';
      5:  complaints.ParamByName('category').text     := 'OTHER EQUIPMENT';
      6:  complaints.ParamByName('category').text     := 'OTHERS';
    end;
    complaints.Open;


  if userentry_box.Checked = true then
    isuedStr := ' isuedBy like '+quotedstr(ISDData.UsersUserID.Text)
  else
    isuedStr := 'isuedBy like '+quotedstr('%');

  If (filtercomplaints_link.Caption = 'View All Complaints') then
    begin
       complaints.Filtered := false;
       filtercomplaints_link.Caption := 'View Pending Complaints - On';
       complaints.FilterSQL := 'accomplished like '+quotedstr('0')+ ' and '+ isuedStr;
       complaints.Filtered := true;
       filtercomplaints_link.Font.Color := clRed;
    end
  else if (filtercomplaints_link.Caption = 'View Pending Complaints - On') then
    begin
       complaints.Filtered := false;
       filtercomplaints_link.Caption := 'View Pending Complaints - Off';
       complaints.FilterSQL := 'accomplished like '+quotedstr('1')+ ' and '+ isuedStr;
       complaints.Filtered := true;
       filtercomplaints_link.Font.Color := clGreen;
    end
  else if ((filtercomplaints_link.Caption = 'View Pending Complaints - Off')) then
    begin
       complaints.Filtered := false;
       filtercomplaints_link.Caption := 'View All Complaints';
       complaints.FilterSQL := isuedStr;
       complaints.Filtered := true;
       filtercomplaints_link.Font.Color := clBlack;
  end;

end;
  
end;

procedure TFPISDMainMenuForm.NxLinkLabel14Click(Sender: TObject);
begin
  case tabset1.tabindex of
        0:  begin
              PComboBoxCategory.items.Clear;
              PComboBoxCategory.Items.BeginUpdate;
              PComboBoxCategory.Items.Add('PRINT ALL');
              PComboBoxCategory.Items.Add('PRINT ALL METERING') ;
              PComboBoxCategory.Items.Add('MTR CHANGE') ;
              PComboBoxCategory.Items.Add('MTR DISLOCATED') ;
              PComboBoxCategory.Items.Add('MTR ERRATIC REGISTRATION') ;
              PComboBoxCategory.Items.Add('MTR GLASS BROKEN') ;
              PComboBoxCategory.Items.Add('MTR LOOSE CONNECTION') ;
              PComboBoxCategory.Items.Add('MTR TEST') ;
              PComboBoxCategory.Items.Add('MTR NOT RUNNING') ;
              PComboBoxCategory.Items.Add('MTR REMOVAL') ;
              PComboBoxCategory.Items.Add('MTR RUNNING TO FAST') ;
              PComboBoxCategory.Items.Add('MTR RUNNING TO SLOW') ;
              PComboBoxCategory.Items.Add('MTR RUNNING WITHOUT LOAD') ;
              PComboBoxCategory.Items.Add('MTR STUCK UP METER') ;
              PComboBoxCategory.Items.Add('MTR TRANSFER') ;
              PComboBoxCategory.Items.Add('MTR BURNED') ;

              PComboBoxCategory.Items.EndUpdate;
            end;
        1:  begin
              PComboBoxCategory.items.Clear;
              PComboBoxCategory.Items.BeginUpdate;
              PComboBoxCategory.Items.Add('PRINT ALL');
              PComboBoxCategory.Items.Add('PRINT ALL SERVICE DROP') ;
              PComboBoxCategory.Items.Add('SDW CHANGE/UPGRADE') ;
              PComboBoxCategory.Items.Add('SDW CUT/BROKEN') ;
              PComboBoxCategory.Items.Add('SDW LOOSE CONNECTION') ;
              PComboBoxCategory.Items.Add('SDW NO CURRENT') ;
              PComboBoxCategory.Items.Add('SDW RE-ROUTE') ;
              PComboBoxCategory.Items.Add('SDW RECONNECTION / RETAPPING');
              PComboBoxCategory.Items.Add('SDW SAGGING') ;
              PComboBoxCategory.Items.Add('SDW TRANSFER') ;
              PComboBoxCategory.Items.Add('SDW DISCO / RECO') ;

              PComboBoxCategory.Items.EndUpdate;
            end;
        2:  begin
              PComboBoxCategory.items.Clear;
              PComboBoxCategory.Items.BeginUpdate;
              PComboBoxCategory.Items.Add('PRINT ALL');
              PComboBoxCategory.Items.Add('PRINT ALL PRIMARY/SECONDARY LINE') ;
              PComboBoxCategory.Items.Add('PSL LOOSE CONNECTION') ;
              PComboBoxCategory.Items.Add('PSL LOOSE CONNECTION (SEVERAL)') ;
              PComboBoxCategory.Items.Add('PSL SAGGING') ;
              PComboBoxCategory.Items.Add('PSL CUT/BROKEN') ;
              PComboBoxCategory.Items.Add('PSL CORRODED') ;
              PComboBoxCategory.Items.Add('PSL CHANGE/UPGRADE') ;
              PComboBoxCategory.Items.Add('PSL CLEARING OF VEGETATION') ;

              PComboBoxCategory.Items.EndUpdate;
            end;
        3:  begin
              PComboBoxCategory.items.Clear;
              PComboBoxCategory.Items.BeginUpdate;
              PComboBoxCategory.Items.Add('PRINT ALL');
              PComboBoxCategory.Items.Add('PRINT ALL DISTRIBUTION TRANSFORMER') ;
              PComboBoxCategory.Items.Add('DT BANKING') ;
              PComboBoxCategory.Items.Add('DT REMOVAL') ;
              PComboBoxCategory.Items.Add('DT BUSTED/DAMAGE') ;
              PComboBoxCategory.Items.Add('DT TRANSFER') ;
              PComboBoxCategory.Items.Add('DT REPLACE') ;
              PComboBoxCategory.Items.Add('DT LOOSE CONNECTION') ;
              PComboBoxCategory.Items.Add('DT NO/BROKEN EQUIPMENT GROUNDING') ;
              PComboBoxCategory.Items.Add('DT (OWNERS) TRANSFORMER TESTING') ;
              PComboBoxCategory.Items.Add('DT (OWNERS)  TRANSFORMER INSTALLATION') ;
              PComboBoxCategory.Items.Add('DT (OWNERS)  TRANSFORMER REMOVAL') ;

              PComboBoxCategory.Items.EndUpdate;
            end;
        4:  begin
              PComboBoxCategory.items.Clear;
              PComboBoxCategory.Items.BeginUpdate;
              PComboBoxCategory.Items.Add('PRINT ALL');
              PComboBoxCategory.Items.Add('PRINT ALL DISTRIBUTION POLE') ;
              PComboBoxCategory.Items.Add('DSP LEANING POLE') ;
              PComboBoxCategory.Items.Add('DSP ROTTEN POLE') ;
              PComboBoxCategory.Items.Add('DSP BROKEN POLE') ;
              PComboBoxCategory.Items.Add('DSP TRANSFER OF POLE') ;
              PComboBoxCategory.Items.Add('DSP RE-ROUTING OF POLE') ;
              PComboBoxCategory.Items.Add('DSP UPGRADING OF POLE') ;
              PComboBoxCategory.Items.Add('DSP INSTALLATION OF ADDITIONAL POLE') ;
              PComboBoxCategory.Items.Add('DSP BROKEN / CORRODED POLE ACCESSORIES') ;
              PComboBoxCategory.Items.Add('DSP NO / BROKEN EQUIPMENT GROUNDING') ;

              PComboBoxCategory.Items.EndUpdate;
            end;
        5:  begin
              PComboBoxCategory.items.Clear;
              PComboBoxCategory.Items.BeginUpdate;
              PComboBoxCategory.Items.Add('PRINT ALL');
              PComboBoxCategory.Items.Add('PRINT ALL OTHER EQUIP.') ;
              PComboBoxCategory.Items.Add('INSTALLATION OF RECLOSER / BREAKER') ;
              PComboBoxCategory.Items.Add('BROKEN INSULATOR') ;
              PComboBoxCategory.Items.Add('DAMAGE FUSE TUBE') ;
              PComboBoxCategory.Items.Add('DAMAGE CUT-OUT ASSEMBLY') ;
              PComboBoxCategory.Items.Add('DAMAGE CAPACITOR BANK') ;
              PComboBoxCategory.Items.Add('DAMAGE 15-KV DISCONNECT SWITCH') ;
              PComboBoxCategory.Items.Add('DAMAGE SECTIONALIZER') ;
              PComboBoxCategory.Items.Add('DAMAGE RECLOSER / BREAKER') ;
              PComboBoxCategory.Items.Add('DAMAGE INSTRUMENT TRANSFORMERS') ;
              PComboBoxCategory.Items.Add('DAMAGE LIGHTNING ARRESTER') ;
              PComboBoxCategory.Items.EndUpdate;
            end;
        6:  begin
              PComboBoxCategory.items.Clear;
              PComboBoxCategory.Items.BeginUpdate;
              PComboBoxCategory.Items.Add('PRINT ALL');
              PComboBoxCategory.Items.Add('PRINT ALL OTHERS');
              PComboBoxCategory.Items.Add('EXTENSION OF PRIMARY / SECONDARY LINE') ;
              PComboBoxCategory.Items.Add('CHANGE NAME') ;
              PComboBoxCategory.Items.Add('CERTIFICATION') ;
              PComboBoxCategory.Items.EndUpdate;
            end;
  end;
   PComplaintsummarypanel.BringToFront;
   PComplaintsummarypanel.Visible  := true;
   PComplaintsummarypanel.top      := 229;
   PComplaintsummarypanel.left     := 233;
   PdatetimeFrom.DateTime:= StartOfTheMonth(Now);
   PdatetimeTo.DateTime:= EndOfTheMonth(Now);
   PComboBoxCategory.ItemIndex := 1;
end;

procedure TFPISDMainMenuForm.NxButton11Click(Sender: TObject);
begin
  NewApplicantVoterDistrict.Left    := 92;
  NewApplicantVoterDistrict.Top     := 152;
  NewApplicantVoterDistrict.Visible := True;
  NewApplicantVoterDistrict.BringToFront;
  ISDData.VoterDistrct.Open;
end;

procedure TFPISDMainMenuForm.NxLinkLabel42Click(Sender: TObject);
begin
  With ISDData do
    begin
     NewApplicantsArea.Text            := VoterDistrctMunCode.Text;
     NewApplicantsDistrict.Text        := VoterDistrctDistrictCode.Text;
     NewApplicantVoterDistrict.Visible := False;
     ISDData.VoterDistrct.Close;
     DBEdit55.SetFocus;
    end;
end;

procedure TFPISDMainMenuForm.NxLinkLabel43Click(Sender: TObject);
begin
  NewApplicantVoterDistrict.Visible := False;
  ISDData.VoterDistrct.Close;
end;

procedure TFPISDMainMenuForm.NxLinkLabel44Click(Sender: TObject);
begin
  QuickRep7.PreviewWidth  := Screen.Width;
  QuickRep7.PreviewHeight := Screen.Height;
  QuickRep7.Preview;
end;

procedure TFPISDMainMenuForm.MMAddClick(Sender: TObject);
begin
  MMEditorPanel.Left    := 32;
  MMEditorPanel.Top     := 94;
  MMEditorPanel.Visible := True;

  MMAdd.Visible         := False;
  ISDData.ChangeMeter.Append;
  ISDData.ChangeMeterDate.AsDateTime := Now;
  DBEdit70.SetFocus;
end;

procedure TFPISDMainMenuForm.ComputeChargesClick(Sender: TObject);
begin
  If ISDData.NewApplicants.IsEmpty then
    begin
      MessageDlg('New Applicants Table is empty......'+#13+#10+
                 'Cannot perform requested function', mtError, [mbOK], 0);
      exit;
    end;

  if not assigned(ComputeChargesForm) then
  ComputeChargesForm := TComputeChargesForm.Create(self);

  ComputeChargesForm.isUpdate := false;

  ISDData.NewApplicantCharge.Close;
  ISDData.NewApplicantCharge.FilterSQL:='idnewapply like '+quotedstr(ISDData.NewApplicantsidNewApply.Text);
  ISDData.NewApplicantCharge.Open;
  
  ComputeChargesForm.ShowModal;
end;

procedure TFPISDMainMenuForm.DBEdit62KeyPress(Sender: TObject;
  var Key: Char);
begin
  If key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TFPISDMainMenuForm.DBEdit70KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      MMMaster.Close;
      MMMaster.ParamByName('AccountNumber').Text := DBEdit70.Text;
      MMMaster.Open;

      If MMMaster.IsEmpty then
        begin
          MessageDlg('No Account Number match....', mtError, [mbOK], 0);
          MMMaster.Close;
          DBEdit70.SetFocus;
          Exit;
        end;

      With ISDData do
        begin

          ChangeMeterCode.Text              := MMMasterCode.Text;
          ChangeMeterArea.Text              := MMMasterArea.Text;
          ChangeMeterBook.Text              := MMMasterBook.Text;
          ChangeMeterSequence.Text          := MMMasterSequence.Text;
          ChangeMeterName.Text              := MMMasterName.Text;
          ChangeMeterLastReading.AsFloat    := MMMasterPresentReadingKWH.AsFloat;
          ChangeMeterOldMeterBrand.Text     := MMMasterMeterBrand.Text;
          ChangeMeterOldSerialNumber.Text   := MMMasterSerial.Text;
          ChangeMeterOldMeterMult.AsInteger := MMMasterMultiplier.AsInteger;

          MMChangeMeter.ParamByName('code').Text := MMMasterCode.Text;
          MMChangeMeter.Open;

          If not MMChangeMeter.IsEmpty then
            begin
              MMChangeMeter.First;
              ChangeMeterLTDate.AsDateTime := MMChangeMeterDate.AsDateTime;
              ChangeMeterLTSerial.Text     := MMChangeMeterNewMeterSerial.Text;
            end;

          MMChangeMeter.Close;
        end;

      DBComboBox4.SetFocus;

    end;
end;

procedure TFPISDMainMenuForm.DBEdit71KeyPress(Sender: TObject;
  var Key: Char);
begin
  If key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TFPISDMainMenuForm.MMSaveClick(Sender: TObject);
begin
if (MessageDlg('SAVE will automatically update billing records...'+#13+#10+'The process is irreversible for your rights and'+#13+#10+'only a system administrator can undo this...'+#13+#10+'Proceed?', mtWarning, [mbYes, mbNo], 0) = mrNo) then exit;
 with ISDData do
  begin
    ChangeMeter.Post;
    MMMaster.Edit;
    MMMasterCM.Text                       := '1';
    MMMasterCMMultiplier.AsCurrency         := MasterMultiplier.AsCurrency;
    MMMasterCMPreviousReadingKWH.Text       := MasterPresentReadingKWH.Text;
    MMMasterCMPresentReadingKWH.AsCurrency  := ChangeMeterLastReading.AsCurrency;
    If ChangeMeterAveCons.AsCurrency > 0 then MMMasterCMKilowattHour.AsCurrency := ChangeMeterAveCons.AsCurrency;
    MMMasterCMDemand.AsCurrency             := MMMasterDemand.AsCurrency;
    MMMasterCMMultiplier.Text               := ChangeMeterOldMeterMult.Text;

    MMMasterMeterBrand.Text                 := ChangeMeterNewMeterBrand.Text;
    MMMasterSerial.Text                     := ChangeMeterNewMeterSerial.Text;
    MMMasterPresentReadingKWH.AsFloat       := ChangeMeterInitialReading.AsFloat;
    MMMasterMultiplier.AsFloat              := ChangeMeterNewMeterMult.AsFloat;
    MMMaster.Post;
    MMMaster.Close;

    MMEditorPanel.Visible := False;
    MMAdd.Visible         := True;

  end;
end;

procedure TFPISDMainMenuForm.MMCancelClick(Sender: TObject);
begin
  MMMaster.Close;
  ISDData.ChangeMeter.Cancel;
  MMEditorPanel.Visible := False;
  MMAdd.Visible         := True;
end;

procedure TFPISDMainMenuForm.MMSummaryClick(Sender: TObject);
begin
  MMSummaryPanel.Left    := 200;
  MMSummaryPanel.Top     := 152;
  MMSummaryPanel.Visible := True;
  MMDateFrom.Date        := MMVDateFrom.Date;
  MMDateTo.Date          := MMVDateTo.Date;
  MMReportType.SetFocus;
end;

procedure TFPISDMainMenuForm.NxButton2Click(Sender: TObject);
begin
  If MMReportType.ItemIndex < 0 then
    begin
      MessageDlg('Please select a valid report type', mtError, [mbOK], 0);
      MMReportType.SetFocus;
      exit;
    end;

  MMReportCoveredPeriod.Caption := 'PERIOD COVERED '+DateToStr(MMDateFrom.Date)+' - '+DateToStr(MMDateTo.Date);
  PrintMMSummary.ParamByName('datefrom').AsDate := MMDateFrom.Date;
  PrintMMSummary.ParamByName('dateto').AsDate   := MMDateTo.Date;

  If MMReportType.ItemIndex = 0 then
    begin
      PrintMMSummary.ParamByName('remarks').Text := 'CHANGE METER';
      MMReportTypeLable.Caption     := 'CHANGE METER SUMMARY';
    end
    else
    begin
      PrintMMSummary.ParamByName('remarks').Text := 'CALIBRATION';
      MMReportTypeLable.Caption     := 'CALIBRATION SUMMARY';
    end;
  PrintMMSummary.Open;
  QuickRep8.PreviewWidth  := Screen.Width;
  QuickRep8.PreviewHeight := Screen.Height;
  QuickRep8.Preview;
  PrintMMSummary.Close;
end;

procedure TFPISDMainMenuForm.NxButton12Click(Sender: TObject);
begin
  MMSummaryPanel.Visible := False;
end;

procedure TFPISDMainMenuForm.NxLinkLabel45Click(Sender: TObject);
begin
  with ISDData do
   begin
     ChangeMeter.Close;
     ChangeMeter.ParamByName('datefrom').AsDate := MMVDateFrom.Date;
     ChangeMeter.ParamByName('dateto').AsDate   := MMVDateTo.Date;
     ChangeMeter.ParamByName('name').Text       := '%';
     ChangeMeter.Open;
   end;
end;

procedure TFPISDMainMenuForm.MMSearchButtonClick(Sender: TObject);
begin
  With ISDData do
    begin
      ChangeMeter.Close;
      ChangeMeter.ParamByName('datefrom').AsDate := StartOfTheYear(now);
      ChangeMeter.ParamByName('dateto').AsDate   := EndOfTheYear(now);
      ChangeMeter.ParamByName('name').Text       := '%'+MMSearch.Text+'%';
      ChangeMeter.Open;
    end;
end;

procedure TFPISDMainMenuForm.ReconSearchButtonClick(Sender: TObject);
begin
  With ISDData do
    begin
      Recon.Close;
      Recon.ParamByName('datefrom').AsDatetime := StartOfTheYear(now);
      Recon.ParamByName('dateto').AsDatetime   := EndOfTheYear(now);
      Recon.ParamByName('name').Text           := '%'+ReconSearch.Text+'%';
      Recon.Open;

    case RadioGroupRecon.ItemIndex of
      0 : begin
             Recon.Filtered := false;
             Recon.FilterSQL := ' reconnectionfee like '+quotedstr('%');
             Recon.Filtered := true;
          end;
     1  : begin
             Recon.Filtered := false;
             Recon.FilterSQL := ' reconnectionfee like '+quotedstr('100');
             Recon.Filtered := true;
          end;
     2  : begin
             Recon.Filtered := false;
             Recon.FilterSQL := ' reconnectionfee like '+quotedstr('30');
             Recon.Filtered := true;
          end;
    end;
    end;
end;

procedure TFPISDMainMenuForm.ReconVPeriodCoveredClick(Sender: TObject);
begin
  With ISDData do
    begin
      Recon.Close;
      Recon.ParamByName('datefrom').AsDateTIME := ReconVDateFrom.Date;
      Recon.ParamByName('dateto').AsDateTIME   := ReconVDateTo.Date;
      Recon.ParamByName('name').Text       := '%';
      Recon.Open;
    end;
end;

procedure TFPISDMainMenuForm.RadioGroupReconClick(Sender: TObject);
begin
  ReconSearchButtonClick(self);
end;

procedure TFPISDMainMenuForm.ReconAddClick(Sender: TObject);
begin
  ReconPanel.Left     := 78;
  ReconPanel.Top      := 95;
  ReconPanel.Visible  := True;
  ReconPanel.BringToFront;
  ReconAdd.Visible    := False;
  ReconDelete.Visible := False;
  NxLinkLabel58.Visible :=  False;

  DBEdit87.SetFocus;
  ISDData.Recon.Append;
  ISDData.Reconrecondate.AsDateTime := Now;
  ISDData.Reconrecondate.EditMask   := '!99/99/00 !90:00:00>LL;1;_';
  ISDData.ReconisuedBy.Text         := ISDData.UsersUserID.Text;

  isReconadd := true;
end;

procedure TFPISDMainMenuForm.DBEdit88KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      MMMaster.Close;
      MMMaster.ParamByName('AccountNumber').Text := DBEdit88.Text;
      MMMaster.Open;

      If MMMaster.IsEmpty then
        begin
          MessageDlg('No Account Number match....', mtError, [mbOK], 0);
          MMMaster.Close;
          DBEdit88.SetFocus;
          Exit;
        end;

      With ISDData do
        begin
          ReconCode.Text              := MMMasterCode.Text;
          ReconArea.Text              := MMMasterArea.Text;
          ReconBook.Text              := MMMasterBook.Text;
          ReconName.Text              := MMMasterName.Text;
          ReconAddress.Text           := MMMasterAddress.Text;
          ReconDiscoDate.AsDateTime   := MMMasterDisconnectionDate.AsDateTime;
          ReconMeterBrand.Text        := MMMasterMeterBrand.Text;
          ReconSerial.Text            := MMMasterSerial.Text;
          ReconMultiplier.AsInteger   := MMMasterMultiplier.AsInteger;
          If MMMasterConnCode.Text = '5' then
          Reconmoreremarks.AsString   := 'METER WAS REMOVED';

          MMMaster.Close;
        end;

      DBEdit94.SetFocus;
    end;
end;

procedure TFPISDMainMenuForm.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TFPISDMainMenuForm.DBEdit94KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
      with ISDData do
        begin
          Reconevat.AsCurrency := Reconreconnectionfee.AsCurrency * 0.12;
          ReconRemarks.Text    := FormatCurr('#,##0.00',Reconreconnectionfee.AsCurrency +
                                                        Reconevat.AsCurrency +
                                                        ReconBillDeposit.AsCurrency);
        end;
    end;
end;

procedure TFPISDMainMenuForm.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TFPISDMainMenuForm.ReconSaveClick(Sender: TObject);
var idrecon : String;
begin
  if isReconadd then
  begin
    if nonpay.Checked = true then
      isddata.ReconORNumber.text := 'Non-payment';

    ISDData.Recon.Post;
  end
  else
  begin
    if nonpay.Checked = true then
        begin
          if (Length(isddata.ReconORNumber.Text)<=2) or (isddata.ReconORNumber.IsNull) then
            begin
              isddata.ReconORNumber.text := 'Non-payment';
              ISDData.Recon.Post;
            end;
        end
      else
        begin
          idrecon := ISDData.Reconidrecon.Text;
          ISDData.Recon.Post;

          if (isddata.ReconORNumber.Text = 'Non-payment') or (Length(isddata.ReconORNumber.Text)<=2) then
            begin
              tmpQ.SQL.Clear;
              tmpQ.SQL.Add('update recon set ORNumber = :ornumber where idrecon = :idrecon');
              tmpQ.ParamByName('ornumber').Value := NULL;
              tmpQ.ParamByName('idrecon').Text := idrecon;
              tmpQ.Execute;
            end;

        end;
  end;



  ReconPanel.Visible    := False;
  ReconAdd.Visible      := True;
  ReconDelete.Visible   := True;
  NxLinkLabel58.Visible := True;
end;

procedure TFPISDMainMenuForm.ReconCancelClick(Sender: TObject);
begin
  ISDData.Recon.Cancel;
  ReconPanel.Visible := False;
  ReconAdd.Visible    := True;
  ReconDelete.Visible := True;
  NxLinkLabel58.Visible := True;
end;

procedure TFPISDMainMenuForm.ReconDeleteClick(Sender: TObject);
begin
  If ISDData.Recon.IsEmpty then
    begin
      MessageDlg('No records to delete....', mtError, [mbOK], 0);
      exit;
    end;

 if not ISDData.ReconORNumber.IsNull  then
 begin
   MessageDlg('Unable to delete reconnection entry.'+#13+'The cashier was already issued an OR..', mtWarning, [mbOK], 0);
   exit;
 end;

if (MessageDlg('Confirm delete', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;

If not ISDData.ReconSurvey.IsEmpty then
begin
    ISDData.ReconSurvey.First;

    Repeat
       ISDData.ReconSurvey.Delete;
    Until ISDData.ReconSurvey.IsEmpty;
end;

ISDData.Recon.Delete;

end;

procedure TFPISDMainMenuForm.NxLinkLabel48Click(Sender: TObject);
begin
  ReconWattage.AsFloat := ReconWattage.AsFloat * 746;
end;

procedure TFPISDMainMenuForm.NxLinkLabel49Click(Sender: TObject);
begin
  NxHeaderPanel11.Left    := 43;
  NxHeaderPanel11.Top     := 156;
  NxHeaderPanel11.Visible := True;
  NxHeaderPanel11.Caption := 'Edit District and Municipality';
  CRDBGrid3.Enabled       := false;
  panel6.Enabled          := false;
  panel7.Enabled          := false;
  ISDData.VoterDistrct.Edit;
  DBEdit134.SetFocus;
end;

procedure TFPISDMainMenuForm.ReconWattageKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
      If (ReconWattage.AsFloat > 0) and (ReconHrsUsed.AsFloat > 0) then
      ReconKWHR.AsFloat := (((ReconWattage.AsFloat * ReconHrsUsed.AsFloat)) / 1000 * 30) * ReconUnits.AsFloat;
      ReconSummKwhr.ParamByName('idrecon').AsInteger := ISDData.Reconidrecon.AsInteger;
      ReconSummKwhr.Open;
      ReconTKilowattHour.Caption := FloatToStr(ReconSummKwhrkilowatthour.AsFloat);
      ReconTBillDeposit.Caption  := FormatCurr('####.00',(ReconSummKwhrkilowatthour.AsFloat * ReconRate.AsFloat) + ReconFixFee.AsFloat );
      ReconSummKwhr.close;
    end;
end;

procedure TFPISDMainMenuForm.RefreshRecords1Click(Sender: TObject);
begin
  ISDData.NewApplicants.Close;
  ISDData.NewApplicants.FilterSQL := '';
  ISDData.NewApplicants.Open;

  ISDData.NewApplicants.Last;
end;

procedure TFPISDMainMenuForm.RestorDeletedMemberClick(Sender: TObject);
begin
with ISDdata do begin
      If DeletedMember.IsEmpty then begin
           MessageDlg('No record to Restor', mtError, [mbOK], 0);
           Exit; end;
      If (MessageDlg('Confirm Delete?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;
          tmpQ.Close;
          tmpQ.SQL.Clear;
          tmpQ.SQL.add ('insert into membermaster');
          tmpQ.SQL.add ('(idmembermaster, IdNewApply, MunCode, DistrictCode, BrgyCode, Membername, Address, Gender, BirthDate, Spouse,');
          tmpQ.SQL.add ('MemberStatus, MemberNumber, IDNo, BODResNumber, DateApproved, MFORNumber, MFORDate, DateTurnOn, TOOrderNo,');
          tmpQ.SQL.add ('EDAmount, EDOrNo, EDDate, MemberPic, SpousePic, MemberSign) values');
          tmpQ.SQL.add ('(:idmembermaster, :IdNewApply, :MunCode, :DistrictCode, :BrgyCode, :Membername, :Address, :Gender, :BirthDate, :Spouse,');
          tmpQ.SQL.add (':MemberStatus, :MemberNumber, :IDNo, :BODResNumber, :DateApproved, :MFORNumber, :MFORDate, :DateTurnOn, :TOOrderNo,');
          tmpQ.SQL.add (':EDAmount, :EDOrNo, :EDDate, :MemberPic, :SpousePic, :MemberSign)');

          tmpQ.ParamByName('idmembermaster').text      := DeletedMemberidmembermaster.Text;
          tmpQ.ParamByName('IdNewApply').text          := DeletedMemberIdNewApply.text;
          tmpQ.ParamByName('MunCode').text             := DeletedMemberMunCode.Text;
          tmpQ.ParamByName('DistrictCode').text        := DeletedMemberDistrictCode.Text;
          tmpQ.ParamByName('BrgyCode').text            := DeletedMemberBrgyCode.Text;
          tmpQ.ParamByName('Membername').text          := DeletedMemberMembername.Text;
          tmpQ.ParamByName('Address').text             := DeletedMemberAddress.Text;
          tmpQ.ParamByName('Gender').text              := DeletedMemberGender.Text;
          if DeletedMemberBirthDate.isNULL then
             tmpQ.ParamByName('BirthDate').value      := NULL
          else
            tmpQ.ParamByName('BirthDate').asdate       := DeletedMemberBirthDate.Value;
          tmpQ.ParamByName('Spouse').text              := DeletedMemberSpouse.Text;
          tmpQ.ParamByName('MemberStatus').text        := DeletedMemberMemberStatus.Text;
          tmpQ.ParamByName('MemberNumber').text        := DeletedMemberMemberNumber.Text;
          tmpQ.ParamByName('IDNo').text                := DeletedMemberIDNo.Text;
          tmpQ.ParamByName('BODResNumber').text        := DeletedMemberBODResNumber.Text;
          if DeletedMemberDateApproved.isNULL then
            tmpQ.ParamByName('DateApproved').value    := NULL
          else
            tmpQ.ParamByName('DateApproved').asdate    := DeletedMemberDateApproved.Value;
          tmpQ.ParamByName('MFORNumber').text          := DeletedMemberMFORNumber.Text;
          if DeletedMemberMFORDate.isNULL then
            tmpQ.ParamByName('MFORDate').value       := NULL
          else
            tmpQ.ParamByName('MFORDate').asdate        := DeletedMemberMFORDate.Value;
          if DeletedMemberDateTurnOn.isNULL then
            tmpQ.ParamByName('DateTurnOn').value      := NULL
          else
            tmpQ.ParamByName('DateTurnOn').asdate      := DeletedMemberDateTurnOn.Value;
          tmpQ.ParamByName('TOOrderNo').text           := DeletedMemberTOOrderNo.Text;
          tmpQ.ParamByName('EDAmount').text            := DeletedMemberEDAmount.Text;
          tmpQ.ParamByName('EDOrNo').text              := DeletedMemberEDOrNo.Text;
          tmpQ.ParamByName('EDDate').text              := DeletedMemberEDDate.Text;
          tmpQ.ParamByName('MemberPic').AsBlob         := DeletedMemberMemberPic.Value;
          tmpQ.ParamByName('SpousePic').AsBlob         := DeletedMemberSpousePic.Value;
          tmpQ.ParamByName('MemberSign').AsBlob        := DeletedMemberMemberSign.Value;
          tmpQ.Execute;

          ShowMessage('Record Restored');
          DeletedMember.Delete;
          DeletedMember.Close;
          DeletedMember.ParamByName('MemberName').Text := '%'+SearchDeletedMemberEdit.Text+'%';
          DeletedMember.Open;

end;
end;


procedure TFPISDMainMenuForm.ReconLoadAddClick(Sender: TObject);
begin
  With ISDData do
    begin
      ReconSurvey.Append;
      ReconSurveyidrecon.AsInteger     := Reconidrecon.AsInteger;
      ReconSurveydescription.Text      := ReconDesc.Text;
      ReconSurveywattage.AsFloat       := ReconWattage.AsFloat;
      ReconSurveyunits.AsInteger       := ReconUnits.AsInteger;
      ReconSurveyhoursused.AsFloat     := ReconHrsUsed.AsFloat;
      ReconSurveykilowatthour.AsFloat  := ReconKWHR.AsFloat;
      ReconSurvey.Post;
      ReconSummKwhr.ParamByName('idRecon').AsInteger := Reconidrecon.AsInteger;
      ReconSummKwhr.Open;
      ReconTKilowattHour.Caption        := FloatToStr(ReconSummKwhrkilowatthour.AsFloat);
      ReconTBillDeposit.Caption := FormatCurr('####.00',(ReconSummKwhrkilowatthour.AsFloat * ReconRate.AsFloat) + ReconFixFee.AsFloat );
      ReconSummKwhr.Close;
      ReconDesc.SetFocus;
    end;
end;

procedure TFPISDMainMenuForm.ReconLoadDeleteClick(Sender: TObject);
begin
  if (MessageDlg('Confirm delete', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;
  ISDData.ReconSurvey.Delete;
  ReconSummKwhr.ParamByName('idRecon').AsInteger := ISDData.Reconidrecon.AsInteger;
  ReconSummKwhr.Open;
  ReconTKilowattHour.Caption := FloatToStr(ReconSummKwhrkilowatthour.AsFloat);
  ReconTBillDeposit.Caption  := FormatCurr('####.00',(ReconSummKwhrkilowatthour.AsFloat * ReconRate.AsFloat) + ReconFixFee.AsFloat );
  ReconSummKwhr.Close;
  NextDBGrid12.SetFocus;
end;

procedure TFPISDMainMenuForm.ReconLoadCloseClick(Sender: TObject);
begin
  ReconSurveyPanel.Visible := False;
  ISDData.Recon.Edit;
  ISDData.ReconBillDeposit.AsCurrency := StrToCurr(ReconTBillDeposit.Caption);
  ISDData.Recon.Post;
end;

procedure TFPISDMainMenuForm.NxLinkLabel46Click(Sender: TObject);
begin
  ReconSurveyPanel.Left    := 88;
  ReconSurveyPanel.Top     := 43;
  ReconSurveyPanel.Visible := True;
  ReconDesc.SetFocus;
end;

procedure TFPISDMainMenuForm.NxLinkLabel47Click(Sender: TObject);
begin
  isoQuery.Close;
  isoQuery.ParamByName('reporttype').Text := 'RECO';
  isoQuery.Open;

  PrintReconOrder.ParamByName('idrecon').Text := ISDData.Reconidrecon.Text;
  PrintReconOrder.Open;

  if PrintReconOrderORNumber.Text = '' then
    begin
      MessageDlg('No payment has been made on this reconnection order'+#13+#10+'please request consumer to proceed to teller or cashier....', mtError, [mbOK], 0);
      PrintReconOrder.Close;
      exit;
    end;
  QuickRep9.PreviewWidth  := Screen.Width;
  QuickRep9.PreviewHeight := Screen.Height;
  QuickRep9.Preview;
  PrintReconOrder.Close;
end;

procedure TFPISDMainMenuForm.PrintReconOrderCalcFields(DataSet: TDataSet);
begin
   PrintReconOrdertotalpaid.AsCurrency := PrintReconOrderreconnectionfee.AsCurrency +
                                          PrintReconOrderBillDeposit.AsCurrency +
                                          PrintReconOrderEVAT.AsCurrency; 
end;

procedure TFPISDMainMenuForm.ReconSummaryClick(Sender: TObject);
begin
  If ISDData.Recon.IsEmpty then
    begin
      MessageDlg('no records to print...', mtError, [mbOK], 0);
      exit;
    end;

  ReconPeriodCovered.Caption := 'Period Covered '+DatetoStr(ReconVDateFrom.Date)+' - '+DatetoStr(ReconVDateTo.Date);
  isddata.Signatories.close;
  isddata.Signatories.open;

  QuickRep10.PreviewWidth    := Screen.Width;
  QuickRep10.PreviewHeight   := Screen.Height;
  QuickRep10.Preview;

end;

procedure TFPISDMainMenuForm.NxButton13Click(Sender: TObject);
begin
  BrgyList.Left    := 60;
  BrgyList.Top     := 32;
  BrgyList.Visible := True;
  Brgy.Close;
  Brgy.ParamByName('municipalitycode').Text := DBEdit14.Text;
  Brgy.Open;
end;

procedure TFPISDMainMenuForm.NxLinkLabel23Click(Sender: TObject);
begin
  BrgyList.Visible := False;
end;

procedure TFPISDMainMenuForm.NxLinkLabel21Click(Sender: TObject);
begin
  ISDData.MemberMasterBrgyCode.Text     := Brgybarangaycode.Text;
  ISDData.MemberMasterAddress.Text      := Brgybarangay.Text + ', ' + Brgymunicipality.Text;
  BrgyList.Visible                      := False;
end;

procedure TFPISDMainMenuForm.SearchMemberClick(Sender: TObject);
begin
  With ISDData do
   begin
    MemberMaster.Close;
    MemberMaster.ParamByName('MemberName').Text := '%'+SearchMemberEdit.Text+'%';
    MemberMaster.Open;
   end;

end;

procedure TFPISDMainMenuForm.NxButton14Click(Sender: TObject);
begin
  NewAppBrgyList.Left    := 92;
  NewAppBrgyList.Top     := 152;
  NewAppBrgyList.Visible := True;
  NewAppBrgyList.BringToFront;
  Brgy.ParamByName('municipalitycode').Text := DBEdit13.Text;
  Brgy.Open;
end;

procedure TFPISDMainMenuForm.NxLinkLabel32Click(Sender: TObject);
begin
  ISDData.NewApplicantsBook.Text    := Brgybarangaycode.Text;
  ISDData.NewApplicantsAddress.Text := Brgybarangay.Text + ', ' + Brgymunicipality.text;
  NewAppBrgyList.Visible            := False;
  Brgy.Close;
  Edit1.SetFocus;
end;

procedure TFPISDMainMenuForm.NxLinkLabel33Click(Sender: TObject);
begin
  NewAppBrgyList.Visible := False;
  Brgy.Close;
end;

procedure TFPISDMainMenuForm.NxLinkLabel34Click(Sender: TObject);
var
  idapply :String;
begin

  tmpQuery.Close;
  tmpQuery.SQL.Clear;
  tmpQuery.SQL.Add('Select * from newapply where idcomplaints = :idcomplaints');
  tmpQuery.ParamByName('idcomplaints').Text :=  ISDData.complaintsidComplaints.Text;
  tmpQuery.Open;

  if tmpQuery.IsEmpty then
  begin

    ISDData.NewApplicants.Open;
    ISDData.NewApplicants.Append;
    if (ISDData.complaintsAccountNumber.Text <> '') or
       (not ISDData.complaintsAccountNumber.IsNull) then
     begin
      ISDData.NewApplicantsArea.Text := '0'+Copy(ISDData.complaintsAccountNumber.Text,1,2);
      ISDData.NewApplicantsBook.Text := '0'+Copy(ISDData.complaintsAccountNumber.Text,3,2);
     end;

    ISDData.NewApplicantsName.Text         := ISDData.complaintsConsumerName.Text;
    ISDData.NewApplicantsAddress.Text      := ISDData.complaintsAddress.Text;
    ISDData.NewApplicantsidcomplaints.Text := ISDData.complaintsidComplaints.Text;

    ISDData.NewApplicants.Post;

  end;

  if not assigned(ComputeChargesForm) then
    begin
      ISDData.NewApplicantCharge.Open;

      ISDData.complaints.Edit;
      ISDData.complaintswithcharge.Text := '1';
      ISDData.complaints.Post;

      MessageDlg('Compute Charges done..', mtWarning, [mbOK], 0);

     //===========remove this statement=========================================
     // If ISDData.NewApplicantCharge.IsEmpty then ISDData.NewApplicants.Delete;
     //=========================================================================

     ISDData.NewApplicants.Close;
     ISDData.NewApplicantCharge.Close;

      ComputeChargesForm := TComputeChargesForm.Create(self);

      ISDData.NewApplicants.FilterSQL:='idcomplaints like '+quotedstr(ISDData.complaintsidComplaints.Text);
      ISDData.NewApplicants.Open;

      ISDData.NewApplicantCharge.FilterSQL:='idnewapply like '+quotedstr(ISDData.NewApplicantsidNewApply.Text);
      ISDData.NewApplicantCharge.Open;

      ComputeChargesForm.isUpdate := true;
      ComputeChargesForm.ShowModal;

    end;
    
end;

procedure TFPISDMainMenuForm.PopupMenu2Popup(Sender: TObject);
begin
  if MyUsersisSched.Value = false then
  sched.Enabled := false
  else
  sched.Enabled := true;
end;

procedure TFPISDMainMenuForm.PrintMemberConsumerID1Click(Sender: TObject);
begin
  QuickRep11.PreviewHeight := Screen.Height;
  QuickRep11.PreviewWidth  := Screen.Width;
  QuickRep11.Preview;
end;

procedure TFPISDMainMenuForm.DiscoSearchButtonClick(Sender: TObject);
begin
  With ISDData do
    begin
      Disco.Close;
      Disco.ParamByName('datefrom').AsDatetime := StartOfTheYear(now);
      Disco.ParamByName('dateto').AsDatetime   := EndOfTheYear(now);
      Disco.ParamByName('name').Text           := '%'+DiscoSearch.Text+'%';
      Disco.Open;
    end;
end;

procedure TFPISDMainMenuForm.DiscoAddClick(Sender: TObject);
begin
  DiscoPanel.Left     := 76;
  DiscoPanel.Top      := 133;
  DiscoPanel.Visible  := True;
  DiscoPanel.BringToFront;
  DiscoAdd.Visible    := False;
  DiscoDelete.Visible := False;

  ISDData.Disco.Append;
  ISDData.Discodiscodate.AsDateTime := Now;
  ISDData.DiscoisuedBy.Text         := ISDData.UsersUserID.Text;
  DBEdit115.SetFocus;
end;

procedure TFPISDMainMenuForm.DiscoDeleteClick(Sender: TObject);
begin
  If ISDData.Disco.IsEmpty then
    begin
      MessageDlg('No records to delete....', mtError, [mbOK], 0);
      exit;
    end;

if (MessageDlg('Confirm delete', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;

ISDData.Disco.Delete;
end;

procedure TFPISDMainMenuForm.DiscoEditClick(Sender: TObject);
begin
  DiscoPanel.Left     := 76;
  DiscoPanel.Top      := 133;
  DiscoPanel.Visible  := True;
  DiscoPanel.BringToFront;
  DiscoAdd.Visible    := False;
  DiscoDelete.Visible := False;

  ISDData.Disco.Edit;
  ISDData.DiscoisuedBy.Text         := ISDData.UsersUserID.Text;
  DBEdit115.SetFocus;
end;

procedure TFPISDMainMenuForm.DiscoPeriodCoveredClick(Sender: TObject);
begin
  With ISDData do
    begin
      Disco.Close;
      Disco.ParamByName('datefrom').AsDatetime := DiscoDateFrom.Date;
      Disco.ParamByName('dateto').AsDatetime   := DiscoDateTo.Date;
      Disco.ParamByName('name').Text           := '%';
      Disco.Open;
    end;
end;

procedure TFPISDMainMenuForm.NxLinkLabel56Click(Sender: TObject);
begin
  ISDData.Disco.Post;
  ISDData.Disco.Close;
  ISDData.Disco.Open;
  ISDData.Disco.Last;
  DiscoPanel.Visible  := False;
  DiscoAdd.Visible    := True;
  DiscoDelete.Visible := True;
end;

procedure TFPISDMainMenuForm.NxLinkLabel57Click(Sender: TObject);
begin
  ISDData.Disco.Cancel;
  ISDData.Disco.Close;
  DiscoPanel.Visible := False;
  DiscoAdd.Visible    := True;
  DiscoDelete.Visible := True;
end;

procedure TFPISDMainMenuForm.addmunicipalityClick(Sender: TObject);
begin
  isoQuery.Close;
  isoQuery.ParamByName('reporttype').Text := 'DISCO';
  isoQuery.Open;

  PrintDiscoOrder.ParamByName('iddisco').Text := ISDData.Discoiddisco.Text  ;
  PrintDiscoOrder.Open;

  If PrintDiscoOrder.IsEmpty then
    begin
      MessageDlg('no records to print...', mtError, [mbOK], 0);
      exit;
    end;

  if PrintDiscoOrderORNumber.Text = '' then
    begin
      MessageDlg('No payment has been made on this disconnection order'+#13+#10+'please request consumer to proceed to teller or cashier....', mtError, [mbOK], 0);
      PrintDiscoOrder.Close;
      exit;
    end;

  QuickRep12.PreviewWidth  := Screen.Width;
  QuickRep12.PreviewHeight := Screen.Height;
  QuickRep12.Preview;
  PrintDiscoOrder.close;
end;

procedure TFPISDMainMenuForm.NxLinkLabel55Click(Sender: TObject);
begin
  If ISDData.Recon.IsEmpty then
    begin
      MessageDlg('no records to print...', mtError, [mbOK], 0);
      exit;
    end;

  QRLabel219.Caption := 'Period Covered '+DatetimetoStr(ReconVDateFrom.Datetime)+' - '+DatetimetoStr(ReconVDateTo.Datetime);
  isddata.Signatories.close;
  isddata.Signatories.open;

  QuickRep14.PreviewWidth    := Screen.Width;
  QuickRep14.PreviewHeight   := Screen.Height;
  QuickRep14.Preview;
end;

procedure TFPISDMainMenuForm.NxLinkLabel51Click(Sender: TObject);
begin
  If ISDData.Disco.IsEmpty then
    begin
      MessageDlg('no records to print...', mtError, [mbOK], 0);
      exit;
    end;

  DiscoVPeriodCovered.Caption := 'Period Covered '+DatetoStr(DiscoDateFrom.Date)+' - '+DatetoStr(DiscoDateTo.Date);
  isddata.Signatories.close;
  isddata.Signatories.open;
  QuickRep13.PreviewWidth    := Screen.Width;
  QuickRep13.PreviewHeight   := Screen.Height;
  QuickRep13.Preview;
end;

procedure TFPISDMainMenuForm.NxLinkLabel53Click(Sender: TObject);
begin
  NxHeaderPanel11.Left    := 43;
  NxHeaderPanel11.Top     := 156;
  NxHeaderPanel11.Visible := True;
  NxHeaderPanel11.Caption := 'Add District and Municipality';
  CRDBGrid3.Enabled       := false;
  panel6.Enabled          := false;
  panel7.Enabled          := false;
  ISDData.VoterDistrct.Append;
  DBEdit134.SetFocus;
end;

procedure TFPISDMainMenuForm.DBEdit115KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      MMMaster.Close;
      MMMaster.ParamByName('AccountNumber').Text := DBEdit115.Text;
      MMMaster.Open;

      If MMMaster.IsEmpty then
        begin
          MessageDlg('No Account Number match....', mtError, [mbOK], 0);
          MMMaster.Close;
          DBEdit115.SetFocus;
          Exit;
        end;

      With ISDData do
        begin
          DiscoCode.Text    := MMMasterCode.Text;
          DiscoArea.Text    := MMMasterArea.Text;
          DiscoBook.Text    := MMMasterBook.Text;
          DiscoName.Text    := MMMasterName.Text;
          DiscoAddress.Text := MMMasterAddress.Text;
          DiscoSerial.Text  := MMMasterSerial.text;
          DiscoPolenumber.Text  := MMMasterPolenumber.Text;
          MMMaster.Close;
        end;

      DBEdit121.SetFocus;
    end;

end;

procedure TFPISDMainMenuForm.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TFPISDMainMenuForm.NCSearchBtnClick(Sender: TObject);
begin
   ISDData.NewConnection.Close;
   ISDData.NewConnection.ParamByName('Name').Text := '%'+NCSearch.Text+'%';
   ISDData.NewConnection.Open;
end;

procedure TFPISDMainMenuForm.ConfirmDelButtonClick(Sender: TObject);
var
DateTimeNow : TDateTime;
begin
DateTimeNow := Now;

 with ISDData do begin

 {delmemberFilterQ.Close;
 delmemberFilterQ.ParamByName('pass').Text := copy(DeletePasswordtxt.Text,7,length(DeletePasswordtxt.Text)-6);
 delmemberFilterQ.ParamByName('userid').Text := UsersUserName.Text;
 delmemberFilterQ.Open; }

 if (DeletePasswordtxt.Text = FormatDateTime('MMyyyy',Now)+'shepherd') then begin

      If MemberMaster.IsEmpty then begin
           MessageDlg('No record to delete', mtError, [mbOK], 0);
           Exit;
      end;

      If (MessageDlg('Confirm Delete?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;

          DeletedMember.Close;
          DeletedMember.SQL.Clear;
          DeletedMember.SQL.add ('insert into deletedmembermaster');
          DeletedMember.SQL.add ('( idmembermaster, IdNewApply, MunCode, DistrictCode, BrgyCode, Membername, Address, Gender, BirthDate, Spouse,');
          DeletedMember.SQL.add ('MemberStatus, MemberNumber, IDNo, BODResNumber, DateApproved, MFORNumber, MFORDate, DateTurnOn, TOOrderNo,');
          DeletedMember.SQL.add ('EDAmount, EDOrNo, EDDate, MemberPic, SpousePic, MemberSign, DateDeleted, DeletedBy, DeletedRemarks) values');
          DeletedMember.SQL.add ('(:idmembermaster, :IdNewApply, :MunCode, :DistrictCode, :BrgyCode, :Membername, :Address, :Gender, :BirthDate, :Spouse,');
          DeletedMember.SQL.add (':MemberStatus, :MemberNumber, :IDNo, :BODResNumber, :DateApproved, :MFORNumber, :MFORDate, :DateTurnOn, :TOOrderNo,');
          DeletedMember.SQL.add (':EDAmount, :EDOrNo, :EDDate, :MemberPic, :SpousePic, :MemberSign, :DateDeleted, :DeletedBy, :DeletedRemarks)');

          DeletedMember.ParamByName('idmembermaster').text      := MemberMasteridmembermaster.Text;
          DeletedMember.ParamByName('IdNewApply').text          := MemberMasterIdNewApply.text;
          DeletedMember.ParamByName('MunCode').text             := MemberMasterMunCode.Text;
          DeletedMember.ParamByName('DistrictCode').text        := MemberMasterDistrictCode.Text;
          DeletedMember.ParamByName('BrgyCode').text            := MemberMasterBrgyCode.Text;
          DeletedMember.ParamByName('Membername').text          := MemberMasterMembername.Text;
          DeletedMember.ParamByName('Address').text             := MemberMasterAddress.Text;
          DeletedMember.ParamByName('Gender').text              := MemberMasterGender.Text;
          if MemberMasterBirthDate.IsNull then begin
            DeletedMember.ParamByName('BirthDate').Value       := NULL ;
          end
          else
            DeletedMember.ParamByName('BirthDate').asdate       := MemberMasterBirthDate.Value;
          DeletedMember.ParamByName('Spouse').text              := MemberMasterSpouse.Text;
          DeletedMember.ParamByName('MemberStatus').text        := MemberMasterMemberStatus.Text;
          DeletedMember.ParamByName('MemberNumber').text        := MemberMasterMemberNumber.Text;
          DeletedMember.ParamByName('IDNo').text                := MemberMasterIDNo.Text;
          DeletedMember.ParamByName('BODResNumber').text        := MemberMasterBODResNumber.Text;
          if MemberMasterDateApproved.IsNull then
            DeletedMember.ParamByName('DateApproved').value    := NULL
          else
            DeletedMember.ParamByName('DateApproved').asdate    := MemberMasterDateApproved.Value;
          DeletedMember.ParamByName('MFORNumber').text          := MemberMasterMFORNumber.Text;
          if MemberMasterMFORDate.isNULL then
            DeletedMember.ParamByName('MFORDate').value       := NULL
          else
            DeletedMember.ParamByName('MFORDate').asdate        := MemberMasterMFORDate.value;
          if MemberMasterDateTurnOn.isNULL then
            DeletedMember.ParamByName('DateTurnOn').value      := NULL
          else
            DeletedMember.ParamByName('DateTurnOn').asdate      := MemberMasterDateTurnOn.Value;
          DeletedMember.ParamByName('TOOrderNo').text           := MemberMasterTOOrderNo.Text;
          DeletedMember.ParamByName('EDAmount').text            := MemberMasterEDAmount.Text;
          DeletedMember.ParamByName('EDOrNo').text              := MemberMasterEDOrNo.Text;
          DeletedMember.ParamByName('EDDate').text              := MemberMasterEDDate.Text;
          DeletedMember.ParamByName('MemberPic').AsBlob         := MemberMasterMemberPic.Value;
          DeletedMember.ParamByName('SpousePic').AsBlob         := MemberMasterSpousePic.Value;
          DeletedMember.ParamByName('MemberSign').AsBlob        := MemberMasterMemberSign.Value;
          DeletedMember.ParamByName('DateDeleted').asdatetime   := DateTimeNow;
          DeletedMember.ParamByName('DeletedBy').text           := UsersUserID.Text;
          DeletedMember.ParamByName('DeletedRemarks').text      := ComboBox2.Text;
          DeletedMember.Execute;

          MemberMaster.Delete;

          ShowMessage('Record Deleted on '+ DateTimeToStr(DateTimeNow));
          DeleteMemberPanel.Visible := false;

          MemberMaster.Close;
          MemberMaster.ParamByName('MemberName').Text := '%'+SearchMemberEdit.Text+'%';
          MemberMaster.Open;
   end;
  end;
end;

procedure TFPISDMainMenuForm.ConnectOrderCalcFields(DataSet: TDataSet);
begin
   If ConnectOrderratecode.Text = 'R' then ConnectOrderconsumertype.Text  := 'Residential';
   If ConnectOrderratecode.Text = 'C' then ConnectOrderconsumertype.Text  := 'Commercial';
   If ConnectOrderratecode.Text = 'I' then ConnectOrderconsumertype.Text  := 'Industrial';
   If ConnectOrderratecode.Text = 'P' then ConnectOrderconsumertype.Text  := 'Public Bldg.';
   If ConnectOrderratecode.Text = 'S' then ConnectOrderconsumertype.Text  := 'Street Lights';
end;

procedure TFPISDMainMenuForm.CRDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
      if ISDData.complaintsAccomplished.Text= 'Not Executed' then
      begin
        CRDBGrid2.Canvas.Font.Color:=clBlack;
        CRDBGrid2.Canvas.Brush.Color:=$003535FF;//$007A77F7;
      end;
      if DataCol = 6 then
       CRDBGrid2.DefaultDrawColumnCell
         (Rect, DataCol, Column, State);
end;

procedure TFPISDMainMenuForm.CRDBGrid3CellClick(Column: TColumn);
begin
with isddata do begin
  sitio.Close;
  barangay.Close;
  barangay.ParamByName('municipalitycode').Text := VoterDistrctMunCode.Text;
  barangay.Open;
end;
end;

procedure TFPISDMainMenuForm.CRDBGrid4CellClick(Column: TColumn);
begin
with isddata do begin
  sitio.Close;
  sitio.ParamByName('barangaycode').Text := barangaybarangaycode.Text;
  sitio.Open;
end;
end;

procedure TFPISDMainMenuForm.DBEdit121Exit(Sender: TObject);
begin
  With ISDData do Discoevat.AsCurrency := Discodiscofee.AsCurrency * 0.12;
end;

procedure TFPISDMainMenuForm.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TFPISDMainMenuForm.DBComboBox4Change(Sender: TObject);
begin
  with ISDData do
    begin
      If DBComboBox4.Text = 'CALIBRATION' then
        begin
          ChangeMeterInitialReading.AsFloat := 0;
          ChangeMeterNewMeterBrand.Text     := ChangeMeterOldMeterBrand.Text;
          ChangeMeterNewMeterSerial.Text    := ChangeMeterOldSerialNumber.Text;
          ChangeMeterNewMeterMult.Text      := ChangeMeterOldMeterMult.Text;
        end;
      If DBComboBox4.Text = 'CHANGE METER' then
        begin
          ChangeMeterInitialReading.AsFloat := 0;
          ChangeMeterNewMeterBrand.Text     := '';
          ChangeMeterNewMeterSerial.Text    := '';
          ChangeMeterNewMeterMult.Text      := '';
        end;
    end;

end;

procedure TFPISDMainMenuForm.ReconVDateFromChange(Sender: TObject);
begin
  ReconVDateTo.Date := EndOfTheMonth(ReconVDateFrom.Date);
end;

procedure TFPISDMainMenuForm.NxLinkLabel58Click(Sender: TObject);
begin
  ReconPanel.Left       := 78;
  ReconPanel.Top        := 95;
  ReconPanel.Visible    := True;
  ReconPanel.BringToFront;
  ReconAdd.Visible      := False;
  ReconDelete.Visible   := False;
  NxLinkLabel58.Visible := False;

  DBEdit87.SetFocus;

  if ISDData.ReconORNumber.Text = 'Non-payment' then
    nonpay.Checked := true
  else
    nonpay.Checked := false;

  ISDData.Recon.Edit;
  ISDData.Reconrecondate.EditMask   := '!99/99/00 !90:00:00>LL;1;_';
  ISDData.ReconDateRecon.EditMask   := '!99/99/00 !90:00:00>LL;1;_';

  isReconadd := true;
end;

procedure TFPISDMainMenuForm.NxLinkLabel59Click(Sender: TObject);
begin
if (MessageDlg('Confirm delete?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;
ISDData.VoterDistrct.Delete;
end;

procedure TFPISDMainMenuForm.DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      MMMaster.Close;
      MMMaster.ParamByName('AccountNumber').Text := DBEdit2.Text;
      MMMaster.Open;

      If MMMaster.IsEmpty then
        begin
          MessageDlg('No Account Number match....', mtError, [mbOK], 0);
          MMMaster.Close;
          DBEdit88.SetFocus;
          Exit;
        end;

      With ISDData do
        begin
          complaintsAccountNumber.Text := MMMasterAccountNumber.Text;
          complaintsConsumerName.Text  := MMMasterName.Text;
          complaintsAddress.Text       := MMMasterAddress.Text;
          complaintsPolenumber.Text    := MMMasterpolenumber.Text;
          complaintsSerial.Text        := MMMasterSerial.Text;
          MMMaster.Close;
        end;

      DBEdit69.SetFocus;
    end;

end;

procedure TFPISDMainMenuForm.NxLinkLabel40Click(Sender: TObject);
begin
  If ISDData.complaints.IsEmpty then
    begin
      MessageDlg('No record to delete..', mtError, [mbOK], 0);
      Exit;
    end;


 { if ISDdata.UsersUserID.Text <> ISDdata.complaintsisuedBy.Text then
  begin
     MessageDlg('Unable to delete other user''s orders entry...', mtError, [mbOK], 0);
     Exit;
  end; }

  if ISDdata.ComplaintsAccomplished.Text <> 'Not Executed' then
  begin
     MessageDlg('Unable to delete executed orders entry...', mtError, [mbOK], 0);
     Exit;
  end;


if (MessageDlg('Confirm delete', mtConfirmation, [mbYes, mbCancel], 0) = mrCancel) then exit;
ISDData.complaints.Delete;
end;

procedure TFPISDMainMenuForm.complaintCategory();
begin
    case tabset1.tabindex of
        0:  begin
              ComboBoxCategory.items.Clear;
              ComboBoxCategory.Items.BeginUpdate;
              ComboBoxCategory.Items.Add('PRINT ALL');
              ComboBoxCategory.Items.Add('PRINT ALL METERING') ;
              ComboBoxCategory.Items.Add('MTR CHANGE') ;
              ComboBoxCategory.Items.Add('MTR DISLOCATED') ;
              ComboBoxCategory.Items.Add('MTR ERRATIC REGISTRATION') ;
              ComboBoxCategory.Items.Add('MTR GLASS BROKEN') ;
              ComboBoxCategory.Items.Add('MTR LOOSE CONNECTION') ;
              ComboBoxCategory.Items.Add('MTR TEST') ;
              ComboBoxCategory.Items.Add('MTR NOT RUNNING') ;
              ComboBoxCategory.Items.Add('MTR REMOVAL') ;
              ComboBoxCategory.Items.Add('MTR RUNNING TO FAST') ;
              ComboBoxCategory.Items.Add('MTR RUNNING TO SLOW') ;
              ComboBoxCategory.Items.Add('MTR RUNNING WITHOUT LOAD') ;
              ComboBoxCategory.Items.Add('MTR STUCK UP METER') ;
              ComboBoxCategory.Items.Add('MTR TRANSFER') ;
              ComboBoxCategory.Items.Add('MTR BURNED') ;
              ComboBoxCategory.Items.EndUpdate;

              PComboBoxCategory.items.Clear;
              PComboBoxCategory.Items.BeginUpdate;
              PComboBoxCategory.Items.Add('PRINT ALL');
              PComboBoxCategory.Items.Add('PRINT ALL METERING') ;
              PComboBoxCategory.Items.Add('MTR CHANGE') ;
              PComboBoxCategory.Items.Add('MTR DISLOCATED') ;
              PComboBoxCategory.Items.Add('MTR ERRATIC REGISTRATION') ;
              PComboBoxCategory.Items.Add('MTR GLASS BROKEN') ;
              PComboBoxCategory.Items.Add('MTR LOOSE CONNECTION') ;
              PComboBoxCategory.Items.Add('MTR TEST') ;
              PComboBoxCategory.Items.Add('MTR NOT RUNNING') ;
              PComboBoxCategory.Items.Add('MTR REMOVAL') ;
              PComboBoxCategory.Items.Add('MTR RUNNING TO FAST') ;
              PComboBoxCategory.Items.Add('MTR RUNNING TO SLOW') ;
              PComboBoxCategory.Items.Add('MTR RUNNING WITHOUT LOAD') ;
              PComboBoxCategory.Items.Add('MTR STUCK UP METER') ;
              PComboBoxCategory.Items.Add('MTR TRANSFER') ;
              PComboBoxCategory.Items.Add('MTR BURNED') ;
              PComboBoxCategory.Items.EndUpdate;
            end;
        1:  begin
              ComboBoxCategory.items.Clear;
              ComboBoxCategory.Items.BeginUpdate;
              ComboBoxCategory.Items.Add('PRINT ALL');
              ComboBoxCategory.Items.Add('PRINT ALL SERVICE DROP') ;
              ComboBoxCategory.Items.Add('SDW CHANGE/UPGRADE') ;
              ComboBoxCategory.Items.Add('SDW CUT/BROKEN') ;
              ComboBoxCategory.Items.Add('SDW LOOSE CONNECTION') ;
              ComboBoxCategory.Items.Add('SDW NO CURRENT') ;
              ComboBoxCategory.Items.Add('SDW RE-ROUTE') ;
              ComboBoxCategory.Items.Add('SDW RECONNECTION / RETAPPING');
              ComboBoxCategory.Items.Add('SDW SAGGING') ;
              ComboBoxCategory.Items.Add('SDW TRANSFER') ;
              ComboBoxCategory.Items.Add('SDW DISCO / RECO') ;
              ComboBoxCategory.Items.EndUpdate;

              PComboBoxCategory.items.Clear;
              PComboBoxCategory.Items.BeginUpdate;
              PComboBoxCategory.Items.Add('PRINT ALL');
              PComboBoxCategory.Items.Add('PRINT ALL SERVICE DROP') ;
              PComboBoxCategory.Items.Add('SDW CHANGE/UPGRADE') ;
              PComboBoxCategory.Items.Add('SDW CUT/BROKEN') ;
              PComboBoxCategory.Items.Add('SDW LOOSE CONNECTION') ;
              PComboBoxCategory.Items.Add('SDW NO CURRENT') ;
              PComboBoxCategory.Items.Add('SDW RE-ROUTE') ;
              PComboBoxCategory.Items.Add('SDW RECONNECTION / RETAPPING');
              PComboBoxCategory.Items.Add('SDW SAGGING') ;
              PComboBoxCategory.Items.Add('SDW TRANSFER') ;
              PComboBoxCategory.Items.Add('SDW DISCO / RECO') ;
              PComboBoxCategory.Items.EndUpdate;
            end;
        2:  begin
              ComboBoxCategory.items.Clear;
              ComboBoxCategory.Items.BeginUpdate;
              ComboBoxCategory.Items.Add('PRINT ALL');
              ComboBoxCategory.Items.Add('PRINT ALL PRIMARY/SECONDARY LINE') ;
              ComboBoxCategory.Items.Add('PSL LOOSE CONNECTION') ;
              ComboBoxCategory.Items.Add('PSL LOOSE CONNECTION (SEVERAL)') ;
              ComboBoxCategory.Items.Add('PSL SAGGING') ;
              ComboBoxCategory.Items.Add('PSL CUT/BROKEN') ;
              ComboBoxCategory.Items.Add('PSL CORRODED') ;
              ComboBoxCategory.Items.Add('PSL CHANGE/UPGRADE') ;
              ComboBoxCategory.Items.Add('PSL CLEARING OF VEGETATION') ;
              ComboBoxCategory.Items.EndUpdate;

              PComboBoxCategory.items.Clear;
              PComboBoxCategory.Items.BeginUpdate;
              PComboBoxCategory.Items.Add('PRINT ALL');
              PComboBoxCategory.Items.Add('PRINT ALL PRIMARY/SECONDARY LINE') ;
              PComboBoxCategory.Items.Add('PSL LOOSE CONNECTION') ;
              PComboBoxCategory.Items.Add('PSL LOOSE CONNECTION (SEVERAL)') ;
              PComboBoxCategory.Items.Add('PSL SAGGING') ;
              PComboBoxCategory.Items.Add('PSL CUT/BROKEN') ;
              PComboBoxCategory.Items.Add('PSL CORRODED') ;
              PComboBoxCategory.Items.Add('PSL CHANGE/UPGRADE') ;
              PComboBoxCategory.Items.Add('PSL CLEARING OF VEGETATION') ;
              PComboBoxCategory.Items.EndUpdate;

            end;
        3:  begin
              ComboBoxCategory.items.Clear;
              ComboBoxCategory.Items.BeginUpdate;
              ComboBoxCategory.Items.Add('PRINT ALL');
              ComboBoxCategory.Items.Add('PRINT ALL DISTRIBUTION TRANSFORMER') ;
              ComboBoxCategory.Items.Add('DT BANKING') ;
              ComboBoxCategory.Items.Add('DT REMOVAL') ;
              ComboBoxCategory.Items.Add('DT BUSTED/DAMAGE') ;
              ComboBoxCategory.Items.Add('DT TRANSFER') ;
              ComboBoxCategory.Items.Add('DT REPLACE') ;
              ComboBoxCategory.Items.Add('DT LOOSE CONNECTION') ;
              ComboBoxCategory.Items.Add('DT NO/BROKEN EQUIPMENT GROUNDING') ;
              ComboBoxCategory.Items.Add('DT (OWNERS) TRANSFORMER TESTING') ;
              ComboBoxCategory.Items.Add('DT (OWNERS)  TRANSFORMER INSTALLATION') ;
              ComboBoxCategory.Items.Add('DT (OWNERS)  TRANSFORMER REMOVAL') ;
              ComboBoxCategory.Items.EndUpdate;

              PComboBoxCategory.items.Clear;
              PComboBoxCategory.Items.BeginUpdate;
              PComboBoxCategory.Items.Add('PRINT ALL');
              PComboBoxCategory.Items.Add('PRINT ALL DISTRIBUTION TRANSFORMER') ;
              PComboBoxCategory.Items.Add('DT BANKING') ;
              PComboBoxCategory.Items.Add('DT REMOVAL') ;
              PComboBoxCategory.Items.Add('DT BUSTED/DAMAGE') ;
              PComboBoxCategory.Items.Add('DT TRANSFER') ;
              PComboBoxCategory.Items.Add('DT REPLACE') ;
              PComboBoxCategory.Items.Add('DT LOOSE CONNECTION') ;
              PComboBoxCategory.Items.Add('DT NO/BROKEN EQUIPMENT GROUNDING') ;
              PComboBoxCategory.Items.Add('DT (OWNERS) TRANSFORMER TESTING') ;
              PComboBoxCategory.Items.Add('DT (OWNERS)  TRANSFORMER INSTALLATION') ;
              PComboBoxCategory.Items.Add('DT (OWNERS)  TRANSFORMER REMOVAL') ;
              PComboBoxCategory.Items.EndUpdate;
            end;
        4:  begin
              ComboBoxCategory.items.Clear;
              ComboBoxCategory.Items.BeginUpdate;
              ComboBoxCategory.Items.Add('PRINT ALL');
              ComboBoxCategory.Items.Add('PRINT ALL DISTRIBUTION POLE') ;
              ComboBoxCategory.Items.Add('DSP LEANING POLE') ;
              ComboBoxCategory.Items.Add('DSP ROTTEN POLE') ;
              ComboBoxCategory.Items.Add('DSP BROKEN POLE') ;
              ComboBoxCategory.Items.Add('DSP TRANSFER OF POLE') ;
              ComboBoxCategory.Items.Add('DSP RE-ROUTING OF POLE') ;
              ComboBoxCategory.Items.Add('DSP UPGRADING OF POLE') ;
              ComboBoxCategory.Items.Add('DSP INSTALLATION OF ADDITIONAL POLE') ;
              ComboBoxCategory.Items.Add('DSP BROKEN / CORRODED POLE ACCESSORIES') ;
              ComboBoxCategory.Items.Add('DSP NO / BROKEN EQUIPMENT GROUNDING') ;
              ComboBoxCategory.Items.EndUpdate;

              PComboBoxCategory.items.Clear;
              PComboBoxCategory.Items.BeginUpdate;
              PComboBoxCategory.Items.Add('PRINT ALL');
              PComboBoxCategory.Items.Add('PRINT ALL DISTRIBUTION POLE') ;
              PComboBoxCategory.Items.Add('DSP LEANING POLE') ;
              PComboBoxCategory.Items.Add('DSP ROTTEN POLE') ;
              PComboBoxCategory.Items.Add('DSP BROKEN POLE') ;
              PComboBoxCategory.Items.Add('DSP TRANSFER OF POLE') ;
              PComboBoxCategory.Items.Add('DSP RE-ROUTING OF POLE') ;
              PComboBoxCategory.Items.Add('DSP UPGRADING OF POLE') ;
              PComboBoxCategory.Items.Add('DSP INSTALLATION OF ADDITIONAL POLE') ;
              PComboBoxCategory.Items.Add('DSP BROKEN / CORRODED POLE ACCESSORIES') ;
              PComboBoxCategory.Items.Add('DSP NO / BROKEN EQUIPMENT GROUNDING') ;
              PComboBoxCategory.Items.EndUpdate;
            end;
        5:  begin
              ComboBoxCategory.items.Clear;
              ComboBoxCategory.Items.BeginUpdate;
              ComboBoxCategory.Items.Add('PRINT ALL');
              ComboBoxCategory.Items.Add('PRINT ALL OTHER EQUIP.') ;
              ComboBoxCategory.Items.Add('BROKEN INSULATOR') ;
              ComboBoxCategory.Items.Add('DAMAGE FUSE TUBE') ;
              ComboBoxCategory.Items.Add('DAMAGE CUT-OUT ASSEMBLY') ;
              ComboBoxCategory.Items.Add('DAMAGE CAPACITOR BANK') ;
              ComboBoxCategory.Items.Add('DAMAGE 15-KV DISCONNECT SWITCH') ;
              ComboBoxCategory.Items.Add('DAMAGE SECTIONALIZER') ;
              ComboBoxCategory.Items.Add('DAMAGE RECLOSER / BREAKER') ;
              ComboBoxCategory.Items.Add('DAMAGE INSTRUMENT TRANSFORMERS') ;
              ComboBoxCategory.Items.Add('DAMAGE LIGHTNING ARRESTER') ;
              ComboBoxCategory.Items.Add('INSTALLATION OF RECLOSER / BREAKER') ;
              ComboBoxCategory.Items.EndUpdate;

              PComboBoxCategory.items.Clear;
              PComboBoxCategory.Items.BeginUpdate;
              PComboBoxCategory.Items.Add('PRINT ALL');
              PComboBoxCategory.Items.Add('PRINT ALL OTHER EQUIP.') ;
              PComboBoxCategory.Items.Add('BROKEN INSULATOR') ;
              PComboBoxCategory.Items.Add('DAMAGE FUSE TUBE') ;
              PComboBoxCategory.Items.Add('DAMAGE CUT-OUT ASSEMBLY') ;
              PComboBoxCategory.Items.Add('DAMAGE CAPACITOR BANK') ;
              PComboBoxCategory.Items.Add('DAMAGE 15-KV DISCONNECT SWITCH') ;
              PComboBoxCategory.Items.Add('DAMAGE SECTIONALIZER') ;
              PComboBoxCategory.Items.Add('DAMAGE RECLOSER / BREAKER') ;
              PComboBoxCategory.Items.Add('DAMAGE INSTRUMENT TRANSFORMERS') ;
              PComboBoxCategory.Items.Add('DAMAGE LIGHTNING ARRESTER') ;
              PComboBoxCategory.Items.Add('INSTALLATION OF RECLOSER / BREAKER') ;
              PComboBoxCategory.Items.EndUpdate;
            end;
        6:  begin
              ComboBoxCategory.items.Clear;
              ComboBoxCategory.Items.BeginUpdate;
              ComboBoxCategory.Items.Add('PRINT ALL');
              ComboBoxCategory.Items.Add('PRINT ALL OTHERS');
              ComboBoxCategory.Items.Add('EXTENSION OF PRIMARY / SECONDARY LINE') ;
              ComboBoxCategory.Items.Add('CHANGE NAME') ;
              ComboBoxCategory.Items.Add('CERTIFICATION') ;
              ComboBoxCategory.Items.Add('OTHERS') ;
              ComboBoxCategory.Items.EndUpdate;

              PComboBoxCategory.items.Clear;
              PComboBoxCategory.Items.BeginUpdate;
              PComboBoxCategory.Items.Add('PRINT ALL');
              PComboBoxCategory.Items.Add('PRINT ALL OTHERS');
              PComboBoxCategory.Items.Add('EXTENSION OF PRIMARY / SECONDARY LINE') ;
              PComboBoxCategory.Items.Add('CHANGE NAME') ;
              PComboBoxCategory.Items.Add('CERTIFICATION') ;
              PComboBoxCategory.Items.Add('NEW CONNECTION REQUEST') ;
              PComboBoxCategory.Items.Add('OTHERS') ;
              PComboBoxCategory.Items.EndUpdate;
            end;
  end;
   ComboBoxCategory.ItemIndex  := 1;
   PComboBoxCategory.ItemIndex := 1;

end;
end.

(*
  For I := 1 to 9999 do
    begin
      Master.Close;
      Master.ParamByName('accountnumber').Text := Copy(Area.Text,2,2)+
                                                  Copy(Book.Text,2,2)+
                                                  JustStr(IntToStr(I),'0',4,1);
      Master.Open;
      If Master.IsEmpty then
        begin
          AccountNumber.Text := Copy(Area.Text,2,2)+
                                Copy(Book.Text,2,2)+
                                JustStr(IntToStr(I),'0',4,1);
          master.Close;
          break;
        end;
      Master.Close;
    end;
*)
