<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Config.aspx.vb" Inherits="Vndor.Config" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Config</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    
    <link href="../TRIMS.css" rel="stylesheet">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'
	function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
	}

	//-->
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" runat="server" Width="98%" CssClass="MainTable" HorizontalAlign="center"
            BorderWidth="3" CellSpacing="0" CellPadding="0">
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
                            <asp:TableCell Width="30%"></asp:TableCell>
                            <asp:TableCell Width="20%"></asp:TableCell>
                            <asp:TableCell Width="20%"></asp:TableCell>
                            <asp:TableCell Width="30%"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="4">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" runat="server"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="TxtCls" MaxLength="25" Width="100px"
                                    AccessKey="C"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CallEsignTD" runat="server"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="RegistrationTD" runat="server"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="ChangeTD" runat="server"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="StatusChgTD" runat="server"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="InitiationTD" runat="server"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:CheckBox ID="isEsignAtCreatInit" runat="server"></asp:CheckBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:CheckBox ID="isEsignAtModifyInit" runat="server"></asp:CheckBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:CheckBox ID="isEsignAtStatusChangeInit" runat="server"></asp:CheckBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ApprovalTD" runat="server"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:CheckBox ID="isEsignAtCreatAppr" runat="server"></asp:CheckBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:CheckBox ID="isEsignAtModifyAppr" runat="server"></asp:CheckBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:CheckBox ID="isEsignAtStatusChangeAppr" runat="server"></asp:CheckBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="NarTD" runat="server"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="RNarTD" runat="server"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="MNarTD" runat="server"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="SNarTD" runat="server"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="NARAtCreat" runat="server" Width="50px">
                                    <asp:ListItem Value="0">0</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                    <asp:ListItem Value="5">5</asp:ListItem>
                                    <asp:ListItem Value="6">6</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="NARAtModify" runat="server" Width="50px">
                                    <asp:ListItem Value="0">0</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                    <asp:ListItem Value="5">5</asp:ListItem>
                                    <asp:ListItem Value="6">6</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="NARAtStatusChange" runat="server" Width="50px">
                                    <asp:ListItem Value="0">0</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                    <asp:ListItem Value="5">5</asp:ListItem>
                                    <asp:ListItem Value="6">6</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="MsgTrfTd" runat="server"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:CheckBox ID="Alert" runat="server"></asp:CheckBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:CheckBox ID="IMail" runat="server"></asp:CheckBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:CheckBox ID="OMail" runat="server"></asp:CheckBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="UsrGrpTd" runat="server"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="CrGrpId" runat="server" Width="50px">
                                    <asp:ListItem Value="0">NA</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="MoGrpId" runat="server" Width="50px">
                                    <asp:ListItem Value="0">NA</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="ScGrpId" runat="server" Width="50px">
                                    <asp:ListItem Value="0">NA</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RemarksRow" runat="server">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                                <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="4" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc1:EsignObj id="EsignObj1" runat="server" visible="false">
                                </uc1:EsignObj>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButSelCls" Height="20px" onMouseOver="this.className='ButSelOCls'"
                                    onMouseOut="this.className='ButSelCls'" AccessKey="V"></asp:HyperLink>
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
</html>
