unit PsychoTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Jpeg;

type
  TFMain = class(TForm)
    Quadr: TImage;    //???????
    Trian: TImage;    //???????????
    Circl: TImage;    //????
    Zigzag: TImage;   //??????
    Rect: TImage;     //?????????????
    LRes: TLabel;     //??? ?????? ??????????
    Label1: TLabel;   //?????? ???????
    Label2: TLabel;   //?????? ???????
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
    1:LRes.Caption:= '??????? ? ???????, ?????????? ????????, ?????????, ???????????, ???????? ???????...';
    2:LRes.Caption:='??????????? ? ??????????, ?????????, ?????, ??????????, ??????????...';
    3:LRes.Caption:='???? ? ????????????, ???????????? ??????????, ?????????????...';
    4:LRes.Caption:='?????? ? ?????????? ? ???????????????, ????????? ????, ????????????, ?????????????, ???????????...';
    5:LRes.Caption:='????????????? ? ??????????????????, ???????????????, ??????????????, ??????????, ???????...';
  end;

{????? ??? ???, ?? ??? ??????? ?? ????????? ??????? ????? ??????? ??????
  const a:array[1..5] of string=('??????? ? ???????, ?????????? ????????, ?????????, ???????????, ???????? ???????...','??????????? ? ??????????, ?????????, ?????, ??????????, ??????????...','???? ? ????????????, ???????????? ??????????, ?????????????...','?????? ? ?????????? ? ???????????????, ????????? ????, ????????????, ?????????????, ???????????...','????????????? ? ??????????????????, ???????????????, ??????????????, ??????????, ???????...');
begin
  LRes.Caption:='';
  LRes.Caption:=a[TImage(Sender).Tag]; }
end;
end.
