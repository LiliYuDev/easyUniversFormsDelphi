unit PerevodVel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TFMain = class(TForm)
    BClose: TButton;
    EVel1: TEdit;
    EVel2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LError: TLabel;
  procedure BCloseClick(Sender: TObject);
  procedure EVel1Enter(Sender: TObject);
  procedure EVel2Enter(Sender: TObject);
  procedure EVel2Change(Sender: TObject);
  procedure EVel2KeyPress(Sender: TObject; var Key: Char);

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

procedure TFMain.EVel1Enter(Sender: TObject);
begin
  Evel2.Clear;
end;

procedure TFMain.EVel2Enter(Sender: TObject);
begin
  Evel1.Clear;
end;

procedure TFMain.EVel2Change(Sender: TObject);
var
  f: double;
begin
  f := 0;
  // ���� ������ EVel1, �������� ������ ����������
  if Sender = EVel1 then begin
    LError.Caption := '';
    if TryStrToFloat(EVel1.Text, f) then // ���� ������� ��������� ����� � �����, ��
      EVel2.Text := FloatToStr(f*100000)
    else
      LError.Caption := '�������� �� ����������, ����������, �������� ���� � ��������� �������';
  end;
  // ���� ������ EVel2, �������� ������ ����������
  if Sender = EVel2 then begin
    LError.Caption := '';
    if TryStrToFloat(EVel2.Text, f) then // ���� ������� ��������� ����� � �����, ��
      EVel1.Text := FloatToStr(f/100000)
    else
      LError.Caption := '�������� �� ����������, ����������, �������� ���� � ��������� �������';
  end;

end;

procedure TFMain.EVel2KeyPress(Sender: TObject; var Key: Char);
begin
  //������������. ����� ������� ������ �����, ������� � �������
  if not (Key in ['0'..'9', ',', #8]) then
    Key := #0;
end;

end.

