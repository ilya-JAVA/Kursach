unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ShellAPI;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    btn6: TButton;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit4, Unit7, Unit6, Unit8;

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
   Form2.Hide;
   Form3.Show;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
Form2.Hide;
Form4.Show;
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm2.N2Click(Sender: TObject);
begin
  Form2.Hide;
  Form3.Show;
end;

procedure TForm2.btn6Click(Sender: TObject);
begin
Form2.Hide;
Form6.Show;
end;


procedure TForm2.N7Click(Sender: TObject);
begin
ShellExecute(0, PChar('Open'), PChar('Spravka.chm'), nil, nil, SW_SHOW);
end;

procedure TForm2.N5Click(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TForm2.N3Click(Sender: TObject);
begin
Form2.Hide;
Form4.Show;
end;

procedure TForm2.N6Click(Sender: TObject);
begin
    AboutBox1.ShowModal;
end;

procedure TForm2.N9Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
