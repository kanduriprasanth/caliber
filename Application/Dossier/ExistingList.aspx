<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ExistingList.aspx.vb" Inherits="Dossier.ExistingList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<HTML>
<head>
    <title>ExistingList</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">

    <script src="../JScript/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../JScript/Common2.js"></script>
    <link rel="stylesheet" href="../TRIMS.css">
   
    
    
</head>
<body MS_POSITIONING="GridLayout">
    <form autocomplete="off" id="Form1" method="post" runat="server">
     
   <asp:table CELLPADDING="0" CELLSPACING="0" BorderWidth="0" HorizontalAlign="center" cssclass="MainTable"
				 runat="server" id="Table1" EnableViewState=False >
        <asp:TableRow CssClass="MainHead">
            <asp:TableCell>
                <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <!-----------Base table------------->
                <ASP:TABLE id="CrTopTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">
                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="6" CssClass="SubHead">
                            <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        
                           <asp:TableCell CSSClass="MainTD" ColumnSpan="6">
									<uc1:SearchCtrl id="SearchCtrl1" runat="server"></uc1:SearchCtrl>
								</asp:TableCell>
                         
                    </asp:TableRow>
                    <asp:TableRow CssClass="HideRow">
                        <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                            <asp:LinkButton ID="ActLb" Height="100%" runat="server" Width="100%"></asp:LinkButton>
                        </asp:TableCell>
                        <asp:TableCell CssClass="MainTD" ColumnSpan="4"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD">
                            <asp:Literal ID="MaxRecLtrl" runat="server"></asp:Literal>
                        </asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:Literal ID="MaxRecCntLtrl" runat="server">0</asp:Literal>
                        </asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:Literal ID="RecPerPageLtrl" runat="server"></asp:Literal>
                        </asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:TextBox ID="RecPerPageTxt" CssClass="TxtCls" runat="server" AutoPostBack="False"
                                Width="50px">10</asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:Literal ID="PgNoLtrl" runat="server"></asp:Literal>
                        </asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:TextBox ID="PgNoTxt" CssClass="TxtCls" runat="server" AutoPostBack="False" Width="50px">1</asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                  <ASP:TABLEROW>
								<ASP:TABLECELL ColumnSpan="6">
									<ASP:TABLE id="DisTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
										cellspacing="1" width="100%"></ASP:TABLE>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
                </asp:Table>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    
    </form>
</body>
</html>
