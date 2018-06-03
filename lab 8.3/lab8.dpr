program lab8;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  kek = 10;
  Length = 255;

type
  arr = array[1..kek] of Byte;

  TMArr = array[1..kek] of arr;

  TMBunch = set of 1..Length;

var
  MainArr: TMArr;
  i, j,n: Byte;
  buf: Integer;
  Bunch: array[1..kek] of TMBunch;
  Bun: set of 1..kek;

procedure GetArray(var mainarr: TMArr);
begin
  mainarr[1, 1] := 1;
  mainarr[1, 2] := 2;
  mainarr[1, 3] := 3;
  mainarr[1, 4] := 4;
  mainarr[1, 5] := 5;
  mainarr[2, 1] := 123;
  mainarr[2, 2] := 215;
  mainarr[2, 3] := 213;
  mainarr[2, 4] := 231;
  mainarr[2, 5] := 12;
  mainarr[3, 1] := 1;
  mainarr[3, 2] := 2;
  mainarr[3, 3] := 3;
  mainarr[3, 4] := 4;
  mainarr[3, 5] := 5;
  mainarr[4, 1] := 6;
  mainarr[4, 2] := 7;
  mainarr[4, 3] := 8;
  mainarr[4, 4] := 9;
  mainarr[4, 5] := 10;
  mainarr[5, 1] := 1;
  mainarr[5, 2] := 2;
  mainarr[5, 3] := 3;
  mainarr[5, 4] := 4;
  mainarr[5, 5] := 5;
end;

begin
  Write('1: Hand write; 2: Random Write;3: Ready Array :');
  Read(buf);
  case buf of
    1:
      begin
        n:=kek;
        for i := 1 to n do
        begin
          for j := 1 to n do
          begin
            buf := 0;
            readln(buf);
            mainarr[i, j] := buf;
          end;
          writeln;
        end;
      end;
    2:
      begin
        n:=kek;
        Randomize;
        for i := 1 to n do
          for j := 1 to n do
          begin
            mainarr[i, j] := Random(10);
          end;
      end;
    3:
      begin
        n:=5;
         GetArray(MainArr);
      end;
  end;
  Writeln('Array :');

  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      write(mainarr[i, j]: 4);
    end;
    Writeln;
  end;

  for i := 1 to n do
  begin
    Bunch[i] := [];
    for j := 1 to n do
    begin
      include(Bunch[i], mainarr[i, j]);
    end;
  end;

  i := 1;
  bun := [];
  repeat
    J := i;
    if not (i in bun) then
      repeat
        j := j + 1;
        if not (j in bun) then
        begin
          if Bunch[i] = Bunch[j] then
          begin
            if not (i in Bun) then
              Include(Bun, i);
            Include(Bun, j);
          end;
        end;
      until j = n;
    i := i + 1;
  until i < n;

  if bun = [] then
    writeln('There is no similar rows.')
  else
  begin
    writeln('Similar rows :');
    for i := 1 to n do
      if i in bun then
        write(i: 3);
  end;
  Readln(buf);
end.

