<%@ Register TagPrefix="uc3" TagName="ReportFooter" Src="../CaliberCommonCtrls/ReportFooter.ascx"  %>
<%@ Register TagPrefix="uc2" TagName="ReportHeader" Src="../CaliberCommonCtrls/ReportHeader.ascx"  %>
<%@ Register TagPrefix="uc1" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx"  %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ObservationPrint.aspx.vb" Inherits="AuditObservation.WorkSheetPrint" %>
<HTML>
	<HEAD>
		<title>Observation Sheet Print</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="../TRIMS.CSS" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<style>.MainTD { PADDING-RIGHT: 3px; PADDING-LEFT: 3px; FONT-SIZE: 19pt; PADDING-BOTTOM: 2px; PADDING-TOP: 2px; FONT-FAMILY: Arial; BACKGROUND-COLOR: #ffffff }
		</style>
	</HEAD>
	<body style="BACKGROUND-COLOR: #ffffff" MS_POSITIONING="GridLayout">
		<div style="BORDER-RIGHT: gray thin solid; BORDER-TOP: gray thin solid; MARGIN-TOP: 20px; MARGIN-LEFT: 20px; BORDER-LEFT: gray thin solid; WIDTH: 730px; BORDER-BOTTOM: gray thin solid"
			align="center">
			<form id="Form1" method="post" runat="server">
				<asp:panel id="HeaderDiv" runat="server" EnableViewState="False" HorizontalAlign="Left" Width="720">
					<SPAN style="TEXT-ALIGN: center">
						<uc2:ReportHeader id="ReportHeader1" runat="server"></uc2:ReportHeader></SPAN></asp:panel><asp:panel id="BodyDiv" runat="server" EnableViewState="False" HorizontalAlign="Left" Width="720"></asp:panel><asp:panel id="FooterDiv" runat="server" EnableViewState="False" HorizontalAlign="Left" Width="720"></asp:panel><SPAN style="TEXT-ALIGN: center"></SPAN><asp:textbox id="HeaderObjIDs" style="VISIBILITY: hidden" runat="server" width="0" height="0"></asp:textbox><asp:textbox id="HeaderObjTypes" style="VISIBILITY: hidden" runat="server" width="0" height="0"></asp:textbox><asp:textbox id="BodyObjIDs" style="VISIBILITY: hidden" runat="server" width="0" height="0" text=""></asp:textbox><asp:textbox id="BodyObjTypes" style="VISIBILITY: hidden" runat="server" width="0" height="0"
					text=""></asp:textbox><asp:textbox id="BodyObjTabHeadRows" style="VISIBILITY: hidden" runat="server" width="0" height="0"
					text=""></asp:textbox><asp:textbox id="FooterObjIDs" style="VISIBILITY: hidden" runat="server" width="0" height="0"
					text="FTab2"></asp:textbox>
				<asp:textbox id="FooterObjTypes" style="VISIBILITY: hidden" runat="server" width="0" height="0"></asp:textbox><br>
				<asp:textbox id="RegCode" style="VISIBILITY: hidden" runat="server" width="0" height="0"></asp:textbox><asp:textbox id="BodyCode" style="VISIBILITY: hidden" runat="server" width="0" height="0"></asp:textbox><asp:textbox id="TT" style="VISIBILITY: hidden" runat="server" width="0" height="0"></asp:textbox><asp:textbox id="BodyId" style="VISIBILITY: hidden" runat="server" width="0" height="0"></asp:textbox><asp:textbox id="MSSCTxt" style="VISIBILITY: hidden" runat="server" width="0" height="0"></asp:textbox><asp:textbox id="AskReasonsTxt" style="VISIBILITY: hidden" runat="server" width="0" height="0"></asp:textbox>&nbsp;&nbsp;&nbsp;
				<asp:label id="RemarksLbl" CssClass="HideRow" Runat="server"></asp:label><asp:textbox id="ReasonsTxt" runat="server" Width="200" CssClass="HideRow" MaxLength="40"></asp:textbox><asp:label id="PopUpLbl" CssClass="HideRow" Runat="server">
					<INPUT type="button" onclick="fnOpenReasons(1,'ReasonsTxt')" class='RsnPUP'>
				</asp:label></form>
			<SPAN style="TEXT-ALIGN: center">
				<uc1:caliberprintctrl id="CaliberPrintCtrl1" runat="server"></uc1:caliberprintctrl></SPAN></div>
		<script language="javascript">
<!--
function ChkReasons(){
      var Reasons=document.getElementById('ReasonsTxt').value
	   var AskReasons =document.getElementById('AskReasonsTxt').value
	   if(AskReasons==1 && Reasons==''){
	   alert("Enter Reasons For Other Print")
	   return(false);
	   }
       return(true);
}
isWorkSheetPrint=1
isPrintLogo=0
function fnPrintConfirm()
	{

	    //var Reasons=document.getElementById('ReasonsTxt').value
		var mTSList=document.all("BodyId").value	
	  	var RegBaseId=document.all("RegCode").value
	 	var BodyIdId=document.all("BodyId").value
	 	var BodyCodeId=document.all("BodyCode").value
	 	
	 	var pageURL="WSPConfirm.aspx?BodyCodeId=" + BodyCodeId  
	 	
	 	var TT=document.all("TT").value
	
	 var features = "height=20,width=60,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=350,left=150"
	 window.showModalDialog( pageURL ,'Caliber LIMS','dialogheight=6;dialogwidth=15;help=0;status=0;scroll=0;edge=raised;')		
	
	  
 			
	}
 //-->
		</script>
	</body>
</HTML>
