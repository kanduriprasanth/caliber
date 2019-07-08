<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AuditTrial.aspx.vb" Inherits="Admin.AuditTrial" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>AuditTrial</title>
		<%--<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">--%>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<%--<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">--%>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="200" cellSpacing="0" cellPadding="0" width="550" align="center"
				border="0">
				<TR height="60">
					<TD class="MainHead">Audit Trails</TD>
				</TR>
				<TR>
					<TD vAlign="top">
						<TABLE class="SubTable" style="BORDER-RIGHT: 2px groove; PADDING-RIGHT: 10px; BORDER-TOP: 2px groove; PADDING-LEFT: 10px;   BORDER-LEFT: 2px groove;  BORDER-BOTTOM: 2px groove"
							cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
							<TR height="20">
								<TD class="SubHead" style="PADDING-BOTTOM: 2px; PADDING-TOP: 2px;" colSpan="2">Security 
									and Administration Audit Trails</TD>
							</TR>
							<TR>
								<TD vAlign="top" class="MainTD" ><SPAN class="ATSubHeading" style="BORDER-RIGHT: gray 1px solid; PADDING-RIGHT: 0px; BORDER-TOP: gray 1px solid; PADDING-LEFT: 5px; BORDER-LEFT: gray 1px solid; WIDTH: 210px; BORDER-BOTTOM: gray 1px solid; TEXT-ALIGN: left;font-weight:bold">Security</SPAN>
									<br> 
									<A class="ATRptLink" onmouseover="className='ATRptLink'" style="BORDER-BOTTOM-WIDTH: 0px"
										onmouseout="className='ATRptLink'" href="JavaScript:window.navigate('RptSProfile.aspx')">
										Security Profile And Password(s)</A><BR>
									<A class="ATRptLink" onmouseover="className='ATRptLink'" style="BORDER-BOTTOM-WIDTH: 0px"
										onmouseout="className='ATRptLink'" href="JavaScript:window.navigate('RptPSWAttempts.aspx')">
                                        Falsification Attempts - Invalid Login</A><BR>
									<A class="ATRptLink" onmouseover="className='ATRptLink'" style="BORDER-BOTTOM-WIDTH: 0px"
										onmouseout="className='ATRptLink'" href="JavaScript:window.navigate('RptEPSWAttempts.aspx')">
                                        Falsification Attempts - Invalid E-sign</A><BR>
									<A class="ATRptLink" onmouseover="className='ATRptLink'" style="BORDER-BOTTOM-WIDTH: 0px"
										onmouseout="className='ATRptLink'" href="JavaScript:window.navigate('RptAccStatus.aspx')">
										User Account Status</A><BR>
									<A class="ATRptLink" onmouseover="className='ATRptLink'" onmouseout="className='ATRptLink'"
										href="JavaScript:window.navigate('RptPasswordReset.aspx')">Login Password Reset</A><BR>
									<A class="hiderow" onmouseover="className='ATRptLink'" style="BORDER-BOTTOM-WIDTH: 0px"
										onmouseout="className='ATRptLink'" href="JavaScript:window.navigate('RptEPasswordReset.aspx')">
										E-sign Password Reset</A><BR>
									<A class="hiderow" onmouseover="className='ATRptLink'" onmouseout="className='ATRptLink'"
										href="JavaScript:window.navigate('RptIPAddress.aspx')">Client IP Address</A><BR>
							
							</TD>
								<TD vAlign="top" class="MainTD" ><SPAN class="ATSubHeading" style="BORDER-RIGHT: gray 1px solid; PADDING-RIGHT: 0px; BORDER-TOP: gray 1px solid; PADDING-LEFT: 5px; BORDER-LEFT: gray 1px solid; WIDTH: 210px; BORDER-BOTTOM: gray 1px solid; TEXT-ALIGN: left;font-weight:bold;">Administration</SPAN>
									<br> 
									<A class="ATRptLink" onmouseover="className='ATRptLink'" style="BORDER-BOTTOM-WIDTH: 0px;"
										onmouseout="className='ATRptLink'" href="JavaScript:window.navigate('RptGProfile.aspx')">
										Global Profile Audit Trail</A><BR>
									<A class="ATRptLink" onmouseover="className='ATRptLink'" style="BORDER-BOTTOM-WIDTH: 0px"
										onmouseout="className='ATRptLink'" href="JavaScript:window.navigate('RptUProfile.aspx')">
										User Profile Audit Trail</A><BR>
									<A class="ATRptLink" onmouseover="className='ATRptLink'" style="BORDER-BOTTOM-WIDTH: 0px"
										onmouseout="className='ATRptLink'" href="JavaScript:window.navigate('RptUserStatus.aspx')">
										Current User Status</A><BR>
									<A class="ATRptLink" onmouseover="className='ATRptLink'" style="BORDER-BOTTOM-WIDTH: 0px"
										onmouseout="className='ATRptLink'" href="JavaScript:window.navigate('RptUParticulars.aspx')">
										User Particulars</A><BR>
									<A class="ATRptLink" onmouseover="className='ATRptLink'" style="BORDER-BOTTOM-WIDTH: 0px"
										onmouseout="className='ATRptLink'" href="JavaScript:window.navigate('../PlantReg/AuditList.aspx')">
										Plant</A><BR>
									<A class="ATRptLink" onmouseover="className='ATRptLink'" style="BORDER-BOTTOM-WIDTH: 0px"
										onmouseout="className='ATRptLink'" href="JavaScript:window.navigate('../PlantAsg/AuditList.aspx')">
										Plant Assignment</A><BR>
									<A class="ATRptLink" onmouseover="className='ATRptLink'" style="BORDER-BOTTOM-WIDTH: 0px"
										onmouseout="className='ATRptLink'" href="JavaScript:window.navigate('../UserGrp/AuditList.aspx')">
										User Group</A><BR>
										<%--<A class="ATRptLink" onmouseover="className='ATRptLink'" style="BORDER-BOTTOM-WIDTH: 0px"
										onmouseout="className='ATRptLink'" href="JavaScript:window.navigate('../Calender/AuditList.aspx')">
										Holiday Calendar</A><BR>--%>
									<A class="ATRptLink" onmouseover="className='ATRptLink'" onmouseout="className='ATRptLink'"
										href="JavaScript:window.navigate('RptUsrHierarchyCh.aspx')">Change User 
										Hierarchy Audit Trail</A><BR>
										
										<%--added for modify user id audit trails by asish.--%>
										<A class="ATRptLink" onmouseover="className='ATRptLink'" onmouseout="className='ATRptLink'"
										href="JavaScript:window.navigate('../ModifyUser/AuditList.aspx')">User Registration Audit Trail</A><BR>
						
										
								</TD>
							</TR>
							<TR>
								<TD class="MainFoot" colspan="2" ><INPUT class="ButCls" onmouseover="this.className='ButOCls'"        onclick="window.navigate('../BodyHome.aspx')"
										onmouseout="this.className='ButCls'" type="button" value="Home">
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
		</form>
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

</HTML>
