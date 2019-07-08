<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AuditHisList.aspx.vb" Inherits="IssueLogin.AuditHisList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title><%=MainTitleLtrl.text %></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript" src="../JScript/CustomValidationFuns.js"></script>
    
   

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <table class="MainTable" height="100%" cellspacing="0" cellpadding="0" width="100%"
            align="center" border="3">
            <!-- MAIN HEADER -->
            <tr>
                <td class="MainHead">
                 <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                    </td>
            </tr>
            <tr>
                <td>
                    <table width="100%" cellspacing="0" cellpadding="0" align="center">
                        <tr>
                            <td class="MainTd" colspan="4">
                                <div style="overflow: auto; height: 200px; background-color: gray">
                                    <asp:Table ID="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                        CellPadding="0" CssClass="SubTable">
                                    </asp:Table>
                                </div>
                            </td>
                        </tr>
                        <tr class="HideRow">
                            <td id="RBVal">
                            </td>
                            <td>
                                
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>

</body>
</html>

