<%@ Page Language="vb" AutoEventWireup="false" Codebehind="PersonalParticularsCH.aspx.vb" Inherits="Admin.PersonalParticularsCH"%>
<%@ Register TagPrefix="uc1" TagName="ESignWebUC" Src="ESignWebUC.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
  <head>
    <title>PersonalParticularsCH</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<SCRIPT language="javascript" src='../JScript/Common.js'></SCRIPT>
		<script language="javascript">
		
		function chk()
		{
			var txt=document.getElementById('Phone').value;
			var len=txt.length;
			var flag=true;
			var str;
			var i,j;
			for(j=0;j<len;j++)
			{
					str=txt.charAt(j);
					if( str!="+" && str!=" ")
					{	
						if(isNaN(str))
						{
							flag=false;
							break;
						}
					}
			}
			if(!flag)
			{
				alert("Invalid Phone Extn.");
				document.getElementById('Phone').value="";
				document.getElementById('Phone').focus;
			}
	
		}
		
		</script>
  </head>
  <body MS_POSITIONING="GridLayout" onblur="fnRestoreESign()" onfocus="fnRestoreESign()"
		onbeforeunload="fnCloseObject();fnKillESign()">

    <form id="Form1" method="post" runat="server" onsubmit="return fnCallESign();">
			<ASP:VALIDATIONSUMMARY id="ValidationSumm" runat="server" ShowMessageBox="True" ShowSummary="False"></ASP:VALIDATIONSUMMARY>
			<TABLE class="MainTable" height="200" cellSpacing="0" cellPadding="0" width="500" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">Personal Particulars</TD>
				</TR>
				<TR>
					<TD>
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="SubHead">Change Personal Particulars</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label1" style="PADDING-LEFT:5px" Width="140">First Name</ASP:LABEL>
									<asp:Label ID="FirstNameLbl" runat ="server" > </asp:Label>
									 
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label2" style="PADDING-LEFT:5px" Width="140">Last Name</ASP:LABEL>
									<asp:Label ID="LastNameLbl" runat ="server" > </asp:Label>
									 
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label3" style="PADDING-LEFT:5px" Width="140">Date Of Birth</ASP:LABEL>
									<asp:Label ID="DOBLbl" runat ="server" > </asp:Label>
                                    <%--(MM/DD/YYYY)--%>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label6" style="PADDING-LEFT:5px" Width="140">Role / Title</ASP:LABEL>
									<ASP:TEXTBOX Runat="server" ID="RoleTile" CssClass="TxtCls" MaxLength="25"  ></ASP:TEXTBOX>
									<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator10" runat="server" Display="Dynamic" ErrorMessage="Enter Role / Title"
										ControlToValidate="RoleTile">*</ASP:REQUIREDFIELDVALIDATOR>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label8" style="PADDING-LEFT:5px" Width="140">Employee ID</ASP:LABEL>
									<ASP:TEXTBOX Runat="server" ID="EMPID"   CssClass="TxtCls" MaxLength="25"></ASP:TEXTBOX>
									<ASP:REQUIREDFIELDVALIDATOR id="EmpIdRequiredfieldvalidator" runat="server" Display="Dynamic" ErrorMessage="Enter Employee ID"
										ControlToValidate="EMPID">*</ASP:REQUIREDFIELDVALIDATOR>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label13" style="PADDING-LEFT:5px" Width="140">ID Card No.</ASP:LABEL>
									<ASP:TEXTBOX Runat="server" ID="SSN" CssClass="TxtCls" MaxLength="20"  ></ASP:TEXTBOX>
								</TD>
							</TR>
							<TR Class="HideRow">
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label4" style="PADDING-LEFT:5px" Width="140">Plant</ASP:LABEL>
									<asp:DropDownList ID="PlantDD" Runat="server" Enabled=False></asp:DropDownList>
									<ASP:TEXTBOX Runat="server" ID="Plant" CssClass="HideRow" MaxLength="40"></ASP:TEXTBOX>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label5" style="PADDING-LEFT:5px" Width="140">Phone Extn.</ASP:LABEL>
									<ASP:TEXTBOX Runat="server" ID="Phone" CssClass="TxtCls" MaxLength="20" onkeyup="chk()"></ASP:TEXTBOX>
									<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator9" runat="server" Display="Dynamic" ErrorMessage="Enter Phone Extn."
										ControlToValidate="Phone">*</ASP:REQUIREDFIELDVALIDATOR>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label7" style="PADDING-LEFT:5px" Width="140">Address</ASP:LABEL>
									<ASP:TEXTBOX Runat="server" ID="Address" CssClass="TxtCls" Height="40" Width="200" TextMode="MultiLine"></ASP:TEXTBOX>
									<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator1" runat="server" Display="Dynamic" ErrorMessage="Enter Address"
										ControlToValidate="Address">*</ASP:REQUIREDFIELDVALIDATOR>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label9" style="PADDING-LEFT:5px" Width="140">E-Mail</ASP:LABEL>
									<ASP:TEXTBOX Runat="server" ID="EMail" CssClass="TxtCls" MaxLength="40" Width="200"></ASP:TEXTBOX>
									<ASP:REGULAREXPRESSIONVALIDATOR id="RegularExpressionValidator3" runat="server" ControlToValidate="EMail" ErrorMessage="Entered E-Mail is incorrect. E-Mail like: AAA@Caliberindia.com"
										Display="Dynamic" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</ASP:REGULAREXPRESSIONVALIDATOR>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD>
						<TABLE style="BORDER-RIGHT: 2px groove; BORDER-TOP: 2px groove; BORDER-LEFT: 2px groove; BORDER-BOTTOM: 2px groove"
							cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
							<TR>
								<TD class="MainTD" width="140px">
									<ASP:LABEL Runat="server" id="Label10" style="PADDING-LEFT:1px" Width="140">Remark(s) / Reason(s)
							
							</ASP:LABEL>
								</TD>
								<TD class="MainTD">
									<ASP:TEXTBOX ID="Reasons" CssClass="TxtCls" TextMode="MultiLine" Runat="server" Width="280"></ASP:TEXTBOX>
									<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator4" runat="server" Display="Dynamic" ErrorMessage="Enter Remark(s) / Reason(s)"
											ControlToValidate="Reasons">*</ASP:REQUIREDFIELDVALIDATOR>
									<INPUT type="button" onclick="fnOpenReasons(1)" class='RsnPUP' title='Click for Standard Reason'>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
						<ASP:BUTTON id="btnSubmit" runat="server" Text="Submit" CssClass="ButCls" onMouseOver="this.className='ButOCls'"
							onmouseout="this.className='ButCls'" Width="60"></ASP:BUTTON>
						<INPUT class="HideRow" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="reset" value="Reset" style="WIDTH:60px">
					</TD>
				</TR>
			</TABLE>
			<UC1:ESIGNWEBUC id="ESignWebUC1" runat="server"></UC1:ESIGNWEBUC>
		</form>
		<SCRIPT language="javascript">
<!--
	function fnSetToReasons(argValue){
		document.getElementById('Reasons').value = argValue
	}
	
	/* Esing Activity and button name setting */
	window.onload = new Function("fnSetEsingActivity('Personal Particulars Change','btnSubmit');")
	
	window.onerror = "return true;"
	
//-->


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
