unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfMain = class(TForm)
    Label1: TLabel;
    eShtof: TEdit;
    eCalc: TButton;
    Label2: TLabel;
    lRes: TLabel;
    procedure eCalcClick(Sender: TObject);
    procedure eShtofChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}

//8.????? ? ????? (1 ????=1,2299 ?)

procedure TfMain.eCalcClick(Sender: TObject);
var
  shtof, litr: real;
begin
  try
    shtof:=StrToFloat(eShtof.Text);
  except
    ShowMessage('???????????? ??????');
    lRes.Caption:='0,0';
    exit
  end;

  if shtof>=0 then begin
    litr:=1.2299*shtof;
    lRes.Caption:=FloatToStr(litr);
      exit
  end

  else begin
    ShowMessage('???????? ?????? ???? ?????????????');
    lRes.Caption:=''
  end;
end;

procedure TfMain.eShtofChange(Sender: TObject);
begin
  lRes.Caption:=''
end;

end.

