<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx"  %>
<%@ Register TagPrefix="uc2" TagName="Footer" Src="../CaliberCommonCtrls/ReportFooter.ascx"  %>
<%@ Register TagPrefix="uc3" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx"  %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Response.aspx.vb" Inherits="AuditReports.QualValExpRpt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Audit Response Report</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE WIDTH="100%" BORDER="1" CELLSPACING="1" CELLPADDING="1" align="center">
				<TR>
					<TD>
						<uc1:Header id="Header1" runat="server"></uc1:Header>
					</TD>
				<TR>
					<TD colspan="10">
						<asp:Panel id="HeaderDiv" runat="server" Width="832px" HorizontalAlign="Left" EnableViewState="False">
							<asp:Table id="H1" style="FONT-SIZE: 10px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="100%"
								CELLPADDING="1" CELLSPACING="1" BorderWidth="0" Runat="server">
								<asp:TableRow>
									<asp:TableCell HorizontalAlign="Center" style="Width:720px;font-size:16;font-weight:bold;Padding:0px;Background-color:white;text-align:center">Audit Response Report</asp:TableCell>
								</asp:TableRow>
							</asp:Table>
						</asp:Panel>
						<asp:Panel id="BodyDiv" runat="server" Width="720" HorizontalAlign="Left" EnableViewState="False">
							<asp:Table id="Table1" Width="100%" Runat="server" BackColor="#ffffff" horizontalalign="center"
								CellPadding="0" CellSpacing="0" Border="1" BorderColor="black">
								<asp:TableRow>
									<asp:TableCell CssClass="MainTD" ID="StartDtTd" WIDTH="310px" ColumnSpan="2"></asp:TableCell>
									<asp:TableCell CssClass="MainTD">
										<uc1:CaliberCalender id="StratDt" runat="server" ColumnSpan="2"></uc1:CaliberCalender>
									</asp:TableCell>
									<asp:TableCell CssClass="MainTD" ID="EndDtTd" WIDTH="310px" ColumnSpan="2"></asp:TableCell>
									<asp:TableCell CssClass="MainTD">
										<uc1:CaliberCalender id="EndDt" runat="server" ColumnSpan="1"></uc1:CaliberCalender>
									</asp:TableCell>
								</asp:TableRow>
								<ASP:TABLEROW>
									<ASP:TABLECELL CssClass="MainTD">
										<ASP:LITERAL id="MaxRecLtrl" Runat="server"></ASP:LITERAL>
									</ASP:TABLECELL>
									<ASP:TABLECELL CssClass="MainTD">
										<ASP:LITERAL id="MaxRecCntLtrl" Runat="server">0</ASP:LITERAL>
									</ASP:TABLECELL>
									<ASP:TABLECELL CssClass="MainTD">
										<ASP:LITERAL id="RecPerPageLtrl" Runat="server"></ASP:LITERAL>
									</ASP:TABLECELL>
									<ASP:TABLECELL CssClass="MainTD">
										<ASP:TEXTBOX ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" Runat="server" AutoPostBack="False"
											Width="50px"></ASP:TEXTBOX>
									</ASP:TABLECELL>
									<ASP:TABLECELL CssClass="MainTD">
										<ASP:LITERAL id="PgNoLtrl" Runat="server"></ASP:LITERAL>
									</ASP:TABLECELL>
									<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX id="PgNoTxt" CssClass="TxtCls" Runat="server" AutoPostBack="False" Width="40px"
											MaxLength="5">1</ASP:TEXTBOX>
					                     &nbsp;<input type="button" onClick="submit()" class='ButCls' onMouseOver="this.className='ButOCls'"
											onMouseOut="this.className='ButCls'" Value='Display'>
										
								</ASP:TABLECELL>
								</ASP:TABLEROW>
							</asp:Table>
							<BR>
							<asp:Table id="DisTable" Width="100%" Runat="server" BackColor="#ffffff" horizontalalign="center"
								CellPadding="0" CellSpacing="0" Border="1" BorderColor="black"></asp:Table>
						</asp:Panel>
						<asp:Panel id="FooterDiv" runat="server" Width="720" HorizontalAlign="Left" EnableViewState="False">
							<asp:Label id="F1" style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; FONT-SIZE: 12px; PADDING-BOTTOM: 0px; MARGIN-LEFT: 0px; PADDING-TOP: 0px; BACKGROUND-COLOR: white; TEXT-ALIGN: center; font-bold: true"
								Width="720" Runat="server"></asp:Label>
							<asp:Table id="F2" style="FONT-SIZE: 10px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="100%"
								CELLPADDING="1" CELLSPACING="1" BorderWidth="0" Runat="server">
								<asp:TableRow>
									<asp:TableCell style="Width:260px;font-size:12;font-bold:true;Padding:0px;Background-color:white"></asp:TableCell>
									<asp:TableCell style="Width:260px;font-size:12;font-bold:true;Padding:0px;Background-color:white"></asp:TableCell>
									<asp:TableCell style="Width:200px;font-size:12;font-bold:true;Padding:0px;Background-color:white"></asp:TableCell>
								</asp:TableRow>
							</asp:Table>
							<BR>
							<asp:Table id="F3" style="FONT-SIZE: 10px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="100%"
								CELLPADDING="1" CELLSPACING="1" BorderWidth="0" Runat="server"></asp:Table>
						</asp:Panel>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="HeaderObjIDs"
							text="H,H1"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="HeaderObjTypes"
							text="P,TN"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="BodyObjIDs" text="DisTable"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="BodyObjTypes"
							text="TN"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="BodyObjTabHeadRows"
							text="1,1"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="FooterObjIDs"
							text="F1,F3"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="FooterObjTypes"
							text="P,TN"></asp:TextBox>
					</TD>
				</TR>
				<TR>
					<TD>
						<uc2:Footer id="Footer1" runat="server"></uc2:Footer>
					</TD>
				</TR>
				<TR>
					<TD style="TEXT-ALIGN:center">
						<uc3:CaliberPrintCtrl id="CaliberPrintCtrl1" runat="server"></uc3:CaliberPrintCtrl>
					</TD>
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
		
	 	var pageURL="PrintConfirm.aspx"
	  var features = "height=20,width=60,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=350,left=150"
	 window.showModalDialog( pageURL ,'Caliber LIMS','dialogheight=6;dialogwidth=15;help=0;status=0;scroll=0;edge=raised;')		
			 			
	}
	
 //-->
		</script>
	</body>
</HTML>
