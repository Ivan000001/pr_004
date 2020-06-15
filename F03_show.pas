unit F03_show;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, GridsEh,
  DBAxisGridsEh, DBGridEh, ExtCtrls, StdCtrls, Buttons;

type
  TF_show = class(TForm)
    SB1: TScrollBox;
    Image1: TImage;
    B_see_it: TBitBtn;
    procedure B_see_itClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_show: TF_show;

implementation

{$R *.dfm}
uses math_map;

procedure TF_show.B_see_itClick(Sender: TObject);
begin
  math_map.m.l();
end;

end.
