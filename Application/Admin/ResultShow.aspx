<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ResultShow.aspx.vb" Inherits="Admin.ResultShow1" %>
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
	.ARSCls { BORDER-RIGHT: 1px outset; PADDING-RIGHT: 5px; BORDER-TOP: 1px outset; PADDING-LEFT: 5px; FONT-SIZE: 10pt; BORDER-LEFT: 1px outset; COLOR: #333333; PADDING-TOP: 1px; BORDER-BOTTOM: 1px outset; FONT-FAMILY: verdana; TEXT-DECORATION: none }
	.ARSOCls { BORDER-RIGHT: 1px outset; PADDING-RIGHT: 5px; BORDER-TOP: 1px outset; PADDING-LEFT: 5px; FONT-SIZE: 10pt; BORDER-LEFT: 1px outset; COLOR: blue; PADDING-TOP: 1px; BORDER-BOTTOM: 1px outset; FONT-FAMILY: verdana; TEXT-DECORATION: underline }
		</style>
		<script language="javascript">
		function cls()
		{
		window.parent.parent.navigate("../Login.aspx");
		//window.parent.parent.close();
		}
		function WndBack()
		{
			window.history.go(-3);
		}
		function WndBack1()
		{
			window.history.go(-2);
		}
		</script>
		<script type="text/javascript" language="javascript">
		document.oncontextmenu=new Function("return false")
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout"    LEFTMARGIN="0" TOPMARGIN="0">
		<form id="Form1" method="post" runat="server">
			<TABLE height="90%" border="0" cellSpacing="0" cellPadding="0" width="70%" align=center>
				<TBODY>
					<TR>
						<TD style="FONT-SIZE:10pt; FONT-FAMILY:Ms Serif" vAlign="middle">&nbsp;
							<TABLE border="0" class="MainTable"  bordercolor="white" cellSpacing="0" cellPadding="0" Height="160" width="500"
								align="center"  style="BACKGROUND-COLOR:#ffffff">
								<TR  class="MainHead">
									<TD colspan="2" valign="middle" style="PADDING-LEFT:5px;FONT-SIZE:12pt;PADDING-BOTTOM:2px;COLOR:Black;PADDING-TOP:3px;FONT-FAMILY:verdana;LETTER-SPACING:1px; ">
										<B>Caliber System Manager
											<ASP:LABEL Runat="server" ID="lblTitle"></ASP:LABEL></B>
									</TD>
								</TR>
								<TR class="MainTD">
									<TD width="70" valign="middle" align="center" style="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-TOP:10px">
										&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="imgSaveImage" Runat="server"></asp:Image><BR>
										<BR>
									</TD>
									<TD style="FONT-SIZE:10pt; FONT-FAMILY:verdana">
										<TABLE border="0" cellSpacing="0" cellPadding="0" Height="100%" width="100%" align="center">
											<TR >
												<TD style="PADDING-RIGHT:10px;FONT-SIZE:12pt;COLOR:#003366;LETTER-SPACING:0px">
													 <asp:Label ID="lblSaveMessage" Runat="server"></asp:Label>
												</TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								<TR height="20px" class="MainFoot">
									<TD colspan="2" align="right" style="PADDING-RIGHT:5px; FONT-SIZE:10pt; PADDING-BOTTOM:3px; FONT-FAMILY:Verdana">
										<!--
										<A class="ARSCls" onMouseOver="className='ARSOCls'" onMouseOut="className='ARSCls'"
											Href="../Login.aspx" onclick="cls()">Home</A> -->
										<ASP:LITERAL ID="Literal3"  Runat="server"></ASP:LITERAL>
										<ASP:LITERAL ID="Literal1" Runat="server"></ASP:LITERAL>
										<ASP:LITERAL ID="Literal2" Runat="server" Visible="False"></ASP:LITERAL>
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR height="10%">
						<TD>&nbsp;</TD>
					</TR>
				</TBODY>
			</TABLE>
		</form>
	</body>
</HTML>
