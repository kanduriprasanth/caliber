<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AttachEditableDocsList.aspx.vb" Inherits="CAPAWORKS.AttachEditableDocsList" %>

<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl1.ascx" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>
        <%=MainTitleLtrl.Text%>
    </title>
  <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
    
    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript" src="../JScript/jquery.min.js"></script>

<script type="text/javascript">
    var DocTypId
    var DocTyp
    function fnCrGetCode(RowCnt) {
       
        var UniqueCode = $("#UniqueCode" + RowCnt).text();
        var IndexId = $("#IndexId" + RowCnt).text();
        var IndexIdRef = $("#IndexIdRef" + RowCnt).text();
        var DocTitle = $("#DocTitle" + RowCnt).text();

        $("#RBVal").val(IndexId)
        opener.GetValues(UniqueCode, IndexId, IndexIdRef, DocTitle)

    }
    function fnCrCancel() {
        opener.GetValues('', '', '', '')
        window.self.close()
    }
    document.oncontextmenu = new Function("return false")
    function fnSpCloseWin() {
        if ($("#RBVal").val() == '') {
            alert("Select Document Type ")
            return (false);
        }
       
        window.self.close()
    }
    </script>
</head>
<body>
    <form autocomplete="off" id="Form1" method="post" runat="server">
   
     <asp:Table  CssClass="MainTable" Width="100%" runat="server" ID="Table1">
        <asp:TableRow CssClass="MainHead">
            <asp:TableCell>
                <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <!-----------Base table------------->
                <asp:Table ID="CrTopTable" runat="server" CssClass="SubTable" style="width:100%">
                    <asp:TableRow CssClass="SubHead" HorizontalAlign="Center">
                        <asp:TableCell ColumnSpan="7">
                            <asp:Literal ID="SubTitleLtrl" runat="server"><a href="#" id="AEDHref"  onclick='FnAddNewDocument()'>Add New Document</a></asp:Literal>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="7">
                            <uc1:SearchCtrl id="SearchCtrl1" runat="server">
                            </uc1:SearchCtrl>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD">
                            <asp:Literal ID="MaxRecLtrl" runat="server"></asp:Literal>
                        </asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:Literal ID="MaxRecCntLtrl" runat="server">0</asp:Literal>
                        </asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:Literal ID="RecPerPageLtrl" runat="server"></asp:Literal>
                        </asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:TextBox ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" runat="server" AutoPostBack="False"
                                Width="50px">10</asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:Literal ID="PgNoLtrl" runat="server"></asp:Literal>
                        </asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:TextBox ID="PgNoTxt" CssClass="TxtCls" runat="server" AutoPostBack="False" Width="50px" MaxLength="5">1</asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                                 <asp:LinkButton ID="DisplayBtn" CssClass="ButCls" runat="server" Text="Display"> </asp:LinkButton>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="7">
                            <asp:Table ID="DisTable" runat="server" HorizontalAlign="center" CssClass="SubTable">
                            </asp:Table>
                        </asp:TableCell>
                        <asp:TableCell CssClass="HideRow">
                        <asp:TextBox ID="RBVal" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
   
    </form>
</body>

<script type="text/javascript">
   
    function FnAddNewDocument() {
        var pageURL = "AttachEditableDocReg.aspx"
        SpWinObj = window.open(pageURL, 'SpecCodes', "toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes");
        if (SpWinObj.opener == null) SpWinObj.opener = self;
        SpWinObj.focus();
    }

       
</script>
</html>


