<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MyWorks.aspx.vb" Inherits="WorkTransfer.MyWorks" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>MyWork Tasks</title>
<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
<meta name="vs_defaultClientScript" content="JavaScript">

<link rel="stylesheet" href="../TRIMS.css">

<script language="javascript" src="../JScript/Common2.js"></script>


</head>
<body ms_positioning="GridLayout">
<form id="Form1" method="post" runat="server">
    <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
        CssClass="MainTable" Width="98%" runat="server">
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
                        <asp:TableCell CssClass="SubHead" ColumnSpan="3">
                            <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                        </asp:TableCell>
                    </asp:TableRow>
                    
                     <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                           <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                HorizontalAlign="center" ID="PendingWorksList"></asp:Table>
                        </asp:TableCell>
                    </asp:TableRow>                                                            
                     <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                        <asp:TableCell CssClass="MainTD">
                            <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                        </asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                            <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                        <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                            padding-bottom: 0px">
                            <uc1:EsignObj id="EsignObj1" runat="server" visible="false">
                            </uc1:EsignObj>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-----------End of Base table------------->
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="IARow" runat="server" CssClass="HideRow">
            <asp:TableCell>
                <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                    CellSpacing="1" HorizontalAlign="Center">
                </asp:Table>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell CssClass="MainFoot">
                <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0"
                    HorizontalAlign="center" ID="Table2" BorderWidth="0">
                    <asp:TableRow CssClass="HideRow" Height="0">
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow2" runat="server">
            <asp:TableCell>
               <input type="button" class="ButCls" value="Back" onclick="javascript:window.history.back()" />
            </asp:TableCell>
        </asp:TableRow>
                </asp:Table>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="HideRow" Height="0">
            <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                    ShowMessageBox="True"></asp:ValidationSummary>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</form>
</body>

<script language="javascript">

	  
</script>

</html>
