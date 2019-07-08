<%@ Page Language="vb" AutoEventWireup="false" Codebehind="PopUpSessionExpiry.aspx.vb" Inherits="QAMS300BL.WebForm1" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Strict//EN">
<HTML>
	<HEAD>
		<title>Session Expired</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
          <TABLE height="90%" border="0"  align=center cellSpacing="0" cellPadding="0" width="70%">
				<TR>
					<TD style="FONT-SIZE: 10pt; FONT-FAMILY: Verdana" vAlign="middle">&nbsp;
						<TABLE class="MainTable"    
							height="160" cellSpacing="0" cellPadding="0" width="500" align="center" bgColor="#ffffff"
							border="0">
							<TR    class="MainHead">
								<TD style="PADDING-LEFT: 5px; FONT-SIZE: 12pt; PADDING-BOTTOM: 2px; COLOR: Black; PADDING-TOP: 3px; FONT-FAMILY: Verdana"
									vAlign="middle" colSpan="2"><B>Session Expired</B> <SPAN style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-SIZE: 12pt; LETTER-SPACING: 0pt"></SPAN>
								</TD>
							</TR>
							<TR  class="MainTD" >
								<TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-TOP: 10px"  
									   >&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:Image id="imgSaveImage" Runat="server" ImageUrl="IMAGES/critical.gif" ></asp:Image>
									<div align="right">
										<asp:Label runat="server" ID="relogin" Text="Re-Login"   CssClass="MainTd"></asp:Label>						 
										</div>
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
							<TR class="MainFoot" height="25">
								<TD class="maintd1"
									align="right" colSpan="2">
									
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
