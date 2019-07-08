<%@ Page Language="vb" AutoEventWireup="false" Codebehind="calendar.aspx.vb" Inherits="Dossier.calendar" %>

<%@ Register TagPrefix="uc2" TagName="CaliberCalendar1" Src="../CaliberCommonCtrls/CaliberCalendar1.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head runat="server">
    <title>Untitled Page</title>
     <script src="../JScript/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../JScript/Common2.js"></script>
      <link rel="stylesheet" href="../TRIMS.css">
</head>
<body>
    <form autocomplete="off" id="form1" runat="server">
    <center>
        <asp:Table ID="tt" HorizontalAlign="center" CssClass="MainTable" runat="server">
            <asp:TableRow Height="20" CssClass="MainHead">
                <asp:TableCell>
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" HorizontalAlign="center" ID="Table1">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell>
                            <uc2:CaliberCalendar1 id=TgtDatRspCal runat="server"></uc2:CaliberCalendar1>
                            </asp:TableCell>
                            </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        </center>
    </form>
</body>
</html>
