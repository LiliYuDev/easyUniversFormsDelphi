unit StRoki;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFMain = class(TForm)
    LabelLine: TLabel;
    FieldOfText: TComboBox;
    BBClose: TBitBtn;
    LRes: TLabel;
    Label1: TLabel;
    procedure RestrictionOfInput(Sender: TObject; var Key: Char);
    procedure LResClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

procedure TFMain.LResClick(Sender: TObject);
var
  i, j, a:integer;
  s:string;
begin
  s:=FieldOfText.Text+' ';
  LRes.Caption:='';
  j:=0;
  a:=0;
  for i:=1 to Length(s) do begin
    if (s[i]<>' ') then begin
      inc(j);
      if (j = 5) and (s[i + 1] = ' ') then
        inc(a);
    end
    else
      j := 0;
      LRes.Caption:=('Количество '+IntToStr(a));
  end;
 end;

procedure TFMain.RestrictionOfInput(Sender: TObject; var Key: Char);
begin
  if Key=#13 then begin
    FieldOfText.Items.Add(FieldOfText.Text);
    FieldOfText.Text:='';
  end
  else
    if not (Key in ['0','1',#8,#32]) then
      Key:=#0;
end;

end.
