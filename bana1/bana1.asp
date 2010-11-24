<HTML>
<!-- #include file="../kanin2.css" -->
<HEAD><TITLE>Skjuta Kanin II: Kaninernas Hämnd (Uppdrag I)</TITLE>
<SCRIPT LANGUAGE="JavaScript">
kanal=0;
function playSound(fil) {
kanal++;
if(kanal==9){kanal=1;}
if(kanal==1){kanal1.src=fil;}
if(kanal==2){kanal2.src=fil;}
if(kanal==3){kanal3.src=fil;}
if(kanal==4){kanal4.src=fil;}
if(kanal==5){kanal5.src=fil;}
if(kanal==6){kanal6.src=fil;}
if(kanal==7){kanal7.src=fil;}
if(kanal==8){kanal8.src=fil;}
}
function visaPatroner() {
p1.style.visibility = 'visible';
p2.style.visibility = 'visible';
p3.style.visibility = 'visible';
p4.style.visibility = 'visible';
p5.style.visibility = 'visible';
p6.style.visibility = 'visible';
p7.style.visibility = 'visible';
p8.style.visibility = 'visible';
p9.style.visibility = 'visible';
p10.style.visibility = 'visible';
p11.style.visibility = 'visible';
p12.style.visibility = 'visible';
patroner = 12
}
function gomPatron() {
gom = "p" + patroner +".style.visibility = 'hidden';"
eval(gom)
patroner--
}
function taTid(){
sek--
if(sek<0){min--;sek=59;}
if(min<0){tid="0:00"}
else{
if(sek<10){sek="0"+sek;}
tid=min+":"+sek}
statusFalt();
if(tid!="0:00"){
//ÄNDRA TILL 1000!!!
setTimeout("taTid();", 10)
}
else{sluta();}
}
function statusFalt() {
status="Tid kvar: "+tid+"     Mordoffer: "+folk;
}
function starta() {
farSkjuta=1;
//ÄNDRA TILL NOLL!
folk=49;
min=1;
sek=30;
tid="1:30";
alert('Skjut 50 människor på 1:30 minuter!');
bg.style.visibility='visible';
omladd.style.visibility='visible';
visaFolk();
setTimeout("taTid();", 1000)
statusFalt();
visaPatroner();
}
function visaFolk() {
vilken = Math.random() * 100;
vilken = Math.round(vilken);
if (vilken < 10) {
fonster1.style.visibility = 'visible';
tabort = Math.random() * 1000;
tabort = Math.round(tabort) + 400;
gom0 = "fonster1.style.visibility = 'hidden';";
setTimeout("eval(gom0);", tabort);
}
else if (vilken >= 10 & vilken < 25) {
fonster2.style.visibility = 'visible';
tabort = Math.random() * 1000;
tabort = Math.round(tabort) + 500;
gom1 = "fonster2.style.visibility = 'hidden';";
setTimeout("eval(gom1);", tabort);
}
else if (vilken >= 25 & vilken < 40) {
fonster3.style.visibility = 'visible';
tabort = Math.random() * 1000;
tabort = Math.round(tabort) + 500;
gom2 = "fonster3.style.visibility = 'hidden';";
setTimeout("eval(gom2);", tabort);
}
else if (vilken >=40 & vilken < 55) {
fonster4.style.visibility = 'visible';
tabort = Math.random() * 600;
tabort = Math.round(tabort) + 400;
gom3 = "fonster4.style.visibility = 'hidden';";
setTimeout("eval(gom3);", tabort);
}
else if (vilken >=55 & vilken < 65) {
fonster5.style.visibility = 'visible';
tabort = Math.random() * 600;
tabort = Math.round(tabort) + 400;
gom4 = "fonster5.style.visibility = 'hidden';";
setTimeout("eval(gom4);", tabort);
}
else if (vilken >=65 & vilken < 85) {
dorr.style.visibility = 'visible';
tabort = Math.random() * 1100;
tabort = Math.round(tabort) + 400;
gom5 = "dorr.style.visibility = 'hidden';";
setTimeout("eval(gom5);", tabort);
}
else if (vilken >=85) {
talt.style.visibility = 'visible';
tabort = Math.random() * 1100;
tabort = Math.round(tabort) + 400;
gom6 = "talt.style.visibility = 'hidden';";
setTimeout("eval(gom6);", tabort);
}
igen = Math.random() * 2000;
igen = Math.round(igen);
setTimeout("visaFolk();", igen);
}
function traff(snubbe) {
if(patroner>0 & farSkjuta==1){
playSound('traff.wav');
gom = snubbe +".style.visibility = 'hidden';"
eval(gom);
blodet = Math.random() * 2;
blodet = Math.round(blodet);
if(blodet==0){blod1.src="blod11.gif";blod2.src="blod21.gif"}
if(blodet==1){blod1.src="blod12.gif";blod2.src="blod22.gif"}
if(blodet==2){blod1.src="blod13.gif";blod2.src="blod23.gif"}
blod1.style.left = event.x - 50 + 'px';
blod1.style.top = event.y - 50 + 'px';
blod2.style.left = event.x - 50 + 'px';
blod2.style.top = event.y - 50 + 'px';
blod3.style.left = event.x - 50 + 'px';
blod3.style.top = event.y - 50 + 'px';
ShowBlod1 = "blod1.style.visibility = 'visible';"
HideBlod1 = "blod1.style.visibility = 'hidden';"
ShowBlod2 = "blod2.style.visibility = 'visible';"
HideBlod2 = "blod2.style.visibility = 'hidden';"
ShowBlod3 = "blod3.style.visibility = 'visible';"
HideBlod3 = "blod3.style.visibility = 'hidden';"
eval(ShowBlod1);
setTimeout("eval(HideBlod1);", 100);
setTimeout("eval(ShowBlod2);", 100);
setTimeout("eval(HideBlod2);", 200);
setTimeout("eval(ShowBlod3);", 200);
setTimeout("eval(HideBlod3);", 300);
folk++
statusFalt();
gomPatron();
}
else if(farSkjuta==1){playSound('click.wav');}
}
function sluta(){
fonster1.style.visibility='hidden';
fonster2.style.visibility='hidden';
fonster3.style.visibility='hidden';
fonster4.style.visibility='hidden';
fonster5.style.visibility='hidden';
dorr.style.visibility='hidden';
talt.style.visibility='hidden';
blod1.style.visibility='hidden';
blod2.style.visibility='hidden';
blod3.style.visibility='hidden';
if(folk<50){
igen=confirm('Skandal! Du hann inte skjuta ihjäl alla. Vill du försöka igen?');
if(igen){starta();}
else{window.close();}
}
if(folk>=50){
alert('Du klarade det! Gör dig beredd för Uppdrag II');
parent.location='../bana2/bana2.asp?bana1=ja';
}
}
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript" EVENT="onmousedown" FOR="startjagare">
playSound('traff.wav');
startjagare.style.visibility='hidden';
setTimeout("starta();", 500);
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript" event=onmousedown for=fonster1>
traff('fonster1');
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript" event=onmousedown for=fonster2>
traff('fonster2');
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript" event=onmousedown for=fonster3>
traff('fonster3');
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript" event=onmousedown for=fonster4>
traff('fonster4');
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript" event=onmousedown for=fonster5>
traff('fonster5');
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript" event=onmousedown for=dorr>
traff('dorr');
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript" event=onmousedown for=talt>
traff('talt');
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript" event=onmousedown for=bg>
if(patroner>0 & farSkjuta==1){
playSound('miss.wav');
gomPatron();
}
else if(farSkjuta==1){playSound('click.wav');}
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript" event=onmousedown for=blod1>
playSound('miss.wav');
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript" event=onmousedown for=blod2>
playSound('miss.wav');
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript" event=onmousedown for=blod3>
playSound('miss.wav');
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript" event=onmousedown for=omladd>
if(farSkjuta==1){
farSkjuta=0;
playSound('ladda.wav');
setTimeout("visaPatroner();", 800);
setTimeout("eval(farSkjuta=1);", 800);
}
</SCRIPT>
</HEAD>
<BODY>
<BGSOUND ID="kanal1">
<BGSOUND ID="kanal2">
<BGSOUND ID="kanal3">
<BGSOUND ID="kanal4">
<BGSOUND ID="kanal5">
<BGSOUND ID="kanal6">
<BGSOUND ID="kanal7">
<BGSOUND ID="kanal8">
<BGSOUND SRC="bana1.mid" LOOP=infinite ID=bgsound>
<BGSOUND SRC="traff.wav" VOLUME="-10000" LOOP=1>
<BGSOUND SRC="miss.wav" VOLUME="-10000" LOOP=1>
<BGSOUND SRC="ladda.wav" VOLUME="-10000" LOOP=1>
<BGSOUND SRC="click.wav" VOLUME="-10000" LOOP=1>
<TABLE ID="tabellen" BORDER=1 BORDERCOLOR="#FFFFFF" CELLSPACING=0 CELLPADDING=10 STYLE="position:absolute;top:0px;left:0px;Width:502px;Height:502px;Cursor:crosshair">
<TR><TD VALIGN=top STYLE="Text-align:left;Z-index:0">
<FONT STYLE="Font-size:12px;Font-weight:Bold"><CENTER>Uppdrag I</CENTER></FONT>
<BR>Ditt första uppdrag blir att inte det hus som mördarna tränas i. Det ligger långt ifrån andra mänskliga bebyggelser så det finns ingen anledning att göra det i löndom.
<BR>Räkna med att möta hårt motstånd, även om människorna inte är beredda på vår ankomst. Du beväpnas till en början med en halvautomatisk pistol. Vi slår till i skymningen då människorna är lite trötta. Försök att hålla dig vid liv, om du skulle omkomma är det kört för kaninarten.
<BR>Lycka till och må den allsmäktiga moroten vara med dig. Krossa Tyranneriet!
<BR><BR><CENTER><B>Skjut ihjäl den här mördaren för att börja.<BR>OBS! Vänta tills alla filer är laddade</B>
<BR><BR><BR><IMG SRC="jagare.gif" ID="startjagare" STYLE="visibility:visible">
</CENTER>
</TD></TR>
</TABLE>
<IMG SRC="bana1bg.gif" ID="bg" STYLE="visibility:hidden;position:absolute;left:1px;top:1px;z-index:0">
<IMG SRC="fonster1.gif" ID="fonster1" STYLE="visibility:hidden;position:absolute;left:104;top:80;z-index:1">
<IMG SRC="fonster2.gif" ID="fonster2" STYLE="visibility:hidden;position:absolute;left:82;top:194;z-index:1">
<IMG SRC="fonster3.gif" ID="fonster3" STYLE="visibility:hidden;position:absolute;left:163;top:191;z-index:1">
<IMG SRC="fonster4.gif" ID="fonster4" STYLE="visibility:hidden;position:absolute;left:273;top:199;z-index:1">
<IMG SRC="fonster5.gif" ID="fonster5" STYLE="visibility:hidden;position:absolute;left:205;top:328;z-index:1">
<IMG SRC="dorr.gif" ID="dorr" STYLE="visibility:hidden;position:absolute;left:79;top:351;z-index:1">
<IMG SRC="talt.gif" ID="talt" STYLE="visibility:hidden;position:absolute;left:389;top:311;z-index:1">
<IMG SRC="patron.gif" ID="p12" STYLE="visibility:hidden;position:absolute;top:468;left:353;z-index:3">
<IMG SRC="patron.gif" ID="p11" STYLE="visibility:hidden;position:absolute;top:468;left:365;z-index:3">
<IMG SRC="patron.gif" ID="p10" STYLE="visibility:hidden;position:absolute;top:468;left:377;z-index:3">
<IMG SRC="patron.gif" ID="p9" STYLE="visibility:hidden;position:absolute;top:468;left:389;z-index:3">
<IMG SRC="patron.gif" ID="p8" STYLE="visibility:hidden;position:absolute;top:468;left:401;z-index:3">
<IMG SRC="patron.gif" ID="p7" STYLE="visibility:hidden;position:absolute;top:468;left:413;z-index:3">
<IMG SRC="patron.gif" ID="p6" STYLE="visibility:hidden;position:absolute;top:468;left:425;z-index:3">
<IMG SRC="patron.gif" ID="p5" STYLE="visibility:hidden;position:absolute;top:468;left:437;z-index:3">
<IMG SRC="patron.gif" ID="p4" STYLE="visibility:hidden;position:absolute;top:468;left:449;z-index:3">
<IMG SRC="patron.gif" ID="p3" STYLE="visibility:hidden;position:absolute;top:468;left:461;z-index:3">
<IMG SRC="patron.gif" ID="p2" STYLE="visibility:hidden;position:absolute;top:468;left:473;z-index:3">
<IMG SRC="patron.gif" ID="p1" STYLE="visibility:hidden;position:absolute;top:468;left:485;z-index:3">
<IMG ID="blod1" STYLE="visibility:hidden;position:absolute;top:0px;left:0px;Z-index:2">
<IMG ID="blod2" STYLE="visibility:hidden;position:absolute;top:0px;left:0px;Z-index:2">
<IMG SRC="blod3.gif" ID="blod3" STYLE="visibility:hidden;position:absolute;top:0px;left:0px;Z-index:2">
<IMG SRC="blod11.gif" STYLE="visibility:hidden;Z-index:0">
<IMG SRC="blod12.gif" STYLE="visibility:hidden;Z-index:0">
<IMG SRC="blod13.gif" STYLE="visibility:hidden;Z-index:0">
<IMG SRC="blod21.gif" STYLE="visibility:hidden;Z-index:0">
<IMG SRC="blod22.gif" STYLE="visibility:hidden;Z-index:0">
<IMG SRC="blod23.gif" STYLE="visibility:hidden;Z-index:0">
<TABLE ID="omladd" BORDER=1 CELLPADDING=0 CELLSPACING=0 BORDERCOLOR="#FFFFFF" STYLE="visibility:hidden;position:absolute;top:501;left:0;Cursor:crosshair;Z-index:1">
<TR><TD WIDTH=500 HEIGHT=15 onMouseOver="this.className='tdColorOn'" onMouseOut="this.className='tdColorOff'">
- Ladda Om -
</TD></TR>
</TABLE>
</BODY>
</HTML>
