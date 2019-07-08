<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DisplayMessage.aspx.vb" Inherits="QAMS300BL.DisplayMessage" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Strict//EN">
<HTML>
	<HEAD>
		<title>DisplayMessage</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="Training/Module.CSS">
		<script language="javascript">
			function GoBack(){
				window.history.back();
			}
				function GoHome(){
				parent.parent.location.href="MainPage.aspx";
			}
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" cellSpacing="0" align="center" border=1 width="50%">
				<TR class="thead">
					<TD align="left" colSpan="2" class="Tdhead">&nbsp;Caliber TRIMS
						<asp:Label id="Label2" runat="server"></asp:Label></TD>
				</TR>
				<TR>
					<TD width="12%" class="TdBody">&nbsp;
						<asp:Image id="img1" Runat="server"></asp:Image></TD>
					<TD align="center" width="85%" class="TdBody">
						<asp:Label id="Label1" runat="server">Label</asp:Label></TD>
				</TR>
				<tr>
					<TD align="center" colSpan="4" class="TdBody">
						<input type="button" ID="btnHome" Value="Home" onmouseover="className='BMover'" onmouseout="className='BMout'"
							style="WIDTH: 86px; HEIGHT: 22px" class="BMout" OnClick="GoHome()">&nbsp;<input type="button" Value="Back" onmouseover="className='BMover'" onmouseout="className='BMout'"
							style="WIDTH: 86px; HEIGHT: 22px" class="BMout" OnClick="GoBack()">
					</TD>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
