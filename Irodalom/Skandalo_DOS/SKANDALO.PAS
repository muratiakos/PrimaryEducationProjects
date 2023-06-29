program skandalo;
uses crt;

const Bogarasz=false; {Vigy†zz!!! BillentyÅ-bogar†sz†s kîzben îsszeomlik a megnyit†s!!!}
      Prog ='Skand†l¢ v1.1.0';
      Rovid='o';
      Hosszu='-';
      HIsMgh=False;
      Magassag=49;
      Max=magassag-5;
      Tagolas=55;
      Felso=2;
      Bal=3;

      {ablak keretelemei}
      f='∫';
      v='Õ';
      bf='…';
      ba='»';
      jf='ª';
      ja='º';
      fl='À';
      lf=' ';



type tomb=array[1..max] of string;

var Fajlnev, cim, alap, gepelt: string;
    Fajl: Text;
    sorok: tomb;
    kiirt{,elvetett}: longint; {felhazsn†lhat¢ szîvegkÇnt kiirt sorokat tartja sz†maon}
    i,j,aktiv: integer;
    sorszam, vege: longint; {Megnyitott f†jl olvas†si poz°ci¢ Çs utols¢ sor sz†ma}
    gomb: char;
    windowsos : boolean;

function szokoz(DB : integer):string;
         var i: integer;
             sajat: string;
         begin
              sajat:='';
              for i:=1 to DB do sajat:=sajat+' ';
              szokoz:=sajat;
         end;

procedure jeloles(Hogy: boolean);
begin
     i:=wherex;
     j:=wherey;
     gotoxy(24,24);
     if hogy then write('X') else write(' ');
     gotoxy(i,j);
end;



function dososit(Szoveg :string) : string;
var i: integer;
    karakter,atal: char;
    sajat: string;
begin
   sajat:='';
   for i:= 1 to length(Szoveg) do begin
       karakter:=Szoveg[i];
       case karakter of
            '·': atal:='†';
            '¡': atal:='µ';
            'È': atal:='Ç';
            '…': atal:='ê';
            'Ì': atal:='°';
            'Õ': atal:='÷';
            'Û': atal:='¢';
            '”': atal:='‡';
            'ˆ': atal:='î';
            'ı': atal:='ã';
            '÷': atal:='ô';
            '’': atal:='ä';
            '˙': atal:='£';
            '⁄': atal:='È';
            '¸': atal:='Å';
            '‹': atal:='ö';
            {'˚': atal:='˚';}
            '€': atal:='Î';
            else atal:=karakter;
       end;
       sajat:=sajat+atal;
   end;
   dososit:=sajat;
end;
function szepit(Szoveg :string) : string;
var i: integer;
    karakter,atal: char;
    sajat: string;
begin
   sajat:='';
   for i:= 1 to length(Szoveg) do begin
       karakter:=Szoveg[i];
       case karakter of
            'µ': atal:='†'; {naaa}
            '÷': atal:='I'; {nagyiii}
            '‡': atal:='¢'; {nooo}
            'ã': atal:='î'; {keoe}
            'ä': atal:='ô'; {neoe}
            'È': atal:='£'; {nuuu}
            '˚': atal:='Å'; {keueu}
            'Î': atal:='ö'; {neue}
            else atal:=karakter;
       end;
       sajat:=sajat+atal;
   end;
   szepit:=sajat;
end;
function Megfordit(Szoveg : string) : string;
         var sajat : string;
             i: integer;
         begin
              sajat:='';
              for i:= 1 to length(Szoveg) do begin
                  sajat:=Szoveg[i]+sajat;
              end;
              Megfordit:=sajat;
         end;

