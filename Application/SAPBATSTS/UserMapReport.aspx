<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UserMapReport.aspx.vb" Inherits="SAPBATSTS.UserMapReport" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml" >
<HEAD>
		<title>ERP Samples List</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<script language="javascript" src="../CaliberCommonCtrls/Reports.js"></script>
	</HEAD>
<body  MS_POSITIONING="GridLayout">
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
										Width="50px">10</ASP:TEXTBOX>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="PgNoLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX id="PgNoTxt" CssClass="TxtCls" Runat="server" AutoPostBack="False" Width="50px"
										MaxLength="5">1</ASP:TEXTBOX>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TableRow >
							<ASP:TableCell CssClass ="MainTD" ColumnSpan = 6>
							<ASP:TABLE id="TABLE2" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
										cellspacing="1" width="100%">
										<ASP:TableRow>
										<ASP:TableCell CssClass = "MainTd" Width = "30%">
							<asp:RadioButtonList ID="SearchRl" runat="server" CssClass="MainTD" RepeatDirection="Horizontal"
                                    TabIndex="1" AutoPostBack ="true" onclick= 'FnSearchChange()'>
                                    
                                    <asp:ListItem Value="1" Selected =True>QAMS UserID</asp:ListItem>
                                    <asp:ListItem Value="2" >SAP UserID</asp:ListItem>
                                    <asp:ListItem Value="3" >Active</asp:ListItem>
                                </asp:RadioButtonList>
                                </ASP:TableCell>
                                <ASP:TableCell CssClass ="MainTD" Width = "70%">
                                 <ASP:TEXTBOX id="SearchTxt" CssClass="TxtCls" Runat="server" AutoPostBack="False" Width="200px"
										MaxLength="60" Text ="%"></ASP:TEXTBOX>
										<asp:RadioButtonList ID="ActiveStsRbl" runat="server" CssClass="HideRow" RepeatDirection="Horizontal"
                                    TabIndex="1" >
                                    <asp:ListItem Value="1" Selected =True>Yes</asp:ListItem>
                                    <asp:ListItem Value="2" >No</asp:ListItem>
                                </asp:RadioButtonList>
								</ASP:TableCell>
								</ASP:TableRow>
								</ASP:TABLE>
							</ASP:TableCell>
							</ASP:TableRow>
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
							 
						</TABLE>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table>
    </form>
</body>
<script language="javascript">

    function FnSearchChange()
        { 
            if (document.getElementById("SearchRl_2").checked  == true)
            {
                document.getElementById("SearchTxt").className = "HideRow"
                document.getElementById("ActiveStsRbl").className = "MainTd"
            }
            else
            {
                document.getElementById("SearchTxt").className = "TxtCls"
                document.getElementById("ActiveStsRbl").className = "HideRow"
            } 
        }
        FnSearchChange()
        </script>
</html>
