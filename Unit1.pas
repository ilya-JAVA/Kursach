unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, ComCtrls;

type
  TForm1 = class(TForm)
    pb1: TProgressBar;
    img1: TImage;
    tmr1: TTimer;
    procedure tmr1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.FormHide(Sender: TObject);
begin
 AnimateWindow(handle, 1000, AW_BLEND or AW_HIDE);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  AnimateWindow(handle, 1000, AW_CENTER or AW_BLEND);
end;

procedure TForm1.tmr1Timer(Sender: TObject);
begin
  pb1.Position:=pb1.Position+20;
  if (pb1.Position=pb1.Max) then
  begin
    Form1.Hide;
    tmr1.Enabled := false;
    Form2.Show;
  end;
end;

end.
