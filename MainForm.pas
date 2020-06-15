unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MemTableDataEh, Db, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  GridsEh, DBAxisGridsEh, DBGridEh, MemTableEh, StdCtrls, Buttons, ActnList,
  ExtDlgs;

type
  TFMain = class(TForm)
    MTE1: TMemTableEh;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    MTE1n: TSmallintField;
    MTE1gps_lat: TStringField;
    MTE1gps_long: TStringField;
    B_add: TBitBtn;
    B_edit: TBitBtn;
    B_del: TBitBtn;
    ActionList1: TActionList;
    Action1: TAction;
    DBGridEh2: TDBGridEh;
    B_s_add: TBitBtn;
    B_s_edit: TBitBtn;
    B_s_del: TBitBtn;
    DataSource2: TDataSource;
    MTE2: TMemTableEh;
    MTE2v1: TSmallintField;
    MTE2v2: TSmallintField;
    MTE2type: TSmallintField;
    MTE2descr: TStringField;
    BitBtn1: TBitBtn;
    B_p_load: TBitBtn;
    OD1: TOpenTextFileDialog;
    B_show: TBitBtn;
    procedure B_showClick(Sender: TObject);
    procedure B_p_loadClick(Sender: TObject);
    procedure B_s_delClick(Sender: TObject);
    procedure B_s_editClick(Sender: TObject);
    procedure B_s_addClick(Sender: TObject);
    procedure B_delClick(Sender: TObject);
    procedure B_editClick(Sender: TObject);
    procedure B_addClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    need_re_num:boolean;
  end;

var
  FMain: TFMain;

implementation

uses F01_gps_add, F02_gate_add, F03_show;

{$R *.dfm}

procedure re_num;
var SavePlace: TBookmark;
  i:integer;
begin
  if fmain.need_re_num then
    begin
      SavePlace:=fmain.MTE1.GetBookmark();
      fmain.MTE1.DisableControls();
      i:=1;
      fmain.MTE1.First();
      while not(fmain.MTE1.Eof) do
        begin
          fmain.MTE1.Edit();
          fmain.MTE1.FieldByName('n').AsInteger:=i;
          fmain.MTE1.Post();
          fmain.MTE1.Next();
          i:=i+1;
        end;
      fmain.need_re_num:=false;
      fmain.MTE1.Refresh();
      fmain.MTE1.GotoBookmark(SavePlace);
      fmain.MTE1.EnableControls();
    end;
end;

procedure TFMain.B_addClick(Sender: TObject);
begin
  f_gps_add.e_lat.Text:='';
  f_gps_add.e_long.Text:='';
  f_gps_add.Tag:=1;
  f_gps_add.showmodal();
  re_num();
end;

procedure TFMain.B_delClick(Sender: TObject);
begin
  if mte1.RecordCount>0 then
    if MessageDlg('Удалить запись',mtInformation,[mbOK]+[mbCancel],0)=1 then
      begin
        mte1.Delete();
        re_num();
      end;
end;

procedure TFMain.B_editClick(Sender: TObject);
begin
  if mte1.RecordCount>0 then
    begin
      f_gps_add.e_lat.Text:=mte1.FieldByName('gps_lat').AsString;
      f_gps_add.e_long.Text:=mte1.FieldByName('gps_long').AsString;
      f_gps_add.Tag:=2;
      f_gps_add.showmodal();
      re_num();
    end;
end;

procedure TFMain.B_p_loadClick(Sender: TObject);
var
  f:textfile;
  st_,op1,op2:string;
procedure ins(str:string;out s1,s2:string);
begin
  if pos(',',str)>0 then
    begin
      s1:=copy(str,1,pos(',',str)-1);
      s2:=copy(str,pos(',',str)+1,length(str))
    end
end ;

begin
  if OD1.Execute then
    begin
      mte1.EmptyTable();
      assignfile(f,od1.FileName);
      reset(f);
      while not(eof(f)) do
        begin
          readln(f,st_);
          MTE1.Next();
          MTE1.Insert();
          ins(st_,op1,op2);
          MTE1.FieldByName('gps_lat').AsString:=op1;
          MTE1.FieldByName('gps_long').AsString:=op2;
 //         ins(st_, MTE1.FieldByName('gps_lat').AsString, MTE1.FieldByName('gps_long').AsString);
          MTE1.Post();

        end;
      closefile(f);
      fmain.need_re_num:=true;
      re_num();
    end;

end;

procedure TFMain.B_showClick(Sender: TObject);
begin
  F_show.show();
end;

procedure TFMain.B_s_addClick(Sender: TObject);
begin
  f_gate_add.e_v1.Text:='';
  f_gate_add.e_v2.Text:='';
  f_gate_add.cb_type.ItemIndex:=-1;
  f_gate_add.Tag:=1;
  f_gate_add.showmodal();
end;

procedure TFMain.B_s_delClick(Sender: TObject);
begin
  if mte2.RecordCount>0 then
    if MessageDlg('Удалить запись',mtInformation,[mbOK]+[mbCancel],0)=1 then
      begin
        mte2.Delete();
      end;
end;

procedure TFMain.B_s_editClick(Sender: TObject);
begin
  if mte2.RecordCount>0 then
    begin
      f_gate_add.e_v1.Text:=mte2.FieldByName('v1').AsString;
      f_gate_add.e_v2.Text:=mte2.FieldByName('v2').AsString;
      f_gate_add.cb_type.ItemIndex:=MTE2.FieldByName('type').asInteger;
      f_gate_add.Tag:=2;
      f_gate_add.showmodal();
      re_num();
    end;
end;

end.
