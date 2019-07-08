<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CAPACaptionReg.aspx.vb" Inherits="CAPAWORKS.CAPACaptionReg" %>

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
							<asp:TableCell CssClass="MainTD" ID="ActonPlanTypeTD" style="font-weight:bold"></asp:TableCell>
							<asp:TableCell CssClass="MainTD">
                                 <asp:DropDownList ID="ActplanDDl" runat="server" AutoPostBack="true" CssClass="MainTD"></asp:DropDownList>
                            </asp:TableCell>
					     </asp:TableRow>
					     
					      <asp:TableRow>
							<asp:TableCell CssClass="MainTD" ID="PlanCaprionTd" style="font-weight:bold"></asp:TableCell>
							<asp:TableCell CssClass="MainTD">
                                 <asp:TextBox  runat=server CssClass="MainTD"  ID="PlanCaptionTxt" TextMode=MultiLine ></asp:TextBox>
                            </asp:TableCell>
					     </asp:TableRow>
					     
					     
					     <asp:TableRow id= "ExisCapTabTr"  CssClass="HideRow">
					        <asp:TableCell CssClass="MianTD" ColumnSpan="2">
					          <asp:Table runat=server CssClass="Subtable" ID="ExisCapTab" Width="100%" CellPadding="0" CellSpacing="1"
                                HorizontalAlign="center"></asp:Table> 
                                
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
 
 var FldIdArr =new Array()
 var WitFldIdArr=new  Array()
 
 var FldCount ="<%=FldCount %>"
 var WitFldCount = "<%=WitFldCount %>"
 var ExpMessgae =""
 
 function getCheckFldIds(src,args)
 {
    var FldCnt=getCheckEdFieldCount()
    var WitFldCnt=getCheckWitFldCount()
     
    if ((WitFldCount != 0) &&  (WitFldCnt == 0)){ ExpMessgae= ExpMessgae + "Select At Least One Standard Work Item Field" + '\n-' }
    if ((FldCount != 0) &&  (FldCnt == 0)) { ExpMessgae=ExpMessgae+ "Select At Least One Standard Login Fields" + '\n-' }
  
   if (ExpMessgae !="")
   {
      src.errormessage=ExpMessgae.substring(0,ExpMessgae.length-3)
      args.IsValid=false;
      Page_IsValid=false;
   }
   else
   {
      document.getElementById("FldIdLstTxt").value=FldIdArr.join(",");
      document.getElementById("WitFldIdLstTxt").value=WitFldIdArr.join(",");
   }  
 }
 
 function getCheckEdFieldCount()
 {
    var FldbaseID 
    var FldCnt=0 
    if (FldCount != 0)
     {
           for(var i=0;i<FldCount;i++)
           {
              FldbaseID=document.getElementById("FlDIDTxt_" + i).value;
              if(document.getElementById("FldID_" + FldbaseID).checked==true ) { FldIdArr.push(FldbaseID); FldCnt= FldCnt+1; } 
           }
     }
      return FldCnt;
 }


 function getCheckWitFldCount()
 {
  
    var WitFldbaseID 
    var WitFldCnt=0 
    if (WitFldCount != 0)
     {
           for(var i=0;i<WitFldCount;i++)
           {
              WitFldbaseID=document.getElementById("WitFlDIDTxt_" + i).value;
              if(document.getElementById("WitFldID_" + WitFldbaseID).checked==true ) { WitFldIdArr.push(WitFldbaseID); WitFldCnt= WitFldCnt+1; } 
           }
     }
      return WitFldCnt;
 }

 
 function fnCheckColSel(BaseID)
 {
   var FldCnt=getCheckEdFieldCount()
   if (FldCnt > 7 ) 
   { 
     alert("Field Selection Should  Be Less Than or  equal to 7");
     document.getElementById("FldID_" + BaseID).checked=false
   }
 }
 
</script>

</html>