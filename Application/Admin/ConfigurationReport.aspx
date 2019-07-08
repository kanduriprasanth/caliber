<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ConfigurationReport.aspx.vb"
    Inherits="Admin.ConfigurationReport" %>

<%@ Register TagPrefix="uc3" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx" %>
<%@ Register TagPrefix="uc2" TagName="Footer" Src="../CaliberCommonCtrls/ReportFooter.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Configuration Report</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link href="../TRIMS.css" type="text/css" rel="stylesheet">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
		
		  var SpWinObj

 function fnOpenCrPopUp(){
    	var pageURL = "ConfigRptCreationPopUp.aspx"
	var features = "height=390,width=470,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=150,left=150"
	SpWinObj = window.open(pageURL,'SpecCodes',features)
	if(SpWinObj.opener == null) SpWinObj.opener=self;
	SpWinObj.focus();
}
function fnCrSetToCode(KfIdVal,KfLableVal){
      var objId
      var obj
         
		 
		 objId=  'KfId'
         obj=document.getElementById(objId)
		 obj.value = KfIdVal
		 
		  objId=  'KfLable'
         obj=document.getElementById(objId)
		 obj.value = KfLableVal 
		 document.all("KfLable").innerHTML = KfLableVal
} 
	function fnCrformSubmit(){
	 document.all("GoBtn").click()
	}
		
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <table width="100%" border="1" cellspacing="1" cellpadding="1" align="center">
            <tr>
                <td>
                    <uc1:Header id="Header1" runat="server">
                    </uc1:Header>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="HeaderDiv" runat="server" Width="100%" HorizontalAlign="Left" EnableViewState="False">
                        <asp:Table ID="H1" Style="font-size: 10px; margin-left: 0px; font-family: Arial"
                            Width="100%" runat="server" BorderWidth="0" CellSpacing="1" CellPadding="1">
                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Center" Style="width: 720px; font-size: 16; font-weight: bold;
                                    padding: 0px; background-color: white; text-align: center">LIMS Configuration Matrix</asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:Panel>
                    <asp:Panel ID="BodyDiv" runat="server" Width="100%" HorizontalAlign="Left" EnableViewState="False">
                        <asp:Table ID="Table3" Width="100%" runat="server" BackColor="#ffffff" HorizontalAlign="center"
                            CellPadding="0" CellSpacing="0" Border="1" BorderColor="black">
                            <asp:TableRow>
                             <asp:TableCell CssClass="MainTD" Text="Select Module" Width="75px" Style="font-weight:bold;text-align:center">
									</asp:TableCell>	 <%--width="105px"--%>
                                <asp:TableCell CssClass="MainTD" ColumnSpan=9 Width="645px">
										 <INPUT type="button" onclick="fnOpenCrPopUp()" class='RsnPUP' style="HEIGHT:20px"> &nbsp;
                                         <asp:Label ID="KfLable" runat="server" CssClass="MainTd"></asp:Label>
                                </asp:TableCell><%--width="615px"--%>
                            </asp:TableRow>
                        </asp:Table>
                        <asp:Table ID="Table1" Width="100%" runat="server" BackColor="#ffffff" HorizontalAlign="center"
                            CellPadding="0" CellSpacing="0" Border="1" BorderColor="black">
                        </asp:Table>
                        
                        <!--For Print Purpose-->
                        <asp:Table ID="DisTable" Width="100%" runat="server" CssClass="HideRow" BorderColor="black" Border="1"
                            CellSpacing="0" CellPadding="0" HorizontalAlign="center" BackColor="#ffffff">
                        </asp:Table>
                        <asp:Table ID="DisTable1" Width="100%" runat="server" CssClass="HideRow" BorderColor="black" Border="1"
                            CellSpacing="0" CellPadding="0" HorizontalAlign="center" BackColor="#ffffff">
                        </asp:Table>
                        <asp:Table ID="DisTable2" Width="100%" runat="server" CssClass="HideRow" BorderColor="black" Border="1"
                            CellSpacing="0" CellPadding="0" HorizontalAlign="center" BackColor="#ffffff">
                        </asp:Table>
                        <!--End of Print Purpose-->
                        
                        <!--For Display Purpose-->
                        <asp:Table ID="DisTable3" Width="100%" runat="server" BorderColor="black" Border="1"
                            CellSpacing="0" CellPadding="0" HorizontalAlign="center" BackColor="#ffffff">
                        </asp:Table>
                        
                        <!--End of Display Purpose-->
                        
                    </asp:Panel>
                    <asp:Panel ID="FooterDiv" runat="server" Width="100%" HorizontalAlign="Left" EnableViewState="False">
                        <asp:Table ID="F3" Style="font-size: 10px; margin-left: 0px; font-family: Arial"
                            Width="100%" runat="server" BorderWidth="0" CellSpacing="1" CellPadding="1">
                        </asp:Table>
                    </asp:Panel>
                    <asp:TextBox runat="server" Style="visibility: hidden" Height="0" Width="0" ID="HeaderObjIDs"
                        Text="H1"></asp:TextBox>
                    <asp:TextBox runat="server" Style="visibility: hidden" Height="0" Width="0" ID="HeaderObjTypes"
                        Text="TN"></asp:TextBox>
                    <asp:TextBox runat="server" Style="visibility: hidden" Height="0" Width="0" ID="BodyObjIDs"
                        Text="DisTable,DisTable1,DisTable2"></asp:TextBox>
                    <asp:TextBox runat="server" Style="visibility: hidden" Height="0" Width="0" ID="BodyObjTypes"
                        Text="TN,TN,TN"></asp:TextBox>
                    <asp:TextBox runat="server" Style="visibility: hidden" Height="0" Width="0" ID="BodyObjTabHeadRows"
                        Text="1,1"></asp:TextBox>
                    <asp:TextBox runat="server" Style="visibility: hidden" Height="0" Width="0" ID="FooterObjIDs"
                        Text="F3"></asp:TextBox>
                    <asp:TextBox runat="server" Style="visibility: hidden" Height="0" Width="0" ID="FooterObjTypes"
                        Text="TN"></asp:TextBox>
                </td>
            </tr>
            <tr>
            </tr>
            <tr>
                <td style="text-align: center">
                    <uc3:CaliberPrintCtrl id="CaliberPrintCtrl1" runat="server">
                    </uc3:CaliberPrintCtrl>
                </td>
            </tr>
        </table>
        <asp:ImageButton ID="GoBtn" runat="server" ImageUrl="../IMAGES/Go.gif" CssClass="HideRow">
        </asp:ImageButton>
        <asp:TextBox ID="KfId" runat="server" Height="0" Width="0" CssClass="HideRow" AutoPostBack="True"></asp:TextBox>
    </form>

    <script language="javascript">
	
	function ChkReasons(){
      var Reasons=''//document.getElementById('ReasonsTxt').value
      var AskReasons =0//document.Form1.AskReasonsTxt.value
	   if(AskReasons==1 && Reasons==''){
	   alert("Enter Reasons For Other Print")
	   return(false);
	   }
       return(true);
}
isWorkSheetPrint=1;
function fnPrintConfirm()
	{   
		
	 	var pageURL="PrintConfirm.aspx"
	  var features = "height=20,width=60,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=350,left=150"
	 window.showModalDialog( pageURL ,'CaliberQAMS','dialogheight=6;dialogwidth=15;help=0;status=0;scroll=0;edge=raised;')		
		window.navigate(window.location.href)	 			
	}
	
 //-->
    </script>

</body>
</html>
