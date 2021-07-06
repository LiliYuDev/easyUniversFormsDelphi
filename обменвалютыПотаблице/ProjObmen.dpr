program ProjObmen;

uses
  Vcl.Forms,
  ObmVal in 'ObmVal.pas' {FMain},
  UAbout in 'UAbout.pas' {FAbout},
  UMaxMin in 'UMaxMin.pas' {FMinMax};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TFAbout, FAbout);
  Application.CreateForm(TFMinMax, FMinMax);
  Application.Run;
end.
