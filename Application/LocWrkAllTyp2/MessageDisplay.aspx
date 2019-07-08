<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MessageDisplay.aspx.vb" Inherits="LocWrkAllTyp2.MessageDisplay" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>MessageDisplay</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK REL="stylesheet" TYPE="text/css" HREF="CUSTOM.CSS">
		<style>
	.ARSCls { BORDER-RIGHT: 1px outset; PADDING-RIGHT: 5px; BORDER-TOP: 1px outset; PADDING-LEFT: 5px; FONT-SIZE: 10pt; BORDER-LEFT: 1px outset; COLOR: #333333; PADDING-TOP: 1px; BORDER-BOTTOM: 1px outset; FONT-FAMILY: Ms Serif; TEXT-DECORATION: none }
	.ARSOCls { BORDER-RIGHT: 1px outset; PADDING-RIGHT: 5px; BORDER-TOP: 1px outset; PADDING-LEFT: 5px; FONT-SIZE: 10pt; BORDER-LEFT: 1px outset; COLOR: blue; PADDING-TOP: 1px; BORDER-BOTTOM: 1px outset; FONT-FAMILY: Ms Serif; TEXT-DECORATION: underline }
		</style>
		<script language="javascript">
		function cls()
		{
		window.parent.parent.navigate("../Login.aspx");
		//window.parent.parent.close();
		}
		function WndBack()
		{
			if(<%=request.QueryString("TT")%>==1)
			window.navigate("Trn.aspx?TT=1")
			else
			window.navigate("ModifyList.aspx")
		}
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout" style='BACKGROUND-COLOR:#8f8f8f' LEFTMARGIN="0" TOPMARGIN="0">
		<form id="Form1" method="post" runat="server">
			<TABLE height="100%" border="0" cellSpacing="0" cellPadding="0" width="100%" align="center">
				<TBODY>
					<TR>
						<TD style="FONT-SIZE:10pt; FONT-FAMILY:Ms Serif" vAlign="middle">&nbsp;
							<TABLE border="0" class="MainTable" cellSpacing="0" cellPadding="0" Height="160" width="500"
								align="center" bgColor="#ffffff" style="BORDER-RIGHT:#000000 2px solid; BORDER-TOP:1px; BORDER-LEFT:1px; BORDER-BOTTOM:#000000 2px solid; BACKGROUND-COLOR:#ffffff">
								<TR height="20" style="BACKGROUND-COLOR:#3c6b89">
									<TD colspan="2" valign="middle" style="PADDING-LEFT:5px;FONT-SIZE:12pt;PADDING-BOTTOM:2px;COLOR:yellow;PADDING-TOP:3px;FONT-FAMILY:Ms Serif;LETTER-SPACING:1px;HEIGHT:24px">
										<B>Caliber System Manager
											<ASP:LABEL Runat="server" ID="lblTitle"></ASP:LABEL></B>
									</TD>
								</TR>
								<TR style="BACKGROUND-COLOR:#ffffff">
									<TD width="70" valign="middle" align="center" style="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-TOP:10px">
										&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="imgSaveImage" Runat="server"></asp:Image><BR>
										<BR>
									</TD>
									<TD style="FONT-SIZE:10pt; FONT-FAMILY:Ms Serif">
										<TABLE border="0" cellSpacing="0" cellPadding="0" Height="100%" width="100%" align="center">
											<TR>
												<TD style="PADDING-RIGHT:10px;FONT-SIZE:12pt;COLOR:#003366;LETTER-SPACING:0px">
													<asp:Label ID="lblSaveMessage" Runat="server"></asp:Label>
												</TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								<TR style="BACKGROUND-COLOR:#ffffff">
									<TD colspan="2" align="right" style="PADDING-RIGHT:5px; FONT-SIZE:10pt; PADDING-BOTTOM:3px; FONT-FAMILY:Ms Serif">
										<!--
										<A class="ARSCls" onMouseOver="className='ARSOCls'" onMouseOut="className='ARSCls'"
											Href="../Login.aspx" onclick="cls()">Home</A> -->
										<ASP:LITERAL ID="Literal3" Runat="server"></ASP:LITERAL>
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
