<%@ Page Language="vb" AutoEventWireup="false" Codebehind="PrintObservation.aspx.vb" Inherits="AuditObservation.PrintObservation" %>
<%@ Register TagPrefix="uc3" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx"  %>
<%@ Register TagPrefix="uc2" TagName="Footer" Src="../CaliberCommonCtrls/ReportFooter.ascx"  %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>PrintObserVation</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE WIDTH="100%" BORDER="1" CELLSPACING="1" CELLPADDING="1" align="center">
				<TR>
					<TD>
						<uc1:Header id="Header1" runat="server"></uc1:Header>
					</TD>
				<TR>
					<TD>
						<asp:Panel id="HeaderDiv" runat="server" Width="720" HorizontalAlign="Left" EnableViewState="False">
							<asp:Table id="H1" style="FONT-SIZE: 10px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="100%"
								Runat="server" BorderWidth="0" CELLSPACING="1" CELLPADDING="1"></asp:Table>
							<asp:Table id="Table1" Width="100%" Runat="server" BorderColor="black" Border="1" CellSpacing="0"
								CellPadding="0" horizontalalign="center" BackColor="#ffffff"></asp:Table>
						</asp:Panel>
						<asp:Panel id="BodyDiv" runat="server" Width="720" HorizontalAlign="Left" EnableViewState="False">
							<asp:Table id="ResTab" Width="100%" Runat="server" BorderColor="black" Border="1" CellSpacing="0"
								CellPadding="0" horizontalalign="center" BackColor="#ffffff"></asp:Table>
							<BR>
							<asp:Table id="DisTable" Width="100%" Runat="server" BorderColor="black" Border="1" CellSpacing="0"
								CellPadding="0" horizontalalign="center" BackColor="#ffffff"></asp:Table>
							<BR>
							<asp:Table id="UsgTab" Width="100%" Runat="server" BorderColor="black" Border="1" CellSpacing="0"
								CellPadding="0" horizontalalign="center" BackColor="#ffffff"></asp:Table>
						</asp:Panel>
						<asp:Panel id="FooterDiv" runat="server" Width="720" HorizontalAlign="Left" EnableViewState="False">
							<asp:Table id="F2" style="FONT-SIZE: 12px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="100%"
								Runat="server" BorderWidth="0" CELLSPACING="1" CELLPADDING="1"></asp:Table>
						</asp:Panel>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="HeaderObjIDs"
							text="H1"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="HeaderObjTypes"
							text="TN"></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="BodyObjIDs" text=""></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="BodyObjTypes"
							text=""></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="BodyObjTabHeadRows"
							text=""></asp:TextBox>
						<asp:TextBox runat="server" style="VISIBILITY:hidden" height="0" width="0" id="HdrObjTabHeadRows"
							text=""></asp:TextBox>
						<asp:textbox id="FooterObjIDs" style="VISIBILITY: hidden" runat="server" text="F2" width="0"
							height="0"></asp:textbox><asp:textbox id="FooterObjTypes" style="VISIBILITY: hidden" runat="server" text="TN" width="0"
							height="0"></asp:textbox>
					</TD>
				</TR>
				<TR>
					<TD>
						<uc2:Footer id="Footer1" runat="server"></uc2:Footer>
					</TD>
				</TR>
				<TR>
					<TD style="TEXT-ALIGN:center">
						<uc3:CaliberPrintCtrl id="CaliberPrintCtrl1" runat="server"></uc3:CaliberPrintCtrl>
					</TD>
				</TR>
			</TABLE>
		</form>
		<script language="javascript">
	
	function ChkReasons(){
      var Reasons=''//document.getElementById('ReasonsTxt').value
      var AskReasons =0//document.getElementById('AskReasonsTxt').value
	   if(AskReasons==1 && Reasons==''){
	   alert("Enter Reasons For Other Print")
	   return(false);
	   }
       return(true);
}
isWorkSheetPrint=1;
	
function fnPrintConfirm()
	{   
 
	var BaseId=<%= Request.QueryString("RegBaseId") %>		
 
	   var RegCode="<%= Request.QueryString("RegCode") %>"    
	    var  BdyBaseId=<%= Request.QueryString("BodyBaseId") %>
	    var  DeptId="<%= Request.QueryString("DeptId") %>"
	    var  ProcessID="<%= Request.QueryString("ProcessID") %>"
	    var  Docno=<%= Request.QueryString("Docno") %>
	    var  Processno=<%= Request.QueryString("Processno") %>
	    var AuditeeId="<%= Request.QueryString("AuditeeId") %>"
        var Cnt=<%=ViewState("Cnt") %>
	   
	  
	 	 		
	 	var pageURL="WSPConfirm.aspx?BaseId=" + <%= Request.QueryString("RegBaseId") %>  //regbaseid
	 	
	  var features = "height=20,width=60,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=350,left=150"
	 window.showModalDialog( pageURL ,'Caliber LIMS','dialogheight=6;dialogwidth=15;help=0;status=0;scroll=0;edge=raised;')		
     //window.navigate("Trn.aspx?TT=1" + "&RegCode=" + RegCode + "&BaseId=" + BaseId + "&BdyBaseId=" + BdyBaseId + "&DeptId=" + DeptId + "&ProcessID=" + ProcessID + "&AiditeeID=" + AuditeeId + "&Cnt=" + Cnt)
    
	 history.back();
	
	}
	
	
 //-->
        </script>
	</body>
</HTML>
