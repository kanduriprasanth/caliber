<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Esignature2.aspx.vb" Inherits="Admin.Esignature2" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>Caliber QAMS</TITLE>
		<META content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<META content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<META content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">
		<SCRIPT language="javascript" src='../JScript/Common.js'></SCRIPT>
		<STYLE>
			.strip 
			{
			 filter:progid:DXImageTransform.Microsoft.Gradient(startColorstr='#555FAD', endColorstr='#9DADE0', gradientType='0');
			 Height:20px;Color:#FFFFFF;font-family:Trebuchet MS,Arial;font-size:10pt;Font-Weight:Bold;Padding-Left:5px; padding-right:5px;
			}
			.ButCls
			{
			filter:progid:DXImageTransform.Microsoft.Gradient(startColorstr='#ECECEC', endColorstr='#7386C3', gradientType='0');
			Color:'#000000';Font-weight:bold;Border-style:outset;border-width:1px;cursor:hand;font-family:Microsoft Sans Serif,Arial;font-size:9pt;
			}
			.ButOCls
			{
			filter:progid:DXImageTransform.Microsoft.Gradient(startColorstr='#7386C3', endColorstr='#ECECEC', gradientType='0');
			Color:'#000000';Font-weight:bold;Border-style:outset;border-width:1px;cursor:hand;font-family:Microsoft Sans Serif,Arial;font-size:9pt;
			}
		</style>
	</HEAD>
	<BODY MS_POSITIONING="GridLayout" onLoad="fnOnLoad()" leftmargin="0" topmargin="0" bottommargin="0"
		rightmargin="0" style='BACKGROUND-COLOR:#ffffff'>
		<FORM id="Form1" method="post" runat="server">
			<ASP:VALIDATIONSUMMARY ID="vsm1" Runat="server" ShowMessageBox="True" ShowSummary="False"></ASP:VALIDATIONSUMMARY>
			<TABLE cellSpacing="0" cellPadding="0" width="450" height="99%" align="center" border="0" style='BORDER-RIGHT:#999999 1px solid; BORDER-TOP:#999999 1px solid; BORDER-LEFT:#999999 1px solid; BORDER-BOTTOM:#999999 1px solid'>
				<TR>
					<!--<TD style='PADDING-RIGHT:5px;PADDING-LEFT:5px;PADDING-BOTTOM:2px;PADDING-TOP:2px;BACKGROUND-COLOR:#7386C3'>
						<SPAN style='FONT-SIZE:10pt; COLOR:white; FONT-FAMILY:Trebuchet MS,Arial'>Electronic 
							Signature</SPAN></TD>-->
					<td class="strip">Electronic Signature</td>
				</TR>
				<TR>
					<TD style='HEIGHT:1px'></TD>
				</TR>
				<TR>
					<TD style='PADDING-RIGHT:15px;PADDING-LEFT:15px;PADDING-BOTTOM:15px;PADDING-TOP:15px'>
						<TABLE height="100%" width="100%" cellSpacing="0" cellPadding="0" align="center" border="0"
							style='BORDER-RIGHT:#999999 1px solid; PADDING-RIGHT:5px; BORDER-TOP:#999999 1px solid; PADDING-LEFT:5px; FONT-SIZE:8pt; PADDING-BOTTOM:5px; BORDER-LEFT:#999999 1px solid; PADDING-TOP:5px; BORDER-BOTTOM:#999999 1px solid; FONT-FAMILY:Tahoma,ms serif; background-image:url(IMAGES/headerbgbig.gif); '>
							<TR>
								<TD align="center"><SPAN style='FONT-WEIGHT:bold;COLOR:#000000'>Meaning of this 
										Electronic Signature</SPAN></TD>
							</TR>
							<TR>
								<TD style='PADDING-RIGHT:1px;PADDING-BOTTOM:2px;PADDING-TOP:2px' align="center">
									<SPAN style='WIDTH:95px;TEXT-ALIGN:right'>Activity:</SPAN> <SPAN style='WIDTH:250px;TEXT-ALIGN:left' id="Activity">
										---</SPAN>
								</TD>
							</TR>
							<TR>
								<TD style='PADDING-BOTTOM:2px;PADDING-TOP:2px' align="center">
									<SPAN style='WIDTH:120px;TEXT-ALIGN:right'>Signed By:</SPAN>
									<ASP:LABEL ID="lblUserName" Runat="server" style='TEXT-ALIGN:left' Width="250"></ASP:LABEL>
								</TD>
							</TR>
							<TR>
								<TD align="center">
									<SPAN style='WIDTH:90px;TEXT-ALIGN:right'>User ID:</SPAN> <SPAN style='WIDTH:200px;TEXT-ALIGN:left'>
										<Input type=password Class=TxtCls value='<%=Session("LoginName")%>' readonly ></SPAN>
									<br><SPAN style='WIDTH:90px;TEXT-ALIGN:right'>E-Sign:</SPAN> <SPAN style='WIDTH:200px;TEXT-ALIGN:left'>
										<ASP:TEXTBOX ID="txtPassword" Runat="server" CssClass="TxtCls" TextMode="Password" MaxLength="25"></ASP:TEXTBOX>
										<ASP:REQUIREDFIELDVALIDATOR ID="Requiredfieldvalidator3" ControlToValidate="txtPassword" Runat="server" ErrorMessage="Enter E-signature">*</ASP:REQUIREDFIELDVALIDATOR>
									</SPAN>
								</TD>
							</TR>
							<TR>
								<TD align="center" style='PADDING-BOTTOM:10px;PADDING-TOP:2px'>
									<ASP:BUTTON Runat="server" Text="OK" style='BORDER-TOP-WIDTH:1px; BORDER-LEFT-WIDTH:1px; FONT-SIZE:8pt; BORDER-BOTTOM-WIDTH:1px; COLOR:white; FONT-FAMILY:Tahoma,san serif; BACKGROUND-COLOR:#7386C3; BORDER-RIGHT-WIDTH:1px'
										ID="btnLogin" Width="50"></ASP:BUTTON>
									<INPUT type="button" value="Cancel" onclick="fnCloseWin()" style='BORDER-TOP-WIDTH:1px; BORDER-LEFT-WIDTH:1px; FONT-SIZE:8pt; BORDER-BOTTOM-WIDTH:1px; WIDTH:50px; COLOR:white; FONT-FAMILY:Tahoma,san serif; BACKGROUND-COLOR:#7386C3; BORDER-RIGHT-WIDTH:1px'>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
			<ASP:TEXTBOX ID="IsValidLogin" Runat="server" Width="0" Height="0" style='DISPLAY:none'></ASP:TEXTBOX>
			<ASP:PANEL Visible="False" ID="Panel1" Runat="server">
				<DIV style="BORDER-RIGHT: #999999 1px solid; BORDER-TOP: #999999 1px solid; PADDING-LEFT: 5px; Z-INDEX: 1000; LEFT: 132px; BORDER-LEFT: #999999 1px solid; WIDTH: 255px; BORDER-BOTTOM: #999999 1px solid; POSITION: absolute; TOP: 15px; HEIGHT: 20px; BACKGROUND-COLOR: lightyellow">
					<TABLE height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
						<TR>
							<TD><IMG src="../Images/ExlamatrySmall.gif"></TD>
							<TD><SPAN style="PADDING-LEFT: 2px; FONT-SIZE: 8pt; COLOR: red; FONT-FAMILY: Arial">
									<ASP:LITERAL id="Literal1" Runat="server"></ASP:LITERAL></SPAN></TD>
						</TR>
					</TABLE>
				</DIV>
			</ASP:PANEL>
		</FORM>
		<SCRIPT language="javascript">
