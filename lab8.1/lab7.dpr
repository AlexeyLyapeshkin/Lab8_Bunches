program lab7;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TSity = (a, b, c, d, e, f, g, h);

  TSities = set of TSity;

  TRoad = array[a..h] of TSities;

var
  mArr: troad;
  n: TSity;
  fin: TSities;

procedure CanHit(r: TRoad; n: Tsity; var k: TSities);
var
  checked: TSities; { ��������� ��� ����������� ������� }
  i: Tsity; { ��� ����������� ��� �����... }
begin
  k := r[n];{ �������� �� ������ N}
  checked := []; {���� ��� ������ �� ��������� }
  repeat
    for i := low(n) to high(n) do { ���� ����� ���� ������� ��, }
      if i in k - checked then { � ������� ���� ������� �� ��� �����������, �� ���� ��� ��� �� ��������� }
      begin
        checked := checked + [i]; { ����� ����� �����... ��������� ��� � ������ ����������� }
        k := k + r[i]; { � ��� ��������, ������� �� ���� ������� - � ���������-���������� }
      end;
  until k - checked = [];
end;

procedure cityOut(const fin: TSities);
begin
  if a in fin then
    Writeln('a');
  if b in fin then
    Writeln('b');
  if c in fin then
    Writeln('c');
  if d in fin then
    Writeln('d');
  if e in fin then
    Writeln('e');
  if f in fin then
    Writeln('f');
  if g in fin then
    Writeln('g');
  if h in fin then
    Writeln('h');
end;

procedure cityin(var marr: troad);
begin
  include(marr[a], b);
  {include(marr[a], c);
  include(marr[a], h);
  include(marr[a], h);
  include(marr[a], h);
  include(marr[a], h);
  include(marr[a], h);
  include(marr[a], h);}

  //include(marr[b], a);
  include(marr[b], c);
  {include(marr[b], d);
  include(marr[b], h);
  include(marr[b], a);
  include(marr[b], a);
  include(marr[b], a);
  include(marr[b], a);}

  include(marr[c], d);
  {include(marr[c], d);
  include(marr[c], f);
  include(marr[c], a);
  include(marr[c], a);
  include(marr[c], a);
  include(marr[c], a);
  include(marr[c], a);}

  include(marr[d], e);
  {include(marr[d], b);
  include(marr[d], c);
  include(marr[d], e);
  include(marr[d], e);
  include(marr[d], e);
  include(marr[d], e);
  include(marr[d], e); }

  include(marr[e], f);
  {include(marr[e], c);
  include(marr[e], d);
  include(marr[e], h);
  include(marr[e], h);
  include(marr[e], h);
  include(marr[e], h);
  include(marr[e], h); }

  include(marr[f], g);
  {include(marr[f], g);
  include(marr[f], h);
  include(marr[f], e);
  include(marr[f], e);
  include(marr[f], e);
  include(marr[f], e);
  include(marr[f], e);}

  include(marr[g], h);
  {include(marr[g], b);
  include(marr[g], c);
  include(marr[g], d);
  include(marr[g], d);
  include(marr[g], d);
  include(marr[g], d);
  include(marr[g], d); }

  //include(marr[h], e);
  {include(marr[h], f);
  include(marr[h], g);
  include(marr[h], a);
  include(marr[h], a);
  include(marr[h], a);
  include(marr[h], a);
  include(marr[h], a);}
end;

begin
  cityin(mArr);
  n := a;
  canhit(marr, n, fin);
  cityOut(fin);
  readln;
end.

