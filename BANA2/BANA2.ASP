<HTML>
<!-- #include file="../kanin2.css" -->
<HEAD><TITLE>Skjuta Kanin II: Kaninernas H�mnd (Uppdrag II)</TITLE>
<SCRIPT LANGUAGE="JavaScript">
<%
Dim bana1
bana1 = Request.Querystring("bana1")
If bana1 = "ja" Then
Else
%>
alert('Du m�ste spela Uppdrag I f�rst!');
document.location='http://www.gratiswebplats.nu/phulip/';
<%End If%>
hor=0;
ver=0;
blodgrupp=0;
skjuter=0;
kanal=0;
target=0;
stranare=0;
sdorr1=0;
sdorr2=0;
sdorr3=0;
sdorr4=0;
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
function skjut(){
if(skjuter==0){skjuter=1}
else{skjuter=0}
skottLossning();
}
function skottLossning(){
if(skjuter==1){
if(target!=0){playSound('traff.wav');blod();hitCount();}
else{playSound('miss.wav');}
setTimeout("skottLossning();",100);
}
}
function blod(){
blod1="b"+blodgrupp+"1"
blod2="b"+blodgrupp+"2"
allBlod=blod1+".style.left="+hor+";"+blod1+".style.top="+ver+";"+blod2+".style.left="+hor+";"+blod2+".style.top="+ver+";";
eval(allBlod);
showBlod1=blod1+".style.visibility='visible';";
hideBlod1=blod1+".style.visibility='hidden';";
showBlod2=blod2+".style.visibility='visible';";
hideBlod2=blod2+".style.visibility='hidden';";
eval(showBlod1);
setTimeout("eval(hideBlod1);", 25);
setTimeout("eval(showBlod2);", 25);
setTimeout("eval(hideBlod2);", 50);
blodgrupp++;
if(blodgrupp==10){blodgrupp=0;}
}
function hitCount(){
if(target=='ttranare'){
stranare++;
if(stranare==8){
target=0;
die('tranare');
skjut();
setTimeout("starta();", 1000);
}
}
if(target=='tdorr1'){
sdorr1++;
if(sdorr1==10){
target=0;
die('dorr1');
}
}
}
function die(offer){
deathscene=Math.random() * 2;
deathscene=Math.round(deathscene);
if(deathscene==0){death.src="kill1.wav";}
if(deathscene==1){death.src="kill2.wav";}
if(deathscene==2){death.src="kill3.wav";}
setTimeout("death.src='';",2000);
hideOffer1=offer+".style.filter='alpha(opacity=80,style=0)';";
hideOffer2=offer+".style.filter='alpha(opacity=60,style=0)';";
hideOffer3=offer+".style.filter='alpha(opacity=40,style=0)';";
hideOffer4=offer+".style.filter='alpha(opacity=20,style=0)';";
hideOffer5=offer+".style.visibility='hidden';";
eval(hideOffer1);
setTimeout("eval(hideOffer2);", 200);
setTimeout("eval(hideOffer3);", 400);
setTimeout("eval(hideOffer4);", 600);
setTimeout("eval(hideOffer5);", 800);
}
function starta() {
bg.style.visibility='visible';
}
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript" for=alltutom event=onmousedown>
skjut();
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript" for=document event=onmousemove>
hor=event.x-25
ver=event.y-25
</SCRIPT>
</HEAD>
<BODY onLoad="alert('S� h�r skuter du med maskingev�ret: tryck en g�ng f�r att b�rja skjuta, tryck igen f�r att sluta.');">
<BGSOUND ID="kanal1">
<BGSOUND ID="kanal2">
<BGSOUND ID="kanal3">
<BGSOUND ID="kanal4">
<BGSOUND ID="kanal5">
<BGSOUND ID="kanal6">
<BGSOUND ID="kanal7">
<BGSOUND ID="kanal8">
<BGSOUND ID="death">
<BGSOUND SRC="bana2.mid" LOOP=infinite ID=bgsound>
<SPAN ID="alltutom">
<TABLE ID="tabellen" BORDER=1 BORDERCOLOR="#FFFFFF" CELLSPACING=0 CELLPADDING=10 STYLE="position:absolute;top:0px;left:0px;Width:502px;Height:502px;Cursor:crosshair">
<TR><TD VALIGN=top STYLE="Text-align:left;Z-index:0">
<FONT STYLE="Font-size:12px;Font-weight:Bold"><CENTER>Uppdrag II</CENTER></FONT>
<BR>Grattis, du har intagit huset! Men �n �r det f�r tidigt att fira, emellan dig och m�rdarnas ledare finns en l�ng korridor. I denna koridor bor m�rdarna s� du kommer att m�ta h�rt motst�nd. Men misstr�sta ej, jag har en l�sning.
<BR>Det inte r�cker med ett skott f�r att f� d�d p� m�rdarna. D�rf�r utrustas du med ett helautomatiskt maskingev�r som borde s�tta stopp m�nniskorna.
<BR>Som vanligt, ta det varligt. Viva la revolution!
<BR><BR><CENTER><B>Fyll den h�r killen med bly f�r att b�rja.<BR>OBS! V�nta tills alla filer �r laddade</B>
</CENTER>
</TD></TR>
</TABLE>
<IMG SRC="bana2bg.gif" ID="bg" STYLE="visibility:hidden;position:absolute;left:1px;top:1px;z-index:1" onMouseOver="target=0;">
<IMG SRC="stang.gif" STYLE="position:absolute;top:202;left:0;z-index:0">
<IMG SRC="tranare.gif" ID="tranare" STYLE="position:absolute;top:170;left:150;filter:alpha(opacity=100,style=0);z-index:0" onMouseOver="target='ttranare';" onMouseOut="target=0;">
<IMG SRC="dorr1.gif" ID="dorr1" STYLE="visibility:visible;position:absolute;top:67px;left:35px;Z-index:1" usemap="#k1" border=0>
<map name="k1"><area shape="polygon" coords="68,33,83,37,93,54,90,61,79,55,76,58,79,69,86,72,90,96,97,103,104,149,100,163,110,177,114,188,128,191,142,208,173,226,187,226,194,264,181,275,174,275,160,268,135,233,128,236,107,229,100,219,97,205,86,195,79,201,89,226,97,247,97,268,110,271,110,285,135,299,156,327,156,331,125,334,114,331,62,303,62,293,72,289,72,279,62,265,58,251,61,244,41,230,37,219,27,226,13,243,13,261,6,278,13,292,16,303,5,307,1,83,15,79,19,58,12,20,22,5,43,2,71,23" onMouseOver="target='tdorr1';" onMouseOut="target=0;"></map>
<IMG SRC="blod1.gif" ID="b01" STYLE="visibility:hidden;position:absolute;top:1px;left:1px;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
<IMG SRC="blod2.gif" ID="b02" STYLE="visibility:hidden;position:absolute;top:1px;left:1px;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
<IMG SRC="blod1.gif" ID="b11" STYLE="visibility:hidden;position:absolute;top:1px;left:1px;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
<IMG SRC="blod2.gif" ID="b12" STYLE="visibility:hidden;position:absolute;top:1px;left:1px;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
<IMG SRC="blod1.gif" ID="b21" STYLE="visibility:hidden;position:absolute;top:1px;left:1px;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
<IMG SRC="blod2.gif" ID="b22" STYLE="visibility:hidden;position:absolute;top:1px;left:1px;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
<IMG SRC="blod1.gif" ID="b31" STYLE="visibility:hidden;position:absolute;top:1px;left:1px;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
<IMG SRC="blod2.gif" ID="b32" STYLE="visibility:hidden;position:absolute;top:1px;left:1px;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
<IMG SRC="blod1.gif" ID="b41" STYLE="visibility:hidden;position:absolute;top:1px;left:1px;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
<IMG SRC="blod2.gif" ID="b42" STYLE="visibility:hidden;position:absolute;top:1px;left:1px;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
<IMG SRC="blod1.gif" ID="b51" STYLE="visibility:hidden;position:absolute;top:1px;left:1px;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
<IMG SRC="blod2.gif" ID="b52" STYLE="visibility:hidden;position:absolute;top:1px;left:1px;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
<IMG SRC="blod1.gif" ID="b61" STYLE="visibility:hidden;position:absolute;top:1px;left:1px;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
<IMG SRC="blod2.gif" ID="b62" STYLE="visibility:hidden;position:absolute;top:1px;left:v;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
<IMG SRC="blod1.gif" ID="b71" STYLE="visibility:hidden;position:absolute;top:1px;left:1px;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
<IMG SRC="blod2.gif" ID="b72" STYLE="visibility:hidden;position:absolute;top:1px;left:1px;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
<IMG SRC="blod1.gif" ID="b81" STYLE="visibility:hidden;position:absolute;top:v;left:1px;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
<IMG SRC="blod2.gif" ID="b82" STYLE="visibility:hidden;position:absolute;top:1px;left:1px;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
<IMG SRC="blod1.gif" ID="b91" STYLE="visibility:hidden;position:absolute;top:1px;left:1px;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
<IMG SRC="blod2.gif" ID="b92" STYLE="visibility:hidden;position:absolute;top:1px;left:1px;Z-index:2" onMouseOver="target='blod';" onMouseOut="target=0;">
</SPAN>
</BODY>
</HTML>