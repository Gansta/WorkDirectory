
type arre = array[1..2] of extended;

function power(x:extended;n:integer):arre;
 var s:extended;
     flag:boolean;
  begin
   flag:=false;
   s:=x;
   power[1]:=1;
   power[2]:=0;
   while (n > 0) do begin
    if odd(n) then begin
     if (flag) then begin
      power[1]:=power[1]*s;
      power[2]:=power[2]+1;
     end
      else begin
       power[1]:=s;
       flag:=true;
      end;
    end;
    if (n>1) then begin
     s:=s*s;
     power[2]:=power[2]+1;
    end;
    n:=n shr 1;
   end;
  end;

procedure printmultip(n:extended);
 begin
  if (n=1) then writeln(' 1 умножение!')
   else
     if (n>1) and (n<5) then writeln(n:3:0,' умножения!')
    else
     writeln(n:3:0,' умножений!');
 end;

var x:extended;
    k:integer;

begin
 writeln('*** power_sr.pas         Шалымов РС, 13.10.2012');
 writeln('*** Быстрое возведение в степень.');
 writeln('*** Основание - число вида extended;');
 writeln('*** Степень - целое неотрицательное число <= 65535.');
 writeln;
 writeln('Введите основание и степень ( 0 0 - выход из программы):');
 read(x,k);
 while ((x<>0) and (k<>0)) do begin
  write(x:0:16,'^',k,' ='); write(power(x,k)[1]:25:16); printmultip(power(x,k)[2]);
  writeln;
  writeln('Введите основание и степень ( 0 0 - выход из программы):');
  read(x,k);
 end;
end.
