<%@ Page Language="vb" AutoEventWireup="false" Codebehind="EFMReport.aspx.vb" Inherits="EffectivenessProtocol.EFMReport" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="Table1" EnableViewState="False" Width="98%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="CrTopTable">
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="SubHead" ColumnSpan="6">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="SrhTbl" runat="server" HorizontalAlign="left" CellPadding="0" CssClass="SubTable"
                                    CellSpacing="1" Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:Label ID="PlanCodeLbl" runat="server" Text="Reference Action Code"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:TextBox ID="PlanCodeTxt" runat="server" Text="%"></asp:TextBox>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:Label ID="PlanDescLbl" runat="server" Text="Action Description"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:TextBox ID="PlanDescTxt" runat="server" Text="%"></asp:TextBox>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:Label ID="CatLbl" runat="server" Text="Category"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:DropDownList ID="CatDDL" runat="server" Width="210px" EnableViewState="true">
                                            </asp:DropDownList>
                                        </asp:TableCell>
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
                                            <asp:TextBox ID="RecPerPageTxt" MaxLength="3" runat="server" Width="30px" CssClass="TxtCls"
                                                AutoPostBack="False" onkeypress="return IsDigit1(event);">20</asp:TextBox>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:Literal ID="PgNoLtrl" runat="server"></asp:Literal>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:TextBox ID="PgNoTxt" runat="server" Width="50px" MaxLength="5" CssClass="TxtCls"
                                                AutoPostBack="False" onkeypress="return IsDigit1(event);">1</asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="GoBtn" runat="server" CssClass="ButCls" Text="Display"></asp:Button>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell ColumnSpan="6">
                                            <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                                HorizontalAlign="center" ID="DisTable">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow CssClass="HideRow" Height="0">
                                        <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                                                ShowMessageBox="True"></asp:ValidationSummary>
                                                <asp:TextBox ID="CategoryTxt" runat ="server" ></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
<script language ="javascript" >

     function SaveCategory(obj){ //Saving Category on postback
	        document.getElementById("CategoryTxt").value= obj.value;
	    }


</script>
