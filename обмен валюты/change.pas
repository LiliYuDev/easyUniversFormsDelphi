unit change;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFMain = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LRes: TLabel;
    CBtwo: TCheckBox;
    BClose: TButton;
    Emoney: TEdit;
    Ecourse: TEdit;
    BChange: TButton;
    procedure BCloseClick(Sender: TObject);
    procedure BChangeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

procedure TFMain.BCloseClick(Sender: TObject);
begin
  close;
end;


procedure TFMain.BChangeClick(Sender: TObject);
var
  Money, Cours, res: real;
begin
  try
    Money:=StrToFloat(Emoney.Text);
    Cours:=StrToFloat(Ecourse.Text);
  except
    ShowMessage('������������ ��������');
    LRes.Caption:='0,0';
    exit
  end;

  if (Money>=0) and (Cours>=0) then begin
    res:=Money*Cours;
 end

    else begin
      ShowMessage('������������ ��������, ������� ������������� �����');
      LRes.Caption:=''
    end;

  case CBtwo.Checked of
    False:
      begin
        LRes.Caption:=FloatToStr(res);
      end;
    True:
      begin
        LRes.Caption:=FloatToStrF(res,ffFixed,10,2);
      end;
  end;
end;

end.
