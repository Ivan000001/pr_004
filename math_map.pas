unit math_map;

interface
uses SysUtils,windows;
type
  po = record
      x,y:string;
    end;
  map_=record
    Pa,Pb,Pc,Pd:po;
    centre:po;
    kef:real;
    offset: record x,y:integer;end;
  public
    procedure l;
  private
    function get_center(a,b:po):po;
    procedure put_kef(hxw:integer);  //hxw - px - длина стороны области вывода
    procedure put_P;
  end;
var m:map_;
implementation
uses MainForm;
{ map_ }

function map_.get_center(a, b: po): po;
function get_(a:string):integer;
begin
  delete(a,pos('.',a),1);
  result:=strtoint(a);
end;
begin
  result.x:=inttostr(((get_(b.x)-get_(a.x)) div 2)+get_(a.x));
  insert('.',result.x,length(result.x)-6+1);
  result.y:=inttostr(((get_(b.y)-get_(a.y)) div 2)+get_(a.y));
  insert('.',result.y,length(result.y)-6+1);
end;

procedure map_.put_P;
var
 r:integer;
 Cur:po;
begin
  FMain.mte1.First();
  Cur.x:=FMain.MTE1.FieldByName('gps_lat').AsString;
  Cur.y:=FMain.MTE1.FieldByName('gps_long').AsString;
  Pa.x:=Cur.x;Pa.y:=Cur.y;
  Pb.x:=Cur.x;Pb.y:=Cur.y;
  Pc.x:=Cur.x;Pc.y:=Cur.y;
  Pd.x:=Cur.x;Pd.y:=Cur.y;
  while not(FMain.mte1.Eof) do
    begin
      r:=ansicomparestr(cur.x,Pa.x);
      if r<0 then begin Pa.x:=Cur.x;Pd.x:=Cur.x end;
      if r>0 then begin Pb.x:=Cur.x;Pc.x:=Cur.x end;
      r:=ansicomparestr(Cur.y,Pa.y);
      if r>0 then begin Pc.y:=Cur.y;Pd.y:=Cur.y end;
      if r<0 then begin Pa.y:=Cur.y;Pb.y:=Cur.y end;

      Cur.x:=FMain.MTE1.FieldByName('gps_lat').AsString;
      Cur.y:=FMain.MTE1.FieldByName('gps_long').AsString;

      FMain.mte1.Next();
    end;

end;

procedure map_.put_kef(hxw:integer);
var leg:string;
function get_(a:string):integer;
begin
  delete(a,pos('.',a),1);
  result:=strtoint(a);
end;
function minus_P(a,b:string):string;
begin
  result:=inttostr(get_(a)-get_(b));
  insert('.',result,length(result)-6+1);
  if result[1]='.' then insert('0',result,1);
end;
begin
  if ansicomparestr(minus_P(Pb.x,Pa.x),minus_P(Pd.y,Pa.y))>0 then
     leg:=minus_P(Pb.x,Pa.x)
   else
     leg:=minus_P(Pb.x,Pa.x);
end;

procedure map_.l;
begin
  put_P();
  centre:=get_center(Pa,Pc);
  put_kef(500);
end;

end.
