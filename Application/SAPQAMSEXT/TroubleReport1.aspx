<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TroubleReport1.aspx.cs" Inherits="SAPQAMSEXT.TroubleReport1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register TagPrefix="uc1" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx"  %>
 
<%@ Register TagPrefix="uc3" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx"  %>
<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>ReportModel</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<LINK href="../TRIMS.css" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE WIDTH="90%" BORDER="1" CELLSPACING="1" CELLPADDING="1" align="center">
				<TR>
					
				<TR>
					<TD>
						<asp:Panel id="HeaderDiv" runat="server" Width="720" HorizontalAlign="Left" EnableViewState="False">
							<asp:Label id="H1" style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; FONT-SIZE: 12px; PADDING-BOTTOM: 0px; MARGIN-LEFT: 0px; PADDING-TOP: 0px; BACKGROUND-COLOR: white; TEXT-ALIGN: center; font-bold: true"
								Width="720" Runat="server">&nbsp;<br>&nbsp;</asp:Label>
							<asp:Table id="H2" style="FONT-SIZE: 14px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="720"
								Runat="server" CELLPADDING="1" CELLSPACING="1" BorderWidth="0">
								<asp:TableRow>
									<asp:TableCell ID="Title1" HorizontalAlign="Center" style="Width:720px;font-size:14;font-weight:bold;Padding:0px;Background-color:white;text-align:center"></asp:TableCell>
								</asp:TableRow>
							</asp:Table>
						</asp:Panel>
						<asp:Panel id="BodyDiv" runat="server" Width="100%" HorizontalAlign="Left" EnableViewState="False">
							<%--<asp:Table id="Table1" Width="720" Runat="server" BackColor="#ffffff" horizontalalign="center"
								CellPadding="0" CellSpacing="0" Border="1" BorderColor="black">
								<asp:TableRow>
									<asp:TableCell CSSClass="MainTD" ColumnSpan="6">
										<%--<uc1:SearchCtrl id="SearchCtrl1" runat="server"></uc1:SearchCtrl>
									</asp:TableCell>
								</asp:TableRow>
								
							</asp:Table>--%>
							<asp:Table id="Table2" runat="server" HorizontalAlign="center" CELLPADDING="0" width="100%"
								cellspacing="1" CSSClass="SubTable">
								<asp:TableRow>
								    <asp:TableCell CssClass ="MainTD">
								        Search By
								    </asp:TableCell>
								    <asp:TableCell CssClass ="MainTD"> 
								    <asp:dropdownlist id="PltNoDdl" runat="server" CssClass="TxtCls" MaxLength="5" AccessKey="R"  >
														<asp:ListItem value= 6 Selected=True>--Select--</asp:ListItem>
														<asp:ListItem value=0  >Material Code</asp:ListItem>
														<asp:ListItem value=1>Batch Number</asp:ListItem>
														<asp:ListItem value=2>Plant Number</asp:ListItem>
														<asp:ListItem value= 3>Issue Code</asp:ListItem>
														<asp:ListItem value= 4>Batch Decision</asp:ListItem>
														<asp:ListItem value= 5>Cleared By</asp:ListItem>
														
														</asp:dropdownlist>
								    </asp:TableCell >
								    <asp:TableCell CssClass ="MainTD" ColumnSpan = 5> Like
								            <asp:TextBox runat ="server" ID="SearchTxt" CssClass ="Txtcls" Text ="%" MaxLength =50></asp:TextBox>
								    </asp:TableCell>						    
								    
								</asp:TableRow>
								
								
								<asp:Tablerow>
									<asp:TableCell CssClass="MainTD">
										<asp:Literal id="MaxRecLtrl" Runat="server">Total Records</asp:Literal>
									</asp:TableCell>
									<asp:TableCell CssClass="MainTD">
										<asp:Literal id="MaxRecCntLtrl" Runat="server">0</asp:Literal>
									</asp:TableCell>
									<asp:TableCell CssClass="MainTD">
										<asp:Literal id="RecPerPageLtrl" Runat="server">Records per page</asp:Literal>
									</asp:TableCell>
									<asp:TableCell CssClass="MainTD">
										<asp:TextBox ID="RecPerPageTxt" MaxLength="3" Runat="server" Width="30px" CssClass="TxtCls" AutoPostBack="False">20</asp:TextBox>
									</asp:TableCell>
									<asp:TableCell CssClass="MainTD">
										<asp:Literal id="PgNoLtrl" Runat="server">Page No.</asp:Literal>
									</asp:TableCell>
									<asp:TableCell CssClass="MainTD">
										<asp:TextBox ID="PgNoTxt" Runat="server" Width="50px" MaxLength="5" CssClass="TxtCls" AutoPostBack="False">1</asp:TextBox>
									</asp:TableCell>
									<ASP:TableCell CssClass="MainTD" HorizontalAlign="Left">
										<asp:button id="BtnDisplay" cssClass='ButCls' accessKey="C" runat="server" text="Display" Width="70"
											CausesValidation="False"></asp:button>
									</ASP:TableCell>
								</asp:Tablerow>
								
							</asp:Table>
							<asp:Table id="ReqTab" Width="100%" Runat="server" BackColor="#ffffff" horizontalalign="center"
								CellPadding="0" CellSpacing="0" Border="1" BorderColor="black" ></asp:Table>
						</asp:Panel>
						<br>
						<asp:Panel id="FooterDiv" runat="server" Width="720" HorizontalAlign="Left" EnableViewState="False">
							 
							<asp:Table id="F3" style="FONT-SIZE: 10px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="720"
								 CELLPADDING="1" CELLSPACING="1" BorderWidth="0" Runat="server"></asp:Table>
						</asp:Panel>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="HeaderObjIDs"
							text="H1,H2"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="HeaderObjTypes"
							text="P,TN"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="BodyObjIDs" text="ReqTab"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="BodyObjTypes"
							text="TN"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="BodyObjTabHeadRows"
							text="1,1"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="FooterObjIDs"
							text="F3"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="FooterObjTypes"
							text="TN"></asp:TextBox>
					</TD>
				</TR>
				 
				<TR class="HideRow">
					<TD>
						<uc3:CaliberPrintCtrl id="CaliberPrintCtrl1" runat="server"></uc3:CaliberPrintCtrl>
					</TD>
				</TR>
			</TABLE>
		</form>
		<script language="javascript">
	<!--

function ChkReasons(){
      var Reasons=''//document.Form1.ReasonsTxt.value
      var AskReasons =0//document.Form1.AskReasonsTxt.value
	   if(AskReasons==1 && Reasons==''){
	   alert("Enter Reasons For Other Print")
	   return(false);
	   }
       return(true);
}
//isWorkSheetPrint=1;
function fnPrintConfirm()
	{   
		
	  var pageURL="WSPConfirm.aspx" 	  
	  var features = "height=20,width=60,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=350,left=150"
	 window.showModalDialog( pageURL ,'Caliber LIMS','dialogheight=6;dialogwidth=15;help=0;status=0;scroll=0;edge=raised;')		
			 			
	}
	
 //-->
		</script>
	</body>
</HTML>