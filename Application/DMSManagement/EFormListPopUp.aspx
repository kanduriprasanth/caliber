<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EFormListPopUp.aspx.cs"
    Inherits="DMSManagement.EFormListPopUp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.Text%>
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
    <script type='text/javascript' src="../JScript/jquery.min.js"></script>
    <script type='text/javascript' src="../JScript/Common2.js"></script>
</head>
<body ms_positioning="GridLayout" onload="document.getElementById('FindTxt').focus()" onblur="document.getElementById('FindTxt').focus()">
    <form id="Form1" method="post" runat="server">
    <table class="MainTable" height="100%" cellspacing="1" cellpadding="0" width="100%"
        align="center" border="3">
        <!-- MAIN HEADER -->
        <tr class="MainHead">
            <td>
                <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" cellspacing="0" cellpadding="0" align="center">
                    <tr class="HideRow">
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class="MainTD">
                            <asp:Literal ID="SearchOptionLtrl" runat="server">Search Option</asp:Literal>
                        </td>
                        <td class="MainTD" colspan="3">
                            <asp:RadioButtonList ID="SearchOptionRD" runat="server" RepeatDirection="Horizontal"
                                CellPadding="0" CssClass="RBList" CellSpacing="0" Height="18px">
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="MainTD" colspan="2">
                            <asp:Literal ID="FindLrl" runat="server">Find</asp:Literal>
                            <asp:TextBox ID="FindTxt" runat="server" Width="180px" CssClass='TxtCls'>%</asp:TextBox>
                        </td>
                        <td class="MainTD" colspan="2">
                            <asp:Literal ID="FetchSizeLtrl" runat="server">Records Limit</asp:Literal>
                            <asp:TextBox ID="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:TextBox>
                            <asp:Button ID="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
                                onmouseout="this.className='ButCls'"></asp:Button>
                        </td>
                    </tr>
                    <tr>
                        <td class="MainTD" colspan="4">
                            <div style="overflow: auto; height: 220px; background-color: gray">
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
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <!-- MAIN FOOTER -->
        <tr class="MainFoot">
            <td>
                <input class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
                    type="button" value="Ok" onclick="fnCrCloseWin()">
                <input class="ButCls" onmouseover="this.className='ButOCls'" onclick="fnCrCancel()"
                    onmouseout="this.className='ButCls'" type="button" value="Cancel">
                <asp:TextBox ID="TemplateType" CssClass="HideRow" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    </form>
    <script type='text/javascript'>

        $(':radio').click(function () {
            this.checked = true;
            var BaseIdVal, FormCodeVal, FormDescVal;
            var RCnt = $(this).val()
            BaseIdVal = $("#BaseId" + RCnt).text();
            AulIdVal = $("#BaseId" + RCnt).text();
            FormCodeVal = $("#FormCode" + RCnt).text();
            FormDescVal = $("#FormDesc" + RCnt).text();
            $("#RBVal").val(BaseIdVal);
            opener.fnGetFormVal(BaseIdVal, AulIdVal, FormCodeVal, FormDescVal)
        });

        function fnCrCancel() {
            opener.fnGetFormVal('', '', '', '')
            window.self.close()
        }

        document.oncontextmenu = new Function("return false")

        function fnCrCloseWin() {

            if (document.getElementById("RBVal").value == undefined) {
                alert("Select " + document.getElementById("TemplateType").value + " Template")
                return (false);
            }

            window.self.close()
            opener.fnGetFormOk()
        }
    </script>
</body>
</html>
