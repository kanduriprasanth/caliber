<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LogandRptCfgMapping.aspx.vb" Inherits="CAPAWORKS.LogandRptCfgMapping" %>

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
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                            <asp:TableRow>
							<asp:TableCell CssClass="MainTD" ID="TableCell1" style="font-weight:bold"></asp:TableCell>
							<asp:TableCell CssClass="MainTD">
                                 <asp:RadioButtonList CssClass="MainTD">
                                   <asp:ListItem Value="1"> Issue </asp:ListItem>
                                   <asp:ListItem Value="2"> Action Plan </asp:ListItem>
                                 </asp:RadioButtonList>
                            </asp:TableCell>
					     </asp:TableRow>
					     
                        
                         <asp:TableRow>
							<asp:TableCell CssClass="MainTD" ID="CategoryTd" style="font-weight:bold"></asp:TableCell>
							<asp:TableCell CssClass="MainTD">
                                 <asp:DropDownList ID="CategoryDDl"  runat="server" CssClass="MainTD" AutoPostBack=true></asp:DropDownList>
                            </asp:TableCell>
					     </asp:TableRow>
					     
					      <asp:TableRow>
							<asp:TableCell CssClass="MainTD" ID="RptDescTd" style="font-weight:bold"></asp:TableCell>
							<asp:TableCell CssClass="MainTD">
                                
                                 <input class='RsnPUP' onclick="ReportListPopup()" tabindex="5" type="button">
                                <asp:Label ID="ReptDescLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="RptDescTtx" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="RptIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                
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
                <asp:TableCell CssClass="MainFoot" ColumnSpan=2 >
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                             <asp:TableCell CssClass="MainFoot" >
                                <asp:Button ID="SubmitBtn" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit">
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
                        <asp:TextBox ID="FldIdLstTxt" CssClass="HideRow" runat=server></asp:TextBox>
                        <asp:TextBox ID="WitFldIdLstTxt" CssClass="HideRow" runat=server></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language=javascript>

 function ReportListPopup()
 {
  
  if (document.getElementById("CategoryDDl").value != "")
  {
    var pageURL ="../CAPAWORKS/ReportListPopup.aspx?CategoryID=" + document.getElementById("CategoryDDl").value
    SpWinObj = window.open(pageURL,'SpecCodes1',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
  }
  else
  {
    alert("select Category")
  }  
 }
 
 function SetReportID(BaseId,Reportcode,ReportDesc)
 {
 
 document.getElementById("RptIdTxt").value=BaseId
 document.getElementById("ReptDescLbl").value=ReportDesc
 document.getElementById("ReptDescLbl").innerHTML=ReportDesc
 
 }
</script>

</html>