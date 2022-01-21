unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm5 = class(TForm)
    rg1: TRadioGroup;
    btn1: TButton;
    btn2: TButton;
    lbl1: TLabel;
    btn3: TButton;
    procedure FormActivate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  f : Text;
  s : string;
  Vern : Integer;
  bl : Double;
implementation

uses Unit6, Unit1, Unit2;

{$R *.dfm}

procedure TForm5.FormActivate(Sender: TObject);
begin
  btn3.Hide;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
rg1.Enabled:=true;
btn1.Enabled:=False;
btn1.Hide;
btn2.Enabled:=true;
btn3.Hide;
AssignFile(f,'Questions.txt');
reset(f);
readln(f,s);
bl:=0;
repeat
if (s[1]='/') then begin
delete(s,1,1);
rg1.Caption:=s;
end
else
if (s[1]='&') then begin
delete(s,1,1);
Vern:=StrToInt(s);
end
else
rg1.Items.Add(s);
readln(f,s);
until (s[1]='/') or (EOF(f));
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
if (rg1.ItemIndex>-1) and (not Eof(f)) then begin
if rg1.ItemIndex = Vern-1 then bl:=bl+0.4;
rg1.Items.Clear;
Repeat
if (s[1]='/') then begin
delete(s,1,1);
rg1.Caption:=s;
end
else if s[1]='&' then begin
delete(s,1,1);
Vern:=StrToInt(s);
end
else rg1.Items.Add(s);
readln(f,s);
until (s[1]='/') or (Eof(f));
end
Else if Eof(f) then begin
delete(s,1,1);
Vern:=StrToInt(s);
if rg1.ItemIndex = Vern-1 then bl:=bl+0.4;
lbl1.Hide;
lbl1.Caption:='Ваша оценка:' + FloatToStr(bl);
CloseFile(f);
btn2.Enabled:=False; 
btn3.Show;
lbl1.Show;
end;
end;

procedure TForm5.btn3Click(Sender: TObject);
var a:string;
ff:textfile;
begin
AssignFile(ff,'Marks.txt');
reset(ff);
append(ff);
a:=lbl1.Caption;
writeln(ff,a);
Closefile(ff);
Form1.Close;
Application.Terminate;
end;

end.
