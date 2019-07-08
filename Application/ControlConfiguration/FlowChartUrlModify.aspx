<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FlowChartUrlModify.aspx.vb" Inherits="ControlConfiguration.FlowChartUrlModify" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title><%=MainTitleLtrl.Text%></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
       <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

 <script language="javascript">

     function CkechZero(src, args) {

         if (document.getElementById("NoOfUrlTxt").value <= 0 || isNaN(document.getElementById("NoOfUrlTxt").value)) {
             src.errormessage = "Enter Numeric Value Greater than Zero For: No.Of URl Required";
             Page_IsValid = false;
             args.IsValid = false;
             return false;
         }
     }

     function CkechCategory(src, args) {

         if (document.getElementById("CategoryDDl").value == "0") {
             src.errormessage = "Select Value For: Category";
             Page_IsValid = false;
             args.IsValid = false;
             return false;
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
                            <asp:TableCell CssClass="SubHead" ColumnSpan="5">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="CategoryTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="CategoryValTD" ColumnSpan="2">
                                <asp:DropDownList CssClass="HideRow" ID="CategoryDDl" runat=server AutoPostBack=true  >
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow >
                         <asp:TableCell CssClass="MainTD" ID="NoOfUrlTD" ></asp:TableCell>
                         <asp:TableCell CssClass="MainTD">
                            <asp:TextBox ID="NoOfUrlTxt" runat=server AutoPostBack=true MaxLength="2" CssClass="TxtCls" onkeypress="return IsDigit1(event);"></asp:TextBox>
                         </asp:TableCell>
                        </asp:TableRow>
                            
                         <asp:TableRow CssClass="HideRow" ID="UrlTabTr">
                            <asp:TableCell CssClass="MainTD" ColumnSpan=3>
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="UrlTable">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                            
                    </asp:Table>
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
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit"
                                    Width="70"></asp:Button>
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
    
     <script language=javascript>

         function fnTaskType() {
             var SpWinObj;
             var pageURL = "TaskTypePopup.aspx"
             SpWinObj = window.open(pageURL, 'SpecCodes', "height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
             if (SpWinObj.opener == null) SpWinObj.opener = self;
             SpWinObj.focus();
         }

         var RowCount
         function fnOpenUrlPopUp(RowCnt) {
             RowCount = RowCnt
             var SpWinObj;
             var pageURL = "../ImageManipulation/MenuPopup.aspx?RowCnt=" + RowCnt
             SpWinObj = window.open(pageURL, 'SpecCodes', "height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
             if (SpWinObj.opener == null) SpWinObj.opener = self;
             SpWinObj.focus();
         }

         function fnSetActions(MenuName, MenuUrl) {
             document.getElementById("Url_" + RowCount).value = MenuUrl;
         }
     </script>
</body>
</html>
