unit PsychoTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Jpeg;

type
  TFMain = class(TForm)
    Quadr: TImage;    //квадрат
    Trian: TImage;    //треугольник
    Circl: TImage;    //круг
    Zigzag: TImage;   //зигзаг
    Rect: TImage;     //пр€моугольник
    LRes: TLabel;     //дл€ вывода результата
    Label1: TLabel;   //просто надпись
    Label2: TLabel;   //просто надпись
    procedure QuadrClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

procedure TFMain.QuadrClick(Sender: TObject);
var
  k:integer;
begin
  LRes.Caption:='';
  Case TImage(Sender).Tag of
    1:LRes.Caption:= ' вадрат Ц упорный, неутомимый труженик, мыслитель, рационалист, любитель пор€дка...';
    2:LRes.Caption:='“реугольник Ц энергичный, прагматик, лидер, честолюбив, нетерпелив...';
    3:LRes.Caption:=' руг Ц коммуникатор, эмоционально отзывчивый, нерешительный...';
    4:LRes.Caption:='«игзаг Ц творческий Ц Ђинакомысл€щийї, генератор идей, восторженный, эксцентричный, проповедник...';
    5:LRes.Caption:='ѕр€моугольник Ц непоследовательный, непредсказуемый, любознательный, доверчивый, наивный...';
  end;

{можно ещЄ так, но при нажатии на свободную область формы выходит ошибка
  const a:array[1..5] of string=(' вадрат Ц упорный, неутомимый труженик, мыслитель, рационалист, любитель пор€дка...','“реугольник Ц энергичный, прагматик, лидер, честолюбив, нетерпелив...',' руг Ц коммуникатор, эмоционально отзывчивый, нерешительный...','«игзаг Ц творческий Ц Ђинакомысл€щийї, генератор идей, восторженный, эксцентричный, проповедник...','ѕр€моугольник Ц непоследовательный, непредсказуемый, любознательный, доверчивый, наивный...');
begin
  LRes.Caption:='';
  LRes.Caption:=a[TImage(Sender).Tag]; }
end;
end.
