<%@ Page Language="vb" AutoEventWireup="false" Codebehind="TotalDetRpt.aspx.vb" Inherits="AuditReports.TotalDetRpt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Audit Log</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    
    <link href="../TRIMS.css" rel="stylesheet">

    <script language="javascript" src="../JScript/Common2.js"></script>
    
    <script language="javascript">
    
        function FnOpenRgsAdt(i)
        {
            SetPopDimensions()
            var pageURL = "WrdFrmatRpt.aspx?Type=1&RgsAId=" + document.getElementById("PAIdTxt_" + i).value + "&RgsBId=" + document.getElementById("PBIdTxt_" + i).value
            var features = "height= 1000,width= 1000,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
            var SpWinObj = window.open(pageURL,'BRMPopup',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
                        
        }
        
        
        function FnOpenObsAdt(i)
        {
            SetPopDimensions()
            var pageURL = "ObsRpt.aspx?AId=" + document.getElementById("OAIdTxt_" + i).value + "&AT=G&PageNo=1&PageSize=20&SType=0&STxt=''"
            var features = "height= 700,width= 800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
            var SpWinObj = window.open(pageURL,'BRMPopup',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        
        function FnOpenRspAdt(i)
        {
            SetPopDimensions()
            var pageURL = "RspDet.aspx?AId=" + document.getElementById("RAIdTxt_" + i).value + "&AT=G&PageNo=1&PageSize=20&SType=0&STxt=''"
            var features = "height= 700,width= 800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
            var SpWinObj = window.open(pageURL,'BRMPopup',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
    
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="Table1" runat="server" CssClass="MainTable" HorizontalAlign="center"
            BorderWidth="3" CellSpacing="0" CellPadding="0">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server">Self Inspection Summary Report</asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table ID="Table2" runat="server" HorizontalAlign="center" CellPadding="0" CssClass="SubTable"
                        CellSpacing="1" Width="100%">
                        <asp:TableRow>
                        <asp:TableCell CssClass="MainTD">Search By</asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:RadioButtonList ID="SrchRD" CssClass="RBList" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">Audit Code</asp:ListItem>
                                <asp:ListItem Value="2">Audit Description</asp:ListItem>
                            </asp:RadioButtonList>
                        </asp:TableCell>
                        <asp:TableCell CssClass="MainTD" ID="SrchTxtID" ColumnSpan="5">
                          <asp:TextBox ID="SrchTxt" runat="server" Width="200px" CssClass="TxtCls" Text="%" MaxLength="25"></asp:TextBox>
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
                                <asp:TextBox ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" runat="server" AutoPostBack="False"
                                    Width="50px">20</asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="PgNoLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="PgNoTxt" CssClass="TxtCls" runat="server" AutoPostBack="False" Width="50px"
                                    MaxLength="5">1</asp:TextBox>
                            </asp:TableCell>
                               <asp:TableCell CssClass="MainTD">
                               <asp:Button ID="DispBtn" runat="server" Text="Display" onMouseOver="this.className='ButOCls'" CssClass="ButCls" onMouseOut="this.className='ButCls'" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="7">
                                <asp:Table ID="DisTable1" runat="server" HorizontalAlign="center" CellPadding="0"
                                    CssClass="SubTable" CellSpacing="1" Width="100%">
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
