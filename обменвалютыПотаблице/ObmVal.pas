unit ObmVal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids;

type
  TFMain = class(TForm)
    MMall: TMainMenu;
    Mabout: TMenuItem; //� ���������
    Mmaxmin: TMenuItem;  //����.���. ����
    N3: TMenuItem;           //������� ������� ��� ����������
    TOkr: TMenuItem;      //check ����������
    SGVal: TStringGrid;    //�������
    EVvod: TEdit;        //����
    Label1: TLabel;  //������ ���������
    procedure MaboutClick(Sender: TObject);   //����� ����� � ���������
    procedure MmaxminClick(Sender: TObject);  //����� ����� ����.���. �����
    procedure FormCreate(Sender: TObject);    //������������ ����� ������� � ���������� ��������� ��������
    procedure EVvodKeyPress(Sender: TObject; var Key: Char);  //������������ �� ���� �� �������
    procedure EVvodChange(Sender: TObject); //���������� 3�� ������� �� �����/�������

private
  { Private declarations }
public
  { Public declarations }
end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

uses UAbout, UMaxMin;

type
  tKoef=array [1..11] of string;
  tCount=array [1..11] of real;
const
  Koef: tKoef=('������ ���','����','���������� ����','������� ���','����������� ������','��������� ����','���� ����������','��������� ����','������� �����','�������� ����',' ������������� ����');
  Count: tCount=(73.87, 80.33, 23.55,	2.27, 20.58, 0.15, 92.4, 10.45, 2.95, 0.69, 6.07);


procedure TFMain.MaboutClick(Sender: TObject);  //����� ����� � ���������
begin
  FAbout.Show;
end;

procedure TFMain.MmaxminClick(Sender: TObject);  //����� ����� � ���.����. �������
begin
  FMinMax.Show;
end;

procedure TFMain.FormCreate(Sender: TObject);   //���������� �������
var
  i, j, n:integer;
begin
  n:=SGVal.RowCount-1;
  //��������� �������� �������-������
  SGVal.ColWidths[0]:= 165;
  SGVal.ColWidths[1]:= 175;
  SGVal.ColWidths[2]:= 174;
  SGVal.RowHeights[0]:= 35;
  //���������� �����
  SGVal.Cells[0,0]:='�������� ������';
  SGVal.Cells[1,0]:='����';
  SGVal.Cells[2,0]:='��������� ������';
  //���������� 0-�� ������� � ����������
  for i := 1 to n do begin
    SGVal.Cells[0,i]:=Koef[i];
  end;
  //���������� 1-�� ������� � ������
  for j := 1 to n do begin
    SGVal.Cells[1,j]:=FloatToStr(Count[j]);
  end;
end;

procedure TFMain.EVvodChange(Sender: TObject);
var
  f, k: real;
  i, n:integer;
begin
  TOkr.Checked:= not TOkr.Checked;
  n:=SGVal.RowCount-1;
  try
    f:=StrToFloat(EVvod.Text);
  except
    else ShowMessage('������. ������� �����');
    EVvod.Text:='0,0';
    exit
  end;

  if f>=0 then begin
    case TOkr.Checked of
    False:
      begin
        for i := 1 to n do begin
          k:=f/Count[i];
          SGVal.Cells[2,i]:=FloatToStr(k);
        end;
      end;
    True:
      begin
        for i := 1 to n do begin
          k:=f/Count[i];
          SGVal.Cells[2,i]:= FloatToStrF(k,ffFixed,10,2);
        end;
      end;
    end;
  end;
end;

procedure TFMain.EVvodKeyPress(Sender: TObject; var Key: Char);
begin
  //������������. ����� ������� ������ �����, ������� � �������
  if not (Key in ['0'..'9', ',', #8]) then
    Key := #0;
end;

end.
