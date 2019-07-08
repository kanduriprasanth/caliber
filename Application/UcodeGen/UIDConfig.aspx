<%@ Page Language="vb" AutoEventWireup="false" Codebehind="UIDConfig.aspx.vb" Inherits="UcodeGen.UIDConfig" %>

<%@ Register TagPrefix="uc1" Src="../CaliberCommonCtrls/ListSelection.ascx" TagName="ListSelection" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">

    function FnChckNumeric()
    {
        if((isNaN(document.getElementById("NoOfItmTxt").value)) || (document.getElementById("NoOfItmTxt").value<0) || (document.getElementById("NoOfItmTxt").value>4))
        {
            alert('Enter Non Zero Possitive Numeric Value');
            return (false);
        }
        else
        {
            document.getElementById("TypeRow").className=""
            document.getElementById("TypeLstRow").className=""
        }
    }

    function ChckListControl(src, args)

    {
        args.IsValid=false;
        Page_IsValid=false;
        var TidObj="TypeLst:OptValues"
        var TidList=ValidatorTrim(document.all[TidObj].value)
            if((TidList=='')||(TidList==null))
            {
                src.erromessage="Select " + document.getElementById("NoOfItmTxt").value + " UID Type(s)"
            }
            else
            {
                 args.IsValid=true;
                 Page_IsValid=true;
            }
        
    }

    </script>

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
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" Width="40%" ID="UCOdeTDCap"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TableCell4">
                                <asp:Label ID="MainPrfxLbl" runat="server" CssClass="LblCls"></asp:Label>
                                <asp:TextBox ID="MainPrfxTxt" runat="server" Width="5" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="NoOfItemTd" Width="40%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="NoOfItmTxt" onblur="FnChckNumeric()" MaxLength="1" runat="server"
                                    CssClass="TxtCls" Width="30px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TypeRow" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2" Style="font-weight: bold;" Width="40%"
                                ID="TypeTD"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TypeLstRow" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <uc1:listselection id="TypeLst" autopostback="true" runat="server">
                                </uc1:listselection>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="TableCell3" ColumnSpan="2">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit"
                                    Width="70"></asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="ProtocolFieldKeys" Style="display: none" Width="0" Height="0" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ProtocolFieldNames" Style="display: none" Width="0" Height="0" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ProtocolFieldbndto" Style="display: none" Width="0" Height="0" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
