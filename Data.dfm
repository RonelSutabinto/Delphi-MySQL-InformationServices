object ISDData: TISDData
  OldCreateOrder = False
  Height = 484
  Width = 920
  object MyConnection1: TMyConnection
    Database = 'zanecoisd'
    DataTypeMap = <
      item
        DBType = 209
        FieldType = ftLargeint
        IgnoreErrors = True
      end>
    Username = '19zan72'
    LoginPrompt = False
    Left = 496
    Top = 278
    EncryptedPassword = '8FFF9EFF8CFF9CFF9EFF93FF85FF9EFF91FF'
  end
  object Users: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from users')
    Left = 59
    Top = 38
    object UsersUserPassWord: TStringField
      FieldName = 'UserPassWord'
      Size = 10
    end
    object UsersUserName: TStringField
      FieldName = 'UserName'
      Size = 30
    end
    object UsersUserID: TStringField
      FieldName = 'UserID'
      Size = 30
    end
    object UsersUserPic: TBlobField
      FieldName = 'UserPic'
    end
    object UsersPosition: TStringField
      FieldName = 'Position'
      Size = 30
    end
    object UsersUserRestriction: TStringField
      FieldName = 'UserRestriction'
    end
    object UsersIdUsers: TLargeintField
      FieldName = 'IdUsers'
    end
    object UsersisSched: TBooleanField
      FieldName = 'isSched'
    end
  end
  object dsUsers: TDataSource
    DataSet = Users
    Left = 59
    Top = 118
  end
  object Company: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from company')
    Left = 146
    Top = 38
    object Companycompanyname: TStringField
      FieldName = 'companyname'
      Origin = 'company.companyname'
      Size = 50
    end
    object Companyaddress: TStringField
      FieldName = 'address'
      Origin = 'company.address'
      Size = 50
    end
    object Companylogo: TBlobField
      FieldName = 'logo'
      Origin = 'company.logo'
    end
    object Companyfilename: TStringField
      FieldName = 'filename'
      Origin = 'company.filename'
      Size = 50
    end
    object Companycompanyacro: TStringField
      FieldName = 'companyacro'
      Origin = 'company.companyacro'
      Size = 30
    end
  end
  object dsCompany: TDataSource
    DataSet = Company
    Left = 146
    Top = 118
  end
  object complaints: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select '
      '  idComplaints,'
      '  DateFiled,'
      '  AccountNumber,'
      '  RoverBook,'
      '  ConsumerName,'
      '  Address,'
      '  TelNo,'
      '  Complaint,'
      '  ActionTaken,'
      '  ReceivedBy,'
      '  TimedEndorsed,'
      '  StatusOfComplaint,'
      '  DateAccomplished,'
      '  Others,'
      '  landmark,'
      '  withcharge,'
      '  remarks,'
      '  TechArea,'
      '  Crew,'
      '  if(Accomplished =0,'#39'Not Executed'#39','#39'Executed'#39') Accomplished,'
      '  Batch,'
      '  ORNumber,'
      '  ORDate,'
      '  category,'
      '  timeAccomplished,'
      '  notefiedBy,'
      '  categorydesc,'
      '  isuedBy,'
      '  serial,'
      '  polenumber'
      ' from complaints '
      
        'where date_format(datefiled,'#39'%Y-%m-%d'#39') between :datefrom and :d' +
        'ateto and'
      
        '       category = :category and (consumername like :consumername' +
        ' or AccountNumber like :consumername)'
      'order by idcomplaints')
    Left = 233
    Top = 38
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'category'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'consumername'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'consumername'
        Value = nil
      end>
    object complaintsidComplaints: TLargeintField
      FieldName = 'idComplaints'
    end
    object complaintsDateFiled: TDateTimeField
      FieldName = 'DateFiled'
    end
    object complaintsAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object complaintsRoverBook: TStringField
      FieldName = 'RoverBook'
      Size = 10
    end
    object complaintsConsumerName: TStringField
      FieldName = 'ConsumerName'
      Size = 50
    end
    object complaintsAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object complaintsTelNo: TStringField
      FieldName = 'TelNo'
    end
    object complaintsComplaint: TStringField
      FieldName = 'Complaint'
      Size = 30
    end
    object complaintsActionTaken: TStringField
      FieldName = 'ActionTaken'
      Size = 50
    end
    object complaintsReceivedBy: TStringField
      FieldName = 'ReceivedBy'
      Size = 30
    end
    object complaintsTimedEndorsed: TTimeField
      FieldName = 'TimedEndorsed'
    end
    object complaintsStatusOfComplaint: TStringField
      FieldName = 'StatusOfComplaint'
      Size = 30
    end
    object complaintsDateAccomplished: TDateTimeField
      FieldName = 'DateAccomplished'
    end
    object complaintsOthers: TStringField
      FieldName = 'Others'
      Size = 50
    end
    object complaintslandmark: TStringField
      FieldName = 'landmark'
      Size = 50
    end
    object complaintswithcharge: TStringField
      FieldName = 'withcharge'
      Size = 1
    end
    object complaintsremarks: TMemoField
      FieldName = 'remarks'
      BlobType = ftMemo
    end
    object complaintsTechArea: TStringField
      FieldName = 'TechArea'
      Size = 2
    end
    object complaintsCrew: TStringField
      FieldName = 'Crew'
    end
    object complaintsAccomplished: TStringField
      FieldName = 'Accomplished'
      Size = 12
    end
    object complaintsBatch: TStringField
      FieldName = 'Batch'
      Size = 10
    end
    object complaintsORNumber: TStringField
      FieldName = 'ORNumber'
      Size = 15
    end
    object complaintsORDate: TDateField
      FieldName = 'ORDate'
    end
    object complaintscategory: TStringField
      FieldName = 'category'
      Size = 45
    end
    object complaintstimeAccomplished: TTimeField
      FieldName = 'timeAccomplished'
    end
    object complaintsnotefiedBy: TStringField
      FieldName = 'notefiedBy'
      Size = 65
    end
    object complaintscategorydesc: TStringField
      FieldName = 'categorydesc'
      Size = 45
    end
    object complaintsisuedBy: TStringField
      FieldName = 'isuedBy'
      Size = 65
    end
    object complaintsserial: TStringField
      FieldName = 'serial'
    end
    object complaintspolenumber: TStringField
      FieldName = 'polenumber'
    end
  end
  object dscomplaints: TDataSource
    DataSet = complaints
    Left = 233
    Top = 118
  end
  object MemberMaster: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from membermaster'
      'where membername like :membername'
      'order by idmembermaster'
      'limit 100')
    Left = 59
    Top = 198
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'membername'
        Value = nil
      end>
    object MemberMasteridmembermaster: TLargeintField
      FieldName = 'idmembermaster'
    end
    object MemberMasterIdNewApply: TLargeintField
      FieldName = 'IdNewApply'
    end
    object MemberMasterMunCode: TStringField
      FieldName = 'MunCode'
      Size = 15
    end
    object MemberMasterDistrictCode: TStringField
      FieldName = 'DistrictCode'
      Size = 15
    end
    object MemberMasterBrgyCode: TStringField
      FieldName = 'BrgyCode'
      Size = 15
    end
    object MemberMasterMembername: TStringField
      FieldName = 'Membername'
      Size = 50
    end
    object MemberMasterAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object MemberMasterGender: TStringField
      FieldName = 'Gender'
      Size = 10
    end
    object MemberMasterBirthDate: TDateField
      FieldName = 'BirthDate'
    end
    object MemberMasterSpouse: TStringField
      FieldName = 'Spouse'
      Size = 50
    end
    object MemberMasterMemberStatus: TStringField
      FieldName = 'MemberStatus'
    end
    object MemberMasterMemberNumber: TStringField
      FieldName = 'MemberNumber'
      Size = 15
    end
    object MemberMasterIDNo: TStringField
      FieldName = 'IDNo'
      Size = 15
    end
    object MemberMasterBODResNumber: TStringField
      FieldName = 'BODResNumber'
    end
    object MemberMasterDateApproved: TDateField
      FieldName = 'DateApproved'
    end
    object MemberMasterMFORNumber: TStringField
      FieldName = 'MFORNumber'
    end
    object MemberMasterMFORDate: TDateField
      FieldName = 'MFORDate'
    end
    object MemberMasterDateTurnOn: TDateField
      FieldName = 'DateTurnOn'
    end
    object MemberMasterTOOrderNo: TStringField
      FieldName = 'TOOrderNo'
    end
    object MemberMasterEDAmount: TFloatField
      FieldName = 'EDAmount'
    end
    object MemberMasterEDOrNo: TStringField
      FieldName = 'EDOrNo'
    end
    object MemberMasterEDDate: TDateField
      FieldName = 'EDDate'
    end
    object MemberMasterMemberPic: TBlobField
      FieldName = 'MemberPic'
    end
    object MemberMasterSpousePic: TBlobField
      FieldName = 'SpousePic'
    end
    object MemberMasterMemberSign: TBlobField
      FieldName = 'MemberSign'
    end
  end
  object dsMemberMaster: TDataSource
    DataSet = MemberMaster
    Left = 59
    Top = 278
  end
  object MemberDetail: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from memberdetail'
      'order by idmemberdetail')
    MasterSource = dsMemberMaster
    MasterFields = 'MemberNumber'
    DetailFields = 'MemberNumber'
    Left = 146
    Top = 198
    ParamData = <
      item
        DataType = ftString
        Name = 'MemberNumber'
        ParamType = ptInput
        Value = nil
      end>
    object MemberDetailMemberNumber: TStringField
      FieldName = 'MemberNumber'
      Origin = 'memberdetail.MemberNumber'
      Size = 15
    end
    object MemberDetailArea: TStringField
      FieldName = 'Area'
      Origin = 'memberdetail.Area'
      Size = 3
    end
    object MemberDetailBook: TStringField
      FieldName = 'Book'
      Origin = 'memberdetail.Book'
      Size = 3
    end
    object MemberDetailAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Origin = 'memberdetail.AccountNumber'
      Size = 10
    end
    object MemberDetailConsumerName: TStringField
      FieldName = 'ConsumerName'
      Origin = 'memberdetail.ConsumerName'
      Size = 50
    end
    object MemberDetailDateMeterInstalled: TDateField
      FieldName = 'DateMeterInstalled'
      Origin = 'memberdetail.DateMeterInstalled'
    end
    object MemberDetailMeterDeposit: TFloatField
      FieldName = 'MeterDeposit'
      Origin = 'memberdetail.MeterDeposit'
    end
    object MemberDetailSecurityDeposit: TFloatField
      FieldName = 'SecurityDeposit'
      Origin = 'memberdetail.SecurityDeposit'
    end
    object MemberDetailMountingFee: TFloatField
      FieldName = 'MountingFee'
      Origin = 'memberdetail.MountingFee'
    end
    object MemberDetailTransformerRental: TFloatField
      FieldName = 'TransformerRental'
      Origin = 'memberdetail.TransformerRental'
    end
    object MemberDetailOtherFees: TFloatField
      FieldName = 'OtherFees'
      Origin = 'memberdetail.OtherFees'
    end
    object MemberDetailMeterBrand: TStringField
      FieldName = 'MeterBrand'
      Origin = 'memberdetail.MeterBrand'
      Size = 10
    end
    object MemberDetailSeral: TStringField
      FieldName = 'Seral'
      Origin = 'memberdetail.Seral'
    end
    object MemberDetailMemType: TStringField
      FieldName = 'MemType'
      Origin = 'memberdetail.MemType'
      Size = 15
    end
  end
  object dsMemberDetail: TDataSource
    DataSet = MemberDetail
    Left = 146
    Top = 278
  end
  object LoadDetail: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from loaddetail'
      'order by idloaddetail')
    MasterSource = dsMemberDetail
    MasterFields = 'AccountNumber'
    DetailFields = 'accountnumber'
    Left = 233
    Top = 198
    ParamData = <
      item
        DataType = ftString
        Name = 'AccountNumber'
        ParamType = ptInput
        Value = nil
      end>
    object LoadDetailaccountnumber: TStringField
      FieldName = 'accountnumber'
      Origin = 'loaddetail.accountnumber'
      Size = 10
    end
    object LoadDetaildescription: TStringField
      FieldName = 'description'
      Origin = 'loaddetail.description'
      Size = 50
    end
    object LoadDetailwattage: TFloatField
      FieldName = 'wattage'
      Origin = 'loaddetail.wattage'
    end
    object LoadDetailhoursused: TFloatField
      FieldName = 'hoursused'
      Origin = 'loaddetail.hoursused'
    end
    object LoadDetailkilowatthour: TFloatField
      FieldName = 'kilowatthour'
      Origin = 'loaddetail.kilowatthour'
    end
    object LoadDetailidNewApply: TLongWordField
      FieldName = 'idNewApply'
    end
    object LoadDetailunits: TLongWordField
      FieldName = 'units'
    end
  end
  object dsloaddetail: TDataSource
    DataSet = LoadDetail
    Left = 233
    Top = 278
  end
  object NewConnection: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'Select * from NewConnection where name like :name'
      'order by name')
    Left = 321
    Top = 198
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'name'
        Value = nil
      end>
    object NewConnectionArea: TStringField
      FieldName = 'Area'
      Origin = 'NewConnection.Area'
      Size = 3
    end
    object NewConnectionBook: TStringField
      FieldName = 'Book'
      Origin = 'NewConnection.Book'
      Size = 3
    end
    object NewConnectionName: TStringField
      FieldName = 'Name'
      Origin = 'NewConnection.Name'
      Size = 50
    end
    object NewConnectionAddress: TStringField
      FieldName = 'Address'
      Origin = 'NewConnection.Address'
      Size = 50
    end
    object NewConnectionORNumber: TStringField
      FieldName = 'ORNumber'
      Origin = 'NewConnection.ORNumber'
    end
    object NewConnectionDatePaid: TDateTimeField
      FieldName = 'DatePaid'
      Origin = 'NewConnection.DatePaid'
    end
    object NewConnectionratecode: TStringField
      FieldName = 'ratecode'
      FixedChar = True
      Size = 1
    end
    object NewConnectionTechArea: TStringField
      FieldName = 'TechArea'
      Size = 2
    end
    object NewConnectionCrew: TStringField
      FieldName = 'Crew'
    end
    object NewConnectionAccomplished: TStringField
      FieldName = 'Accomplished'
      Size = 1
    end
    object NewConnectionDateAccomplished: TDateTimeField
      FieldName = 'DateAccomplished'
    end
    object NewConnectionMeterBrand: TStringField
      FieldName = 'MeterBrand'
      Size = 10
    end
    object NewConnectionSerial: TStringField
      FieldName = 'Serial'
    end
    object NewConnectionRemarks: TMemoField
      FieldName = 'Remarks'
      BlobType = ftMemo
    end
    object NewConnectionTransformer: TStringField
      FieldName = 'Transformer'
      Size = 80
    end
    object NewConnectionPoleNumber: TStringField
      FieldName = 'PoleNumber'
      Size = 80
    end
    object NewConnectionMultiplier: TFloatField
      FieldName = 'Multiplier'
    end
    object NewConnectionDemand: TFloatField
      FieldName = 'Demand'
    end
    object NewConnectionTransformerRental: TFloatField
      FieldName = 'TransformerRental'
    end
    object NewConnectionAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object NewConnectionInitialReading: TFloatField
      FieldName = 'InitialReading'
    end
    object NewConnectionFeeder: TStringField
      FieldName = 'Feeder'
      Size = 80
    end
    object NewConnectionPosted: TStringField
      FieldName = 'Posted'
      Size = 1
    end
    object NewConnectionSealNumber: TStringField
      FieldName = 'SealNumber'
    end
    object NewConnectionidNewConnection: TLargeintField
      FieldName = 'idNewConnection'
    end
    object NewConnectionidNewApply: TLargeintField
      FieldName = 'idNewApply'
    end
  end
  object dsNewConnection: TDataSource
    DataSet = NewConnection
    Left = 321
    Top = 278
  end
  object NewApplicants: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from newapply')
    Left = 321
    Top = 38
    object NewApplicantsArea: TStringField
      FieldName = 'Area'
      Size = 10
    end
    object NewApplicantsBook: TStringField
      FieldName = 'Book'
      Size = 10
    end
    object NewApplicantsName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object NewApplicantsAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object NewApplicantscomember: TStringField
      FieldName = 'comember'
      Size = 30
    end
    object NewApplicantsratecode: TStringField
      FieldName = 'ratecode'
      Size = 1
    end
    object NewApplicantsDistrict: TStringField
      FieldName = 'District'
      Size = 10
    end
    object NewApplicantsORNumber: TStringField
      FieldName = 'ORNumber'
      Size = 15
    end
    object NewApplicantsORDate: TDateField
      FieldName = 'ORDate'
    end
    object NewApplicantsremarks: TMemoField
      FieldName = 'remarks'
      BlobType = ftMemo
    end
    object NewApplicantsidNewApply: TLargeintField
      FieldName = 'idNewApply'
    end
    object NewApplicantsidcomplaints: TFloatField
      FieldName = 'idcomplaints'
    end
    object NewApplicantsConnType: TStringField
      FieldName = 'ConnType'
      Size = 1
    end
    object NewApplicantsConnTypeEndDate: TDateField
      FieldName = 'ConnTypeEndDate'
    end
    object NewApplicantsSubsidy: TStringField
      FieldName = 'Subsidy'
      Size = 1
    end
    object NewApplicantsapplydate: TDateField
      FieldName = 'applydate'
    end
    object NewApplicantsPrincipalName: TStringField
      FieldName = 'PrincipalName'
      Size = 45
    end
    object NewApplicantsPrincipalAccountnumber: TStringField
      FieldName = 'PrincipalAccountnumber'
      Size = 15
    end
  end
  object dsNewApplicants: TDataSource
    DataSet = NewApplicants
    Left = 321
    Top = 118
  end
  object LoadSurvey: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from loadsurvey')
    MasterSource = dsNewApplicants
    MasterFields = 'idNewApply'
    DetailFields = 'idNewApply'
    Left = 408
    Top = 38
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idNewApply'
        Value = nil
      end>
    object LoadSurveydescription: TStringField
      FieldName = 'description'
      Origin = 'loadsurvey.description'
      Size = 50
    end
    object LoadSurveywattage: TFloatField
      FieldName = 'wattage'
      Origin = 'loadsurvey.wattage'
    end
    object LoadSurveyunits: TIntegerField
      FieldName = 'units'
      Origin = 'loadsurvey.units'
    end
    object LoadSurveyhoursused: TFloatField
      FieldName = 'hoursused'
      Origin = 'loadsurvey.hoursused'
    end
    object LoadSurveykilowatthour: TFloatField
      FieldName = 'kilowatthour'
      Origin = 'loadsurvey.kilowatthour'
    end
    object LoadSurveyidNewApply: TFloatField
      FieldName = 'idNewApply'
    end
  end
  object dsLoadSurvey: TDataSource
    DataSet = LoadSurvey
    Left = 408
    Top = 118
  end
  object MyConnection2: TMyConnection
    Database = 'zaneco'
    DataTypeMap = <
      item
        DBType = 209
        FieldType = ftLargeint
        IgnoreErrors = True
      end>
    Username = '19zan72'
    LoginPrompt = False
    Left = 496
    Top = 198
    EncryptedPassword = '8FFF9EFF8CFF9CFF9EFF93FF85FF9EFF91FF'
  end
  object ChangeMeter: TMyQuery
    Connection = MyConnection2
    SQL.Strings = (
      'select * from changemeter'
      'where changemeter.date between :datefrom and :dateto and'
      '      name like :name'
      'order by name')
    Left = 496
    Top = 38
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'name'
        Value = nil
      end>
    object ChangeMeterDate: TDateField
      FieldName = 'Date'
      Origin = 'changemeter.Date'
    end
    object ChangeMeterAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Origin = 'changemeter.AccountNumber'
      Size = 10
    end
    object ChangeMeterRemarks: TStringField
      FieldName = 'Remarks'
      Origin = 'changemeter.Remarks'
      Size = 30
    end
    object ChangeMeterArea: TStringField
      FieldName = 'Area'
      Origin = 'changemeter.Area'
      FixedChar = True
      Size = 3
    end
    object ChangeMeterBook: TStringField
      FieldName = 'Book'
      Origin = 'changemeter.Book'
      FixedChar = True
      Size = 3
    end
    object ChangeMeterSequence: TStringField
      FieldName = 'Sequence'
      Origin = 'changemeter.Sequence'
      Size = 4
    end
    object ChangeMeterName: TStringField
      FieldName = 'Name'
      Origin = 'changemeter.Name'
      Size = 50
    end
    object ChangeMeterLTDate: TDateField
      FieldName = 'LTDate'
      Origin = 'changemeter.LTDate'
    end
    object ChangeMeterLTSerial: TStringField
      FieldName = 'LTSerial'
      Origin = 'changemeter.LTSerial'
      Size = 15
    end
    object ChangeMeterLastReading: TFloatField
      FieldName = 'LastReading'
      Origin = 'changemeter.LastReading'
    end
    object ChangeMeterOldMeterBrand: TStringField
      FieldName = 'OldMeterBrand'
      Origin = 'changemeter.OldMeterBrand'
      Size = 10
    end
    object ChangeMeterOldSerialNumber: TStringField
      FieldName = 'OldSerialNumber'
      Origin = 'changemeter.OldSerialNumber'
      Size = 15
    end
    object ChangeMeterOldMeterMult: TFloatField
      FieldName = 'OldMeterMult'
      Origin = 'changemeter.OldMeterMult'
    end
    object ChangeMeterInitialReading: TFloatField
      FieldName = 'InitialReading'
      Origin = 'changemeter.InitialReading'
    end
    object ChangeMeterNewMeterBrand: TStringField
      FieldName = 'NewMeterBrand'
      Origin = 'changemeter.NewMeterBrand'
      Size = 10
    end
    object ChangeMeterNewMeterSerial: TStringField
      FieldName = 'NewMeterSerial'
      Origin = 'changemeter.NewMeterSerial'
      Size = 15
    end
    object ChangeMeterNewMeterMult: TFloatField
      FieldName = 'NewMeterMult'
      Origin = 'changemeter.NewMeterMult'
    end
    object ChangeMeterFeedback: TStringField
      FieldName = 'Feedback'
      Origin = 'changemeter.Feedback'
      FixedChar = True
      Size = 1
    end
    object ChangeMeterAveCons: TFloatField
      FieldName = 'AveCons'
      Origin = 'changemeter.AveCons'
    end
    object ChangeMeterCode: TFloatField
      FieldName = 'Code'
      Origin = 'changemeter.Code'
    end
  end
  object dsChangeMeter: TDataSource
    DataSet = ChangeMeter
    Left = 496
    Top = 118
  end
  object VoterDistrct: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from voterdistrict'
      'order by MunCode')
    Left = 48
    Top = 350
    object VoterDistrctidVoterDistrict: TLargeintField
      FieldName = 'idVoterDistrict'
    end
    object VoterDistrctMunCode: TStringField
      FieldName = 'MunCode'
      Size = 15
    end
    object VoterDistrctMunicipality: TStringField
      FieldName = 'Municipality'
      Size = 50
    end
    object VoterDistrctDistrictCode: TStringField
      FieldName = 'DistrictCode'
      Size = 15
    end
    object VoterDistrctDistrict: TStringField
      FieldName = 'District'
      Size = 50
    end
  end
  object dsVoterDistrict: TDataSource
    DataSet = VoterDistrct
    Left = 48
    Top = 398
  end
  object NewApplicantCharge: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from newapplycharges')
    MasterSource = dsNewApplicants
    MasterFields = 'idNewApply'
    DetailFields = 'idnewapply'
    Left = 583
    Top = 38
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idNewApply'
        Value = nil
      end>
    object NewApplicantChargedescription: TStringField
      FieldName = 'description'
      Origin = 'newapplycharges.description'
      Size = 45
    end
    object NewApplicantChargeidnewapplycharges: TLargeintField
      FieldName = 'idnewapplycharges'
    end
    object NewApplicantChargeidnewapply: TFloatField
      FieldName = 'idnewapply'
    end
    object NewApplicantChargeamount: TFloatField
      FieldName = 'amount'
    end
  end
  object dsNewApplicantCharge: TDataSource
    DataSet = NewApplicantCharge
    Left = 583
    Top = 118
  end
  object AccountCode: TMyQuery
    Connection = MyConnection2
    SQL.Strings = (
      'select * from accountcode'
      'where description like :description'
      'order by description')
    Left = 583
    Top = 198
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'description'
        Value = nil
      end>
    object AccountCodeCode: TStringField
      FieldName = 'Code'
      Origin = 'accountcode.Code'
      Size = 15
    end
    object AccountCodeDescription: TStringField
      FieldName = 'Description'
      Origin = 'accountcode.Description'
      Size = 50
    end
    object AccountCodeAmount: TFloatField
      FieldName = 'Amount'
      Origin = 'accountcode.Amount'
    end
    object AccountCodeWithEVAT: TStringField
      FieldName = 'WithEVAT'
      Origin = 'accountcode.WithEVAT'
      Size = 1
    end
    object AccountCodeID: TIntegerField
      FieldName = 'ID'
    end
    object AccountCodeExcludeCOH: TStringField
      FieldName = 'ExcludeCOH'
      Size = 1
    end
  end
  object dsAccountCode: TDataSource
    DataSet = AccountCode
    Left = 583
    Top = 278
  end
  object Recon: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from recon '
      'where recondate between :datefrom and :dateto and'
      '      name like :name'
      '&name'
      '&date')
    OnCalcFields = ReconCalcFields
    Left = 671
    Top = 38
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'name'
        Value = nil
      end>
    MacroData = <
      item
        Name = 'name'
        Value = 'order by name'#13#10
        Active = False
      end
      item
        Name = 'date'
        Value = 'order by name'#13#10
        Active = False
      end>
    object Reconcode: TFloatField
      FieldName = 'code'
      Origin = 'recon.code'
    end
    object ReconAccountnumber: TStringField
      FieldName = 'Accountnumber'
      Origin = 'recon.Accountnumber'
      Size = 10
    end
    object ReconArea: TStringField
      FieldName = 'Area'
      Origin = 'recon.Area'
      Size = 3
    end
    object ReconBook: TStringField
      FieldName = 'Book'
      Origin = 'recon.Book'
      Size = 3
    end
    object ReconName: TStringField
      FieldName = 'Name'
      Origin = 'recon.Name'
      Size = 50
    end
    object ReconAddress: TStringField
      FieldName = 'Address'
      Origin = 'recon.Address'
      Size = 50
    end
    object ReconDiscoDate: TDateField
      FieldName = 'DiscoDate'
      Origin = 'recon.DiscoDate'
    end
    object Reconreconnectionfee: TFloatField
      FieldName = 'reconnectionfee'
      Origin = 'recon.reconnectionfee'
      currency = True
    end
    object ReconBillDeposit: TFloatField
      FieldName = 'BillDeposit'
      Origin = 'recon.BillDeposit'
      currency = True
    end
    object ReconRemarks: TStringField
      FieldName = 'Remarks'
      Origin = 'recon.Remarks'
      Size = 50
    end
    object ReconMeterBrand: TStringField
      FieldName = 'MeterBrand'
      Origin = 'recon.MeterBrand'
      Size = 10
    end
    object ReconSerial: TStringField
      FieldName = 'Serial'
      Origin = 'recon.Serial'
      Size = 15
    end
    object ReconAmp: TStringField
      FieldName = 'Amp'
      Origin = 'recon.Amp'
      Size = 15
    end
    object ReconPhase: TStringField
      FieldName = 'Phase'
      Origin = 'recon.Phase'
      Size = 15
    end
    object ReconMeterType: TStringField
      FieldName = 'MeterType'
      Origin = 'recon.MeterType'
      Size = 15
    end
    object ReconMultiplier: TFloatField
      FieldName = 'Multiplier'
      Origin = 'recon.Multiplier'
    end
    object ReconInitialReading: TFloatField
      FieldName = 'InitialReading'
      Origin = 'recon.InitialReading'
    end
    object ReconReadingDate: TDateField
      FieldName = 'ReadingDate'
      Origin = 'recon.ReadingDate'
    end
    object ReconORNumber: TStringField
      FieldName = 'ORNumber'
      Size = 15
    end
    object ReconORDate: TDateField
      FieldName = 'ORDate'
    end
    object Recontotalpaid: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'totalpaid'
      Calculated = True
    end
    object Reconevat: TFloatField
      FieldName = 'evat'
    end
    object ReconCrew: TStringField
      FieldName = 'Crew'
    end
    object ReconDateRecon: TDateTimeField
      FieldName = 'DateRecon'
    end
    object Reconrecondate: TDateTimeField
      FieldName = 'recondate'
    end
    object Reconmoreremarks: TMemoField
      FieldName = 'moreremarks'
      BlobType = ftMemo
    end
    object ReconTechArea: TStringField
      FieldName = 'TechArea'
      Size = 2
    end
    object ReconAccomplished: TStringField
      FieldName = 'Accomplished'
      Size = 1
    end
    object ReconBatch: TStringField
      FieldName = 'Batch'
      Size = 10
    end
    object ReconSealNumber: TStringField
      FieldName = 'SealNumber'
    end
    object Reconidrecon: TLargeintField
      FieldName = 'idrecon'
    end
    object ReconidmeterTrans: TIntegerField
      FieldName = 'idmeterTrans'
    end
    object ReconrequestedBy: TStringField
      FieldName = 'requestedBy'
      Size = 65
    end
    object ReconisuedBy: TStringField
      FieldName = 'isuedBy'
      Size = 65
    end
  end
  object dsRecon: TDataSource
    DataSet = Recon
    Left = 671
    Top = 118
  end
  object ReconSurvey: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from reconsurvey'
      'order by idreconsurvey')
    MasterSource = dsRecon
    Left = 671
    Top = 198
    object ReconSurveyidrecon: TFloatField
      FieldName = 'idrecon'
    end
    object ReconSurveydescription: TStringField
      FieldName = 'description'
      Size = 50
    end
    object ReconSurveywattage: TFloatField
      FieldName = 'wattage'
    end
    object ReconSurveyunits: TIntegerField
      FieldName = 'units'
    end
    object ReconSurveyhoursused: TFloatField
      FieldName = 'hoursused'
    end
    object ReconSurveykilowatthour: TFloatField
      FieldName = 'kilowatthour'
    end
    object ReconSurveyidreconsurvey: TLargeintField
      FieldName = 'idreconsurvey'
    end
  end
  object dsReconSurvey: TDataSource
    DataSet = ReconSurvey
    Left = 671
    Top = 278
  end
  object Disco: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from disco'
      'where discodate between :datefrom and :dateto and'
      '  name like :name'
      'order by name')
    OnCalcFields = DiscoCalcFields
    Left = 759
    Top = 38
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'name'
        Value = nil
      end>
    object Discodiscodate: TDateField
      FieldName = 'discodate'
    end
    object Discocode: TFloatField
      FieldName = 'code'
    end
    object DiscoArea: TStringField
      FieldName = 'Area'
      Size = 3
    end
    object DiscoBook: TStringField
      FieldName = 'Book'
      Size = 3
    end
    object DiscoAccountnumber: TStringField
      FieldName = 'Accountnumber'
      Size = 10
    end
    object DiscoName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object DiscoAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object Discodiscofee: TFloatField
      FieldName = 'discofee'
    end
    object DiscoORNumber: TStringField
      FieldName = 'ORNumber'
      Size = 15
    end
    object DiscoORDate: TDateField
      FieldName = 'ORDate'
    end
    object Discoevat: TFloatField
      FieldName = 'evat'
    end
    object Discototal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object Discoremarks: TMemoField
      FieldName = 'remarks'
      BlobType = ftMemo
    end
    object DiscoTechArea: TStringField
      FieldName = 'TechArea'
      Size = 2
    end
    object DiscoDateAccomplished: TDateTimeField
      FieldName = 'DateAccomplished'
    end
    object DiscoCrew: TStringField
      FieldName = 'Crew'
    end
    object DiscoAccomplished: TStringField
      FieldName = 'Accomplished'
      Size = 1
    end
    object DiscoBatch: TStringField
      FieldName = 'Batch'
      Size = 10
    end
    object Discoiddisco: TLargeintField
      FieldName = 'iddisco'
    end
    object Discoserial: TStringField
      FieldName = 'serial'
    end
    object Discopolenumber: TStringField
      FieldName = 'polenumber'
    end
    object Discodiscocol: TStringField
      FieldName = 'discocol'
      Size = 45
    end
    object DiscoisuedBy: TStringField
      FieldName = 'isuedBy'
      Size = 55
    end
    object DiscorequestedBy: TStringField
      FieldName = 'requestedBy'
      Size = 65
    end
    object Discolocation: TStringField
      FieldName = 'location'
      Size = 45
    end
  end
  object dsDisco: TDataSource
    DataSet = Disco
    Left = 756
    Top = 118
  end
  object Signatories: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from cvsign')
    Left = 760
    Top = 200
    object Signatoriescertifiedname: TStringField
      FieldName = 'certifiedname'
      Size = 50
    end
    object Signatoriescertifiedpos: TStringField
      FieldName = 'certifiedpos'
      Size = 50
    end
    object Signatoriespreparedname: TStringField
      FieldName = 'preparedname'
      Size = 50
    end
    object Signatoriespreparedpos: TStringField
      FieldName = 'preparedpos'
      Size = 50
    end
    object Signatoriesidcvsign: TLargeintField
      FieldName = 'idcvsign'
    end
    object Signatoriesverifiedname: TStringField
      FieldName = 'verifiedname'
      Size = 50
    end
    object Signatoriesverifiedpos: TStringField
      FieldName = 'verifiedpos'
      Size = 50
    end
    object Signatoriesrecommendname: TStringField
      FieldName = 'recommendname'
      Size = 50
    end
    object Signatoriesrecommendpos: TStringField
      FieldName = 'recommendpos'
      Size = 50
    end
    object Signatoriesapprovedname: TStringField
      FieldName = 'approvedname'
      Size = 50
    end
    object Signatoriesapprovedpos: TStringField
      FieldName = 'approvedpos'
      Size = 50
    end
  end
  object dssign: TDataSource
    AutoEdit = False
    DataSet = Signatories
    Left = 759
    Top = 278
  end
  object SC: TMyQuery
    Connection = MyConnection2
    SQL.Strings = (
      'select * from scdisc '
      '   where billingname like :name or'
      '         name like :name '
      '   order by billingname')
    Left = 846
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'name'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'name'
        Value = nil
      end>
    object SCSCode: TFloatField
      FieldName = 'SCode'
    end
    object SCArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object SCBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object SCSequence: TStringField
      FieldName = 'Sequence'
      Size = 6
    end
    object SCAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object SCBillingName: TStringField
      FieldName = 'BillingName'
      Size = 50
    end
    object SCName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object SCBDay: TDateField
      FieldName = 'BDay'
    end
    object SCCPNo: TStringField
      FieldName = 'CPNo'
      Size = 15
    end
    object SCSCIDNo: TStringField
      FieldName = 'SCIDNo'
    end
    object SCSpouseSCIDNo: TStringField
      FieldName = 'SpouseSCIDNo'
    end
    object SCDateApplied: TDateField
      FieldName = 'DateApplied'
    end
    object SCExpirationDate: TDateField
      FieldName = 'ExpirationDate'
    end
    object SCRemarks: TStringField
      FieldName = 'Remarks'
      Size = 50
    end
    object SCAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object SCidSCDisc: TLargeintField
      FieldName = 'idSCDisc'
    end
  end
  object dsSC: TDataSource
    DataSet = SC
    Left = 844
    Top = 120
  end
  object schedUserQ: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'Select * from loguser'
      '&mon'
      '&tue'
      '&wed'
      '&thu'
      '&fri'
      '&sat'
      '&sun'
      'and :nowdate between dateStart and dateEnd')
    Left = 848
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nowTime'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nowTime'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nowdate'
        Value = nil
      end>
    MacroData = <
      item
        Name = 'mon'
        Value = ' where  monStart<=:nowTime and monEnd >= :nowTime'#13#10'           '
      end
      item
        Name = 'tue'
        Value = ' where  tueStart<=:nowTime and tueEnd >= :nowTime'
        Active = False
      end
      item
        Name = 'wed'
        Value = ' where  wenStart<=:nowTime and wenEnd >= :nowTime'
        Active = False
      end
      item
        Name = 'thu'
        Value = ' where  thuStart<=:nowTime and thuEnd >= :nowTime'
        Active = False
      end
      item
        Name = 'fri'
        Value = ' where  friStart<=:nowTime and friEnd >= :nowTime'
        Active = False
      end
      item
        Name = 'sat'
        Value = ' where  satStart<=:nowTime and satEnd >= :nowTime'
        Active = False
      end
      item
        Name = 'sun'
        Value = ' where  sunStart<=:nowTime and sunEnd >= :nowTime'
        Active = False
      end>
  end
  object countcomplaints: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      
        'SELECT CATEGORY, COUNT(*) FROM complaints where accomplished = '#39 +
        '0'#39' GROUP BY CATEGORY')
    Left = 408
    Top = 200
    object countcomplaintsCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 45
    end
    object countcomplaintsCOUNT: TLargeintField
      FieldName = 'COUNT(*)'
    end
  end
  object dscount: TMyDataSource
    DataSet = countcomplaints
    Left = 408
    Top = 280
  end
  object Barangay: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from barangay'
      'where municipalitycode = :municipalitycode'
      'group by barangay '
      'order by barangaycode')
    Left = 144
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'municipalitycode'
        Value = nil
      end>
    object Barangayidbarangay: TLargeintField
      FieldName = 'idbarangay'
    end
    object Barangaydistrictcode: TStringField
      FieldName = 'districtcode'
      Size = 15
    end
    object Barangaydistrict: TStringField
      FieldName = 'district'
      Size = 50
    end
    object Barangaymunicipalitycode: TStringField
      FieldName = 'municipalitycode'
      Size = 15
    end
    object Barangaymunicipality: TStringField
      FieldName = 'municipality'
      Size = 50
    end
    object Barangaybarangaycode: TStringField
      FieldName = 'barangaycode'
      Size = 15
    end
    object Barangaybarangay: TStringField
      FieldName = 'barangay'
      Size = 50
    end
    object Barangaysitiocode: TStringField
      FieldName = 'sitiocode'
      Size = 15
    end
    object Barangaysitio: TStringField
      FieldName = 'sitio'
      Size = 50
    end
  end
  object dsBarangay: TMyDataSource
    DataSet = Barangay
    Left = 144
    Top = 400
  end
  object Sitio: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from barangay'
      'where barangaycode = :barangaycode'
      'group by sitio '
      'order by sitiocode')
    Left = 232
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'barangaycode'
        Value = nil
      end>
    object Sitioidbarangay: TLargeintField
      FieldName = 'idbarangay'
    end
    object Sitiodistrictcode: TStringField
      FieldName = 'districtcode'
      Size = 15
    end
    object Sitiodistrict: TStringField
      FieldName = 'district'
      Size = 50
    end
    object Sitiomunicipalitycode: TStringField
      FieldName = 'municipalitycode'
      Size = 15
    end
    object Sitiomunicipality: TStringField
      FieldName = 'municipality'
      Size = 50
    end
    object Sitiobarangaycode: TStringField
      FieldName = 'barangaycode'
      Size = 15
    end
    object Sitiobarangay: TStringField
      FieldName = 'barangay'
      Size = 50
    end
    object Sitiositiocode: TStringField
      FieldName = 'sitiocode'
      Size = 15
    end
    object Sitiositio: TStringField
      FieldName = 'sitio'
      Size = 50
    end
  end
  object dsSitio: TMyDataSource
    DataSet = Sitio
    Left = 232
    Top = 400
  end
  object DeletedMember: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from deletedmembermaster'
      'where membername like :membername'
      'order by iddeletedmembermaster')
    Left = 328
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'membername'
        Value = nil
      end>
    object DeletedMemberiddeletedmembermaster: TLargeintField
      FieldName = 'iddeletedmembermaster'
    end
    object DeletedMemberidmembermaster: TLargeintField
      FieldName = 'idmembermaster'
    end
    object DeletedMemberIdNewApply: TLargeintField
      FieldName = 'IdNewApply'
    end
    object DeletedMemberMunCode: TStringField
      FieldName = 'MunCode'
      Size = 15
    end
    object DeletedMemberDistrictCode: TStringField
      FieldName = 'DistrictCode'
      Size = 15
    end
    object DeletedMemberBrgyCode: TStringField
      FieldName = 'BrgyCode'
      Size = 15
    end
    object DeletedMemberMembername: TStringField
      FieldName = 'Membername'
      Size = 50
    end
    object DeletedMemberAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object DeletedMemberGender: TStringField
      FieldName = 'Gender'
      Size = 10
    end
    object DeletedMemberBirthDate: TDateField
      FieldName = 'BirthDate'
    end
    object DeletedMemberSpouse: TStringField
      FieldName = 'Spouse'
      Size = 50
    end
    object DeletedMemberMemberStatus: TStringField
      FieldName = 'MemberStatus'
    end
    object DeletedMemberMemberNumber: TStringField
      FieldName = 'MemberNumber'
      Size = 15
    end
    object DeletedMemberIDNo: TStringField
      FieldName = 'IDNo'
      Size = 15
    end
    object DeletedMemberBODResNumber: TStringField
      FieldName = 'BODResNumber'
    end
    object DeletedMemberDateApproved: TDateField
      FieldName = 'DateApproved'
    end
    object DeletedMemberMFORNumber: TStringField
      FieldName = 'MFORNumber'
    end
    object DeletedMemberMFORDate: TDateField
      FieldName = 'MFORDate'
    end
    object DeletedMemberDateTurnOn: TDateField
      FieldName = 'DateTurnOn'
    end
    object DeletedMemberTOOrderNo: TStringField
      FieldName = 'TOOrderNo'
    end
    object DeletedMemberEDAmount: TFloatField
      FieldName = 'EDAmount'
    end
    object DeletedMemberEDOrNo: TStringField
      FieldName = 'EDOrNo'
    end
    object DeletedMemberEDDate: TDateField
      FieldName = 'EDDate'
    end
    object DeletedMemberMemberPic: TBlobField
      FieldName = 'MemberPic'
    end
    object DeletedMemberSpousePic: TBlobField
      FieldName = 'SpousePic'
    end
    object DeletedMemberMemberSign: TBlobField
      FieldName = 'MemberSign'
    end
    object DeletedMemberDeletedBy: TStringField
      FieldName = 'DeletedBy'
      Size = 55
    end
    object DeletedMemberDeletedRemarks: TStringField
      FieldName = 'DeletedRemarks'
      Size = 25
    end
    object DeletedMemberDateDeleted: TDateTimeField
      FieldName = 'DateDeleted'
    end
  end
  object dsDeletedMember: TMyDataSource
    DataSet = DeletedMember
    Left = 328
    Top = 400
  end
  object queServerQ: TMyConnection
    Database = 'queuedb'
    Username = '19zan72'
    LoginPrompt = False
    Left = 488
    Top = 336
    EncryptedPassword = '8FFF9EFF8CFF9CFF9EFF93FF85FF9EFF91FF'
  end
  object userQueQ: TMyQuery
    Connection = queServerQ
    SQL.Strings = (
      'Select '
      ' :userID   userID ,'
      ' :name     name,'
      ' :number   number ,'
      ' :userType userType,'
      ' :Date     Date,'
      ' :counter  counter,'
      ' :entryU   entryUser')
    Left = 552
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'userID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'name'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'number'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'userType'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Date'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'counter'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'entryU'
        Value = nil
      end>
    object userQueQuserID: TStringField
      FieldName = 'userID'
      Size = 1
    end
    object userQueQname: TStringField
      FieldName = 'name'
      Size = 1
    end
    object userQueQnumber: TStringField
      FieldName = 'number'
      Size = 1
    end
    object userQueQuserType: TStringField
      FieldName = 'userType'
      Size = 1
    end
    object userQueQDate: TStringField
      FieldName = 'Date'
      Size = 1
    end
    object userQueQcounter: TStringField
      FieldName = 'counter'
      Size = 1
    end
    object userQueQentryUser: TStringField
      FieldName = 'entryUser'
      Size = 1
    end
  end
end
