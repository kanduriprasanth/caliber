<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="IssueLogFile.aspx.vb" Inherits="CAPAWORKS.IssueLogFile" %>

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
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" style="font-weight:bold; width:30%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Label CssClass="MainTD" ID="CodeLbl" runat=server></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="IsuTypeTd" style="font-weight:bold; width:30%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                 <asp:Label CssClass="MainTD" ID="IsuTypelbl" runat=server></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                                                                    
                        <asp:TableRow>
                         <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                         <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="HeaderTAb"></asp:Table>
                         </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow ID="DisplayIsuWITTr" CssClass="HideRow">
                         <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                         <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="DispIsuWITTbl"></asp:Table>
                         </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow ID="ActPlnTr" CssClass="MainTD">
                         <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                         <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="ActPlanTab"></asp:Table>
                         </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="ClserTr" CssClass="HideRow">
                         <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                         <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="ClserTrTab"></asp:Table>
                         </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow  CssClass="HideRow" ID="ChidIsuTr">
                          <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                            <asp:Table ID="ChidIsuTab" runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center"></asp:Table>    
                         </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow >
                           <asp:TableCell CssClass="MainTD" ID="EvalSummTD" runat="server" style="font-weight:bold; width:30%" ></asp:TableCell>
                           <asp:TableCell CssClass="MainTD">
                             <asp:TextBox CssClass="TxtCls" runat=server  id="EvalSummaryTxt" TextMode=MultiLine Width="250px"></asp:TextBox>
                           </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow CssClass="HideRow">
                           <asp:TableCell CssClass="MainTD" ID="CloseIsuTD" runat="server" style="font-weight:bold; width:30%" ></asp:TableCell>
                           <asp:TableCell CssClass="MainTD">
                             <asp:CheckBox ID="CloseChk" CssClass="MainTD" Text="Yes" runat=server />
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
                    <asp:Table runat="server"  Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table3" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow >
                            <asp:TableCell >
                                <asp:Button CssClass="HideRow" runat="server" ID="IssClsBtn"  onMouseOver="this.className='ButSelOCls'"  AccessKey="C" onMouseOut="this.className='ButSelCls'" Text="" Width="100" >
                                                       </asp:Button>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit">
                                </asp:Button>
                                 </asp:TableCell>
                                 
                                 <asp:TableCell HorizontalAlign=Left >
                                  <asp:Button CssClass="ButexCls" onMouseOver="this.className='ButexOCls'"
                                     runat=server AccessKey="C" onMouseOut="this.className='ButexCls'" Text="Word Format report"  ID="WrdFrmtBtn"/>
                                 </asp:TableCell>
                                 
                                <asp:TableCell  HorizontalAlign="Right" CssClass ="HideRow">
                                <asp:Button CssClass="ButexCls" onMouseOver="this.className='ButexOCls'"
                                     runat=server AccessKey="C" onMouseOut="this.className='ButexCls'" Text="Complete  Report"  ID="RptBtn"/>
                                                                   
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
