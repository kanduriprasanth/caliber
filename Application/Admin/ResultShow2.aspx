<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ResultShow2.aspx.vb" Inherits="Admin.ResultShow2" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
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
		<script type="text/javascript" language="javascript">
		document.oncontextmenu=new Function("return false")
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout"   LEFTMARGIN="0" TOPMARGIN="0">
		<form id="Form1" method="post" runat="server">
			<uc1:Header id="Header2" runat="server"></uc1:Header>
			<TABLE WIDTH="70%" HEIGHT="90%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">
				<TR>
					<TD style="FONT-SIZE:10pt; FONT-FAMILY:Ms Serif" vAlign="middle">&nbsp;
						<TABLE border="0" class="MainTable" cellSpacing="0" cellPadding="0" Height="160" width="500"
							align="center"    >
							<TR  class="MainHead">
								<TD colspan="2" valign="middle" style="PADDING-LEFT:5px;FONT-SIZE:12pt;padding-bottom:2px;COLOR:black;PADDING-TOP:3px;FONT-FAMILY:verdana">
									<B>Caliber System Manager
										<ASP:LABEL Runat="server" ID="lblTitle"></ASP:LABEL></B>
								</TD>
							</TR>
							<TR class="MainTD">
								<TD width="70" valign="middle" align="center" style=" PADDING-RIGHT:10px;PADDING-LEFT:10px;WIDTH:179px;PADDING-TOP:10px">
									&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="imgSaveImage" Runat="server"></asp:Image><BR>
									<BR>
								</TD>
								<TD style="FONT-SIZE:10pt; FONT-FAMILY:verdana">
									<TABLE border="0" cellSpacing="0" cellPadding="0" Height="100%" width="100%" align="center">
										<TR>
											<TD style="PADDING-RIGHT:10px;FONT-SIZE:12pt;COLOR:#003366;LETTER-SPACING:0px">
												<asp:Label ID="lblSaveMessage" Runat="server"></asp:Label>
											</TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<TR height="20px" class="MainFoot">
								<TD colspan="2" align="right" style="PADDING-RIGHT:5px; FONT-SIZE:10pt; PADDING-BOTTOM:3px; FONT-FAMILY:Ms Serif">
									<A target="_parent" style='width:50px;' class="butcls" onMouseOver="this.className='ButexOCls'"
                                    onMouseOut="this.className='ButexCls'" Href="../Login.aspx">Home</A>
									<ASP:LITERAL ID="Literal1" Runat="server"></ASP:LITERAL>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR height="10%">
					<TD colspan="3">&nbsp;</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
