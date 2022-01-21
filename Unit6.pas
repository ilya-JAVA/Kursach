unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm6 = class(TForm)
    mmo1: TMemo;
    btn1: TButton;
    btn2: TButton;
    lbl1: TLabel;
    btn3: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
mmo1.Lines.LoadFromFile('Marks.txt')
end;

procedure TForm6.btn2Click(Sender: TObject);
var
f:textfile;
begin
mmo1.Lines.clear;
assignfile(f,'Marks.txt');
rewrite(f);
closefile(f);
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
Form6.Close;
Form2.Show;
end;

end.
