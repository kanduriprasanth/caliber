<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ColumnConfiduration_Ajax.aspx.vb"
    Inherits="PrsWorkFlow.ColumnConfiduration_Ajax" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.Text%>
    </title>
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript" src="../JScript/jquery.min.js"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server" autocomplete="off">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
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
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="CategoryTr" runat="Server">
                            <asp:TableCell CssClass="MainTD" ID="CategoryTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="CategoryDDl" runat="server" CssClass="MainTD" onclick="Nextclick1()"
                                    AutoPostBack="true">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ConfigTr" runat="server">
                            <asp:TableCell CssClass="MainTD" ID="ConfigForTD" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="ConfigForDDl" runat="server" CssClass="MainTD" AutoPostBack="true"
                                    onclick="Nextclick1()">
                                </asp:DropDownList>
                                <asp:TextBox ID="Nextbtnclk" CssClass="HideRow" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="FieldTblTr" runat="Server">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="Subtable" ID="FieldTable" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="center">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="FormDdlTr" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="FormDdlTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="FormDdl" runat="server" CssClass="MainTD" AutoPostBack="true">
                                </asp:DropDownList>
                                <asp:TextBox ID="StandardCnt" CssClass="HideRow" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="FieldTbl1Tr" runat="Server">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="Subtable" ID="FieldTable1" EnableViewState="False"
                                    Width="100%" CellPadding="0" CellSpacing="1" HorizontalAlign="center">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="SelFieldTr" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2">
                                <asp:Table ID="SelFieldTab" runat="server" BorderWidth="0" CellPadding="0" CellSpacing="1"
                                    CssClass="SubTable" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ColConfigTR" CssClass="HideRow">
                            <asp:TableCell ID="ColConfigTD" CssClass="MainTD" ColumnSpan="6" Style="font-weight: bold;">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ConfigColTr" CssClass="HideRow">
                            <asp:TableCell ID="TableCell1" CssClass="MainTD" ColumnSpan="6">
                                <asp:Table ID="CofigTbl" runat="server" BorderWidth="0" CellPadding="0" CellSpacing="1"
                                    CssClass="SubTable" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="MainFoot" ColumnSpan="2">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" ID="btnsubTr">
                            <asp:TableCell CssClass="MainFoot">
                                <asp:Button ID="SubmitBtn" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit">
                                </asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="NextBtnTr" CssClass="MainTd">
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign="Right">
                                <asp:Button ID="BtnNext" OnClientClick="Nextclick()" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' Text="Next" AccessKey="C" onMouseOut="this.className='ButCls'"></asp:Button>
                            </asp:TableCell></asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0" ID="FldcntTr">
            <asp:TableCell>
                     <asp:TextBox ID="TotWITFldCnt" CssClass="HideRow" runat="server"></asp:TextBox>
                     <asp:TextBox ID="TotFldCnt" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FldIdLstTxt" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="SelFldCnt" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="WitSelFldCnt" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="WitFldIdLstTxt" CssClass="HideRow" runat="server"></asp:TextBox>
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
</html>
