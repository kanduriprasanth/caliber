<%@ Page Language="vb" AutoEventWireup="false" Codebehind="App.aspx.vb" Inherits="EffectivenessProtocol.App" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>App</title>
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
        <asp:Table ID="Table3" runat="server" CellPadding="0" CellSpacing="0" BorderWidth="0"
            HorizontalAlign="center" CssClass="MainTable" Width="98%" EnableViewState="False">
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
                            <asp:TableCell CssClass="MainTD" ID="AduitTD" ColumnSpan="2">
                                <asp:Table ID="Atab" CssClass="MainTD" runat="server" Width="100%" CellPadding="0"
                                    CellSpacing="0" HorizontalAlign="center" Style="padding-right: 0px; padding-left: 0px;
                                    padding-bottom: 0px; padding-top: 0px">
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Table ID="DataTab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow ID="DataTab2Tr" runat="server" CssClass="HideRow">
                                        <asp:TableCell>
                                            <asp:Table ID="DataTab2" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Table ID="AppStsTab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DecisionTd" runat="server" Width="154px">
                                <asp:Literal runat="server" ID="DecisionLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="Approve" runat="server" RepeatDirection="Horizontal" CellPadding="0"
                                    class="RBList" CellSpacing="0" Height="18px">
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="RemarksTd" runat="server">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                                <asp:TextBox ID="testid" runat="server" CssClass="hiderow"></asp:TextBox>
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
                                <uc1:EsignObj id="EsignObj1" runat="server" visible="true">
                                </uc1:EsignObj>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButCls" Height="20px" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" AccessKey="V"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" ID="ValidatorsTd" runat="server">
                                <asp:ValidationSummary ID="ValidationSummary1" Style="z-index: 101; left: 232px;
                                    position: absolute; top: 344px" runat="server" ShowMessageBox="True" ShowSummary="False">
                                </asp:ValidationSummary>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
    
    <script language="javascript">
     diableDrop()
    function diableDrop()
	{
	var TT= '<%=TransType%>'
	        if(TT==6)
	        {
	        document.getElementById("Approve_2").disabled=true 
	        }
	}
    </script>
</body>
</html>
