unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellAPI;

type
  TForm3 = class(TForm)
    btn1: TButton;
    lbl1: TLabel;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
ShellExecute(handle, 'open', 'Teoria.pdf', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
Form3.Close;
Form2.Show;
end;

end.
