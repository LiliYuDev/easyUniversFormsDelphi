program stroki5;

uses
  Forms,
  StRoki in 'StRoki.pas' {FMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
