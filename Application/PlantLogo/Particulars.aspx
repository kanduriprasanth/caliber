<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Particulars.aspx.vb" Inherits="PlantLogo.Particulars" %>

<html>
<head>
    <title>SampParticulars</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <script language="javascript" src="../JScript/Common2.js"></script>
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript">
        function fnOpenPopUp(ColVal) {
            var pageURL = "Preview.aspx?ImageName=" + ColVal
            var features = "height=250,width=450,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=250,left=150"
            SpWinObj = window.open(pageURL, 'SpecCodes', features)
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();

        }
    </script>
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
    <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
        CssClass="MainTable" runat="server" EnableViewState="false">
        <asp:TableRow Height="20">
            <asp:TableCell CssClass="MainHead">
                <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <!-----------Base table------------->
                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                    HorizontalAlign="center" ID="Table1">
                    <asp:TableRow CssClass="HideRow" Height="0">
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                            <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="2">
                            <asp:Table ID="DataTab" runat="server" HorizontalAlign="center" CellPadding="0" CssClass="SubTable"
                                CellSpacing="1" Width="100%">
                            </asp:Table>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="MainFoot">
                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                    HorizontalAlign="center" ID="Table2" BorderWidth="0">
                    <asp:TableRow CssClass="HideRow" Height="0">
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainFoot">
									<input type="button" onMouseOver="this.className='ButOCls'" Class='ButCls' accessKey="C"
										onMouseOut="this.className='ButCls'" Value='Back' onclick='window.history.back()' Width="70">
                        </asp:TableCell>
                        <asp:TableCell CssClass="MainFoot" HorizontalAlign="Right"></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </form>
    </FORM></body>
</html>
