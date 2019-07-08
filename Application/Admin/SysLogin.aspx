<%@ Page Language="vb" AutoEventWireup="false" Codebehind="SysLogin.aspx.vb" Inherits="Admin.SysLogin" %>
<HTML>
	<HEAD>
		<TITLE>Caliber TRIMS</TITLE>
		<LINK REL="stylesheet" TYPE="text/css" HREF="LIMS.css">
			<SCRIPT language="JavaScript" src="../JScript/DisableRightClick.js"><!--// --> </SCRIPT>
			<SCRIPT language="JavaScript" src="../JScript/DisableViewSource.js"><!--// --> </SCRIPT>			
			<LINK REL="stylesheet" TYPE="text/css" HREF="CUSTOM.css">
			<STYLE> 
			A {PADDING-RIGHT: 5px;PADDING-LEFT: 5px; FONT-SIZE:8pt;PADDING-BOTTOM: 4px;PADDING-TOP: 1px;FONT-FAMILY:Tahoma,Arial;Color:#000000; HEIGHT: 20px; BACKGROUND-COLOR:#dfdfcf; TEXT-DECORATION: none;border-style:Solid;border-width:1px;Border-Color:#999999;} 
			A:hover{PADDING-RIGHT: 5px;PADDING-LEFT: 5px; FONT-SIZE:8pt;PADDING-BOTTOM: 4px;PADDING-TOP: 1px;FONT-FAMILY:Tahoma,Arial;Color:#FFFFFF; HEIGHT: 20px; BACKGROUND-COLOR:#772200; TEXT-DECORATION: none;border-style:Solid;border-width:1px;Border-Color:#000000;}
			BODY{Background-Color:#747068}
			</STYLE>
			<SCRIPT language=javascript>
			//window.navigate("SysSetting.aspx")
			if(window.name!="CaliberLIMS"){
				alert("Invalid Attempt")
				window.self.close()
			}
			</SCRIPT>
	</HEAD>
	
	
	
	<BODY leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<FORM runat="server" method="post" id="Form1">
			<TABLE border="0" align="center" cellspacing="0" cellpadding="0" width="100%" height="100%">
			<TR><TD align="center" valign="middle">
						<TABLE bgcolor="#EFEFDF" border="0" cellspacing="0" cellpadding="2" width="500" height="250" style="BORDER-RIGHT:#000000 1px solid; BORDER-TOP:#000000 1px solid; BORDER-LEFT:#000000 1px solid; BORDER-BOTTOM:#000000 1px solid">
						<TR><TD align="center" style='Height:70px;BACKGROUND-COLOR:#EFEFDF'>
									<SPAN Style="FONT-WEIGHT:bold;FONT-SIZE:22pt;COLOR:teal;FONT-FAMILY:Century Gothic,Georgia,Garamond;LETTER-SPACING:0px"><I>Caliber</i></SPAN>
									<SPAN style="FONT-WEIGHT:bold;FONT-SIZE:20pt;COLOR:#333333;FONT-FAMILY:Georgia,Garamond;LETTER-SPACING:1px;FONT-VARIANT:small-caps">lims</SPAN><BR>
									<SPAN Style="FONT-SIZE:9pt; FONT-FAMILY:Tahoma,Times New Roman; LETTER-SPACING:1px">
									<B>T</B>he <B>L</B>aboratory <B>I</B>nformation <B>M</B>anagement <B>S</B>ystem</SPAN>									
						</TD></TR>						
													
						<TR><TD valign="middle" align="center" style="BACKGROUND-COLOR:#004477;">
									<TABLE border="0" cellspacing="0" cellpadding="0" WIDTH="300" style="WIDTH:300px;">
										<TR><TD align=center style='Padding-Bottom:10px;'>
											<SPAN Style='Color:#FFFFFF;font-weight:bold;font-family:Tahoma,Arial;font-size:8pt;'>Enter Caliber TRIMS - Access Restoration Routine</SPAN>
										</TD></TR>
										<TR><TD>
											<SPAN Style='Color:#FFFFFF;font-family:Tahoma,Arial;font-size:8pt;text-align:right;width:100px;'>Licensed To:</SPAN> 
											<SPAN Style='Color:#FFFFFF;font-family:Tahoma,Arial;font-size:8pt;'>Medicap Limited</SPAN>
										</TD></TR>
										
										<TR><TD>
											<SPAN Style='Color:#FFFFFF;font-family:Tahoma,Arial;font-size:8pt;text-align:right;width:100px;'>System ID:</SPAN> 
											<SPAN Style='Color:#FFFFFF;font-family:Tahoma,Arial;font-size:8pt;'>
												<ASP:TEXTBOX TextMode="Password" CssClass=txtCls Runat="server" maxlength="25" ID="txtUserId" NAME="txtUserId" title="Enter System ID"></ASP:TEXTBOX>
												<ASP:REQUIREDFIELDVALIDATOR id="RequiredFieldValidator1" runat="server" ErrorMessage="Enter System ID" ControlToValidate="txtUserId" ForeColor=Yellow>*</ASP:REQUIREDFIELDVALIDATOR>
											</SPAN>
										</TD></TR>
										
										<TR><TD>
											<SPAN Style='Color:#FFFFFF;font-family:Tahoma,Arial;font-size:8pt;text-align:right;width:100px;'>Password:</SPAN> 
											<SPAN Style='Color:#FFFFFF;font-family:Tahoma,Arial;font-size:8pt;'>
												<ASP:TEXTBOX TextMode="Password" CssClass=txtCls Runat="server" maxlength="25" ID="txtPassword" NAME="txtPassword" title="Enter Password"></ASP:TEXTBOX>
												<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtPassword" ForeColor=Yellow>*</ASP:REQUIREDFIELDVALIDATOR>
											</SPAN>
										</TD></TR>
										<TR><TD style='Padding-Top:2px;'>
											<SPAN Style='Color:#FFFFFF;bold;font-family:Tahoma,Arial;font-size:8px;text-align:right;width:105px;'></SPAN> 
											<SPAN Style='Color:#FFFFFF;font-family:Tahoma,Arial;font-size:8pt;'>
												<ASP:BUTTON Text='Enter' Runat="server" id="btnLogin" name="btnLogin" runat="server" style='WIDTH:50px;font-family:Tahoma,Arial;font-size:8pt;border-width:2px;'></ASP:BUTTON>
												<INPUT type="button" value='Cancel' onclick="window.self.close()" style='WIDTH:50px;font-family:Tahoma,Arial;font-size:8pt;border-width:2px;'>
											</SPAN>
										</TD></TR>
									</TABLE>									
						</TD></TR>
						<TR><TD valign="middle" align="center" style="BACKGROUND-COLOR:#004477;">
						<ASP:LABEL id="lblErrorDisplay" runat="server" ForeColor=#33ff00 style='font-family:Tahoma,Arial;font-size:8pt;'></ASP:LABEL>
						</TD></TR>
						</TABLE>
			</TD></TR>
			</TABLE>
			
			
			<ASP:TEXTBOX Runat=server Width=0 Height=0 ID=IsValidPage style='Display:none;'></ASP:TEXTBOX>	
			<ASP:VALIDATIONSUMMARY id="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></ASP:VALIDATIONSUMMARY>
		</FORM>

<SCRIPT language=javascript>
<!--
	// keycode for F11 function
	function cancelF11() {
		if (window.event && window.event.keyCode == 122) {
			alert("Function key F11 cannot accessed")
			window.event.keyCode = 8;
			window.event.cancelBubble = true;
			window.event.returnValue = false;
			return false;
		}
	}
	
	function fnCheckPage(){
		document.getElementById('txtUserId').focus()
		if(document.getElementById('IsValidPage').value==0){
			alert("Session Expired. This will Close The Window")
			window.self.close()
		}
	}
	window.onload = new Function("fnCheckPage()")
//-->
</SCRIPT>
<SCRIPT LANGUAGE=javascript FOR=document EVENT=onkeydown>
<!--
 cancelF11()
//-->
</SCRIPT>

</BODY>
</HTML>
