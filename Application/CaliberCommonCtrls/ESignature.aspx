<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ESignature.aspx.vb" Inherits="CaliberCommonCtrls.ESignature" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>Caliber QAMS</TITLE>
		<META content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<META content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<META content="JavaScript" name="vs_defaultClientScript">
		
		<link rel="stylesheet" type="text/css" href="../Trims.css" />
	
		<!--<LINK href="Admin/CUSTOM.css" type="text/css" rel="stylesheet">
		<SCRIPT language="javascript" src='JScript/Common.js'></SCRIPT>-->
		<style type="text/css">
			.strip 
			{
			 filter:progid:DXImageTransform.Microsoft.Gradient(startColorstr='#555FAD', endColorstr='#9DADE0', gradientType='0');
			 Height:20px;Color:##a4c085;font-family:Trebuchet MS,Arial;font-size:10pt;Font-Weight:Bold;Padding-Left:5px; padding-right:5px;
			}
			/*.ButCls
			{
			filter:progid:DXImageTransform.Microsoft.Gradient(startColorstr='#ECECEC', endColorstr='#7386C3', gradientType='0');
			Color:'#000000';Font-weight:bold;Border-style:outset;border-width:1px;cursor:hand;font-family:Microsoft Sans Serif,Arial;font-size:9pt;
			}
			.ButOCls
			{
			filter:progid:DXImageTransform.Microsoft.Gradient(startColorstr='#7386C3', endColorstr='#ECECEC', gradientType='0');
			Color:'#000000';Font-weight:bold;Border-style:outset;border-width:1px;cursor:hand;font-family:Microsoft Sans Serif,Arial;font-size:9pt;
			}*/
			
			.ButOCls
            {
            /*filter:progid:DXImageTransform.Microsoft.Gradient(startColorstr='#ffffff', endColorstr='#90a973'/*'#bfcce2''#a4c085'*//*, gradientType='0');*/BACKGROUND-IMAGE: url(../Images/button_bg_g_o.png);
            color :Black;Border-style:solid;border-width:0px; outline:none;  Font-weight:bold;cursor:hand;font-family:Microsoft Sans Serif,Arial;font-size:9pt;width:60px; height:22px;background-repeat:no-repeat; text-align:center;
            }
            .ButCls
            {
            /*filter:progid:DXImageTransform.Microsoft.Gradient(startColorstr='#a4c085', endColorstr='#ffffff', gradientType='0');*/BACKGROUND-IMAGE: url(../Images/button_bg_g.png); background-repeat:no-repeat;
            color :Black;Border-style:outset;border-width:0px; Font-weight:bold;cursor:hand;font-family:Microsoft Sans Serif,Arial;font-size:9pt; width:60px; height:22px; text-align:center;
            }

		</style>
	</HEAD>
	<BODY MS_POSITIONING="GridLayout" leftmargin="0" topmargin="0" bottommargin="0"	rightmargin="0" style="background-image:url(../Images/login_bg.png); background-repeat:repeat">
		<FORM id="Form1" method="post" runat="server"  >
			<ASP:VALIDATIONSUMMARY ID="vsm1" Runat="server" ShowMessageBox="True" ShowSummary="False"></ASP:VALIDATIONSUMMARY>
			<fieldset id="asd" runat="server" style=" border-color:white">
			
			<legend style="font-weight:bold; font-family:Verdana; color:Black;font-size:10pt;" >Electronic Signature</legend>
			<TABLE cellSpacing="0" cellPadding="0" height="99%" width="450" align="center" border="0"> 
 				<TR>
					<TD style='PADDING-RIGHT:15px;PADDING-LEFT:15px;PADDING-BOTTOM:15px;PADDING-TOP:15px'>
						<TABLE height="100%" width="100%" cellSpacing="0" cellPadding="0" align="center" border="0"
							style='BORDER-RIGHT:#999999 1px solid;PADDING-RIGHT:5px;BORDER-TOP:#999999 1px solid;PADDING-LEFT:5px;FONT-SIZE:8pt;PADDING-BOTTOM:5px;BORDER-LEFT:#999999 1px solid;PADDING-TOP:5px;BORDER-BOTTOM:#999999 1px solid;FONT-FAMILY:Tahoma,ms serif;background-image:url(../Images/tabon_new.png);'>
							<TR>
								<TD align="center"><SPAN style='FONT-WEIGHT:bold;COLOR:#000000'>Meaning of this 
										Electronic Signature</SPAN></TD>
							</TR>
							
							<TR>
								<TD align="center" style='PADDING-BOTTOM:2px;PADDING-TOP:2px'>
									<SPAN style='WIDTH:120px;TEXT-ALIGN:right; vertical-align:top' >Activity:</SPAN> <SPAN style='WIDTH:283px;TEXT-ALIGN:left' id="Activity">
										---</SPAN>
								</TD>
							</TR>
							
							<TR>
								<TD align="center" style='PADDING-BOTTOM:2px;PADDING-TOP:2px'>
									<SPAN style='WIDTH:110px;TEXT-ALIGN:right'>Signed By:</SPAN>
									<ASP:LABEL ID="lblUserName" Runat="server" style='TEXT-ALIGN:left' Width="250"></ASP:LABEL>
								</TD>
							</TR>
							<TR>
								<TD align="center">
									<SPAN style='WIDTH:90px;TEXT-ALIGN:right'>User ID:</SPAN> <SPAN style='WIDTH:200px;TEXT-ALIGN:left'>
										<ASP:TEXTBOX ID="txtUserId" Runat="server" CssClass="TxtCls"  Width="0" Height="0" style='DISPLAY:none'></ASP:TEXTBOX><input type=password value='asasas' Class=TxtCls readonly=true ></SPAN>
									<br><SPAN style='WIDTH:90px;TEXT-ALIGN:right'>E-sign:</SPAN> <SPAN style='WIDTH:200px;TEXT-ALIGN:left'>
										<ASP:TEXTBOX ID="txtPassword"  Runat="server" CssClass="TxtCls" TextMode="Password" MaxLength="25"></ASP:TEXTBOX>
										<ASP:REQUIREDFIELDVALIDATOR ID="Requiredfieldvalidator3" ControlToValidate="txtPassword" Runat="server" ErrorMessage="Enter Password">*</ASP:REQUIREDFIELDVALIDATOR>
									</SPAN>
								</TD>
							</TR>
							<TR>
								<TD align="center" style='PADDING-BOTTOM:10px;PADDING-TOP:2px'>
									<ASP:BUTTON Runat="server" Text="OK" CssClass="ButCls" 
										ID="btnLogin" />
									<INPUT type="button" value="Cancel" class="ButCls" style="FONT-SIZE:8pt" onclick="fnCloseWin()" />
									<asp:TextBox id="Xval" runat="server" Width="0"  Height="0" style='DISPLAY:none;FONT-SIZE:8pt'></asp:TextBox>
						 		</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
			</fieldset>
			<ASP:TEXTBOX ID="IsValidLogin" Runat="server" Width="0" Height="0" style='DISPLAY:none'></ASP:TEXTBOX>
			<ASP:PANEL Visible="False" ID="Panel1" Runat="server">
				<DIV style="BORDER-RIGHT: #999999 1px solid; BORDER-TOP: #999999 1px solid; PADDING-LEFT: 5px; Z-INDEX: 1000; LEFT: 152px; BORDER-LEFT: #999999 1px solid; WIDTH: 180px; BORDER-BOTTOM: #999999 1px solid; POSITION: absolute; TOP: 15px; HEIGHT: 20px; BACKGROUND-COLOR: lightyellow">
					<TABLE height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
						<TR>
							<TD><IMG src="../Images/ExlamatrySmall.gif"></TD>
							<TD><SPAN style="PADDING-LEFT: 2px; FONT-WEIGHT: bold; FONT-SIZE: 8pt; COLOR: red; FONT-FAMILY: Arial">
									<ASP:LITERAL id="Literal1" Runat="server"></ASP:LITERAL></SPAN></TD>
						</TR>
					</TABLE>
					
				</DIV>
			</ASP:PANEL>
		</FORM>
		<SCRIPT language="javascript">
