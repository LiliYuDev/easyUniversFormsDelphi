program changVel;

uses
  Vcl.Forms,
  PerevodVel in 'PerevodVel.pas' {FMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
