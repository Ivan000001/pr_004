unit F02_gate_add;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrlsEh;

type
  TF_gate_add = class(TForm)
    cb_type: TDBComboBoxEh;
    e_v1: TEdit;
    e_v2: TEdit;
    B_OK: TBitBtn;
    procedure B_OKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_gate_add: TF_gate_add;

implementation

uses MainForm;

{$R *.dfm}

procedure TF_gate_add.B_OKClick(Sender: TObject);
begin
  if tag=1 then
    begin
      fmain.MTE2.Next();
      Fmain.MTE2.Insert();
      fmain.MTE2.FieldByName('v1').AsString:=e_v1.Text;
      fmain.MTE2.FieldByName('v2').AsString:=e_v2.Text;
      fmain.MTE2.FieldByName('type').asInteger :=cb_type.Value;
      fmain.MTE2.FieldByName('descr').AsString:=cb_type.Text;
      fmain.MTE2.Post();
//      fmain.need_re_num:=true;
    end else
  if tag=2 then
    begin
      fmain.MTE2.Edit();
      fmain.MTE2.FieldByName('v1').AsString:=e_v1.Text;
      fmain.MTE2.FieldByName('v2').AsString:=e_v2.Text;
      fmain.MTE2.FieldByName('type').asInteger :=cb_type.Value;
      fmain.MTE2.FieldByName('descr').AsString:=cb_type.Text;
      fmain.MTE2.Post();
//      fmain.need_re_num:=true;
    end;
  close();
end;

end.
