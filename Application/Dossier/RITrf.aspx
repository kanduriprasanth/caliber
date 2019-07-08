<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RITrf.aspx.vb" Inherits="Dossier.RITrf" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>RITrf</title>
    <script src="../JScript/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../JScript/Common2.js"></script>
      <link rel="stylesheet" href="../TRIMS.css">
    <script type="text/javascript">
			//<![CDATA[
        RequestPrefix = '<%=me.ClientID%>'
        function fnSetToReasons(argValue) {
            document.getElementById("RemarksTxt").value = argValue
        }
			//]]>
    </script>
</head>
<body>
    <form autocomplete="off" id="Form1" method="post" runat="server">
    <center>
    <asp:Table ID="Table3" runat="server" HorizontalAlign="center" CssClass="MainTable"
        EnableViewState="False">
        <asp:TableRow CssClass="MainHead">
            <asp:TableCell ColumnSpan="2">
                <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2">
                <!-----------Base table------------->
                <asp:Table runat="server" CssClass="SubTable" HorizontalAlign="center" ID="Table1">
                    <asp:TableRow CssClass="HideRow">
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="SubHead">
                        <asp:TableCell ColumnSpan="2">
                            <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ID="AduitTD" ColumnSpan="2">
                            <asp:Table ID="Atab" CssClass="MainTable" runat="server" HorizontalAlign="center">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Table ID="DataTab" runat="server" CssClass='SubTable' HorizontalAlign="Center">
                                        </asp:Table>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="DataTab2Tr" runat="server" CssClass="HideRow">
                                    <asp:TableCell>
                                        <asp:Table ID="DataTab2" runat="server" CssClass='SubTable' HorizontalAlign="Center">
                                        </asp:Table>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Table ID="IATab" runat="server" CssClass='SubTable' HorizontalAlign="Center">
                                        </asp:Table>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Table ID="AppStsTab" runat="server" CssClass='SubTable' HorizontalAlign="Center">
                                        </asp:Table>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ID="FromUserCpTd" runat="server"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD" ID="FromUserValTd" runat="server"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ID="UserTd" runat="server"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:DropDownList runat="server" ID="TrfUser">
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ID="RemarksTd" runat="server">
                            <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                        </asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                            <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP' />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                        <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                            padding-bottom: 0px">
                            <uc1:esignobj id="EsignObj1" runat="server" visible="true">
                                </uc1:esignobj>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-----------End of Base table------------->
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="MainFoot">
            <asp:TableCell>
                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text=""></asp:Button>
            </asp:TableCell>
            <asp:TableCell CssClass="MainFoot" HorizontalAlign="Right">
                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButCls" onMouseOver="this.className='ButOCls'"
                    onMouseOut="this.className='ButCls'" AccessKey="V"></asp:HyperLink>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="HideRow">
            <asp:TableCell ColumnSpan="2" ID="ValidSummaryTD" runat="server">
                <asp:ValidationSummary ID="ValidationSummary1" Style="z-index: 101; left: 232px;
                    position: absolute; top: 344px" runat="server" ShowMessageBox="True" ShowSummary="False">
                </asp:ValidationSummary>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </center>
    </form>
</body>
</html>
