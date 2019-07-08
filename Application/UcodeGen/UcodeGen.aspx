<%@ Page Language="vb" AutoEventWireup="false" Codebehind="UcodeGen.aspx.vb" Inherits="UcodeGen.UcodeGen" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
    
    <script language=javascript>
    function FnSetUcode(Cnt)
    {
        document.getElementById("UcodeTxt").value=""
        for(var i=0;i<Cnt;i++)
        {
            if(document.getElementById("ItemDDL_" + i).value!="<Select>")
            {
                document.getElementById("UcodeTxt").value += "/" + document.getElementById("ItemDDL_" + i).value 
            }
        }
        document.getElementById("UcodeTxt").value=document.getElementById("MainPrfxTxt").value + document.getElementById("UcodeTxt").value + '/' + document.getElementById("YrTxt").value
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
                            <asp:TableCell CssClass="SubHead" ColumnSpan="5">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" Width="15%" ID="UCOdeTDCap">Unique Code</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TableCell5" >
                               <asp:TextBox ID="MainPrfxTxt" runat="server" CssClass="TxtCls" ReadOnly=true  Width="40px"></asp:TextBox>&nbsp;&nbsp;
                            </asp:TableCell>
                            <asp:TableCell ID="ItemTD" CssClass="MainTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                            <asp:TextBox ID="YrTxt" runat="server" CssClass="TxtCls" ReadOnly=true  Width="40px"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TableCell1" >
                               <asp:TextBox ID="UcodeTxt" runat="server" CssClass="TxtCls" ReadOnly=true Width="150px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="5">
                                <asp:Button ID="Btn" runat=server Text="Submit" />
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
