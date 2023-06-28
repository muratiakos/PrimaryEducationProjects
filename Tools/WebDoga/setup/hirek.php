<?php
     include($_SERVER["DOCUMENT_ROOT"] . "/phpmisc/includes.php");
     include "fuggvenyek.php";

$test=<<<TEST
     %s
     <h1 class="cim">Hírek és aktuális információk</h1>
     <br />
     <table width="550" cellspacing="4" cellpadding="0" border="0">
            <tr class="normal" bgcolor="#f0f0f0">
                <th align=left width="400">Hír címe</th>
                <th align=center width="150">Dátum</th>
            </tr>
            %s
     </table>

TEST;

$hirsor=<<<HIRSOR
            <tr class="normal" bgcolor="%s">
                <td>
                    <a href="hirek.php?sid=%s&hirid=%s" style="color: black;">%s</a>
                </td>
                <td align=center>
                    %s
                </td>
            </tr>
HIRSOR;

$hir=<<<HIR
           %s
           <p><a href="hirek.php?sid=%s"> &lt; Vissza a többi hírhez</a></p>

           <table border="0" cellpadding="2" cellspacing="1" width="90%%" align="center" bgcolor=%s >
                  <tr>
		                <td class="cim" align=center><b>%s</b></td>
                  </tr>
                  <tr>
		                <td class="little" align=center>%s</td>
                  </tr>
                  <tr bgcolor="">
		                <td class="normal" align=center colspan="2"><img src=/img/blank.gif width=1 height=3></td>
                  </tr>
                  <tr>
		                <td class="normal" align="left">%s</td>
                  </tr>
           </table>
           <p>
           <a href="hirek.php?sid=%s"> &lt; Vissza a többi hírhez</a> |
           <a href="#vipmenu">Ugrás a lap tetejére</a>
           </p>
HIR;

     if ($sid=='') {
        Ugras('index.php');
     } else {
          if (!isset($hirid)) {
             $p="select * from hirek where statusz='1' order by datum desc";
             $e=mysql_query($p);
             $hirek='';

             while ($sor=mysql_fetch_array($e)) {
                   $hirek.=sprintf($hirsor, $sor['hatterszin'], $sid, $sor['hirid'], $sor['cim'], $sor['datum']);
                   /*
                   $sor['hatterszin'];
                   $sor['cim'];
                   $sor['datum'];
                   $sor['hirid']; */
             }

             $body=sprintf($test, Menu($sid), $hirek);
          } else {
             $p='select * from hirek where statusz="1" and hirid="'.$hirid.'"';
             $e=mysql_query($p);
             $sor=mysql_fetch_array($e);

             $szoveg = nl2br(convert_html2($sor["szoveg"], 1));
             $body = sprintf($hir, Menu($sid), $sid, $sor["hatterszin"], $sor["cim"], $sor["datum"], $szoveg, $sid);
          }
     }
     include($_SERVER["DOCUMENT_ROOT"] . "/phpmisc/template.php");
?>
