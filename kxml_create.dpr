program kxml_create;

uses
  Forms,
  MainForm in 'MainForm.pas' {FMain},
  F01_gps_add in 'F01_gps_add.pas' {F_gps_add},
  F02_gate_add in 'F02_gate_add.pas' {F_gate_add},
  F03_show in 'F03_show.pas' {F_show},
  math_map in 'math_map.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TF_gps_add, F_gps_add);
  Application.CreateForm(TF_gate_add, F_gate_add);
  Application.CreateForm(TF_show, F_show);
  Application.Run;
end.
