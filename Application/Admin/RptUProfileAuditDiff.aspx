<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RptUProfileAuditDiff.aspx.vb" Inherits="Admin.RptUProfileAuditDiff" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
  <head>
    <title>RptUProfileAuditDiff</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name=vs_defaultClientScript content="JavaScript">
    
    <%--<link rel=stylesheet href=CUSTOM.CSS type=text/css>--%>
    <LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
    <STYLE>
	.ACss1{Height:100%;Padding:2px;Padding-Left:5px;Padding-Right:5px;Text-align:center;Text-Decoration:none;Border-Width:1px;Background-color:#5C8BA9;Color:White;}
	.ACss2{Height:100%;Padding:2px;Padding-Left:5px;Padding-Right:5px;Text-align:center;Text-Decoration:none;Border-Width:1px;Background-color:#3C6B89;Color:Yellow;}
	</STYLE>
  </head>
  <body MS_POSITIONING="GridLayout">

    <form id="Form1" method="post" runat="server">
	<TABLE class="MainTable" height="150" cellSpacing="0" cellPadding="0" width="600" align="center" border="0">
	<!-- MAIN HEADER -->
	<TR><TD class="MainHead">Audit Trail</TD></TR>
	<TR><TD valign=top>
	
		<asp:Literal ID=LiteralAudit Runat=server></asp:Literal>
			
	</TD></TR>			
	<!-- MAIN FOOTER -->
	<TR><TD class="MainFoot">		
		<input onclick="window.history.back()" class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'" type="button" value="Back" style="width:60px;">
	</TD></TR>
	</TABLE>
	 <script type="text/javascript">
        function fnShowReport(n, totalCnt) {
            for (var i = 0; i < totalCnt; i++) {
                document.getElementById('T'+(i+1)).style.display = 'none';
                document.getElementById('A'+(i+1)).className = 'ACss1';
            }
            document.getElementById('T' + n).style.display = 'inline-table';
            document.getElementById('A' + n).className = 'ACss2';
        }
    </script>
    </form>
	<SCRIPT language=javascript>
		function fnShowReport(n){
		// Need to change here whenever Module list changed in Web.config
			document.all('T1').style.display='none';
			document.all('T2').style.display='none';
			document.all('T3').style.display='none';
			document.all('T4').style.display='none';
			document.all('T5').style.display='none';
			//document.all('T6').style.display='none';
			
			document.all('A1').className='ACss1';
			document.all('A2').className='ACss1';
			document.all('A3').className='ACss1';
			document.all('A4').className='ACss1';
			document.all('A5').className='ACss1';
			//document.all('A6').className='ACss1';
			
			document.all('T'+ n).style.display='block';
			document.all('A'+ n).className='ACss2';
			
		}
	</SCRIPT>
  </body>
  
  <script language=javascript>
	//context menu		
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

var poptop =obj.clientTop;

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

//var message="";

/////////////////////////////////////

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

}


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

//-->
</script>
</html>
