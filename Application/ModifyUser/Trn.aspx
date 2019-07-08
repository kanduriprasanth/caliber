<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="ModifyUser.Trn" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
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
	<!--
	RequestPrefix='<%=me.ClientID%>'

	//-->
	function fnSetToReasons(argValue){
   
		document.getElementById('RemarksTxt').value = argValue
	}
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" runat="server">
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
                                <asp:Label runat="server" ID="UserName1"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--<asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl1" runat="server"></asp:Literal>
                                <asp:Label runat="server" ID="UserName3"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>--%>
                        <%--<asp:TableRow>
                            <asp:TableCell CssClass="hiderow" ID="DescTd" Width="310px"></asp:TableCell>
                            <asp:TableCell CssClass="hiderow">
                                <asp:TextBox ID="Desctxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    AccessKey="D" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="hiderow" ID="CodeTd"></asp:TableCell>
                            <asp:TableCell CssClass="hiderow">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px"
                                    AccessKey="C" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>--%>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Width="310px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DescTd" Width="310px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="DescValTd"> </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CategoryTd" Width="310px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                            <asp:Label ID="CategoryValLbl" runat="server" CssClass="MainTd"></asp:Label>
                            <asp:TextBox ID="CategoryIdTxt" runat="server" CssClass="HideRow" MaxLength="25" Width="200px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="RoleTd" Width="310px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                            <asp:Label ID="RoleValLbl" runat="server" CssClass="MainTd"></asp:Label>
                            <asp:TextBox ID="RoleIdTxt" runat="server" CssClass="HideRow" MaxLength="25" Width="200px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="RptToTd" Width="310px">Reporting To</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                            <asp:Label ID="RptToValLbl" runat="server" CssClass="MainTd"></asp:Label>
                            <asp:TextBox ID="RptToTxt" runat="server" CssClass="HideRow" MaxLength="25" Width="200px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Text="Remark(s) / Reason(s)" ID="Remarks1Td">
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt1" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R" onkeyup="RemarksRange()"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                      <%--  <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="UserLogIdTd" Width="310px" Text="UserLogId"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="UserLogIdValTd"></asp:TableCell>
                        </asp:TableRow>--%>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="hiderow">
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                                <input type="button" onclick="fnOpenReasons(1),'RemarksTxt'" class='RsnPUP'>
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
                                    onMouseOut="this.className='ButCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
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
<!--
document.getElementById('CodeTxt').focus()
//-->
function RemarksRange() {
		
	        if (((window.event.srcElement.value.length)*1)>250)
            alert("Characters exceeding limit\nMaximum Length: "+ 250 +" Characters")
            
		}
</script>

</html>
