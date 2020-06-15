unit F01_gps_add;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TF_gps_add = class(TForm)
    B_OK: TBitBtn;
    e_lat: TEdit;
    e_long: TEdit;
    procedure B_OKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_gps_add: TF_gps_add;

implementation

uses MainForm;

{$R *.dfm}

procedure TF_gps_add.B_OKClick(Sender: TObject);
begin
  if tag=1 then
    begin
      fmain.MTE1.Next();
      Fmain.MTE1.Insert();
      fmain.MTE1.FieldByName('gps_lat').AsString:=e_lat.Text;
      fmain.MTE1.FieldByName('gps_long').AsString:=e_long.Text;
      fmain.MTE1.Post();
      fmain.need_re_num:=true;
    end else
  if tag=2 then
    begin
      fmain.MTE1.Edit();
      fmain.MTE1.FieldByName('gps_lat').AsString:=e_lat.Text;
      fmain.MTE1.FieldByName('gps_long').AsString:=e_long.Text;
      fmain.MTE1.Post();
      fmain.need_re_num:=true;
    end;
  close();
end;

end.
