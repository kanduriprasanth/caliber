<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RegParticulars.aspx.vb" Inherits="IssueTypeConfig.RegParticulars" %>
<%@ Register TagPrefix="uc3" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx"  %>
<%@ Register TagPrefix="uc2" TagName="Footer" Src="../CaliberCommonCtrls/ReportFooter.ascx"  %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx"  %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head runat="server">
    <title>Issue Report</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<script language="javascript" src="../CaliberCommonCtrls/Reports.js"></script>
</head>
<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE WIDTH="90%" BORDER="1" CELLSPACING="1" CELLPADDING="1" align="center">
				<TR>
					<TD>
						<uc1:Header id="Header1" runat="server"></uc1:Header>
					</TD>
				<TR>
					<TD>
						<asp:Panel id="HeaderDiv" runat="server" Width="720" HorizontalAlign="Left" EnableViewState="False">
							<asp:Table id="H1" style="FONT-SIZE: 10px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="720"
								CELLPADDING="1" CELLSPACING="1" BorderWidth="0" Runat="server">
							</asp:Table>
						</asp:Panel>
						<asp:Panel id="BodyDiv" runat="server" Width="900" HorizontalAlign="Left" EnableViewState="False">
							<asp:Table id="DisTable" Width="100%" Runat="server" BackColor="#ffffff" horizontalalign="center"
								CellPadding="0" CellSpacing="0" Border="1" BorderColor="black"></asp:Table><br>
								
							<asp:Table id="DetailsTable" Width="100%" Runat="server" BackColor="#ffffff" horizontalalign="center"
								CellPadding="0" CellSpacing="0" Border="1"></asp:Table><br>
							<asp:Table id="ResultTable" Width="100%" Runat="server" BackColor="#ffffff" horizontalalign="center"
								CellPadding="0" CellSpacing="0" Border="1" BorderColor="black"></asp:Table>
						</asp:Panel>
						<asp:Panel id="FooterDiv" runat="server" Width="720" HorizontalAlign="Left"
							EnableViewState="False">
															
							<br>
							<asp:Table id="F3" style="FONT-SIZE: 10px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="720"
								CELLPADDING="1" CELLSPACING="1" BorderWidth="0" Runat="server">
							</asp:Table>
						</asp:Panel>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="HeaderObjIDs"
							text="H1"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="HeaderObjTypes"
							text="TN"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="BodyObjIDs" text="DisTable,DetailsTable,ResultTable"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="BodyObjTypes"
							text="TN,TN,TN"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="BodyObjTabHeadRows"
							text="1,1"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="FooterObjIDs"
							text="F3"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="FooterObjTypes"
							text="TN,TN"></asp:TextBox>
					</TD>
				</TR>
				<TR>
					<TD>
						<uc2:Footer id="Footer1" runat="server"></uc2:Footer>
					</TD>
				</TR>
				<TR>
					<TD>
						<uc3:CaliberPrintCtrl id="CaliberPrintCtrl1" runat="server"></uc3:CaliberPrintCtrl>
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
	<script language="javascript">
	 isWorkSheetPrint=1;
	
function fnPrintConfirm()
	{   
		
	 	var pageURL="PrintConfirm.aspx"
	  var features = "height=20,width=60,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=350,left=150"
	 window.showModalDialog( pageURL ,'Caliber LIMS','dialogheight=6;dialogwidth=15;help=0;status=0;scroll=0;edge=raised;')		
			 			
	}
	function ChkReasons()
	{
	return true;
	}
	
 //-->
		</script>
</html>
