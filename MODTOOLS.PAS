{$I-,V-,S-}

Unit ModTools;

// Manny Constantino's Delphi Toolbox
// created December 31, 2001

Interface

Type
St = String[255];
Var
I,J,K,L,M,N,O   : Integer;
PageCount       : Word;
LineCount       : Word;

Function Format(a : Currency; s : String) : String;
Function AmountWord(Amount : Currency) : String;
Function FormRead(a : Integer; s : String) : String;
function JustStr(Source : St; FillCh : char;
                              FieldSize : integer;
                              JustCode : integer) : St;

Implementation

Function  Format;
var
st : String;
ls : Integer;
DS : String;
I  : Integer;

begin
ls := Length(s);
j  := ls;
Str(a:ls:2,St);

for i := ls downto 1 do
begin
if s[i] = '#' then
 begin
 s[i] := st[j];
 j := j - 1;
 end
 else
 begin
 if st[j] = '.' then j := j - 1;
 end;

if s[i] = '-' then s[i] := ' ';
if (s[i+1] = ' ') and (s[i] = ',') then s[i] := ' ';
if ((s[i-1] = ' ') or (St[j] = '-') or (St[j] = ' ')) and (s[i] = ',') then s[i] := ' ';
end;

if a < 0 then
   format := '(' + s  + ')'
   else
   format := ' ' + s + ' ';

if a = 0 then
  begin
   DS := '';
   Format := '';
   DS := JustStr(DS,' ',LS-1,0);
   Format := ' '+DS+'  ';
  end;
end;


Function AmountWord;
Const
DigitH : Array[0..1] of String[10] = ('','Hundred ');
DigitT : Array[0..1] of String[10] = ('','Thousand ');
DigitM : Array[0..1] of String[10] = ('','Million ');
AmtL   : Array[0..19] of String[10] =
         ('','One ','Two ','Three ','Four ','Five ','Six ','Seven ',
          'Eight ','Nine ','Ten ','Eleven ','Twelve ','Thirteen ',
          'Fouteen ','Fifteen ','Sixteen ','Seventeen ','Eighteen ',
          'Nineteen ');

AmtH   : Array[0..9] of String[10] =
         ('','',
             'Twenty ','Thirty ','Fourty ','Fifty ',
             'Sixty ','Seventy ','Eighty ','Ninety ');

Var
Amt                                    : String[80]                           ;
Chk                                    : Integer                              ;
AmtWord                                : String[80]                           ;
Hundred                                : String[3]                            ;
Thousand                               : String[3]                            ;
Million                                : String[3]                            ;
HStr,TStr,MStr                         : String[80]                           ;

Function Wrd(Data : String):Word;
Var
W : Word;
begin
Val(Data,W,Chk);
Wrd := W;
end;

Function Value(Data : Word;Exp : Boolean):Word;
begin
If Exp then Value := Data else Value := 0;
end;

begin
Str(Amount:0:2,Amt);
Amt      := JustStr(Amt,'0',12,1);
AmtWord  := '';
Million  := Amt[1] + Amt[2] + Amt[3];
Thousand := Amt[4] + Amt[5] + Amt[6];
Hundred  := Amt[7] + Amt[8] + Amt[9];

MStr     := AmtL[ Wrd(Million[1]) ] +
            DigitH[ Byte(Million[1] <> '0') ] +
            AmtL [ Value(Wrd(Million[2]+Million[3]),Million[2] in ['0'..'1']) ] +
            AmtH [ Value(Wrd(Million[2]),not (Million[2] in ['0'..'1'])) ] +
            AmtL [ Value(Wrd(Million[3]),not (Million[2] in ['0'..'1'])) ] +
            DigitM[ Byte(Million <> '000') ];

TStr     := AmtL[ Wrd(Thousand[1]) ] +
            DigitH[ Byte(Thousand[1] <> '0') ] +
            AmtL [ Value(Wrd(Thousand[2]+Thousand[3]),Thousand[2] in ['0'..'1']) ] +
            AmtH [ Value(Wrd(Thousand[2]),not (Thousand[2] in ['0'..'1'])) ] +
            AmtL [ Value(Wrd(Thousand[3]),not (Thousand[2] in ['0'..'1'])) ] +
            DigitT[ Byte(Thousand <> '000') ];

HStr     := AmtL[ Wrd(Hundred[1]) ] +
            DigitH[ Byte(Hundred[1] <> '0') ] +
            AmtL [ Value(Wrd(Hundred[2]+Hundred[3]),Hundred[2] in ['0'..'1']) ] +
            AmtH [ Value(Wrd(Hundred[2]),not (Hundred[2] in ['0'..'1'])) ] +
            AmtL [ Value(Wrd(Hundred[3]),not (Hundred[2] in ['0'..'1'])) ];

AmountWord := MStr + TStr + HStr + ' ' + Amt[11] + Amt[12] + '/100 Pesos';
end;

function FormRead;
var
i  : Integer   ;
st : String ;
ls : Integer   ;
j  : Integer   ;

begin { 1 }
ls := Length(s);
j  := ls;
Str(a:ls,St);

for i := ls downto 1 do
begin { 2 }
if s[i] = '#' then
 begin { 3 }
 s[i] := st[j];
 j := j - 1;
 end { 3 }
 else
 begin { 4 }
 if st[j] = '.' then j := j - 1;
 end; { 4 }

if s[i] = '-' then s[i] := ' ';
if (s[i+1] = ' ') and (s[i] = ',') then s[i] := ' ';
if ((s[i-1] = ' ') or (St[j] = '-') or (St[j] = ' ')) and (s[i] = ',') then s[i] := ' ';
end; { 2 }
formRead := s;
end; { 1 }

function JustStr;
  var
    JustString : String[255];
    Len        : integer;

  begin {__JustStr}

    if (not (JustCode in [0,1,2])) then
       JustCode   := 0;
    if (FieldSize > 255) then     { Make sure FieldSize is good,   }
       FieldSize  := 255          { and initialize the field.      }
    else if (FieldSize < 1) then
       FieldSize  := 0;
    FillChar(JustString[1],FieldSize,FillCh);
    JustString[0] := AnsiChar(FieldSize);
    Len           := Length(Source);

    case JustCode of
      0:                               {Left justification ...........  }
         if (Len <= FieldSize) then
            Move(Source[1],JustString[1],Len)
         else
            Move(Source[1],JustString[1],FieldSize);
      1:                               { Right justification .......... }
         if (Len <= FieldSize) then
            Move(Source[1],JustString[FieldSize - Len + 1],Len)
         else
            Move(Source[Len - FieldSize + 1],JustString[1],FieldSize);
      2:                               { Center ....................... }
         if (Len <= FieldSize) then
            Move(Source[1],JustString[((FieldSize - Len) div 2) + 1],Len)
         else
            Move(Source[((Len - FieldSize) div 2) + 1],
                                                 JustString[1],FieldSize);
    end; {case of JustCode}

    JustStr := JustString

  end;  {__JustStr}

end.
