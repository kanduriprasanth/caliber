<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ResultShow.aspx.vb" Inherits="QAMS300BL.ResultShow" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Strict//EN">
<HTML>
	<HEAD>
		<title>ResultShow</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<style>
.THead
{
	padding-left: 2px;
	font-size: 11pt;
	color: white;
	font-family: Times New Roman ;
	background-color:8aa6cc;
}
.TDHead{Color:white;Background-color:#8495CD; text-align:center;  Height:25px;font-family:Georgia,Garamond;font-size:10pt;}
.TDBody{Background-Color:#E3E1D4;font-family:Tahoma,Microsoft Sans Serif,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px;}
.BMOut{Background-color:#8495CD;Color:White;Border-style:outset;border-width:1px;cursor:hand;font-family:Arial;font-size:9pt;}
.BMOver{Background-color:Menu;Color:Black;Border-style:outset;border-width:1px;cursor:hand;font-family:Arial;font-size:9pt;}

		</style>
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
			<TABLE align="center" cellspacing="0" style="WIDTH: 50%" border="1">
				<TR class="thead">
					<TD colSpan="2" align="left" class="tdhead">&nbsp;Caliber System Manager
						<asp:Label id="Label2" runat="server"></asp:Label></TD>
				</TR>
				<TR>
					<TD width="12%" class="tdbody">&nbsp;<asp:Image ID="img1" Runat="server" Width="100%"></asp:Image></TD>
					<TD width="80%" class="tdbody" align="center"><asp:Label id="Label1" runat="server">Label</asp:Label></TD>
				</TR>
				<TR>
					<TD align="center" colSpan="4" class="tdbody">
						<input type="button" ID="btnHome" Value="Home" onmouseover="className='BMover'" onmouseout="className='BMout'"
							class="BMout" OnClick="GoHome()" style="WIDTH: 80px">&nbsp;<asp:Button id="btnNext" runat="server" Text="Next" onmouseover="className='BMover'" onmouseout="className='BMout'"
							CssClass="Bmout" Width="80px"></asp:Button>
					</TD>
				</TR>
			</TABLE>
			&nbsp;
		</form>
	</body>
</HTML>
