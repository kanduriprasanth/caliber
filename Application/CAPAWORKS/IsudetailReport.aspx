<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="IsudetailReport.aspx.vb" Inherits="CAPAWORKS.IsudetailReport" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/Common2.js"></script>
    
    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'

 function fnWorkFlowPoup(WorkFlowId)
      {
            var pageURL = "../TestDynamicEForm/WorkFlowDetails.aspx?WorkFlowId=" + WorkFlowId + "&AT=G" 
            var features = "height=500,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
      }
	//-->
	</script>
     
     
</head>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
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
                            <asp:TableCell CssClass="HideRow" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                                                
                        <asp:TableRow>
                           <asp:TableCell CssClass="MainTD" ColumnSpan="2" style="background-color:White">
                              <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                   HorizontalAlign="center" ID="IsuLogTable"  ></asp:Table>
                           </asp:TableCell>
                        </asp:TableRow>
                                                                    
                        <asp:TableRow ID="ClserTr" CssClass="HideRow">
                         <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                         <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="ClserTrTab"></asp:Table>
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
                        HorizontalAlign="center" ID="Table3" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                                <asp:Button CssClass="HideRow" runat="server" ID="IssClsBtn"  onMouseOver="this.className='ButSelOCls'"  AccessKey="C" onMouseOut="this.className='ButSelCls'" Text="" Width="100" >
                                                       </asp:Button>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Back" Width="70">
                                </asp:Button>
                                                                   
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                        <asp:TextBox ID="IssuedWorksIdLstTxt" runat =server ></asp:TextBox>
                        <asp:TextBox ID="IssuedWorksAulIdLstTxt" runat =server ></asp:TextBox>
                        <asp:TextBox ID="PlanIdTxt" runat="server"></asp:TextBox>
                        <asp:TextBox ID="IsuLogIDTxt" runat="server"></asp:TextBox>
                        <asp:TextBox ID="IsuCodeTxt" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TypeTxt" runat="server"></asp:TextBox>
                         <asp:TextBox ID="PlanCodeTxt" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
