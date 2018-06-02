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
  mCity: TSities;
  i,j: Tsity;
  n: TSity;
  r,m: TSities;

procedure motexists(r: TRoad; n: Tsity; var k: TSities);
var
  checked: TSities; { множество уже проверенных городов }
  i: Tsity; { это понадобится для цикла... }
begin
  k := r[n];
  checked := []; { начинаем из города N, пока еще ничего не проверили }
  repeat
    for i := low(n) to high(n) do { Ищем среди всех городов те, }
      if i in k - checked then { в которые есть автобус из уже проверенных, но сами они еще не проверены }
      begin
        checked := checked + [i]; { Нашли такой город... Добавляем его в список проверенных }
        k := k + r[i]; { И все маршруты, которые из него выходят - к множеству-результату }
      end;
  until k - checked = []; { Когда остановиться? Когда ВСЕ города во множестве-результате будут проверены }
end;

begin
  {for i := low(n) to high(n) do
  for j:= low(n) to high(n) do
  Include(mArr[i],j); }
  include(marr[a],b);
  include(marr[a],c);
 // include(marr[a],h);
  include(marr[b],a);
 // include(marr[b],e);
 // include(marr[b],d);
 // include(marr[b],h);
  include(marr[c],e);
 // include(marr[c],d);
 // include(marr[c],f);
  //include(marr[c],a);
 // include(marr[d],a);
  include(marr[d],b);
 // include(marr[d],c);
  include(marr[d],e);
  //include(marr[e],b);
  //include(marr[e],c);
 // include(marr[e],d);
  include(marr[e],h);
 // include(marr[f],a);
 // include(marr[f],g);
 // include(marr[f],h);
 // include(marr[f],e);
 // include(marr[g],a);
  //include(marr[g],b);
 // include(marr[g],c);
  include(marr[g],d);
 // include(marr[h],e);
  //include(marr[h],f);
 // include(marr[h],g);
  include(marr[h],a);

  i:=a;
  motexists(marr,i,r);
  if a in r then Writeln('a');
  If b in r then Writeln('b');
  if c in r then Writeln('c');
  if d in r then Writeln('d');
  if e in r then Writeln('e');
  if f in r then Writeln('f');
  if g in r then Writeln('g');
  if h in r then Writeln('h');


  readln;
end.

