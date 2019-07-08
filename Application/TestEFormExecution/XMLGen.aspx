<%@ Page Language="vb" AutoEventWireup="false" Codebehind="XMLGen.aspx.vb" Inherits="TestEFormExecution.XMLGen"
    MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>App</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <link href="../TRIMS.css" rel="stylesheet">

    <script language="javascript" src="../JScript/jquery.min.js"></script>
    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript" src="../JScript/CustomValidationFuns.js"></script>
    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />
    
    <script type="text/javascript">
    
        setTimeout("DisplyConfrmation()",100)  //For Confirmation Msg
    
    function DisplyConfrmation()    
    {
      var savedFlag="<%=savedFlag%>"
       if(savedFlag=='1')
        alert("Saved SuccessFully");      
    }
    
   function fncheckIssCode()    
    {    
      var IssueCode=document.getElementById("IssueCodeTxt").value;      
       if(IssueCode=='')
        alert("Please Enter Issue Code");      
    }
    
     function fncheckxml()    
    {    
      var GenXml=document.getElementById("GenXmlTXt").value;      
       if(GenXml=='')
        alert("Please Click GetXML");      
    }
    
    
    </script>
    
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="Table3" runat="server" CellPadding="0" CellSpacing="0" BorderWidth="3"
            HorizontalAlign="center" CssClass="MainTable" EnableViewState="False" Width="98%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server">XML GENERATION</asp:Literal>
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
                            <asp:TableCell Width="150px" CssClass="MainTd">
                                <asp:Label ID="IssueCodeLbl" runat="server">Issue Code</asp:Label>
                               
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTd">
                            <asp:TextBox  ID="IssueCodeTxt" runat="server">
                                </asp:TextBox> &nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Button ID="GetxmlBtn" Text="Get Xml" OnClientClick="fncheckIssCode()" CssClass="ButCls" runat="server" />
                            </asp:TableCell> 
                        </asp:TableRow>
                         <asp:TableRow>
                            <asp:TableCell Width="150px" CssClass="MainTd">
                                <asp:Label ID="Label1"  runat="server">XML String</asp:Label>                                
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTd">
                              <asp:TextBox ID="GenXmlTXt" Width="450px" ReadOnly="true" runat="server" TextMode="MultiLine" Height="150px"></asp:TextBox>
                            </asp:TableCell> 
                        </asp:TableRow>
                         <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" CssClass="MainTd">      
                              <asp:Button ID="SaveXmlToFile" Text="Download" OnClientClick="fncheckxml()" CssClass="ButCls" runat="server" />                              
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
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
