<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="IssueRptList.aspx.vb" Inherits="IssueTypeConfig.IssueRptList" %>
<%@ Register TagPrefix="ucl" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<%@ Register TagPrefix="uc2" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title><%=MainTitleLtrl.Text%></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
</head>

<script language="javascript">
	function  ChkDates(){
       var Flag=VbChkDates() ;
       if(Flag==false){
		      alert("Registered From Date Should Be Less Than To Date")
  	        }
  	      else
  	      {
  	        document.forms(0).submit()
  	      }
     }
	</script>
	<script language="vbscript">
	function VbChkDates 
     StartDate=document.getElementById("StartDtCal:CalDateVal").value
     EndDate=document.getElementById("EndDateCal:CalDateVal").value
     StartDateAry=split(StartDate,"/")
     EndDateAry=split(EndDate,"/")
	 StartDateVal=dateSerial(StartDateAry(2),StartDateAry(0),StartDateAry(1))
	 EndDateVal=dateSerial(EndDateAry(2),EndDateAry(0),EndDateAry(1))
	 DDgap=DateDiff("d",StartDateVal,EndDateVal)
	 if DDgap<0 then
		VbChkDates=false
	end if
  
 End function
	</script>
<body>
    <form id="Form1" method="post" runat="server">
			<asp:table id="tt" runat="server" Width="900px" CELLPADDING="1" CELLSPACING="1" BorderWidth="3"
				HorizontalAlign="center" cssclass="MainTable">
				<asp:TableRow  CssClass="SubHead">
					<asp:TableCell CSSClass="MainHead" ColumnSpan="16">
						<asp:literal id="MainTitleLtrl" runat="server"></asp:literal>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell CSSClass="SubHead" ColumnSpan="16">
						<asp:Literal id="SubLiteral" runat="server"></asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow CssClass="MainTD">
					<asp:TableCell CssClass="MainTD" ColumnSpan="4" ID="StartDtTd"></asp:TableCell>
					<asp:TableCell CssClass="MainTD" ColumnSpan="4">
						<ucl:CaliberCalender id="StartDtCal" runat="server"></ucl:CaliberCalender>
					</asp:TableCell>
					<asp:TableCell CssClass="MainTD" ColumnSpan="4" ID="EndDtTd"></asp:TableCell>
					<asp:TableCell CssClass="MainTD" ColumnSpan="4">
						<ucl:CaliberCalender id="EndDateCal" runat="server"></ucl:CaliberCalender>
					</asp:TableCell>
				</asp:TableRow>
				<ASP:TABLEROW ID="SearchRow" CssClass="MainTd">
					<ASP:TABLECELL CssClass="MainTD" ColumnSpan="2">
						<ASP:LITERAL id="MaxRecLtrl" Runat="server"></ASP:LITERAL>
					</ASP:TABLECELL>
					<ASP:TABLECELL CssClass="MainTD" ColumnSpan="2">
						<ASP:LITERAL id="MaxRecCntLtrl" Runat="server"></ASP:LITERAL>
					</ASP:TABLECELL>
					<ASP:TABLECELL CssClass="MainTD" ColumnSpan="2">
						<ASP:LITERAL id="RecPerPageLtrl" Runat="server"></ASP:LITERAL>
					</ASP:TABLECELL>
					<ASP:TABLECELL CssClass="MainTD" ColumnSpan="2">
						<ASP:TEXTBOX ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" Runat="server" AutoPostBack="False"
							Width="50px">10</ASP:TEXTBOX>
					</ASP:TABLECELL>
					<ASP:TABLECELL CssClass="MainTD" ColumnSpan="2">
						<ASP:LITERAL id="PgNoLtrl" Runat="server"></ASP:LITERAL>
					</ASP:TABLECELL>
					<ASP:TABLECELL CssClass="MainTD" ColumnSpan="2">
						<ASP:textbox id="PgNoTxt" CssClass="TxtCls" MaxLength="3" Runat="server" Width="50px">1</ASP:textbox>
					</ASP:TABLECELL>
					<ASP:TABLECELL CssClass="MainTd" ColumnSpan="4">
						<input type=button  ID="DisplayBtn"  onclick="ChkDates()"   Class="ButCls"  style="WIDTH: 70px" value="Display"> </button>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
				<asp:TableRow CssClass="MainTD">
					<asp:TableCell CssClass="MainTD" ColumnSpan="16">
						<asp:Table ID="ComplaintsRepTab" CssClass="SubTable" CellPadding="1" CellSpacing="1" HorizontalAlign="Center"
							Runat="server" Visible="True" Width="100%"></asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow ID="PrintExeclTr" CssClass="MainTD" >
					<asp:TableCell ColumnSpan="16" CssClass="SubHeadTd" >
						<TABLE id="PrintCtrlTab" style="WIDTH:100%" BORDER="0" CELLSPACING="1" CELLPADDING="1"
							class="MainTable" align="center" width="100PX">
							<TR Class="SubHeadTD">
								<TD id="PrinterDiv" style="display:block;Height:20" align="left">
									&nbsp;&nbsp;&nbsp;&nbsp;<uc2:CaliberPrintCtrl id="CaliberPrintCtrl2" CssClass="ButCls" runat="server"></uc2:CaliberPrintCtrl>
								</TD>
								<TD id="ExcelDiv" style="display:block;Height:20" align="center">
									<OBJECT id="ExcelExpImp1" style="display:none" classid="CLSID:2A52ACDF-DA17-4558-B21A-9FB132DF97D2">
										<PARAM NAME="_ExtentX" VALUE="979">
										<PARAM NAME="_ExtentY" VALUE="688">
									</OBJECT>
									<INPUT type="button" id="button3" value="Export To Excel" Class="HideRow" align="right"
										LANGUAGE="javascript" onclick="ExpDataToExcel()">
											<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 102; LEFT: 528px; POSITION: absolute; TOP: 344px"
													runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="PgNoTxt"></asp:RequiredFieldValidator>
								</TD>
							</TR>
						
						</TABLE>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table>
			<!-----------Print Control ------------->
			<div style="DISPLAY: block"><asp:panel id="HeaderDiv" style="BORDER-RIGHT: black thin solid; BORDER-TOP: black thin solid; MARGIN-LEFT: 20px; BORDER-LEFT: black thin solid; BORDER-BOTTOM: black thin solid; TEXT-ALIGN: left"
					runat="server" Width="720" CssClass="HideRow">
					<asp:textbox id="HeaderObjIDs" style="VISIBILITY: hidden" runat="server" text="H1,H2" height="0"
						width="0"></asp:textbox>
					<asp:textbox id="HeaderObjTypes" style="VISIBILITY: hidden" runat="server" text="P,DL" height="0"
						width="0"></asp:textbox>
				</asp:panel><asp:panel id="BodyDiv" style="BORDER-RIGHT: black thin solid; BORDER-TOP: black thin solid; MARGIN-LEFT: 20px; BORDER-LEFT: black thin solid; BORDER-BOTTOM: black thin solid; TEXT-ALIGN: left"
					runat="server" Width="720" CssClass="HideRow">
					<asp:textbox id="BodyObjIDs" style="VISIBILITY: hidden" runat="server" text="ColValTab" height="0"
						width="0"></asp:textbox>
					<asp:textbox id="BodyObjTypes" style="VISIBILITY: hidden" runat="server" text="TH" height="0"
						width="0"></asp:textbox>
					<asp:TextBox id="BodyObjTabHeadRows" style="VISIBILITY: hidden" runat="server" text="1" height="0"
						width="0"></asp:TextBox>
				</asp:panel><asp:panel id="FooterDiv" style="BORDER-RIGHT: black thin solid; BORDER-TOP: black thin solid; MARGIN-LEFT: 20px; BORDER-LEFT: black thin solid; BORDER-BOTTOM: black thin solid; TEXT-ALIGN: left"
					runat="server" Width="720" CssClass="HideRow">
					<asp:textbox id="FooterObjIDs" style="VISIBILITY: hidden" runat="server" text="F1" height="0"
						width="0"></asp:textbox>
					<asp:textbox id="FooterObjTypes" style="VISIBILITY: hidden" runat="server" text="TH" height="0"
						width="0"></asp:textbox>
				</asp:panel></div>
		</form>
    
    <script language="javascript">
			<!--
			//document.all("PrinterDiv").style.display="block"
			//document.all("ExcelDiv").style.display="block"
			function ExpDataToExcel(){
			//r As Integer, c As Integer, CellData As String
			var txt
			var TableObjId="ColValTab"
			var rCount=document.all(TableObjId).rows.length
				
			if(rCount<2){ return(false)}

			var ColCount=document.all(TableObjId).rows(0).cells.length
			
			      document.getElementById("ExcelExpImp1").OpenExcel()
					for(r=0;r<rCount;r++){
					for(c=0;c<ColCount;c++){
					txt=document.all(TableObjId).rows(r).cells(c).innerText
					document.getElementById("ExcelExpImp1").WriteExcelData(r + 1, c + 1, txt)
	}
					}
document.getElementById("ExcelExpImp1").CloseExcel()
document.getElementById("ExcelExpImp1").ClearExcel()
		
			}
		//-->
		</script>
		<script language="javascript">
function ChkReasons(){
      var Reasons="Reasons"//document.Form1.ReasonsTxt.value
      var AskReasons =0//document.Form1.AskReasonsTxt.value
	   if(AskReasons==1 && Reasons==''){
	   alert("Enter Reason For Other Print")
	   return(false);
	   }
       return(true);
}

isWorkSheetPrint=1
function fnPrintConfirm()
	{   //var Reasons=document.Form1.ReasonsTxt.value
		//var mSSC=document.all("MSSCTxt").value	
	 	var pageURL="PrintConfirm.aspx"
	 var features = "height=20,width=60,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=350,left=150"
	 window.showModalDialog( pageURL ,'Caliber LIMS','dialogheight=6;dialogwidth=15;help=0;status=0;scroll=0;edge=raised;')		
	 //window.history.back(1);
	 
	 //window.navigate("RawDataList.aspx")
				//document.Form1.submit();
			
			
			 			
	}
	</script>
</body>
</html>