<!--

//var oMyObject = window.dialogArguments;
//alert(oMyObject.IsValid)
//	function fnCloseWin(){
//		opener.fnIsESignValid(false);		
//		window.close()
//	}
//	
//	function fnOnLoad(){
//		//Valid
//		if(document.getElementById('IsValidLogin').value=="1"){
//			//opener.fnIsESignValid(true);	
//			oMyObject.IsValid=true;		
//			window.close()
//		}
//		//Wrong attempts exceeds
//		if(document.getElementById('IsValidLogin').value=="2"){
//			//opener.fnIsESignValid(false);
//				oMyObject.IsValid=false;
//			
//			//window.open('WrongAttempts.aspx?Type=ESign','CaliberLIMS')
//			window.close()
//			//opener.fnOpenConAdm();
//		}
//		Activity.innerText =""// opener.fnActivity();
//		document.getElementById('txtPassword').focus();
//	}
//	
//	function fnRelogin(){
//			
//		window.close();
//		opener.fnClsWin();
//			
//	}
//		
//	// keycode for F11 function
//	function cancelF11() {
//		if (window.event && window.event.keyCode == 122) {
//			alert("Key F11 is not Accessed")
//			window.event.keyCode = 8;
//		}
//		// keycode for backspace
//		if (window.event && window.event.keyCode == 8) {
//			var taObj=window.event.srcElement;
//			if(taObj!=null)
//				if(taObj.name == "txtPassword")
//					return(true);
//			window.event.cancelBubble = true;
//			window.event.returnValue = false;
//			return false;
//		}
//	}
//-->
		</SCRIPT>
		<SCRIPT LANGUAGE="javascript" FOR="document" EVENT="onkeydown">
<!--
 cancelF11()
//-->
		</SCRIPT>
	</BODY>
</HTML>
