<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="VenAppCrtList.aspx.vb" Inherits="VenAppCertificate.VenAppCrtList" %>

<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Certificate of Vendor Qualification</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
		
	<script language="javascript">
        
             
        function FnOpenRgsAdt(BaseID)
        {
            SetPopDimensions()
            var pageURL = "WrdRptPrint.aspx?BasedID=" + BaseID;
            var features = "height= 500,width= 700,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
            var SpWinObj = window.open(pageURL,'BRMPopup',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
                        
        }
        
    </script>
    
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table CELLPADDING="0" CELLSPACING="0" BorderWidth="3" HorizontalAlign="center" cssclass="MainTable"
				runat="server" id="Table1" EnableViewState="False">
				<asp:TableRow Height="20">
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainTitleLtrl" Runat="server"></asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<!-----------Base table------------->
						<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
							HorizontalAlign="center" ID="CrTopTable">
							<asp:TableRow>
								<asp:TableCell CSSClass="SubHead" ColumnSpan="7">
									<asp:Literal id="SubTitleLtrl" runat="server"></asp:Literal>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CSSClass="MainTD" ColumnSpan="7">
									<uc1:SearchCtrl id="SearchCtrl1" runat="server"></uc1:SearchCtrl>
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
								<ASP:TableCell CssClass="MainTd" HorizontalAlign="Left">
									<asp:button id="BtnDisplay" cssClass='ButCls' accessKey="C" runat="server" text="Display" 
										CausesValidation="False"></asp:button>
								</ASP:TableCell>
							</asp:Tablerow>
							<asp:TableRow>
								<asp:TableCell ColumnSpan="7">
									<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
										HorizontalAlign="center" ID="ToDoListTab"></asp:Table>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table>
		</form>
	</body>
</HTML>
