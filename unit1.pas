unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Grids,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Startwert: TEdit;
    Endwert: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
procedure TForm1.Button2Click(Sender: TObject);
begin
  Close;
end;

    procedure TForm1.Button1Click(Sender: TObject);
    var i, Startwert1, Endwert1 : Integer;
  y: Double;
begin
  Startwert1 := StrToInt(Startwert.Text);
  Endwert1 := StrToInt(Endwert.Text);
  StringGrid1.RowCount := Endwert1 - Startwert1 + 2;
  for i := Startwert1 to Endwert1 do
  begin
    StringGrid1.Cells[0, i - Startwert1 + 1] := IntToStr(i);
    y := 0.25 * sqr(i) - 3;
    StringGrid1.Cells[1, i - Startwert1 + 1] := FloatToStr(y);
  end;
end;



end.

