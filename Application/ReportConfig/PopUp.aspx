<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PopUp.aspx.vb" Inherits="ReportConfig.PopUp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.text %>
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
    

</head>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="tt" EnableViewState="False" Width="98%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Label ID="Lbl" runat="server" CssClass="LblCls" Text="Date From @Today"></asp:Label>&nbsp;
                                <asp:TextBox ID="OpTxt" runat="server" CssClass="txtCls" Width="50px"></asp:TextBox>&nbsp;
                                <asp:TextBox ID="ValTxt" runat="server" CssClass="txtCls" Width="50px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" HorizontalAlign="Right">
                               <input type='button' id='ok' value="Ok" class="ButCls" onclick="FnVal()" />
                               <input type='button' id='Cancel' value="Cancel" class="ButCls" onclick="javascript:window.close()" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>    
    <script language=javascript>
    function FnVal()
    {
        var Op = document.getElementById("OpTxt").value
        var Val = document.getElementById("ValTxt").value 
        opener.FnAssignVal(Op,Val,<%=icnt%>,<%=jcnt%>)
        window.close();
    }
    </script>
</body>
</html>

