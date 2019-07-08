<%@ Page Language="vb" AutoEventWireup="false" Codebehind="PlantWiseUserList.aspx.vb" Inherits="Admin.PlantWiseUserList"%>
<%@ Register TagPrefix="uc5" TagName="Footer" Src="../CaliberCommonCtrls/ReportFooter.ascx"  %>
<%@ Register TagPrefix="uc4" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx"  %>
<%@ Register TagPrefix="uc2" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx" %>
<%@ Register TagPrefix="uc3" TagName="ReportHeader" Src="../CaliberCommonCtrls/ReportHeader.ascx"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>PlantWiseUserList</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK href="../TRIMS.css" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<script language="javascript" src="../CaliberCommonCtrls/Reports.js"></script>
		<script language="javascript">
		
		function Test(src,args){
   var Flag= TestchkValid() ;
   if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    }
 }

		function fnOpenPlantPopUp(){

    	var pageURL = "PlantListPopUp.aspx"
	var features = "height=390" + ",width=535" + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + PopUpLeftTopY +  ",left=" + PopUpLeftTopX
	SpWinObj = window.open(pageURL,'SpecCodes',features)
	if(SpWinObj.opener == null) SpWinObj.opener=self;
	SpWinObj.focus();
}


function fnCrSetToCode(KfIdVal,KfLableVal){
      var objId;
      var obj;
	objId='KfId';
	obj=document.getElementById(objId);
	obj.value = KfIdVal;
	
	document.getElementById('KfId').value=obj.value;
	objId='KfLabel';
	obj=document.getElementById(objId);
	obj.value = KfLableVal;
	
	
} 
function Submit()
{
//alert("Submit")
//Form1.submit() 
}

		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
		<SPAN style="TEXT-ALIGN: center">
						<uc3:ReportHeader id="ReportHeader1" runat="server"></uc3:ReportHeader></SPAN>
			<asp:table id="tt" runat="server" cssclass="MainTable" HorizontalAlign="center" BorderWidth="0"
				CELLSPACING="1" CELLPADDING="1" Width="80%">
				<asp:TableRow>
					<asp:TableCell CSSClass="MainHead" ColumnSpan="10">
						<asp:literal id="MainTitleLtrl" runat="server" >Plant Wise User List</asp:literal>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow CssClass="HideRow">
					<asp:TableCell CSSClass="SubHead" BorderWidth="1" ColumnSpan="10">
						<asp:Literal id="SubLiteral" runat="server">Plant Wise Report</asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow CssClass="MainTd" BorderWidth="1">
					<asp:TableCell ID="AnalystTd" ColumnSpan="1" BorderWidth="1">Select Plant</asp:TableCell>
					<asp:TableCell ColumnSpan="6" BorderWidth="1">
				<INPUT type="button" onclick="fnOpenPlantPopUp()" title="Click here" runat="server" class='RsnPUP'
							style="HEIGHT:20px" ID="Button1" NAME="Button1">
						&nbsp;&nbsp;&nbsp;
                <asp:textbox id="KfId" CssClass="HideRow" runat="server" Height="0" Width="100px"></asp:textbox>
						&nbsp;&nbsp;&nbsp;
                 <asp:textbox id="KfLabel" CssClass="Maintd" runat="server" Height="0" ReadOnly="True" BorderWidth="0"
							Width="350px"></asp:textbox>
				 </asp:TableCell>
					<asp:TableCell CssClass="MainTd" BorderWidth="1">
						<asp:Button ID="DisplayBtn" CssClass="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 70px"
							onmouseout="this.className='ButCls'" Text="Display" Runat="server"></asp:Button>
					</asp:TableCell>
				</asp:TableRow>
				
				<asp:TableRow>
					<asp:TableCell ColumnSpan=10 CssClass="MainTD">
						<asp:Table id="DateTab" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">
							<asp:TableRow CssClass="MainTd">
								<asp:TableCell ID="TotalRecTd" CssClass="MainTd" ColumnSpan="2">Total Records</asp:TableCell>
								<asp:TableCell ID="TotalRecNoTd" CssClass="MainTd" ColumnSpan="1">
									<asp:TextBox ID="TotalRecNoTxt" CssClass="TxtCls" ReadOnly="True" MaxLength="3" Runat=server Width="50px">0</asp:TextBox>
								</asp:TableCell>
								<asp:TableCell ID="RecPerPgTd" CssClass="MainTd" ColumnSpan="2">Records Per Page&nbsp;&nbsp;&nbsp;
								<asp:TextBox ID="RecPerPgTxt" CssClass="TxtCls" MaxLength="3" Runat="server"  Width="50px">20</asp:TextBox>
							</asp:TableCell>
							<ASP:TABLECELL CssClass="MainTD" ColumnSpan="1">
									<ASP:LITERAL id="PgNoLtrl" Runat="server">Page No</ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD" ColumnSpan="1">
									<ASP:TEXTBOX id="PgNoTxt" MaxLength="3" Width="50px" CssClass="TxtCls" Runat="server" AutoPostBack="False">1</ASP:TEXTBOX>
									&nbsp; &nbsp;
								</ASP:TABLECELL>
							</asp:TableRow>
						</asp:Table>
						  </asp:TableCell>
					</asp:TableRow>
				<asp:TableRow ID="ColValTabRow">
					<asp:TableCell ColumnSpan="10" CssClass="MainTd">
						<asp:Table ID="ColValTab" CssClass="SubTable" Runat="server" CellPadding="1" CellSpacing="1"
							BorderWidth="0" BorderStyle="Solid" Width="100%"></asp:Table>
							
					</asp:TableCell>
					<asp:TableCell Runat="server" ID="CVD" CssClass="HideRow"  ForeColor=#ffffff></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
				<asp:TableCell ColumnSpan="10" CssClass="MainTd">
				<asp:Panel id="BodyDiv" runat="server" Width="720" HorizontalAlign="Left" EnableViewState="False"></asp:Panel>
					<asp:textbox id="BodyObjIDs" style="VISIBILITY: hidden" runat="server" width="0" height="0" ></asp:textbox>
					<asp:textbox id="BodyObjTypes" style="VISIBILITY: hidden" runat="server" width="0" height="0"
						></asp:textbox>
					<asp:TextBox id="BodyObjTabHeadRows" style="VISIBILITY: hidden" runat="server" width="0" height="0"
						></asp:TextBox>
				</asp:Panel>
				</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow CssClass="HideRow" Height="0">
					<asp:TableCell ColumnSpan="6" ID="ValidatorsTd">
						<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
				    <asp:TableCell ColumnSpan="12">
				    <asp:Panel id="FooterDiv" runat="server" Width="720" HorizontalAlign="Left" EnableViewState="False"></asp:Panel>
				    </asp:TableCell>
				</asp:TableRow>
				<asp:TableRow CssClass="HideRow" ID="PrtTabTr">
					<asp:TableCell ColumnSpan="10">
						<TABLE id="PrintCtrlTab" style="WIDTH:100%" BORDER="0" CELLSPACING="0" CELLPADDING="1"
							 align="center" width="100%">
							<TR Class="SubHeadTd">
								<TD id="PrinterDiv" style="display:block;Height:20" align="center">
									<uc2:CaliberPrintCtrl id="CaliberPrintCtrl2" CssClass="ButCls" runat="server"></uc2:CaliberPrintCtrl>
								</TD>
							</TR>
						</TABLE>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table>
			
			<!-----------Print Control ------------->
			<div  class="HideRow" align=center><asp:Panel id="HeaderDiv" runat="server" Width="720" HorizontalAlign="Left" EnableViewState="False">
					<asp:textbox id="HeaderObjIDs" style="VISIBILITY: hidden" runat="server" width="0" height="0"
						></asp:textbox>
					<asp:textbox id="HeaderObjTypes" style="VISIBILITY: hidden" runat="server" width="0" height="0"
						></asp:textbox>
				</asp:panel><%--<asp:Panel id="FooterDiv" runat="server" Width="720" HorizontalAlign="Left" EnableViewState="False"></asp:Panel>--%>
					<asp:textbox id="FooterObjIDs" style="VISIBILITY: hidden" runat="server" width="0" height="0"
						text="F1"></asp:textbox>
					<asp:textbox id="FooterObjTypes" style="VISIBILITY: hidden" runat="server" width="0" height="0"
						text="TH"></asp:textbox>
				</asp:panel></div>
		</form>
		<script language=javascript>
		function TestchkValid()
		{
			if(document.all("KfLabel").value=='')
				return false;
			else
				return true;
			
		}
		
		function ChkReasons(){
      var Reasons="Reasons"//document.getElementById('ReasonsTxt').value
      var AskReasons =0//document.Form1.AskReasonsTxt.value
	   if(AskReasons==1 && Reasons==''){
	   alert("Enter Reason For Other Print")
	   return(false);
	   }
       return(true);
}

isWorkSheetPrint=1
function fnPrintConfirm()
	{   //var Reasons=document.getElementById('ReasonsTxt').value
		//var mSSC=document.all("MSSCTxt").value	
	 	var pageURL="PrintConfirm.aspx"
	 var features = "height=20,width=60,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=350,left=150"
	 window.showModalDialog( pageURL ,'CaliberQAMS','dialogheight=6;dialogwidth=15;help=0;status=0;scroll=0;edge=raised;')		
	 //window.history.back(1);
	 
	 //window.navigate("RawDataList.aspx")
				//document.Form1.submit();
			
			
			 			
	}

		
		</script>
	</body>
</HTML>
