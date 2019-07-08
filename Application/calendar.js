var gx = 0;
var gy = 0;
var input_date;
var input_day;
var input_month;
var input_year;
var display_date;

var	ie=document.all

function fun1(evnt) 
{   
	gx = evnt.pageX;
	gy = evnt.pageY;
	return true;   
}

if(navigator.appName.indexOf("Netscape") != -1) 
{	
	document.onmousemove = fun1;
}

var d = new Date()
var dc;
var monthname=new Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
var data = new Array(6);
data[0] = new Array(0,0,0,0,0,0,0);
data[1] = new Array(0,0,0,0,0,0,0);
data[2] = new Array(0,0,0,0,0,0,0);
data[3] = new Array(0,0,0,0,0,0,0);
data[4] = new Array(0,0,0,0,0,0,0);
data[5] = new Array(0,0,0,0,0,0,0);

function chg(k) {
	d.setMonth(d.getMonth() + k);
	document.getElementById('month_year').innerHTML = monthname[d.getMonth()] + ' ' + d.getFullYear();
	var dd = new Date(d);
	for (i=0;i<6;i++)
 		for (j=0;j<7;j++) data[i][j] = 0;
	dd.setDate(1);
	i = 0;
	do {
		data[i][dd.getDay()] = dd.getDate();
		if (dd.getDay() == 6) i++;
		dd.setDate(dd.getDate() + 1);
	}  while (dd.getDate() != 1);

	for (i=0;i<6;i++)
		for (j=0;j<7;j++) 
			if (data[i][j] == 0) {
				document.getElementById("c" +i+""+j).innerHTML= "&nbsp;";
				document.getElementById("c" +i+""+j).className = "day_out";
			}
			else {
				document.getElementById("c" +i+""+j).innerHTML= data[i][j];
				document.getElementById("c" +i+""+j).className = "day";
				
				if (dc != undefined)
					if (dc.getDate() ==  data[i][j])
						document.getElementById("c" +i+""+j).className = "day_c";
			}
}

function setDate(i,j) {
	if (data[i][j]!=0) {
		m = d.getMonth()+1;
		input_date.value=  GetLocalizedDate(m, data[i][j], d.getFullYear(),display_date);
		input_day.value=data[i][j];
		input_month.value=m;
        input_year.value=d.getFullYear();

	}
	
	hd();
}

function getDate(cel,cd,cm,cy,disd) {
	input_date = cel;
    input_day=cd;
    input_month=cm;
    input_year=cy;
    display_date=disd
	if (cel.value.length !=0) {
		d = new Date(cel.value); 
		if (d == 'NaN')
			d = new Date();
		dc = new Date(d);
	}
	
	chg(0);
	if(navigator.userAgent.indexOf("MSIE") != -1) {
		avkCalendar.style.left=window.event.x+document.body.scrollLeft;
		avkCalendar.style.top=window.event.y+document.body.scrollTop;
		hideElement( 'SELECT', document.getElementById('avkCalendar') );
		hideElement( 'APPLET', document.getElementById('avkCalendar') );			
	}
	else if(navigator.appName.indexOf("Netscape") != -1) {
		document.getElementById('avkCalendar').style.left=gx + 5;
		document.getElementById('avkCalendar').style.top=gy + 5;
	}

	document.getElementById('avkCalendar').style.visibility = "visible";
}

function hd() {
	document.getElementById('avkCalendar').style.visibility='hidden';
	showElement( 'SELECT' );
	showElement( 'APPLET' );
}

/* hides <select> and <applet> objects (for IE only) */
function hideElement( elmID, overDiv )
{
    if( ie )
    {
		for( i = 0; i < document.all.tags( elmID ).length; i++ )
		{
			obj = document.all.tags( elmID )[i];
			if( !obj || !obj.offsetParent ) {
				continue;
			}
	    
			// Find the element's offsetTop and offsetLeft relative to the BODY tag.
			objLeft   = obj.offsetLeft;
			objTop    = obj.offsetTop;
			objParent = obj.offsetParent;
	        
			while( objParent.tagName.toUpperCase() != "BODY" ) {
				objLeft  += objParent.offsetLeft;
				objTop   += objParent.offsetTop;
				objParent = objParent.offsetParent;
			}
	    
			objHeight = obj.offsetHeight;
			objWidth = obj.offsetWidth;
	    
			if(( overDiv.offsetLeft + overDiv.offsetWidth ) <= objLeft );
			else if(( overDiv.offsetTop + overDiv.offsetHeight ) <= objTop );
			else if( overDiv.offsetTop >= ( objTop + objHeight ));
			else if( overDiv.offsetLeft >= ( objLeft + objWidth ));
			else obj.style.visibility = "hidden";
		}
    }
}
    
/*
* unhides <select> and <applet> objects (for IE only)
*/
function showElement( elmID )
{
    if( ie )
    {
		for( i = 0; i < document.all.tags( elmID ).length; i++ )
		{
			obj = document.all.tags( elmID )[i];
	        
			if( !obj || !obj.offsetParent )
				continue;
	    
			obj.style.visibility = "";
		}
    }
}


document.write('<div id="avkCalendar" class="calendar">');
document.write('<table class="calendar">');
document.write('<tr><td onClick="chg(-1);" class="nav">&lt;</td>');
document.write('<td colspan="4" id="month_year" align="center">' + monthname[d.getMonth()] + ' ' + d.getFullYear() +'</td>');
document.write('<td onClick="chg(1);" class="nav">&gt;</td><td class="closew" onClick="hd()">x</td></tr>');
document.write('<tr>');
document.write('    <td class="wd">Su</td>');
document.write('    <td class="wd">Mo</td>');
document.write('    <td class="wd">Tu</td>');
document.write('    <td class="wd">We</td>');
document.write('    <td class="wd">Th</td>');
document.write('    <td class="wd">Fr</td>');
document.write('    <td class="wd">St</td>');
document.write('  </tr>');

for (i=0;i<6;i++) 
{
	document.write('  <tr>');

	for (j=0;j<7;j++) 
		if (data[i][j] !=0)
			document.write('<td onClick="setDate('+i+','+j+')" class="day" id="c' + i + j + '">'+ data[i][j] +'</td>');
		else 
			document.write('<td onClick="setDate('+i+','+j+')" class="day_out" id="c' + i + j + '">&nbsp;</td>');
			
	document.write('  </tr>');
}

document.write('</table></div>');
