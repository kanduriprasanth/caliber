<%@ Page Language="vb" AutoEventWireup="false" Codebehind="PersonalParticularsRD.aspx.vb" Inherits="Admin.PersonalParticularsRD"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
  <head>
    <title>PersonalParticularsRD</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name=vs_defaultClientScript content="JavaScript">
    
   <%-- <LINK href="CUSTOM.css" type="text/css" rel="stylesheet">--%>
   <LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<SCRIPT language="javascript" src='../JScript/Common.js'></SCRIPT>
		<script language="javascript">
		function fnEditParticulars()
		{
			var LoginID=document.getElementById("LoginID").value;
			window.navigate("PersonalParticularsCH.aspx?LoginID=" + LoginID);
		
		}
		
		
		</script>
		<STYLE>
    SPAN.lblClass { BORDER-RIGHT: #999999 0px; BORDER-TOP: #999999; BORDER-LEFT: #999999 0px; WIDTH: 100%; PADDING-TOP: 5px; BORDER-BOTTOM: #999999 1px solid }
		</STYLE>
  </head>
  <body MS_POSITIONING="GridLayout">

   <form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="486" cellSpacing="0" cellPadding="0" align="center" 
				border="0" style="WIDTH: 698px; HEIGHT: 400px">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">Personal Particulars</TD>
				</TR>
				<TR>
					<TD>
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="SubHead">Personal Particulars for
									<ASP:LABEL Runat="server" id="UserName"></ASP:LABEL></TD>
							</TR>
							<TR>
								<TD class="MainTD" style='PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-BOTTOM:10px'>
									<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center">
										<TR>
											<TD class="MainTD" width="120"><ASP:LABEL Runat="server" id="Label1" CssClass="lblClass">First Name</ASP:LABEL></TD>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="FirstName"></ASP:LABEL></TD>
										</TR>
										<TR>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="Label11" CssClass="lblClass">Last Name</ASP:LABEL></TD>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="LastName"></ASP:LABEL></TD>
										</TR>
										<TR>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="Label14" CssClass="lblClass">Date Of Birth</ASP:LABEL></TD>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="DOB"></ASP:LABEL></TD>
										</TR>
										<TR>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="Label20" CssClass="lblClass">Role / Title</ASP:LABEL></TD>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="RoleTile"></ASP:LABEL></TD>
										</TR>
										<TR>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="Label16" CssClass="lblClass">Employee ID</ASP:LABEL></TD>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="EMPID"></ASP:LABEL></TD>
										</TR>
										<TR>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="Label2" CssClass="lblClass">ID Card No.</ASP:LABEL></TD>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="SSN"></ASP:LABEL></TD>
										</TR>
										<TR Class="HideRow">
											<TD class="MainTD"><ASP:LABEL Runat="server" id="Label12" CssClass="lblClass">Plant</ASP:LABEL></TD>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="Plant"></ASP:LABEL></TD>
										</TR>
										<TR>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="Label18" CssClass="lblClass">Phone Extn.</ASP:LABEL></TD>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="Phone"></ASP:LABEL></TD>
										</TR>
										
										
										<TR>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="Label3" CssClass="lblClass">Address</ASP:LABEL></TD>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="Address"></ASP:LABEL></TD>
										</TR>
										<TR>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="Label4" CssClass="lblClass">E-Mail</ASP:LABEL></TD>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="EMail"></ASP:LABEL></TD>
										</TR>
										<TR>
											<TD class="MainTD" colspan="2" style='PADDING-TOP:10px'><B>Account Particulars:</B></TD>
										</TR>
										<TR>
											<TD class="MainTD" width="120"><ASP:LABEL Runat="server" id="Label5" CssClass="lblClass">Category</ASP:LABEL></TD>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="CategoryName"></ASP:LABEL></TD>
										</TR>
										<TR>
											<TD class="MainTD" width="120"><ASP:LABEL Runat="server" id="Label7" CssClass="lblClass">Role</ASP:LABEL></TD>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="RoleName"></ASP:LABEL></TD>
										</TR>
										<TR>
											<TD class="MainTD" width="120"><ASP:LABEL Runat="server" id="Label9" CssClass="lblClass">Reporting To</ASP:LABEL></TD>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="ReportingTo"></ASP:LABEL></TD>
										</TR>
										<TR>
											<TD class="MainTD" width="120"><ASP:LABEL Runat="server" id="Label6" CssClass="lblClass">Current Status</ASP:LABEL></TD>
											<TD class="MainTD"><ASP:LABEL Runat="server" id="Status"></ASP:LABEL></TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
						<asp:textbox id="LoginID" style="DISPLAY: none" Runat="server" Width="0" Height="0"></asp:textbox>
						<INPUT class="HideRow" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="button" value="Back" style="WIDTH:60px" onclick='window.history.back()'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 60px" onclick="fnEditParticulars()"
							onmouseout="this.className='ButCls'" type="button" value="Edit">
					</TD>
				</TR>
			</TABLE>
		</form>
<SCRIPT language="javascript">
		  //For Disabling Right Click
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


</SCRIPT>
  </body>
</html>
