/*------------Pop Up Left Top X, Y pos. And Std. Width----------*/
var PopUpLeftTopX
var PopUpLeftTopY
var PopUpWidth
var PopUpHeight
function  SetPopDimensions(){
  PopUpLeftTopX=20 
  PopUpLeftTopY=20
  PopUpWidth=550
  PopUpHeight=330
}
/* sample Code
 //function fnOpenCrPopUp(oObject){
 //   SetPopDimensions()
    
   // 	var pageURL = "CreationPopUP.aspx"
 //	var features = "height="+ PopUpHeight + ",width=" + PopUpWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + PopUpLeftTopY + ",left=" + PopUpLeftTopX


*/



/*-----*/
 
function  ChkTextSize(ObjId,SizeLimit){
 
var Obj=document.getElementById(ObjId)
  var Txt=Obj.value 
 
	if(Txt!=''){
	var TxtSize=Txt.length 
		if(TxtSize>parseInt(SizeLimit)){
		alert('Text Size Limited To '+ SizeLimit +' Characters')
		Obj.focus()
		return(false)
		}
    } 
}
/*------------------*/

/*-------------------on approval--------*/

function SetRes(val){
 if((document.all("Approve")[1].checked==true) && (document.all("RemarksTxt").value==''))
 {document.all("RemarksTxt").value='---'}
 else
   if(document.all("RemarksTxt").value=='---')
   {document.all("RemarksTxt").value=''}
 }
 
 function SetRes2(val,objId){
 var RemTxt="RemTxt" + objId
 var Approve="AP"+ objId
 if((document.all(Approve)[1].checked==true) && (document.all(RemTxt).value==''))
 {document.all(RemTxt).value='---'}
 else
   if(document.all(RemTxt).value=='---')
   {document.all(RemTxt).value=''}
 }
  
var RequestPrefix='';
var AppAction
	function AskReasons(){
	 	if(!CheckReasons())
		Page_IsValid=false;
		
		return(Page_IsValid);
		}
		
		function CheckReasons(){
			var flag=true
			var RemarksObjName=RequestPrefix +":RemarksTxt"
		    var AppObjName=RequestPrefix +":Approve"
		    if(RequestPrefix=='')
		    {
		    RemarksObjName="RemarksTxt"
		    AppObjName="Approve"
		    }
		    var formName = document.forms(0).name
			
	     	if((document.all(formName).all(AppObjName)[1].checked)||(document.all(formName).all(AppObjName)[2].checked))
	    	{	if( document.all(formName).all(RemarksObjName).value=="")
					{alert("Enter  'Reasons If Not Approved'")
					 flag=false
					}
			}
			if(document.all(formName).all(AppObjName)[0].checked)
			AppAction='Approve'
			
			if(document.all(formName).all(AppObjName)[1].checked)
			AppAction='Return'
			
			if(document.all(formName).all(AppObjName)[2].checked)
			AppAction='Drop'
			
			return(flag)
		}

function GetAppAction(TrnTypVal){
 			var AppObjName="Approve"
		    var formName = document.forms(0).name
	      if((TrnTypVal=="6") ||(TrnTypVal=="7")){
			if(document.all(formName).all(AppObjName)[1].checked)
			AppAction='Approve'
			
			if(document.all(formName).all(AppObjName)[2].checked)
			AppAction='Return'
			
			if(document.all(formName).all(AppObjName)[3].checked)
			AppAction='Drop'
			
		}else {
			if(TrnTypVal=="8"){
			if(document.all(formName).all(AppObjName)[1].checked)
				AppAction='Approve'
				if(document.all(formName).all(AppObjName)[2].checked)
				AppAction='Drop'
			}
		}
		if(TrnTypVal=="21")
		   {
			if(document.all(formName).all("DesciOption")[1].checked)
			AppAction='Forward As It Is'
			if(document.all(formName).all("DesciOption")[2].checked)
			AppAction='Forward With Discreet Values'
			if(document.all(formName).all("DesciOption")[3].checked)
			AppAction='Continue OOS Investigation'
		   }
		    if(TrnTypVal=="22")
		   {
			if(document.all(formName).all("DesciOption")[1].checked)
			AppAction='Forward With Discreet Values'
			if(document.all(formName).all("DesciOption")[2].checked)
			AppAction='Continue OOS Investigation'
				   }
		    if(TrnTypVal=="23")
		   {
			if(document.all(formName).all("DesciOption")[1].checked)
			AppAction='Approve'
			if(document.all(formName).all("DesciOption")[2].checked)
			AppAction='Return'
			}
		
}

function AskReasons1(){
		if(!CheckReasons1())
		Page_IsValid=false;
		
		return(Page_IsValid);
		}
		
		function CheckReasons1(){
			var flag=true
			if((document.all("Approve")[2].checked)){
				if(document.Form1.Remarks.value=="")
				{alert("Enter  'Reasons If Not Approved'")
				flag=false}
			}
			
			if(document.all("Approve")[1].checked)
			AppAction='Approve'
			
			if(document.all("Approve")[2].checked)
			AppAction='Drop'
			
			return(flag)
		}

/*Allows only numericals from 0 - 9 characters.*/
/*''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
function fnOnlyNumericals(){
	var KC = window.event.keyCode
	if(KC<48 || KC>57){
	window.event.cancelBubble = true;	
	return(false);
	}
}
/*''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/

/*--------------------------*/

