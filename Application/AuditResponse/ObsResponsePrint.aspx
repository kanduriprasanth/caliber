<%@ Register TagPrefix="uc3" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx"  %>
<%@ Register TagPrefix="uc2" TagName="Footer" Src="../CaliberCommonCtrls/ReportFooter.ascx"  %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx"  %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ObsResponsePrint.aspx.vb" Inherits="AuditResponse.ObsResponsePrint" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>ObsResponsePrint</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE cellSpacing="1" cellPadding="1" width="100%" align="center" border="3">
				<TR>
					<TD><uc1:header id="Header1" runat="server"></uc1:header></TD>
				<TR>
					<TD><asp:panel id="HeaderDiv" runat="server" EnableViewState="False" HorizontalAlign="Left" Width="720">
							<asp:Table id="H1" style="FONT-SIZE: 10px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="100%"
								CELLPADDING="1" CELLSPACING="1" BorderWidth="0" Runat="server"></asp:Table>
							<asp:Table id="ResTab" Width="100%" Runat="server" BackColor="#ffffff" horizontalalign="center"
								CellPadding="0" CellSpacing="0" Border="1" BorderColor="black"></asp:Table>
						</asp:panel><asp:panel id="BodyDiv" runat="server" EnableViewState="False" HorizontalAlign="Left" Width="720">
							<asp:Table id="DisTable" Width="100%" Runat="server" BackColor="#ffffff" horizontalalign="center"
								CellPadding="0" CellSpacing="0" Border="1" BorderColor="black"></asp:Table>
							<asp:Table id="UsgTab" Width="100%" Runat="server" BackColor="#ffffff" horizontalalign="center"
								CellPadding="0" CellSpacing="0" Border="1" BorderColor="black"></asp:Table>
						</asp:panel><asp:panel id="FooterDiv" runat="server" EnableViewState="False" HorizontalAlign="Left" Width="720">
							<asp:Table id="F2" style="FONT-SIZE: 12px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="720"
								CELLPADDING="1" CELLSPACING="1" BorderWidth="0" Runat="server"></asp:Table>
						</asp:panel><asp:textbox id="HeaderObjIDs" style="VISIBILITY: hidden" runat="server" text="H1" width="0"
							height="0"></asp:textbox><asp:textbox id="HeaderObjTypes" style="VISIBILITY: hidden" runat="server" text="TN" width="0"
							height="0"></asp:textbox><asp:textbox id="BodyObjIDs" style="VISIBILITY: hidden" runat="server" text="" width="0" height="0"></asp:textbox><asp:textbox id="BodyObjTypes" style="VISIBILITY: hidden" runat="server" text="" width="0" height="0"></asp:textbox><asp:textbox id="BodyObjTabHeadRows" style="VISIBILITY: hidden" runat="server" text="" width="0"
							height="0"></asp:textbox><asp:textbox id="HdrObjTabHeadRows" style="VISIBILITY: hidden" runat="server" text="" width="0"
							height="0"></asp:textbox><asp:textbox id="FooterObjIDs" style="VISIBILITY: hidden" runat="server" text="F2" width="0"
							height="0"></asp:textbox><asp:textbox id="FooterObjTypes" style="VISIBILITY: hidden" runat="server" text="TN" width="0"
							height="0"></asp:textbox></TD>
				</TR>
				<TR>
					<TD><uc2:footer id="Footer1" runat="server"></uc2:footer></TD>
				</TR>
				<TR>
					<TD style="TEXT-ALIGN: center"><uc3:caliberprintctrl id="CaliberPrintCtrl1" runat="server"></uc3:caliberprintctrl></TD>
				</TR>
			</TABLE>
		</form>
		<script language="javascript">
	
	function ChkReasons(){
	    var Reasons = ''//document.getElementById('ReasonsTxt').value
	    var AskReasons = 0//document.getElementById('AskReasonsTxt').value
	   if(AskReasons==1 && Reasons==''){
	   alert("Enter Reasons For Other Print")
	   return(false);
	   }
       return(true);
}
isWorkSheetPrint=1;
	
function fnPrintConfirm()
	{   
		
	 	var pageURL="WSPConfirm.aspx"
	    var features = "height=20,width=60,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=350,left=150"
	    window.showModalDialog( pageURL ,'Caliber LIMS','dialogheight=6;dialogwidth=15;help=0;status=0;scroll=0;edge=raised;')		
	    window.history.back()			
	}
	
 //-->
		</script>
	</body>
</HTML>