<!--
	function fnCloseWin(){
		opener.fnIsESignValid(false);		
		window.close()
	}
	
	function fnOnLoad(){
	    //Valid
	    if (document.getElementById('IsValidLogin').value == "1") {
	        var u = document.getElementById('txtUserId').value;
	        var p = document.getElementById('Xval').value;
		   opener.setpos(u,p);
			opener.fnIsESignValid(true);			
			window.close()
		}
//Wrong attempts exceeds
if (document.getElementById('IsValidLogin').value == "2") {
			opener.fnIsESignValid(false);
			//window.open('WrongAttempts.aspx?Type=ESign','CaliberLIMS')
			window.close()
			opener.fnOpenConAdm();
		}
Activity.innerText = opener.fnActivity();
document.getElementById('txtPassword').focus();
	}
	
	function fnRelogin(){
		window.open('../Login.aspx','CaliberLIMS')
		window.self.close();
	}
	
	// keycode for F11 function
	function cancelF11() {
		if (window.event && window.event.keyCode == 122) {
			alert("Key F11 is not Accessed")
			window.event.keyCode = 8;
		}	
	
		// keycode for backspace
		if (window.event && window.event.keyCode == 8) {
			window.event.cancelBubble = true;
			window.event.returnValue = false;
			return false;
		}
	}
	
	
	fnOnLoad()
	 	
		
		
	 
//-->
		</SCRIPT>
		<SCRIPT LANGUAGE="javascript" FOR="document" EVENT="onkeydown">
<!--
 cancelF11()
//-->
		</SCRIPT>
	</BODY>
</HTML>
