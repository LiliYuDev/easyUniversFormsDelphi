program PT;

uses
  Vcl.Forms,
  PsychoTest in 'PsychoTest.pas' {FMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
