<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SlfInsIntimtnFrm.aspx.vb" Inherits="AuditReports.SlfInsIntimtnFrm" %>

<%@ Register TagPrefix="uc3" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx"  %>
<%@ Register TagPrefix="uc2" TagName="Footer" Src="../CaliberCommonCtrls/ReportFooter.ascx"  %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
   
</head>
<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE  BORDER="1" CELLSPACING="1" CELLPADDING="1" align="center" style="WIDTH: 900px; HEIGHT: 334px">
				<TR>
					<TD>
						<uc1:Header id="Header1" runat="server"></uc1:Header>
					</TD>
				<TR>
					<TD>
						<asp:Panel id="HeaderDiv" runat="server" Width="900" HorizontalAlign="Left" EnableViewState="False">
							<asp:Label id="H1" style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; FONT-SIZE: 12px; PADDING-BOTTOM: 0px; MARGIN-LEFT: 0px; PADDING-TOP: 0px; BACKGROUND-COLOR: white; TEXT-ALIGN: center; font-bold: true"
								Width="900" Runat="server">&nbsp;<br>&nbsp;</asp:Label>
							<asp:Table id="H2" style="FONT-SIZE: 10px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="900"
								Runat="server" CELLPADDING="1" CELLSPACING="1" BorderWidth="0">
								<asp:TableRow>
									<asp:TableCell HorizontalAlign="Center" style="Width:900px;font-size:16;font-weight:bold;Padding:0px;Background-color:white;text-align:center">Self – Inspection Intimation</asp:TableCell>
								</asp:TableRow>
							</asp:Table>
						</asp:Panel>
						<asp:Panel id="BodyDiv" runat="server" Width="900" HorizontalAlign="Left" EnableViewState="False">
							<asp:Table id="ClbTab" Width="900" Runat="server" BackColor="#ffffff" horizontalalign="center"
								CellPadding="0" CellSpacing="0" Border="1" BorderColor="black"></asp:Table>
						</asp:Panel>
						<asp:Panel id="FooterDiv" runat="server" Width="900" HorizontalAlign="Left" EnableViewState="False">
							<asp:Label id="F1" style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; FONT-SIZE: 14px; PADDING-BOTTOM: 0px; MARGIN-LEFT: 0px; PADDING-TOP: 0px; BACKGROUND-COLOR: white; TEXT-ALIGN: center; font-bold: true"
								Width="712px" Runat="server"></asp:Label>
							<asp:Table id="F2" style="FONT-SIZE: 12px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="900"
								Runat="server" CELLPADDING="1" CELLSPACING="1" BorderWidth="0"></asp:Table>
						</asp:Panel>
						<asp:textbox id="HeaderObjIDs" style="VISIBILITY: hidden" runat="server" text="H1,H2" width="0"
							height="0"></asp:textbox><asp:textbox id="HeaderObjTypes" style="VISIBILITY: hidden" runat="server" text="P,TN" width="0"
							height="0"></asp:textbox><asp:textbox id="BodyObjIDs" style="VISIBILITY: hidden" runat="server" text="ClbTab" width="0"
							height="0"></asp:textbox><asp:textbox id="BodyObjTypes" style="VISIBILITY: hidden" runat="server" text="TN" width="0"
							height="0"></asp:textbox><asp:textbox id="BodyObjTabHeadRows" style="VISIBILITY: hidden" runat="server" text="1,1" width="0"
							height="0"></asp:textbox><asp:textbox id="FooterObjIDs" style="VISIBILITY: hidden" runat="server" text="F1,F2" width="0"
							height="0"></asp:textbox><asp:textbox id="FooterObjTypes" style="VISIBILITY: hidden" runat="server" text="P,TN" width="0"
							height="0"></asp:textbox></TD>
				</TR>
				<TR>
					<TD>
						<%--<uc2:Footer id="Footer1" runat="server"></uc2:Footer>--%>
					</TD>
				</TR>
				<TR>
					<TD align=center class="HideRow">
						<uc3:CaliberPrintCtrl id="CaliberPrintCtrl1" runat="server"></uc3:CaliberPrintCtrl>
					</TD>
				</TR>
			</TABLE>
		</form>
		<script language="javascript">
	<!--

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
			 			
	}
	
 //-->
		</script>
	</body>

</html>


</html>
