unit UMaxMin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids;

type
  TFMinMax = class(TForm)
    BitBtn1: TBitBtn;
    SGMM: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure SGMMClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMinMax: TFMinMax;

implementation

{$R *.dfm}

uses ObmVal;

procedure TFMinMax.FormCreate(Sender: TObject);
begin
  SGMM.Canvas.Brush.Color := clGreen;
  SGMM.Cells[0,0]:='������� �� �������';
  SGMM.Cells[0,1]:='������ � ����� ������ ������';
  SGMM.Cells[0,2]:='������ � ����� ������� ������';
  SGMM.Cells[1,0]:='��������';
  SGMM.Cells[2,0]:='����';
  SGMM.Cells[3,0]:='��������� ������';
  SGMM.ColWidths[0]:= 225;
  SGMM.ColWidths[1]:= 148;
  SGMM.ColWidths[2]:= 70;
  SGMM.ColWidths[3]:= 160;
  SGMM.RowHeights[1]:= 53;
  SGMM.RowHeights[2]:= 52;
end;

procedure TFMinMax.SGMMClick(Sender: TObject);
var
  i,j,k, n,z,m, imin,imax:integer;
begin
  n:= FMain.SGVal.RowCount-1;  //���-�� ����� � ������� �������
  m:= FMain.SGVal.ColCount-1; //���-�� �������� � ������� �������
  z:= FMinMax.SGMM.ColCount-1; //���-�� �������� � �������� �������
  imin:=1;
  imax:=1;
  for i := 1 to n do begin
    if (StrToFloat(FMain.SGVal.Cells[1,i])>StrToFloat(FMain.SGVal.Cells[1,imax])) then imax:=i;
    if (StrToFloat(FMain.SGVal.Cells[1,i])<StrToFloat(FMain.SGVal.Cells[1,imin])) then imin:=i;
  end;
  //��� � ���� ������� � �������
  j:=0;
  for k := 1 to z do begin
    if j<=m then begin
      FMinMax.SGMM.Cells[k,1]:=FMain.SGVal.Cells[j,imin];
      FMinMax.SGMM.Cells[k,2]:=FMain.SGVal.Cells[j,imax];
      j:=j+1;
    end;
  end;
end;
end.
