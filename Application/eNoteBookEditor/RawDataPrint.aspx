<%@ Register TagPrefix="uc1" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx"  %>
<%@ Register TagPrefix="uc2" TagName="ReportHeader" Src="../CaliberCommonCtrls/ReportHeader.ascx"  %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RawDataPrint.aspx.vb" Inherits="eNoteBookEditor.RawDataPrint" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>RawDataPrint2</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<LINK href="../TRIMS.CSS" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<style>
		.MainTD { PADDING-RIGHT: 3px; PADDING-LEFT: 3px; FONT-SIZE: 19pt; PADDING-BOTTOM: 2px; PADDING-TOP: 2px; FONT-FAMILY: Arial; BACKGROUND-COLOR: #ffffff }
		</style>
	</HEAD>
	<body MS_POSITIONING="GridLayout" Style="BACKGROUND-COLOR: #ffffff">
		<div style="BORDER-RIGHT: gray thin solid; BORDER-TOP: gray thin solid; MARGIN-TOP: 20px; MARGIN-LEFT: 20px; BORDER-LEFT: gray thin solid; WIDTH: 730px; BORDER-BOTTOM: gray thin solid"
			align="center">
			<form id="Form1" method="post" runat="server">
				<asp:Panel id="HeaderDiv" runat="server" Width="720" HorizontalAlign="Left" EnableViewState="False">
				<SPAN style="TEXT-ALIGN: center">
					<uc2:ReportHeader id="ReportHeader1" runat="server"></uc2:ReportHeader>
				</SPAN>
				</asp:Panel>
				<asp:Panel id="BodyDiv" runat="server" Width="720" HorizontalAlign="Left" EnableViewState="False"></asp:Panel>
				<asp:Panel id="FooterDiv" runat="server" Width="720" HorizontalAlign="Left" EnableViewState="False"></asp:Panel>
				<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="HeaderObjIDs"></asp:TextBox>
				<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="HeaderObjTypes"></asp:TextBox>
				<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="BodyObjIDs" text=""></asp:TextBox>
				<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="BodyObjTypes"
					text=""></asp:TextBox>
				<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="BodyObjTabHeadRows"
					text=""></asp:TextBox>
				<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="FooterObjIDs"
					text="FTab2"></asp:TextBox>
				<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="FooterObjTypes"></asp:TextBox>
				<br>
				<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="MSSCTxt"></asp:TextBox>
				<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="AskReasonsTxt"></asp:TextBox>
				&nbsp;&nbsp;&nbsp;<asp:label ID="RemarksLbl" Runat="server" CssClass="HideRow">
					<asp:TextBox runat="server" Width="200" id="ReasonsTxt" MaxLength="40" CssClass="HideRow"></asp:TextBox>
					<INPUT type="button" onclick="fnOpenReasons(1,'ReasonsTxt')" class='RsnPUP'></asp:label>
			</form>
			<SPAN style="TEXT-ALIGN: center">
				<uc1:CaliberPrintCtrl id="CaliberPrintCtrl1" runat="server"></uc1:CaliberPrintCtrl>
			</SPAN>
		</div>
		<script language="javascript">
	<!--
function ChkReasons(){
    var Reasons = document.getElementById("ReasonsTxt").value
    var AskReasons = document.getElementById("AskReasonsTxt").value
	   if(AskReasons==1 && Reasons==''){
	   alert("Enter Reasons For Other Print")
	   return(false);
	   }
       return(true);
}

isWorkSheetPrint=1
function fnPrintConfirm() {
    var Reasons = document.getElementById("ReasonsTxt").value
		var mSSC=document.all("MSSCTxt").value	
	 	var pageURL="RDTConfirm.aspx"
	 var features = "height=20,width=60,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=350,left=150"
	 window.showModalDialog( pageURL ,'Caliber BMR','dialogheight=6;dialogwidth=15;help=0;status=0;scroll=0;edge=raised;')		
	 window.history.back(1);
	 
	 //window.navigate("RawDataList.aspx")
				//document.Form1.submit();
			
			
			 			
	}
	document.getElementById("ReasonsTxt").value = "";
	
	//============Setting Bar Code================
	var Arno='<%=Arno%>'
	
	SetBarCode(Arno,'true')
	//===============================================
	
 //-->
		</script>
	</body>
</HTML>