function fnOpenReasons(ReasonType,CallObj){
	var pageURL = "../CaliberCommonCtrls/STDReasonPopUP.aspx?ReasonType="+ ReasonType + "&CallObj=" + CallObj
	var features = "height=390,width=470,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=150"
	winObj = window.open(pageURL,'STDReason',features)
	if(winObj.opener == null) winObj.opener=self;
	winObj.focus();
}
function fnSetToReasons(argValue,CallObj){
      var objId
        if(RequestPrefix!='') {
        objId= RequestPrefix + "_" + CallObj
       }else{
           objId= CallObj
         }
          var obj=document.getElementById(objId)
		obj.value = argValue
	}
	
	//-----------------------
	function fnFinalSub(args,Src){
    document.Form1.IsFinalSub.value=1 
    }
	//----------------
//--------------Calander js file Code---------------------

var ClClientId=""
var gx = 0;
var gy = 0;
var input_date;
var display_date;

var	ie=document.all

function fnCalCheck(clId){
 var ObjId
 var obj
 var obj2
  ObjId= clId + '_' + 'CalDateDisplay'
 
 //  obj=document.getElementById(objId)
  //if(obj.value==''){
 //ObjId= clId +'_' + 'CalDateVal'
 //obj2=document.getElementById(ObjId)
 //obj2.value=''
 //}
}
	
	
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


function GetLocalizedDate(m, d, y,displayObj) { 
  displayObj.value= d + '-' +  monthname[m-1] + '-' + y;
	//displayObj.value= d + '-' +  m + '-' + y;

	return m + '/' +  d + '/' + y;
	}

var yearImage = "<A Href='javascript:chg(-1,1)'><IMG Border=0 SRC='../IMAGES/DOWN.jpg'></A><A Href='javascript:chg(+1,1)'><IMG Border=0 SRC='../IMAGES/UP.jpg'></A>"
var monthImage = "<A Href='javascript:chg(-1,2)'><IMG Border=0 SRC='../IMAGES/DOWN.jpg'></A><A Href='javascript:chg(+1,2)'><IMG Border=0 SRC='../IMAGES/UP.jpg'></A>"
function chg(k,T) {
	if(T-2==0)
	d.setMonth(d.getMonth() + k);
	else
	d.setYear(d.getFullYear() + k);
	
	document.getElementById('month_year').innerHTML = monthImage +"<SPAN style='width:60px'>"+ monthname[d.getMonth()] + ' ' + d.getFullYear() +"</SPAN>"+ yearImage;
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
	}
	
	hd();
}

function getDate(cel,disd) {
	input_date = cel;//For BL
	display_date=disd//For Display
   
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
//document.write('<tr><td onClick="chg(-1);" class="nav">&lt;</td>');
document.write('<TR><td colspan="6" id="month_year" align="center">' + monthname[d.getMonth()] + ' ' + d.getFullYear() +'</td>');
document.write('<td class="closew" onClick="hd()">x</td></tr>');
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



//-----------------------

//---------------- pop Up  code----------------
function contextMenu(){
       	if(event.srcElement.type=='text'||event.srcElement.type=='textarea'){
      	    	var obj=event.srcElement
          	var Txt=obj.value
          		var rowCnt=0
          	 if(event.srcElement.type=='textarea')
          	 {Txt=obj.innerText
          	  var d=0
          	 for(d=0;d<Txt.length;d++){
					 if(Txt.charAt(d)=='\n')
					rowCnt= rowCnt+ 1
				}
          	 }
				if(Txt!=''){
				    
			 		var popWidth  
					var popHeight	
								 
					var oPopup = window.createPopup();
					var oPopupBody = oPopup.document.body;
					oPopupBody.style.backgroundColor = "lightyellow";
					oPopupBody.style.border = "solid black 1px";
					 oPopupBody.style.fontFamily="arial"
					 oPopupBody.style.fontSize=14  
					 oPopupBody.style.marginLeft=5
					
					
			 		var TxtSize=Txt.length 
			 	 	oPopupBody.innerText =Txt

					var popleft = obj.clientLeft;
					var poptop   =obj.clientTop;
				
				    popWidth= obj.clientWidth + 20
				    popHeight=obj.clientHeight 
				    poptop=poptop + popHeight
				    
				    if(popWidth<300){popWidth=300}
				    
				       var lineCnt
				        lineCnt=parseInt((TxtSize*10)/obj.clientWidth)
				   
				       if(rowCnt>lineCnt){lineCnt=rowCnt}
				  
				     
				    popHeight=24
				     if(lineCnt>0){ popHeight=(lineCnt*22) + 10 } 
				   
				    
 				     
					oPopup.show(popleft, poptop, popWidth, popHeight , obj);
				}
				 
				 
			 
				
     	}else{
     	return false;
     	}

}//contextMenu

//Disable right click
/*var message="";
///////////////////////////////////
function clickIE() {
	if (document.all) {
	(message);return false;
	}
}


function clickNS(e) {
if(document.layers||(document.getElementById&&!document.all)) {
	if (e.which==2||e.which==3) {
	(message);return false;}
	}
}


if (document.layers){
document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;
}else{
document.onmouseup=clickNS;document.oncontextmenu=clickIE;
document.oncontextmenu=new Function("return false")
document.body.oncontextmenu= contextMenu  
 document.body.onselectstart=DisableCopy  

}


 
function DisableCopy(){
if(!(event.srcElement.type=='text'|| event.srcElement.type=='textarea'))     	   
return false;
}*/


//for disabling autocomplete
function AutoComplete()
{
var formcount = document.forms.length

for(i=0;i<formcount;i++)
{
 
 document.forms(i).setAttribute("autocomplete","off"); 
}
}
window.setTimeout("AutoComplete()",300);



//---------------- End of pop Up  code----------------

