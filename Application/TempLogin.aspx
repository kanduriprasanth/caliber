<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TempLogin.aspx.vb" Inherits="QAMS300BL.TempLogin" %>
<html>
<HEAD>
		<title>Caliber QAMS</title>
	 
			<script language="JavaScript" src="JScript/DisableRightClick.js"><!--// --> </script>
			<script language="JavaScript" src="JScript/DisableViewSource.js"><!--// --> </script>
			<LINK REL="stylesheet" TYPE="text/css" HREF=>
				<style> 
			A {PADDING-RIGHT: 5px;PADDING-LEFT: 5px; FONT-SIZE:8pt;PADDING-BOTTOM: 4px;PADDING-TOP: 1px;FONT-FAMILY:Tahoma,Arial;Color:#000000; HEIGHT: 20px; BACKGROUND-COLOR:#EDF0FF; TEXT-DECORATION: none;border-style:Solid;border-width:1px;Border-Color:#EDF0FF;} 
			A:hover{PADDING-RIGHT: 5px;PADDING-LEFT: 5px; FONT-SIZE:8pt;PADDING-BOTTOM: 4px;PADDING-TOP: 1px;FONT-FAMILY:Tahoma,Arial;Color:#000000; HEIGHT: 20px; BACKGROUND-COLOR:#9FAFE2; TEXT-DECORATION: none;border-style:Solid;border-width:1px;Border-Color:#000000;}
			BODY{Background-Color:"#ffffff" }
			</style>
				<SCRIPT language="javascript">
			//window.navigate("Admin/syslogin.aspx")
			//if(window.name!="CaliberLIMS")
			//window.navigate("index.aspx")
				</SCRIPT>
	</HEAD>
	<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="document.getElementById('txtUserId').focus()">
		<form runat="server" method="post" id="Form">
			<TABLE border="0" align="center" cellspacing="0" cellpadding="0" width="100%" height="100%">
				<TR>
					<TD align="center" valign="middle">
						<TABLE bgcolor="#CED7FF" border="0" cellspacing="0" cellpadding="2" width="500" height="300"
							style="BORDER-RIGHT:#000000 1px solid; BORDER-TOP:#000000 1px solid; BORDER-LEFT:#000000 1px solid; BORDER-BOTTOM:#000000 1px solid">
							<tr>
								<TD align="center" style='Height:70px;BACKGROUND-COLOR:#EDF0FF'>
									<SPAN Style="FONT-WEIGHT:bold;FONT-SIZE:22pt;COLOR:teal;FONT-FAMILY:Century Gothic,Georgia,Garamond;LETTER-SPACING:0px">
										<I>Caliber</I></SPAN>
									<SPAN style="FONT-WEIGHT:bold;FONT-SIZE:20pt;COLOR:#333333;FONT-FAMILY:Georgia,Garamond;LETTER-SPACING:1px;FONT-VARIANT:small-caps">LIMS</SPAN><BR>
									<Span Style="FONT-SIZE:9pt; FONT-FAMILY:Tahoma,Times New Roman; LETTER-SPACING:1px">
									<B>T</B>he <B>L</B>aboratory <B>I</B>nformation <B>M</B>anagement <B>S</B>ystem</Span><br>
									<SPAN Style="FONT-SIZE:8pt; FONT-FAMILY:Tahoma,Times New Roman; LETTER-SPACING:1px">Licensed To:</SPAN>
									<SPAN Style="FONT-SIZE:8pt; FONT-FAMILY:Tahoma,Times New Roman; LETTER-SPACING:1px">Dabur Pharma Ltd.</SPAN>
								</TD>
							</tr>
							<TR>
								<TD valign="middle" align="center" style="BACKGROUND-COLOR:#7C89B5;">
									<TABLE border="0" cellspacing="0" cellpadding="0" WIDTH="300" style="WIDTH:300px;">
										<TR>
											<TD align="center">
												<SPAN Style='Color:#FFFFFF;font-weight:bold;font-family:Tahoma,Arial;font-size:8pt;'>Login To Caliber QAMS</SPAN>
											</TD>
										</TR>
										
										<TR>
											<TD>
												<SPAN Style='Color:#FFFFFF;font-family:Tahoma,Arial;font-size:8pt;text-align:right;width:100px;'>User ID:</SPAN>
												<SPAN Style='Color:#FFFFFF;font-family:Tahoma,Arial;font-size:8pt;'>
													<asp:TextBox TextMode="Password" CssClass="txtCls" Runat="server" maxlength="25" ID="txtUserId"
														NAME="txtUserId" title="Enter User ID"></asp:TextBox>
													<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="Enter User ID" ControlToValidate="txtUserId"
														ForeColor="Yellow">*</asp:RequiredFieldValidator>
												</SPAN>
											</TD>
										</TR>
										<TR>
											<TD>
												<SPAN Style='Color:#FFFFFF;font-family:Tahoma,Arial;font-size:8pt;text-align:right;width:100px;'>Password:</SPAN>
												<SPAN Style='Color:#FFFFFF;font-family:Tahoma,Arial;font-size:8pt;'>
													<asp:TextBox TextMode="Password" CssClass="txtCls" Runat="server" maxlength="25" ID="txtPassword"
														NAME="txtPassword" title="Enter Password"></asp:TextBox>
													<asp:RequiredFieldValidator id="Requiredfieldvalidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtPassword"
														ForeColor="Yellow">*</asp:RequiredFieldValidator>
												</SPAN>
											</TD>
										</TR>
										
										<TR>
											<TD style='Padding-Top:2px;'>
												<SPAN Style='Color:#FFFFFF;bold;font-family:Tahoma,Arial;font-size:8px;text-align:right;width:105px;'></SPAN>
												<SPAN Style='Color:#FFFFFF;font-family:Tahoma,Arial;font-size:8pt;'>
													<asp:Button Text='Login' Runat="server" id="btnLogin" name="btnLogin" runat="server" style='WIDTH:50px;font-family:Tahoma,Arial;font-size:8pt;border-width:2px;'></asp:Button>
													<INPUT type="button" value='Cancel' onclick="window.self.close()" style='WIDTH:50px;font-family:Tahoma,Arial;font-size:8pt;border-width:2px;'>
												</SPAN>
											</TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<TR>
								<TD valign="middle" align="center" style="BACKGROUND-COLOR:#772200;">
									<ASP:LABEL id="lblErrorDisplay" runat="server" ForeColor="#33ff00" style='font-family:Tahoma,Arial;font-size:8pt;'></ASP:LABEL>
								</TD>
							</TR>
							<TR style="HEIGHT:60px;BACKGROUND-COLOR:#EDF0FF">
								<TD align="center">
									<A href="Admin/UserSignUp.aspx"><IMG Src="Images/SignIn.gif" border="0"> New User 
										Sign Up</A> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<A href="Admin/ContactAdmin.aspx"><IMG Src="Images/Contact.gif" height="19" width="19" border="0">
										Contact System Manager</A>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
			<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
		</form>
		<SCRIPT language="javascript">
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
	function cancelBack() {
	
		//If tried to go back using back space from the document.
		if (window.event && window.event.keyCode == 8 && window.event.srcElement.name!="txtUserId" && window.event.srcElement.name!="txtPassword") {
			alert("Not allowed")
			window.event.cancelBubble = true;
			window.event.returnValue = false;
			return false;
			//window.close()
			
		}
		//If tried to go back using combination of "Alt" key
		if (window.event && window.event.keyCode == 18)
		{
			alert("Not allowed")
			window.event.cancelBubble = true;
			window.event.returnValue = false;
			return false;
		}
	}
	
//-->
		</SCRIPT>
		<SCRIPT LANGUAGE="javascript" FOR="document" EVENT="onkeydown">
<!--
 cancelBack()
 cancelF11()
//-->
		</SCRIPT>
	</body>
</HTML>