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
  // Áåð¸ì äàííûå EVel1, êîòîðîãî âûçâàë îáðàáîò÷èê
  if Sender = EVel1 then begin
    LError.Caption := '';
    if TryStrToFloat(EVel1.Text, f) then // Åñëè óäàëîñü ïåðåâåñòè òåêñò â ÷èñëî, òî
      EVel2.Text := FloatToStr(f*100000)
    else
      LError.Caption := 'Çíà÷åíèå íå îáðàáîòàíî, ïîæàëóéñòà, î÷èñòèòå ïîëå è ïîâòîðèòå ïîïûòêó';
  end;
  // Áåð¸ì äàííûå EVel2, êîòîðîãî âûçâàë îáðàáîò÷èê
  if Sender = EVel2 then begin
    LError.Caption := '';
    if TryStrToFloat(EVel2.Text, f) then // Åñëè óäàëîñü ïåðåâåñòè òåêñò â ÷èñëî, òî
      EVel1.Text := FloatToStr(f/100000)
    else
      LError.Caption := 'Çíà÷åíèå íå îáðàáîòàíî, ïîæàëóéñòà, î÷èñòèòå ïîëå è ïîâòîðèòå ïîïûòêó';
  end;

end;

procedure TFMain.EVel2KeyPress(Sender: TObject; var Key: Char);
begin
  //îãðàíè÷èòåëü. Ìîæíî ââîäèòü òîëüêî ÷èñëà, çàïÿòóþ è ñòèðàòü nice i like this shit lmao
  if not (Key in ['0'..'9', ',', #8]) then
    Key := #0;
end;

end.

