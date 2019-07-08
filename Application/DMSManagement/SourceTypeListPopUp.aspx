<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SourceTypeListPopUp.aspx.cs"
    Inherits="DMSManagement.SourceTypeListPopUp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head runat="server">
    <title>Untitled Page</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1" />
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    
    <link rel="stylesheet" href="../TRIMS.css" />
    <script type='text/javascript' src="../JScript/jquery.min.js"></script>
    <script type='text/javascript'>
        function fnCrCancel() {
            opener.Ret_OpenSourceTypePopUp('', '', '','')
            window.self.close()
        }

        document.oncontextmenu = new Function("return false")

        function fnSpCloseWin() {
            if ($("#SelListTxt").val() == "") {
                alert("Select Source Type")
                return (false);
            }
            opener.OkRet_OpenSourceTypePopUp();
            window.self.close();
        }
    </script>
    <style type="text/css">
        .style1
        {
            width: 40%;
        }
        .style3
        {
            width: 40%;
        }
    </style>
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
    <table class="MainTable" height="100%" cellspacing="0" cellpadding="0" width="100%"
        align="center">
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
                    </tr>
                    <tr class="SubHead">
                        <td colspan="2" style="font-weight: bold;">
                            <asp:Label ID="DocRepoTypeCapLbl" runat="server"></asp:Label>&nbsp; :&nbsp;
                            <asp:Label ID="DocRepoTypeValLbl" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <table width="100%" cellspacing="1" cellpadding="0" align="center" class="SubTable">
                                <tr>
                                    <td class="MainTD style1" style="font-weight: bold">
                                        <asp:Label ID="SourceTypeCodeCapLab" runat="server" Font-Bold="true"></asp:Label>
                                    </td>
                                    <td class="MainTD">
                                        <asp:TextBox ID="SourceTypeCodeTxt" MaxLength="10" runat="server" Width="150px" CssClass='TxtCls'></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="MainTD style1" style="font-weight: bold">
                                        <asp:Label ID="SourceTypeDescCapLab" runat="server" Font-Bold="true"></asp:Label>
                                    </td>
                                    <td class="MainTD">
                                        <asp:TextBox ID="SourceTypeDescTxt" MaxLength="30" runat="server" Width="150px" CssClass='TxtCls'></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="MainTD style1" style="font-weight: bold">
                                        <asp:Label ID="MetaDataViewLbl" runat="server" Font-Bold="true"></asp:Label>
                                    </td>
                                    <td class="MainTD">
                                        <asp:TextBox ID="MetaDataViewTxt" MaxLength="30" runat="server" Width="150px" CssClass='TxtCls'></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="SubHead">
                                    <td colspan="2">
                                        <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                            CssClass='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text=""
                                            OnClick="btnConfirm_Click"></asp:Button>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr class="HideRow">
                        <td class="MainTD style1">
                            <asp:Literal ID="FindLrl" runat="server">Find</asp:Literal>
                            <asp:TextBox ID="FindTxt" MaxLength="30" runat="server" Width="180px" CssClass='TxtCls'>%</asp:TextBox>
                        </td>
                        <td class="MainTD">
                            <asp:Literal ID="FetchSizeLtrl" runat="server">Records Limit</asp:Literal>
                            <asp:TextBox ID="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:TextBox>
                            <asp:Button ID="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
                                onmouseout="this.className='ButCls'" OnClick="btnFind_Click"></asp:Button>
                        </td>
                    </tr>
                    <tr>
                        <td class="MainTD" colspan="2">
                            <div style="overflow: auto; height: 200px; background-color: gray">
                                <asp:Table ID="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                    CellPadding="0" CssClass="SubTable">
                                </asp:Table>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <!-- MAIN FOOTER -->
        <tr class="MainFoot">
            <td>
                <input class="ButCls" onmouseover="this.className='ButOCls'" onclick="fnSpCloseWin()"
                    onmouseout="this.className='ButCls'" type="button" value="Ok" />
                <input class="ButCls" onmouseover="this.className='ButOCls'" onclick="fnCrCancel()"
                    onmouseout="this.className='ButCls'" type="button" value="Cancel" />
                <input type="text" id="SelListTxt" style="display: none" />
            </td>
        </tr>
    </table>
    <asp:Table ID="HiddenTbl" runat="server" CssClass="HideRow">
        <asp:TableRow ID="TableRow10" CssClass="HideRow" Height="0px" runat="server">
            <asp:TableCell ID="ValidatorsTd" runat="server">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                    ShowMessageBox="True"></asp:ValidationSummary>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </form>
</body>
<script type='text/javascript'>

    $(':radio').click(function () {

        // this.checked =true;
        var SourceTypeId, SourceTypeCode, SourceTypeDesc, SourceTypeViewName;
        SourceTypeId = $("#SourceTypeId" + $(this).val()).text();
        SourceTypeCode = $("#SourceTypeCode" + $(this).val()).text();
        SourceTypeDesc = $("#SourceTypeDesc" + $(this).val()).text();
        SourceTypeDesc = $("#SourceTypeViewName" + $(this).val()).text();

        $("#SelListTxt").val(SourceTypeId);

        opener.Ret_OpenSourceTypePopUp(SourceTypeId, SourceTypeCode, SourceTypeDesc, SourceTypeViewName)

    });

    function ShowConfermation() {
        var Msg = "<%=ConfermationMessage%>";
        if (Msg != "") {
            alert(Msg);
        }
    }
    setTimeout("ShowConfermation()", 100);
</script>
</html>
