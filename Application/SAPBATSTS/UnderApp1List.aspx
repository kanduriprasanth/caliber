<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Underapp1List.aspx.vb" Inherits="SAPBATSTS.UnderApp1List" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>ERP Samples List</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<script language="javascript" src="../CaliberCommonCtrls/Reports.js"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="Table1" runat="server" CELLPADDING="0" CELLSPACING="0" BorderWidth="0" HorizontalAlign="center"
				cssclass="MainTable" EnableViewState="False">
				<ASP:TABLEROW Height="20">
					<ASP:TABLECELL CssClass="MainHead">
						<ASP:LITERAL id="MainTitleLtrl" Runat="server"></ASP:LITERAL>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
				<ASP:TABLEROW>
					<ASP:TABLECELL> <!-----------Base table------------->
						<ASP:TABLE id="CrTopTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">
							<ASP:TABLEROW>
								<ASP:TABLECELL CSSClass="SubHead" ColumnSpan="6">
									<ASP:LITERAL id="SubTitleLtrl" runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<asp:TableRow>
								 
							</asp:TableRow>
							<ASP:TABLEROW CSSClass="HideRow">
								<ASP:TABLECELL CssClass="MainTD" ColumnSpan="2">
									<ASP:LINKBUTTON id="ActLb" Height="100%" Runat="server" Width="100%"></ASP:LINKBUTTON>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD" ColumnSpan="4"></ASP:TABLECELL>
							</ASP:TABLEROW>
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
										Width="50px">999</ASP:TEXTBOX>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="PgNoLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX id="PgNoTxt" CssClass="TxtCls" Runat="server" AutoPostBack="False" Width="50px"
										MaxLength="5">1</ASP:TEXTBOX>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW>
								<ASP:TABLECELL ColumnSpan="6">
									<ASP:TABLE id="DisTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
										cellspacing="1" width="100%"></ASP:TABLE>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
						</ASP:TABLE>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
				<asp:TableRow ID="PrintExeclTr" CssClass="HideRow">
					<asp:TableCell ColumnSpan="7" CssClass="SubHead">
						<TABLE id="PrintCtrlTab" style="WIDTH:100%" BORDER="0" CELLSPACING="0" CELLPADDING="1"
							class="MainTable" align="center" width="100PX">
							<TR Class="SubHead">
								<TD>
									
									<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 102; LEFT: 528px; POSITION: absolute; TOP: 344px"
										runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="PgNoTxt"></asp:RequiredFieldValidator>
								</TD>
							</TR>
						</TABLE>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table></form>
		<script language="javascript">
			<!--
			//document.all("PrinterDiv").style.display="block"
			//document.all("ExcelDiv").style.display="block"
			function ExpDataToExcel(){
			//r As Integer, c As Integer, CellData As String
			var txt
			var TableObjId="DisTable"
			var rCount=document.all(TableObjId).rows.length
				
			if(rCount<2){ return(false)}

			var ColCount=document.all(TableObjId).rows(0).cells.length
			
			      document.Form1.ExcelExpImp1.OpenExcel()
					for(r=0;r<rCount;r++){
					for(c=0;c<ColCount;c++){
					txt=document.all(TableObjId).rows(r).cells(c).innerText	
					document.Form1.ExcelExpImp1.WriteExcelData(r+1,c+1,txt) }
					}
					document.Form1.ExcelExpImp1.CloseExcel()
					//document.Form1.ExcelExpImp1.ClearExcel()
		
			}
		//-->
		</script>
	</body>
</HTML>
