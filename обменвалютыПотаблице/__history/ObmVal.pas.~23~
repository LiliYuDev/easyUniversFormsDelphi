unit ObmVal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids;

type
  TFMain = class(TForm)
    MMall: TMainMenu;
    Mabout: TMenuItem; //О программе
    Mmaxmin: TMenuItem;  //Макс.мин. курс
    N3: TMenuItem;           //главная вкладка для округления
    TOkr: TMenuItem;      //check округления
    SGVal: TStringGrid;    //таблицы
    EVvod: TEdit;        //ввод
    Label1: TLabel;  //кнопка посчитать
    procedure MaboutClick(Sender: TObject);   //показ формы о программе
    procedure MmaxminClick(Sender: TObject);  //показ формы Макс.мин. курсы
    procedure FormCreate(Sender: TObject);    //формирование шапки таблицы и заполнение дефолтных столбцов
    procedure EVvodKeyPress(Sender: TObject; var Key: Char);  //ограничитель на ввод по кнопкам
    procedure EVvodChange(Sender: TObject); //заполнение 3го столбца по округ/неокруг

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
  Koef: tKoef=('Доллар США','Евро','Грузинский лари','Тайский бат','Израильский шекель','Армянский драм','Фунт стерлингов','Китайский юань','Чешская крона','Японская иена',' Южнокорейская вона');
  Count: tCount=(73.87, 80.33, 23.55,	2.27, 20.58, 0.15, 92.4, 10.45, 2.95, 0.69, 6.07);


procedure TFMain.MaboutClick(Sender: TObject);  //показ формы о программе
begin
  FAbout.Show;
end;

procedure TFMain.MmaxminClick(Sender: TObject);  //показ формы с мин.макс. курсами
begin
  FMinMax.Show;
end;

procedure TFMain.FormCreate(Sender: TObject);   //заполнение таблицы
var
  i, j, n:integer;
begin
  n:=SGVal.RowCount-1;
  //настройка размеров столбца-строки
  SGVal.ColWidths[0]:= 165;
  SGVal.ColWidths[1]:= 175;
  SGVal.ColWidths[2]:= 174;
  SGVal.RowHeights[0]:= 35;
  //заполнение шапки
  SGVal.Cells[0,0]:='Название валюты';
  SGVal.Cells[1,0]:='Курс';
  SGVal.Cells[2,0]:='Результат обмена';
  //заполнение 0-го столбца с названиями
  for i := 1 to n do begin
    SGVal.Cells[0,i]:=Koef[i];
  end;
  //заполнение 1-го столбца с курсом
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
    else ShowMessage('Ошибка. Введите число');
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
  //ограничитель. Можно вводить только числа, запятую и стирать
  if not (Key in ['0'..'9', ',', #8]) then
    Key := #0;
end;

end.
