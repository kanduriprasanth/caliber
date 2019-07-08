<%@ Page Language="vb" AutoEventWireup="false" Codebehind="SessionBuilder.aspx.vb" Inherits="QAMS300BL.SessionBuilder" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Strict//EN">
<HTML>
	<HEAD>
		<title>Session Re-Build</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<link rel="stylesheet" href="TRIMS.css">
	</HEAD>
	<body onload="fnOnLoad()" MS_POSITIONING="GridLayout" leftmargin="50" bottommargin="5" style="background-image:url(IMAGES/login_bg.png);"  >
		<form id="Form1" method="post" runat="server">
				<fieldset style="FONT-SIZE: 9pt;  FONT-FAMILY: verdana; LETTER-SPACING: 0px;" >
				<legend >
					<b>Session Re-Build</b></legend>
				<asp:table id="Table2" CELLPADDING="0" style='background-image: url(IMAGES/tabon_new.png);' CELLSPACING="0" BorderWidth="0" HorizontalAlign="center"
					Runat="server" Width="100%">
					<asp:TableRow>
						<asp:TableCell>
							<asp:table id="Table1" Width="100%"  Runat="server" CELLPADDING="0" cellspacing="1" HorizontalAlign="center">
								<asp:TableRow Height="30">
									<asp:TableCell colspan="2">&nbsp;</asp:TableCell>
								</asp:TableRow>
							</asp:table>
							<asp:table id="Table3" Width="100%" Runat="server" CELLPADDING="0" cellspacing="1" HorizontalAlign="center"
								>
								<asp:TableRow Height="20">
									<asp:TableCell ID="UserIDTd" style="Color:black;font-family:verdana;font-size:8pt;Padding-Left:20px;Padding-Top:2px;Padding-Bottom:2px;"
										Width="70">
										User ID</asp:TableCell>
									<asp:TableCell>
										<asp:TextBox id="UserIDTxt"   runat="server" TabIndex="1" CssClass="TxtCls"   TextMode="Password"
											maxlength="25" Width="130" style="BORDER-RIGHT:  #003366 1px solid; BORDER-TOP:  #003366 1px solid; FONT-SIZE: 8pt; BORDER-LEFT:  #003366 1px solid; COLOR: #000000; BORDER-BOTTOM:  #003366 1px solid; font-family:Tahoma,Arial; "></asp:TextBox>
										<asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" ForeColor="Red" ControlToValidate="UserIDTxt"
											ErrorMessage="Enter User ID">*</asp:requiredfieldvalidator>
									</asp:TableCell>
								</asp:TableRow>
								<asp:TableRow Height="20">
									<asp:TableCell ID="PswTd" style="Color:black;font-family:verdana;font-size:8pt;Padding-Left:20px;Padding-Top:2px;Padding-Bottom:2px;"
										Width="70">
										Password</asp:TableCell>
									<asp:TableCell>
										<asp:TextBox id="PswTxt"   runat="server" TabIndex="2" CssClass="TxtCls" TextMode="Password" maxlength="25"
											Width="130" style="BORDER-RIGHT:  #003366 1px solid; BORDER-TOP:  #003366 1px solid; FONT-SIZE: 8pt; BORDER-LEFT:  #003366 1px solid; COLOR: #000000; BORDER-BOTTOM:  #003366 1px solid; font-family:Tahoma,Arial;"></asp:TextBox>
										<asp:requiredfieldvalidator id="Requiredfieldvalidator2" runat="server" ForeColor="Red" ControlToValidate="PswTxt"
											ErrorMessage="Enter Password">*</asp:requiredfieldvalidator>
									</asp:TableCell>
								</asp:TableRow>
								
								<asp:TableRow>
									<asp:TableCell>&nbsp;</asp:TableCell>
									<asp:TableCell>
									<br />
										<asp:Button id="LoginBtn" runat="server" Text="Login" TabIndex="3"   onMouseOver="this.className='ButOCls'" CssClass="ButCls" onMouseOut="this.className='ButCls'"></asp:Button>
										
										<asp:Button id="CancelBtn" runat="server" Text="Cancel" TabIndex="4" onMouseOver="this.className='ButOCls'" CssClass="ButCls" onMouseOut="this.className='ButCls'" CausesValidation="false"></asp:Button>
									</asp:TableCell>
								</asp:TableRow>
								<asp:TableRow Height="10">
									<asp:TableCell>&nbsp;</asp:TableCell>
									<asp:TableCell>
										<asp:Label id="Label1" runat="server" style="font-family:Verdana,Arial;font-size:9pt;color:Red;"></asp:Label>
									</asp:TableCell>
								</asp:TableRow>
							</asp:table>
						</asp:TableCell>
					</asp:TableRow>
				</asp:table>
			</fieldset>
			<asp:validationsummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:validationsummary>
			<ASP:TEXTBOX id="IsValidLogin" style="DISPLAY: none" Runat="server" Width="0" Height="0"></ASP:TEXTBOX>
		</form>
		<script language="javascript">
<!--
	
//
function fnOnLoad(){
	document.getElementById('UserIDTxt').focus();	
	if(document.getElementById('IsValidLogin').value=="1"){		 				
	    window.self.close()
		}
	}
	
	function CloseWin(){
	window.self.close()
	}
//-->
		</script>
		
	</body>
</HTML>
