<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ReqList.aspx.vb" Inherits="Dossier.ReqList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Request List</title>
    <script src="../JScript/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../JScript/Common2.js"></script>
    
     <link rel="stylesheet" href="../TRIMS.css">
</head>
<body ms_positioning="GridLayout">
    <form autocomplete="off" id="form1" runat="server">
    <center>
    <asp:Table ID="tt" HorizontalAlign="center" CssClass="MainTable" runat="server" CellPadding="0" CellSpacing="0" BorderWidth="0">
        <asp:TableRow CssClass="MainHead">
            <asp:TableCell>
                <asp:Literal ID="MainTitleLtrl" runat="server">Dossier Generation</asp:Literal>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <!-----------Base table------------->
                <asp:Table runat="server" CssClass="SubTable" HorizontalAlign="center" ID="Table1"  CellPadding="0" CellSpacing="0" BorderWidth="0" Width="100%">
                </asp:Table>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </center>
    </form>
</body>
</html>
