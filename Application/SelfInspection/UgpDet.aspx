<%@ Page Language="vb" AutoEventWireup="false" Codebehind="UgpDet.aspx.vb" Inherits="SelfInspection.UgpDet" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>User List</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script type="text/javascript">
        function FnClose()
        {
            window.close();
        }
    </script>
</head>
<body ms_positioning="GridLayout" >
    <form id="Form1" method="post" runat="server">
        <table class="MainTable" height="100%" cellspacing="0" cellpadding="0" width="100%"
            align="center" border="3">
            <!-- MAIN HEADER -->
            <tr>
                <td class="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server">User List</asp:Literal></td>
            </tr>
            <tr>
                <td class="MainTd" colspan="4">
                    <div style="overflow: auto; height: 200px; background-color: gray">
                        <asp:Table ID="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                            CellPadding="0" CssClass="SubTable">
                        </asp:Table>
                    </div>
                </td>
            </tr>
            <tr>
            
            </tr>
            <!-- MAIN FOOTER -->
            <tr class="MainFoot">
                <td>
                <input type=button id="ClsBtn" onclick="FnClose()" onMouseOver="this.className='ButOCls'" onMouseOut="this.className='ButCls'" class="ButCls" value="Close" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
