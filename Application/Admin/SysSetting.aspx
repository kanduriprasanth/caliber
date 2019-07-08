<%@ Page Language="vb" AutoEventWireup="false" Codebehind="SysSetting.aspx.vb" Inherits="Admin.SysSetting" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
  <head>
    <title>SysSetting</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name=vs_defaultClientScript content="JavaScript">
    
    <SCRIPT language="JavaScript" src="../JScript/DisableRightClick.js"><!--// --> </SCRIPT>
	<SCRIPT language="JavaScript" src="../JScript/DisableViewSource.js"><!--// --> </SCRIPT>			
	<LINK REL="stylesheet" TYPE="text/css" HREF="CUSTOM.css">
			<STYLE> 
			A {PADDING-RIGHT: 5px;PADDING-LEFT: 5px; FONT-SIZE:8pt;PADDING-BOTTOM: 4px;PADDING-TOP: 1px;FONT-FAMILY:Tahoma,Arial;Color:#000000; HEIGHT: 20px; BACKGROUND-COLOR:#dfdfcf; TEXT-DECORATION: none;border-style:Solid;border-width:1px;Border-Color:#999999;} 
			A:hover{PADDING-RIGHT: 5px;PADDING-LEFT: 5px; FONT-SIZE:8pt;PADDING-BOTTOM: 4px;PADDING-TOP: 1px;FONT-FAMILY:Tahoma,Arial;Color:#FFFFFF; HEIGHT: 20px; BACKGROUND-COLOR:#004477; TEXT-DECORATION: none;border-style:Solid;border-width:1px;Border-Color:#000000;}			
			</STYLE>
</head>
<body MS_POSITIONING="GridLayout" style='Background-Color:Gray;'>

<form id="Form1" method="post" runat="server">

<TABLE align=center border="0" cellspacing="0" cellpadding="0" width="100%" height="100%"><TR><TD valign=middle>
		<TABLE align=center border="0" cellspacing="0" cellpadding="0" width="700" height="400" style="BORDER:#000000 1px solid;Padding:10px;">
				<TR><TD class=MainHead style='BACKGROUND-COLOR:#EFEFDF;Height:50px;'>Access Restoration Routine</TD></TR>
				<TR><TD style='Height:20px;Padding:0px;BACKGROUND-COLOR:#EFEFDF;Padding-Left:10px;'>
				<A target=IFrame1 href='SysResetPWS.aspx'>Reset Password</A>				
				<A target=IFrame1 href='SysResetSProfile.aspx'>Disable IP Address Security</A>
				</TD></TR>
				<TR><TD style='Height:1px;Padding:0px;BACKGROUND-COLOR:#999999;'></TD></TR>
				
				<TR><TD valign="middle" align="center" style="Height:300px;BACKGROUND-COLOR:#004477;Padding:0px;">
					<IFRAME id=IFrame1 name=IFrame1 width=100% height=100% frameborder=no></IFRAME>
				</TD></TR>
				
				<TR><TD style='Height:1px;Padding:0px;BACKGROUND-COLOR:#999999;'></TD></TR>
				<TR><TD valign="middle" align="Right" style="BACKGROUND-COLOR:#EFEFDF;Padding:5px;">
				<A href='JavaScript:window.self.close()'>Close</A>
				</TD></TR>
				</TABLE>
		</TD></TR>
		</TABLE>
</TD></TR></TABLE>			
			

<ASP:TEXTBOX Runat=server Width=0 Height=0 ID=IsValidPage style='Display:none;'></ASP:TEXTBOX>				
<ASP:VALIDATIONSUMMARY id="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></ASP:VALIDATIONSUMMARY>
</form>
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