function Egyszerusit(Szoveg : string): string;
         var sajat, r: string;
             i: integer;
             resz: string;

         begin
              sajat:='';
              i:=1;
              while i<=length(szoveg) do begin
                    resz:=UpCase(Szoveg[i]);
                    {Karaktereke egyszer˚s°tett jelîlÇse:
                                 rîvid mgh: R
                                 hossz£ mgh: H
                                 msh: M
                                 egyÇb: E
                    }
                    case resz[1] of
                         'A', 'E', 'I', 'O', 'î','ô', 'U', 'Å','ö':
                              begin
                                   sajat:=sajat+'R';
                                   inc(i);
                              end;



                         '†','µ','Ç','ê','°','÷','¢','‡','ã','ä','£','È','˚','Î':
                              begin
                                   sajat:=sajat+'H';
                                   inc(i);
                              end;


                         'Q','W','R','P','F','J','K','Y','X','V','B','M':
                              begin
                                   sajat:=sajat+'M';
                                   inc(i);
                              end;


                         'T','Z','S','D','G','L','C','N':
                              begin
                              {KÇtjegy˚ m†ssalhangz¢k vizsg†lata (maj honap. M† f†raDT VOK...Cs†!}
                                if (resz+UpCase(Szoveg[i+1])+Upcase(Szoveg[i+2])='DZS') then begin
                                      sajat:=sajat+'T  ';
                                      inc(i,3);
                                   end
                                 else begin
                                      r:=resz+UpCase(Szoveg[i+1]);
                                   if (r='TY')or(r='ZS')or(r='SZ')or(r='DZ')or(r='GY')or(r='LY')or(r='CS')or(r='NY') then begin
                                             sajat:=sajat+'D ';
                                             inc(i,2);
                                          end
                                      else begin
                                              sajat:=sajat+'M';
                                              inc(i);
                                          end;
                                end;

                              end;
              {m†s °r†sjel, sz†m, sz¢kîz, stb...}

                         'H':
                             begin
                                  if HIsMgh then
                                         sajat:=sajat+'R'
                                     else
                                         sajat:=sajat+'M';
                                  inc(i);
                             end;
                         else
                              begin
                                   sajat:=sajat+'E';
                                   inc(i);
                              end;
                    end;
              end;
                    Egyszerusit:=sajat;
         end;

function Skandal(Szoveg: string): string;
         var sajat,alap: string;
             i, msh,egyeb: integer;
         begin
              msh:=0;
              egyeb:=0;
              sajat:='';

              alap:=Egyszerusit(Szoveg);
              alap:=Megfordit(alap);

              for i:=1 to length(alap) do begin
                  case alap[i] of
                       'M': inc(msh);
                       'D':
                           begin
                                inc(msh);
                                inc(egyeb);
                           end;
                       'T':
                           begin
                                inc(msh);
                                inc(egyeb,2);
                           end;
                       'R','H':
                           begin
                                sajat:=sajat+szokoz(msh+egyeb);
                                if (msh>1) or (alap[i]='H') then begin
                                       sajat:=sajat+hosszu;
                                   end
                                   else begin
                                        sajat:=sajat+rovid;
                                end;
                                msh:=0;
                                egyeb:=0;
                           end;
                       'E': inc(egyeb);
                  end;
              end;
              sajat:=sajat+szokoz(msh+egyeb);
              Sajat:=Megfordit(sajat);
              Skandal:=sajat;
         end;

procedure menu(Billentyu,Szoveg : string);
          begin
               textcolor(Red);
               Write(' ',Billentyu,' ');
               textcolor(Black);
               Write(Szoveg,' ');
end;
procedure RajzolAblak(X,Y,Szel,Mag:integer; kitolt: boolean);
          var i,j: integer;
          begin
               for i:=x+1 to x+szel-2 do begin
                   gotoxy(i,y);
                   write(v);
                   gotoxy(i,y+mag-1);
                   write(v);
                   if kitolt then begin
                      for j:=y+1 to y+mag-2 do begin
                          gotoxy(i,j);
                          write(' ');
                      end;
                   end;
               end;

               for i:=y+1 to y+mag-2 do begin
                   gotoxy(x,i);
                   write(f);
                   gotoxy(x+szel-1,i);
                   write(f);
               end;

               gotoxy(X,Y);
               write(bf);
               gotoxy(x+szel-1,y);
               write(jf);
               gotoxy(x,y+mag-1);
               write(ba);
               gotoxy(x+szel-1,y+mag-1);
               write(ja);

end;

procedure KozepreAblak(Cim: string; Szelesseg,Magassag: integer; Kitoltes: boolean);
begin
     Rajzolablak((trunc((80-Szelesseg)/2)+1),(trunc((50-Magassag)/2)+1),Szelesseg,Magassag,Kitoltes);
     gotoxy((trunc((80-Szelesseg)/2)+3),(trunc((50-Magassag)/2)+1));
     write(Cim);
end;

procedure torol;
          var i: integer;
          begin
               for i:=1 to max do begin
                   sorok[i]:='';
               end;
              cim:=Fajlnev+' - '+prog;
              kiirt:=0;
              {Fajlnev:='';}
end;

procedure kiolvas(Hanyadiktol: longint);
          var i,j: longint;
              sor : string;
              kilephet: boolean;
          begin
               reset(Fajl);

               i:=1;
               kilephet:=False;

               while (not EOF(Fajl)) and (not kilephet) do begin
                     if (i=Hanyadiktol) then begin
                        for j:= 1 to max do begin
                            {inc(i);}
                            readln(Fajl,sor);
                            if windowsos then sorok[j]:=dososit(sor) else sorok[j]:=sor;
                        end;
                        kilephet:=true;
                     end;
                     inc(i);
                     readln(Fajl,sor);
               end;

               if kilephet=false then vege:=i-1;
               {close(Fajl);}
end;

procedure kiir(Szoveg: string);
          begin
               textbackground(Blue);
               textcolor(White);
               if (kiirt<max) then begin
                  inc(kiirt);
                  gotoxy(bal,kiirt+Felso);
                  write(szepit(Szoveg));
               end;
               {else begin
                    inc(elvetett);
               end;}
end;

procedure TagolvaKiir(Szoveg: string);
          var i,si :integer;
          begin
              if (length(Szoveg)>tagolas) then begin
                    si:=trunc(length(Szoveg)/tagolas);

                    for i:=0 to si-1 do begin
                        kiir(Copy(Szoveg,i*tagolas+1,tagolas));
                        kiir(Skandal(Copy(Szoveg,i*tagolas+1,tagolas)));
                    end;

                    kiir(Copy(Szoveg,si*tagolas+1,(length(Szoveg) mod tagolas)));
                    kiir(Skandal(Copy(Szoveg,si*tagolas+1,(length(Szoveg) mod tagolas))));
                  end
                  else begin
                    kiir(Szoveg);
                    kiir(Skandal(Szoveg));
              end;
              gotoxy(80,magassag);
end;

procedure verslab(Jel, Szoveg : string);
begin
        gotoxy(tagolas+bal+4,wherey);
        textcolor(Yellow);
        write(Jel);
        gotoxy(tagolas+bal+10,wherey);
        textcolor(white);
        writeln(Szoveg);
end;
procedure Frissit; {AZ AKKTUJALIS DOGOK KIIRASAET FELELO ELJARAS}
          var i,x,y: integer;
          begin
               textbackground(Blue);
               textcolor(white);
               clrscr;

               RajzolAblak(1,1,80,magassag,False);


               {fÅggãleges elv†laszt¢}
               gotoxy(bal+tagolas+1,1);
               write(fl);
               for  i:=2 to (magassag-1) do begin
                    gotoxy(bal+tagolas+1,i);
                    write(f);
               end;
               gotoxy(bal+tagolas+1,magassag);
               write(lf);

               {KezdÇsi sorsz†m}
               {i:=sorszam+max;
               if (i>vege) then i:=vege;}

               gotoxy(69,1);
               write('{',sorszam,'}');

               {versl†bs£g¢}
               gotoxy(tagolas+bal+2,3);
               verslab('KÇt mor†s','');
               verslab('~~~~~~~~~','');
               verslab('oo','pirrichius');
               verslab('','');
               verslab('H†rom mor†sok','');
               verslab('~~~~~~~~~~~~~','');
               verslab('o-','jambus');
               verslab('-o','trocheus');
               verslab('','');
               verslab('NÇgy mor†sok','');
               verslab('~~~~~~~~~~~~','');
               verslab('oo-','anapestus');
               verslab('-oo','daktilus');
               verslab('--','spondeus');
               verslab('','');
               verslab('Hat mor†sok','');
               verslab('~~~~~~~~~~~','');
               verslab('oo--','ionicus a');
               verslab('','minore');
               verslab('--oo','ionicus a');
               verslab('','maiore');
               verslab('-oo-','chorriambos');

               {c°m kirajzol†sa }
               i:=trunc((76-length(cim))/2);
               gotoxy(i+2,1);
               textcolor(White);
               textbackground(Red);
               write('¥',cim,'√');



               kiirt:=0;
               for i:=1 to max do begin
                   TagolvaKiir(sorok[i]);
               end;
               case aktiv of
                    1:
                      begin


                           textbackground(LightGray);
                           gotoxy(1,magassag+1);
                           menu('F1','S£g¢ megtekintÇse');
                           menu('F3','Szîveg megnyit†sa');
                           menu('F8','NÇvjegy'+szokoz(8));
                           menu('Alt+K','KilÇpÇs');

                      end;
                    3:
                      begin
                           gepelt:=szokoz(36);
                           textbackground(LightGray);
                           gotoxy(1,magassag+1);
                           menu('ENTER','Megnyit†s');
                           menu('ESC','MÇgse');
                           menu('Alt+W','Windows szîveg'+szokoz(14));
                           menu('Alt+K','KilÇpÇs');

                           textbackground(Green);
                           textcolor(Yellow);

                           KozepreAblak('F†jl megnyit†sa',40,15,True);

                           textcolor(White);
                           gotoxy(23,20);
                           write('F†jl DOS-os elÇrÇsi £tja:');
                           gotoxy(23,24);
                           write('[ ] - Windowsos Çkezetek †talak°t†sa');

                           gotoxy(23,26);
                           write('Az alapszîveg csak felÅl°rhat¢, vagy');
                           gotoxy(23,27);
                           write('[SPACE]-szel tîrîlhetî.');
                           gotoxy(23,29);
                           write('Az elÇrÇs csak az elsî sz¢kîzig lesz');
                           gotoxy(23,30);
                           write('Çrtelmezve,az ut†na lÇvî rÇsz nem!');
                           {Szîvegmezo}
                           textcolor(black);
                           textbackground(White);
                           gotoxy(23,21);
                           write(szokoz(36));
                           gotoxy(23,21);
                           write(fajlnev);
                           gepelt:=fajlnev+szokoz(36-length(fajlnev));
                           jeloles(windowsos);
                      end;
                    2:
                      begin
                           textbackground(LightGray);
                           gotoxy(1,magassag+1);
                           menu('ESC','NÇvjegy bez†r†sa'+szokoz(42));
                           menu('Alt+K','KilÇpÇs');


                           textcolor(White);
                           textbackground(Yellow);

                           KozepreAblak('NÇvjegy',40,30,True);
                           gotoxy(33,13);
                           writeln(prog);

                           gotoxy(24,17);
                           Writeln('Versek, szîvegek gyors Çs hatÇkony');
                           gotoxy(24,18);
                           writeln('ritmikai felbont†s†ra szolg†l¢');
                           gotoxy(24,19);
                           writeln('alkalmaz†s, amely pillanatok alatt');
                           gotoxy(24,20);
                           writeln('kielemez b†rmilyen ascii-text f†jlt.');
                           gotoxy(24,22);
                           writeln('A program a "H" hangot semleges e-');
                           gotoxy(24,23);
                           writeln('lemnek tekinti, hiszen a helyes');
                           gotoxy(24,24);
                           writeln('ÇlîbeszÇdben sem ejtjÅk azt.');

                           gotoxy(24,26);
                           writeln('Aj†nlott irodalmi forr†s:');
                           gotoxy(24,27);
                           writeln('Magyar Elektronikus kînyvt†r');
                           gotoxy(24,28);
                           writeln('http://www.mek.iif.hu');
                           gotoxy(23,33);
                           writeln('KÇsz°tettÇk:');
                           gotoxy(26,34);
                           writeln('Mur†ti †kos - fejlesztÇs');
                           gotoxy(26,35);
                           writeln('Rozgonyi Zsolt - †tford°t†s îtlete');
                           gotoxy(26,36);
                           writeln('SzÅcs Imre - bemutat¢ anyag');
                           gotoxy(26,37);
                           writeln('Vajter †d†m - logisztikai felelîs');
                      end;
                    0:
                      begin
                           textbackground(LightGray);
                           gotoxy(1,magassag+1);
                           menu('ESC','OK'+szokoz(56));
                           menu('Alt+K','KilÇpÇs');

                           textcolor(White+blink);
                           textbackground(Red);

                           KozepreAblak('HIBA!',34,6,True);
                           textcolor(white);
                           gotoxy(26,24);
                           writeln('A megadott f†jl nem tal†lhat¢!');
                           gotoxy(26,25);
                           writeln('ögyeljen arra, hogy az elÇrÇsi-');
                           gotoxy(26,26);
                           writeln('£t dos-os form†tum£ legyen!');
                           {gotoxy(26,27);
                           writeln(Copy(gepelt,1,pos(' ',gepelt)-1));}


                      end;
                    4:
                      begin
                           textbackground(LightGray);
                           gotoxy(1,magassag+1);
                           menu('ESC','S£g¢ bez†r†sa'+szokoz(45));
                           menu('Alt+K','KilÇpÇs');

                           textcolor(black);
                           textbackground(white);
                           KozepreAblak('S£g¢',53,40,true);

                           gotoxy(26,9);
                           write('Fîablak billenytyÅfunkci¢i:');
                           gotoxy(26,10);
                           write('~~~~~~~~~~~~~~~~~~~~~~~~~~~');

                           gotoxy(17,12);
                           write('Fel - LÇpÇskedÇs soronkÇnt felfelÇ');
                           gotoxy(17,13);
                           write('Le - LÇpkedÇs soronkÇnt lefelÇ');
                           gotoxy(17,14);
                           write('PgUp - LÇpkedÇs 5 soronkÇnt felfelÇ');
                           gotoxy(17,15);
                           write('PgDown - LÇpkedÇs 5 soronkÇnt lefelÇ');
                           gotoxy(17,16);
                           write('Home - Ugr†s a dokumentum elejÇre');
                           gotoxy(17,17);
                           write('End - Ugr†s a dokumetum vÇgÇre');
                           gotoxy(17,20);
                           write('Soron a megnyitott f†jl sorait ÇrtjÅk, ami a ');
                           gotoxy(17,21);
                           write('programban nem feltÇtlenÅl egy sornak felel meg.');

                           gotoxy(17,23);
                           write('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');

                           gotoxy(29,25);
                           write('Fontosabb menÅpontok');
                           gotoxy(29,26);
                           write('~~~~~~~~~~~~~~~~~~~~');


                           {duuuummmmaaa blablabla}

                           gotoxy(17,29);
                           write('S£g¢: Ha eltal†lt†l ide, akkor ezzel m†r');
                           gotoxy(17,30);
                           write('~~~~  nem lehet baj. q:-)');
                           gotoxy(17,33);
                           write('Megnyit†s:Sajnos a program nem t†mogatja szî-');
                           gotoxy(17,34);
                           write('~~~~~~~~~ vegek kîzvetlen bevitelÇt, †m ezen');
                           gotoxy(17,35);
                           write('seg°t a f†jlok megnyit†sa menÅpont.');
                           gotoxy(17,36);
                           write('KÇpzeljÇtek, mi lenne, ha nem lenne ilyen???');
                           gotoxy(17,38);
                           write('A program windows-os Çkezetek ÇrtelmezÇsÇt is');
                           gotoxy(17,39);
                           write('lehetîvÇ teszi. Ezt az [Alt + W] billenytÅ-');
                           gotoxy(17,40);
                           write('kombin†ci¢val v†laszthatjuk ki, ha akarjuk.');
                           gotoxy(17,43);
                           write('ESC-el B†rmikor Çs b†rhonnan ki tudsz lÇpni.');
                      end;
               end;
end;

procedure sugo;
begin
     aktiv:=4;
end;

procedure megnyit(Mit: string);
begin
     assign(Fajl,Mit);
     {$I-}
     reset(Fajl);
     if (IOResult=0) then begin
        vege:=2147483647;
        kiolvas(vege);
        kiolvas(1);
        sorszam:=1;
        aktiv:=1;
        if (Mit<>'ures.txt') then cim:=Mit+' - '+prog;
        fajlnev:=mit;
     end else
     begin
          aktiv:=0;
          assign(Fajl,fajlnev);
     end;
     {$I+}
     Frissit;
end;
{******************** INNEN KEZDôDIK A PROGI ********************* }
begin
     textmode(CO80+Font8x8);
     cim:=prog;
     aktiv:=1;
     fajlnev:='';
     windowsos:=true;
     {megnyit('ures.txt');}
     for i:=1 to max-5 do begin
         sorok[i]:='';
     end;
     {
          close(fajl);
     }
     Frissit;

     repeat
       {b†rhol nyomj†k meg Az esc-et mindig kilÇpjen}
       gomb:=readkey;
       if (gomb=#27) then begin
            aktiv:=1;
            Frissit;
       end;
       {Megnyit†s ablak†n†l gÇpelÇsi gombok elfogad†sa}
       if (aktiv=3) and (gomb<>#0)then begin
             {gotoxy(1,1);}
             case gomb of
                  #13: begin
                            {megnyit†s ENTER leÅtÇsÇre}
                            if (fajlnev<>'') then close(Fajl);
                            megnyit(Copy(gepelt,1,pos(' ',gepelt)-1))
                       end;
                  #8:  gotoxy(wherex-1,21);
                  {begin
                            if wherex>23 then begin
                               gepelt:=copy(gepelt,1,wherex-25)+copy(gepelt,wherex-23,length(gepelt));
                               gepelt[wherex-23]:=' ';
                               gotoxy(wherex-1,21);
                               write(' ');
                               gotoxy(wherex-1,21);
                               gotoxy(1,1);
                               writeln(gepelt);
                            end;
                       end;}
                  else begin
                            {gotoxy(wherex,20);
                            write('*',ord(gomb),'*');}
                            if wherex<59 then begin
                               gotoxy(wherex,21);
                               write(gomb);
                               gepelt[wherex-23]:=gomb;
                            end;
                       end;
             end;
                {gotoxy(1,1);
                write(ord(gomb));}
             if (wherex<23) then gotoxy(23,21);
       end;

       if keypressed Then begin
         if (gomb=#0) then begin
           if (gomb=';') then sugo; {B†rmely ablak van is nyitva a s£g¢ mÅxik}
           gomb:=readkey;
           case aktiv of
                0: begin
                       {Itt semmi nem lesz, ha minden j¢l m1, me ez a hibaÅzeneteknek van.}
                   end;
                1:
                  begin
                       case gomb of
                            ';':aktiv:=4; {s£g¢}
                            'B':aktiv:=2;  {nÇvjegy}
                            '=':aktiv:=3; {megnyit†s}
                       end;
                       if (fajlnev<>'') then begin
                       case gomb of
                            'P':inc(sorszam);{LÇptetÇs lefelÇ}
                            'H':dec(sorszam);{LÇptetÇs felfelÇ}
                            'Q':inc(sorszam,5); {5 soronkÇnt lefelÇ}
                            'I':dec(sorszam,5); {5 soronkÇnt felfelÇ}
                            'G':sorszam:=1; {Ugr†s elejÇre}
                            'O': {Ugr†s a vÇgÇre}
                                begin
                                     sorszam:=vege;
                                     frissit;
                                end;
                       end;
                       {csak a lehetsÇges soroszamok megad†sa}
                       if (sorszam<1) then sorszam:=1;
                       if (sorszam>vege) then sorszam:=vege;
                       kiolvas(sorszam);
                       end;
                       Frissit;
                  end;
                2: {nÇvjegy vezÇrlÇs}
                  begin

                  end;
                3: {Megnyit†s vezÇrlÇs}
                  begin
                     case gomb of
                          'K': if wherex>23 then gotoxy(wherex-1,21);
                          'M': if wherex<58 then gotoxy(wherex+1,21);
                          {'S': begin
                                    if wherex>23 then begin
                                       gotoxy(wherex-1,14);
                                       write(' ');
                                       gepelt[wherex-23]:=' ';
                                       gotoxy(wherex-1,14);
                                    end;
                          end;}
                          #17: begin
                               windowsos:= not windowsos;
                               jeloles(windowsos);
                          end;
                     end;
                  end;

           end;

           if bogarasz then begin
              gotoxy(1,1);
              write(gomb);
           end;

         end;
       end;
     until gomb='%';
end.
