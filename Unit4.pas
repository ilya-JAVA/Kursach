unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit5, Unit2;

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
var f : TextFile;
today : TDatetime;
s : string;
begin
if edt1.text = '' then
ShowMessage('Поле обязательно должно быть заполнено')
else
begin
today:=Time;
assignfile(f, 'Marks.txt');
reset(f);
closeFile(f);
append(f);
s:= edt1.Text + ' ' +' Время регистрации: ' + TimeToStr(today);
writeln(f,s);
closeFile(f);
Form4.Hide;
Form5.Show;
end;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
Form4.Close;
Form2.Show;
end;

end.
