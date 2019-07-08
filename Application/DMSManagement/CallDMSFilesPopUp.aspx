<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CallDMSFilesPopUp.aspx.cs" Inherits="DMSManagement.CallDMSFilesPopUp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language=javascript >
    
    function CallDMSPopup(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,UParam)
    {
        var pageURL = "../DMSManagement/DMSFilesSelPopUp.aspx?RType=" + RepositoyTypeId + "&FixedType=" + FixedType + "&SourceTypeId=" + SourceTypeId + "&DocSourceId=" + SourceId + "&PlantID=" + PlantID + "&UParam=" + UParam;
        
        var winHeight = (screen.availHeight/100)*80; //80% of the screen height
        var winWidth = (screen.availWidth/100)*60;   //60% of the screen width

        var SpWinObj = window.open(pageURL,'DMSPopUp',"height="+winHeight+",width="+winWidth+",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    
    function OpenDMSPopUp(UParam)
    {
        var UParam = "";
        var RepositoyTypeId =1;   // Repository Type
        var SourceTypeId =1;   // SourceType Id
        var SourceId =0;   // Source Id
        var PlantID ="<%=Session["PlantID"]%>";
        var FixedType = 0;// 1: for loading documents of current type. 0: for selection based searching

        CallDMSPopup(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,UParam);

    }

    function Ret_OpenDMSPopUp(DocId,DocCode,DocDesc,UParam)
    {
        document.getElementById("DocumentIdTxt").value= DocId;
        document.getElementById("DocumentNameLbl").innerHTML = document.getElementById("DocumentNameTxt").value = DocCode;
    }

    function OkRet_OpenDMSPopUp(UParam)
    {
        
    }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
            CssClass="MainTable" runat="server">
            <asp:TableRow CssClass="MainHead">
                <asp:TableCell>
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell Width=40%></asp:TableCell>
                            <asp:TableCell Width=60%></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD"  Width=40%>
                               DMS Document Ref.
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell6" runat="server" CssClass="MainTD" Width=60%>
                                <input type="button" onclick="OpenDMSPopUp()" class='RsnPUP'>
                                <asp:Label ID="DocumentNameLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="DocumentIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="DocumentNameTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%-------------------------------------------------%>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'" 
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit">
                                </asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server" ID="rr" Visible="false">
                <asp:TableCell>
                    <asp:TextBox ID="TempVal" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="VAl1">
                    <asp:Table ID="valTbl" runat="server">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                                    ShowMessageBox="True"></asp:ValidationSummary>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
