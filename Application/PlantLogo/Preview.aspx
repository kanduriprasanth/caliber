<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Preview.aspx.vb" Inherits="PlantLogo.Preview" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.Text%></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript">

        function fnCrclose() {
            window.self.close();
        }
        
    </script>
</head>
<body style="height: 100px; width: 200px">
    <form id="form1" runat="server">
    <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
        CssClass="MainTable" Width="400" runat="server">
        <asp:TableRow Height="20">
            <asp:TableCell CssClass="MainHead">
                <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="ImageTd" runat="server" CssClass="HideRow">
            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                <div align="CENTER">
                    <map name="map1">
                    </map>
                    <asp:Image ID="imgCrop" runat="server" usemap="#map1" class="map" />
                </div>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow Height="20">
            <asp:TableCell CssClass="MainHead">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
                        type="button" value="Close" onclick="fnCrclose()">
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </form>
</body>
</html>
