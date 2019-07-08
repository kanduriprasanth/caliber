<%@ Page Language="vb" AutoEventWireup="false" Codebehind="SessionExpiry.aspx.vb" Inherits="Admin.SessionExpiry" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>ResultShow</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<%--<LINK REL="stylesheet" TYPE="text/css" HREF="CUSTOM.CSS">--%>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<style>
	.ARSCls { BORDER-RIGHT: 1px outset;   PADDING-RIGHT: 5px; BORDER-TOP: 1px outset; PADDING-LEFT: 5px; FONT-SIZE: 10pt; PADDING-BOTTOM: 3px; BORDER-LEFT: 1px outset; COLOR: #333333; PADDING-TOP: 1px; BORDER-BOTTOM: 1px outset; FONT-FAMILY: verdana; TEXT-DECORATION: none }
	.ARSOCls { BORDER-RIGHT: 1px outset; PADDING-RIGHT: 5px; BORDER-TOP: 1px outset; PADDING-LEFT: 5px; FONT-SIZE: 10pt; PADDING-BOTTOM: 3px; BORDER-LEFT: 1px outset; COLOR: blue; PADDING-TOP: 1px; BORDER-BOTTOM: 1px outset; FONT-FAMILY: verdana; TEXT-DECORATION: underline }
		</style>
		<script language=javascript>
		function cls()
		{
		window.parent.parent.navigate("../Login.aspx");
		//window.parent.parent.close();
		}
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout"   LEFTMARGIN="0" TOPMARGIN="0">
		<form id="Form1" method="post" runat="server">
			<TABLE height="90%" border="0"  align=center cellSpacing="0" cellPadding="0" width="70%">
				<TR>
					<TD style="FONT-SIZE: 10pt; FONT-FAMILY: Verdana" vAlign="middle">&nbsp;
						<TABLE class="MainTable"    
							height="160" cellSpacing="0" cellPadding="0" width="500" align="center" bgColor="#ffffff"
							border="0">
							<TR class="MainHead">
								<TD style="PADDING-LEFT: 5px; FONT-SIZE: 12pt; PADDING-BOTTOM: 2px; COLOR: Black; PADDING-TOP: 3px; FONT-FAMILY: Verdana"
									vAlign="middle" colSpan="2"><B>Caliber System Manager</B> <SPAN style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-SIZE: 12pt; LETTER-SPACING: 0pt">Session</SPAN>
								</TD>
							</TR>
							<TR class="MainTD">
								<TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-TOP: 10px" vAlign="middle"
									align="center" width="70">&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:Image id="imgSaveImage" Runat="server"></asp:Image><BR>
									<BR>
								</TD>
								<TD style="FONT-SIZE: 10pt; FONT-FAMILY: verdana">
									<TABLE height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
										<TR>
											<TD style="PADDING-RIGHT: 10px; FONT-SIZE: 12pt; COLOR: #003366; LETTER-SPACING: 0px">
												<asp:Label id="lblSaveMessage" Runat="server"></asp:Label></TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<TR height="20px" class="MainFoot">
								<TD class="maintd1" align="right" colSpan="2">
									<A class="butcls" style="width:80px;"  Href="../Login.aspx" onclick="cls()">Re-Login</A>
									<!--		
									<asp:Button id="Button1" CssClass="hiderow" onMouseOver="this.className='ButOCls'"
							onmouseout="this.className='ButCls'" Width="60" runat="server" Text="Re-Login" Height="22px"></asp:Button> -->
							</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR height="10%">
					<TD>&nbsp;</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
