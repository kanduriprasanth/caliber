<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UserLogRpt.aspx.vb" Inherits="Admin.UserLogRpt" Culture="EN-US" %>
<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl.ascx" %>
<%@ Register TagPrefix="uc3" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx"  %>
<%@ Register TagPrefix="uc2" TagName="Footer" Src="../CaliberCommonCtrls/ReportFooter.ascx"  %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx"  %>
<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="../Admin/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>UserLogList</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
		
		 

    <script language="VBSCRIPT" src="../JScript/ExportToExcel.vbs"></script>

    <script src="../JScript/jquery.min.js" type="text/javascript"></script>

    <script src="../Plugins/JqueryModel/jquery.simplemodal.js" type="text/javascript"></script>

    <link href="../Plugins/JqueryModel/simplemodal.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../Plugins/progressbar/jquery.ui.all.css" />

    <script type="text/javascript" src="../Plugins/progressbar/jquery.ui.core.js"></script>

    <script type="text/javascript" src="../Plugins/progressbar/jquery.ui.widget.js"></script>

    <script type="text/javascript" src="../Plugins/progressbar/jquery.ui.progressbar.js"></script>
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />
    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>
		
		
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
		<span style="display: none">
            <%
                Response.WriteFile("../DMSManagement/ActiveX.inc")
            %>
        </span>
			<TABLE cellSpacing="1" Width="100%" cellPadding="1"  align="center" border="1">
				<%--<TR>
					<TD colspan="2"><uc1:header id="Header1" runat="server"></uc1:header></TD>
				<TR>
				--%>	<TD colSpan="10"><asp:panel id="HeaderDiv"  runat="server" EnableViewState="False" HorizontalAlign="Left" Width="100%">
							<asp:Table id="H1" CssClass="HideRow" style="FONT-SIZE: 10px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="720"
								Runat="server" BorderWidth="0" CELLSPACING="1" CELLPADDING="1">
								<asp:TableRow>
									<asp:TableCell HorizontalAlign="Center" style="Width:720px;font-size:16;font-weight:bold;Padding:0px;Background-color:white;text-align:center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User Session Log Report</asp:TableCell>
								</asp:TableRow>
							</asp:Table>

                            <asp:Table id="Table2" style="FONT-SIZE: 10px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="100%"
								Runat="server" BorderWidth="0" CELLSPACING="1" CELLPADDING="1">
								<asp:TableRow>
									<asp:TableCell HorizontalAlign="Center" style="Width:100%;font-size:16;font-weight:bold;Padding:0px;Background-color:white;text-align:center">User Session Log</asp:TableCell>
								</asp:TableRow>
							</asp:Table>
						</asp:panel><asp:panel id="BodyDiv" runat="server" EnableViewState="False" HorizontalAlign="Left" Width="100%">
							<asp:Table id="Table1" Width="100%" Runat="server" BorderColor="black" Border="1" CellSpacing="0"
								CellPadding="0" horizontalalign="center" BackColor="#ffffff">
								
								
									 <asp:TableRow CssClass="MainTd">
					                            <asp:TableCell ColumnSpan="1" CssClass="MainTD" ID="StartDateTd"></asp:TableCell>
					                            <asp:TableCell ColumnSpan="2" CssClass="MainTD">
						                            <uc1:CaliberCalender id="CaliberCalender1" runat="server"></uc1:CaliberCalender>
					                            </asp:TableCell>
					                            <asp:TableCell CssClass="MainTd" ID="EndDateTd" ColumnSpan="2"></asp:TableCell>
					                            <asp:TableCell CssClass="MainTd" ColumnSpan="2">
						                            <uc1:CaliberCalender id="CaliberCalender2" runat="server"></uc1:CaliberCalender>
					                            </asp:TableCell>
				                   </asp:TableRow>
				                   
									<asp:TableRow CssClass="MainTd">
					                    <asp:TableCell ID="AnalystTd" ColumnSpan="1"></asp:TableCell>
					                    <asp:TableCell ColumnSpan="6">
				                                <INPUT type="button" onclick="fnOpenInchargePopUp()" title="Click here" runat="server"
							                    class='RsnPUP' style="HEIGHT:20px" ID="Button1" NAME="Button1">
						                        &nbsp;&nbsp;&nbsp;
                                                <asp:TextBox id="KfId" CssClass="HideRow" runat="server" Height="0" Width="100px"></asp:TextBox>
						                            &nbsp;&nbsp;&nbsp;
                                                 <asp:textbox id="KfLabel" CssClass="Maintd" runat="server" BorderWidth="0" Height="0" ReadOnly="True"
							                        ></asp:textbox>
				                         </asp:TableCell>
				                    </asp:TableRow>									
								
								<ASP:TABLEROW >
									        <ASP:TABLECELL CssClass="MainTD">
										        <ASP:LITERAL id="MaxRecLtrl" Runat="server"></ASP:LITERAL>
									        </ASP:TABLECELL>
									        <ASP:TABLECELL CssClass="MainTD">
										        <ASP:LITERAL id="MaxRecCntLtrl" Runat="server">0</ASP:LITERAL>
									        </ASP:TABLECELL>
									        <ASP:TABLECELL CssClass="MainTD">
										        <ASP:LITERAL id="RecPerPageLtrl" Runat="server"></ASP:LITERAL>
									        </ASP:TABLECELL>
									        <ASP:TABLECELL CssClass="MainTD">
										        <ASP:TEXTBOX ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" onkeypress="return IsDigit(event)" Runat="server" AutoPostBack="False"
											        Width="50px">20</ASP:TEXTBOX>
									        </ASP:TABLECELL>
									        <ASP:TABLECELL CssClass="MainTD">
										        <ASP:LITERAL id="PgNoLtrl" Runat="server"></ASP:LITERAL>
									        </ASP:TABLECELL>
									        <ASP:TABLECELL CssClass="MainTD">
									        <ASP:TEXTBOX id="PgNoTxt" CssClass="TxtCls" Runat="server" AutoPostBack="False" onkeypress="return IsDigit(event)" Width="50px"
											        MaxLength="5">1</ASP:TEXTBOX>
							
											       &nbsp;&nbsp;&nbsp;
						                    <asp:Button ID="DisplayBtn" CssClass="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 70px"
							                 onmouseout="this.className='ButCls'" Text="Display" Runat="server"></asp:Button>
					
								            </ASP:TABLECELL>				            
								           
								</ASP:TABLEROW>
								<asp:TableRow CssClass="HideRow" ID="SummaryRow">
					<asp:TableCell ColumnSpan="7" CssClass="MainTd">
						<asp:Table ID="SummaryTab" CssClass="SubTable" Runat="server" CellPadding="1" BorderWidth="0"
							CellSpacing="1" Width="100%"></asp:Table>
					</asp:TableCell>
					<%--<asp:tablecell ColumnSpan="2" cssclass="hiderow">
						<asp:RequiredFieldValidator CssClass="hiderow" id="ReqFieldValidator1" runat="server" ControlToValidate=""
							Height="0" Width="0" ErrorMessage="Select A  User">&nbsp;</asp:RequiredFieldValidator>
					</asp:tablecell>--%>
				</asp:TableRow>
				
				<asp:TableRow CssClass="HideRow" Height="0">
					<asp:TableCell ColumnSpan="6" ID="ValidatorsTd">
						<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
					</asp:TableCell>
				</asp:TableRow>
								
				
								
							</asp:Table>
							<BR>
							<asp:Table id="DisTable2" Runat="server" BorderColor="black" Border="1" CellSpacing="0"	CellPadding="0" Width="100%" horizontalalign="center" BackColor="#ffffff">
							</asp:Table>
							
						</asp:panel><asp:panel id="FooterDiv" runat="server" EnableViewState="False" HorizontalAlign="Left" Width="100%">
							<asp:Label id="F1" style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; FONT-SIZE: 12px; PADDING-BOTTOM: 0px; MARGIN-LEFT: 0px; PADDING-TOP: 0px; BACKGROUND-COLOR: white; TEXT-ALIGN: center; font-bold: true"
								Width="100%" Runat="server"></asp:Label>
							<asp:Table id="F2" style="FONT-SIZE: 10px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="720"
								Runat="server" BorderWidth="0" CELLSPACING="1" CELLPADDING="1">
								<asp:TableRow>
									<asp:TableCell style="Width:260px;font-size:12;font-bold:true;Padding:0px;Background-color:white"></asp:TableCell>
									<asp:TableCell style="Width:260px;font-size:12;font-bold:true;Padding:0px;Background-color:white"></asp:TableCell>
									<asp:TableCell style="Width:200px;font-size:12;font-bold:true;Padding:0px;Background-color:white"></asp:TableCell>
								</asp:TableRow>
								
												
							</asp:Table>
							<BR>
                            <asp:Table id="Table3"  style="FONT-SIZE: 12px;  FONT-FAMILY: Arial"
							Width="100%"	Runat="server">
							<asp:tablerow  ID="Tablerow1"  Width="100%" >
				                <asp:tablecell  ID="Tablecell1"  Width="100%" >
                                      Note:
                                        - Closing a user session in ways other than by clicking the standard 'Logout' button or by closing a session from the standard logout confirmation message during multiple location logins are considered abnormal logouts. 
                                            The session time for abnormal logouts will be same as 'Session Timeout' duration.
				                 </asp:tablecell>				
				            </asp:tablerow>
							</asp:Table>
							<asp:Table id="F4" CssClass="HideRow" style="FONT-SIZE: 12px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="720"
								Runat="server" BorderWidth="0" CELLSPACING="1" CELLPADDING="1">
							<asp:tablerow  ID="NoteTr" >
				                <asp:tablecell  ID="NoteTd">
                                      Note:
                                        - Closing a user session in ways other than by clicking the standard
                                          'Logout' button or by closing a session from the standard logout
                                           confirmation message during multiple location logins are considered abnormal
                                           logouts. 
                                            The session time for abnormal logouts will be same as 'Session Timeout' duration. 
				
                          
				                </asp:tablecell>				
				            </asp:tablerow>
							</asp:Table>


							<asp:Table id="F3" style="FONT-SIZE: 10px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="720"
								Runat="server" CssClass="HideRow" BorderWidth="0" CELLSPACING="1" CELLPADDING="1">
								
								</asp:Table>
						</asp:panel><asp:textbox id="HeaderObjIDs" style="VISIBILITY: hidden" runat="server" text="H,H1" width="0"
							height="0"></asp:textbox><asp:textbox id="HeaderObjTypes" style="VISIBILITY: hidden" runat="server" text="P,TN" width="0"
							height="0"></asp:textbox><asp:textbox id="BodyObjIDs" style="VISIBILITY: hidden" runat="server" text="DisTable2" width="0"
							height="0"></asp:textbox><asp:textbox id="BodyObjTypes" style="VISIBILITY: hidden" runat="server" text="TN" width="0"
							height="0"></asp:textbox><asp:textbox id="BodyObjTabHeadRows" style="VISIBILITY: hidden" runat="server" text="1,1" width="0"
							height="0"></asp:textbox><asp:textbox id="FooterObjIDs" style="VISIBILITY: hidden" runat="server" text="F1,F4,F3" width="0"
							height="0"></asp:textbox><asp:textbox id="FooterObjTypes" style="VISIBILITY: hidden" runat="server" text="P,P,TN" width="0"
							height="0"></asp:textbox></TD>
				</TR>
				<TR class="HideRow">
					<TD><uc2:footer id="Footer1" runat="server"></uc2:footer></TD>
				</TR>

                <TABLE cellSpacing="1" Width="100%" cellPadding="1"  align="center" border="2">
                <TR >
					<TD class="HideRow">&nbsp;&nbsp;<uc3:caliberprintctrl id="CaliberPrintCtrl1" runat="server"></uc3:caliberprintctrl></TD>
				    
				    <TD  id="ExcelDiv" style="display:block;border-width:0;" style="TEXT-ALIGN: left;" >
									<OBJECT id="ExcelExpImp1" style="display:none" classid="CLSID:2A52ACDF-DA17-4558-B21A-9FB132DF97D2">
										<PARAM NAME="_ExtentX" VALUE="979">
										<PARAM NAME="_ExtentY" VALUE="688">
									</OBJECT>
									<INPUT type="button" id="ExportBtn" value="Export To Excel" Class="ButSelCls" align="right"
										LANGUAGE="javascript" style="width:auto" onclick="write_to_excel()" name="ExportBtn">
										
										
											<%--<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 102; LEFT: 528px; POSITION: absolute; TOP: 344px"
													runat="server" ErrorMessage="Enetr Page No" ControlToValidate="PgNoTxt"></asp:RequiredFieldValidator>--%>
					</TD>
					</TR>
                </TABLE>
				
				
				
				
			</TABLE>
    </form>
</body>
	<script language="javascript">
	
	
		//-->
		</script>
		<script language="javascript">
		
		function fnOpenInchargePopUp()
		{
	        SetPopDimensions()
     	    var features = "height=  390 ,width=" + PopUpWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=No,top=" + PopUpLeftTopY + ",left=" + PopUpLeftTopX
    	    var pageURL = "UserList.aspx"
    	
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


</script>
<script language="javascript">
function ExpDataToExcel()
	    {
            OpenExcel();	
            var bgColor =2;
            $("#ActionPlanTAb thead td").each(function (index) {
                WriteData(1,index+1,$(this).text(),20,bgColor,"@",8,"Arial","True",1)
            });
                                 
            $("#ActionPlanTAb tbody tr").each(function (Rindex) {
                $(this).children('td').each(function (Cindex) {
                    WriteData(Rindex+2,Cindex+1,$(this).text(),20,bgColor,"@",8,"Arial","True",1)
                });
            });
            
	        CloseExcel()
            
	    }
	 
	          
        
        function write_to_excel(ExcelType1) {
       var mytable = document.getElementById("DisTable2");
       var rowCount = mytable.rows.length;
       if (rowCount <= 201) {
           ShowMask();
           setTimeout("write_to_excel1(" + ExcelType1 + ")", 400);
       }
       else
           alert("Records Per Page Should Not Greater Than 200");
   }
        
        
        
    var CaliberDocumentViewerIns = document.getElementById("CaliberDocumentViewer");
	    
	       
	function write_to_excel1(ExcelType1) {
    str = "";
    var mytable = document.getElementById("DisTable2");
    var rowCount = mytable.rows.length;
    var colCount = mytable.rows(1).cells.length;
    CaliberDocumentViewerIns.LoadDocument(getTemplatePath(),true,1);
//    CaliberDocumentViewerIns.LoadDocument(getTemplatePath(),true,1);
    var oBook = CaliberDocumentViewerIns.ExcelWorkBook;
    var oSheet = CaliberDocumentViewerIns.ExcelWorkBook.Worksheets(1); 
    
    for (var i = 0; i < rowCount; i++) {
        for (var j = 0; j < colCount; j++) {
            if (i == 0) {
                str = mytable.rows[i].cells[j].innerText;
                oBook.WorkSheets(1).cells(i+1,j+1).NumberFormat = "@";
                oBook.WorkSheets(1).cells(i+1,j+1).ColumnWidth=23.14;
                oBook.WorkSheets(1).cells(i+1,j+1).Font.Bold = true;
                oBook.WorkSheets(1).cells(i+1,j+1).Name = "Calibri";
                oBook.WorkSheets(1).cells(i+1,j+1).Font.Size = 11;
                oBook.WorkSheets(1).cells(i+1,j+1).HorizontalAlignment = 3;
                oBook.WorkSheets(1).cells(i+1,j+1).VerticalAlignment = 3;
            }
            else {
                str = mytable.rows[i].cells[j].innerText;
                oBook.WorkSheets(1).cells(i+1,j+1).NumberFormat = "@";
                oBook.WorkSheets(1).cells(i+1,j+1).ColumnWidth=23.14;
                oBook.WorkSheets(1).cells(i+1,j+1).Name = "Calibri";
                oBook.WorkSheets(1).cells(i+1,j+1).Font.Size = 10;
                oBook.WorkSheets(1).cells(i+1,j+1).HorizontalAlignment = 3;
                oBook.WorkSheets(1).cells(i+1,j+1).VerticalAlignment = 3;
            }
            oSheet.Cells(i + 1, j + 1).Value = str;           
            oBook.WorkSheets(1).cells(i+1,j+1).Borders.LineStyle = "1";
            oBook.WorkSheets(1).cells(i+1,j+1).Borders.Weight = 2;
            
            startAdd=oBook.WorkSheets(1).Cells(i+1,j+1).address(false,false);
            EndAdd=oBook.WorkSheets(1).Cells(i+1,j+1).address(false,false);
            oBook.WorkSheets(1).Range(startAdd,EndAdd).WrapText=true ;
        }
    }
            HideMask();   
        
    oSheet.autofit;
//   
    oBook.WorkSheets(1).Protect("caliber_09")
    oBook.Application.Dialogs(5).Show("C:\\" + "SessionLogReport" + ".xlsx");
    CaliberDocumentViewerIns.CloseControl();
  
}

function getTemplatePath()
    {
        var THrefArr = [];
        var HrefArr = [];
        var HrefArr1 = [];
        THrefArr = window.location.href.split("/");

        for(var i=0;i< THrefArr.length - 2;i++)
        {
            HrefArr[i] = THrefArr[i];
        }

        for(var i=0;i< THrefArr.length - 3;i++)
        {
            HrefArr1[i] = THrefArr[i];
        }
        var Href = HrefArr.join("/");
        var Href1 = HrefArr1.join("/");

        return Href1 + "/HtmlFiles/ExportTplt.xlsx"; //HtmlFiles/Template.dot"; ///HtmlFiles/SampleTemplate.dot";
    }

	    var Eflag=true
        function ExpDataToExcel1()
        {
        
	        if(Eflag==true)
		        {
        		
		        Eflag=false
			        //r As Integer, c As Integer, CellData As String
			        var txt1
			        var width
			        var bgColor
			        var fontColor=1
			       // var TableObjId="ActionPlanTAb"
			        var TableObjId=document.getElementById("FPHeaderTd").children(0);
			        var rCount=document.all(TableObjId).rows.length
			        if(rCount<1){ return(false)}
			        var ColCount=document.all(TableObjId).rows(0).cells.length			        
        			
        			 
	                    //document.Form1.ExcelExpImp1.OpenExcel()
	                  OpenExcel();	
					        for(r=0;r<rCount;r++){
        			 
							        for(c=0;c<ColCount;c++){
							        bgColor=2;
							        width=20;
							        fontColor=1;
							        if(c==0) var width=8;
							        txt1=document.all(TableObjId).rows(r).cells(c).innerText
        						    if (c==ColCount-1 && r != 0)
        						    {
        						        fontColor=2;
        						        if(document.all(TableObjId).rows(r).cells(c-2).innerText != "--" && document.all(TableObjId).rows(r).cells(c-2).innerText != "")
        						            {bgColor=4;}
        						        else if((document.all(TableObjId).rows(r).cells(c-2).innerText=="--") &&(txt1<0))
        						            {bgColor=3;}
        						        else
        						        {
        						            if(parseInt(txt1)<30){bgColor=46;}
        						            else if(parseInt(txt1)<60){bgColor=5;}
        						            else if(parseInt(txt1)<0){bgColor=3;}
        						        }        						        
        						       // else if(parseInt(txt1)<0){bgColor=3;}
        						    }
							        //document.Form1.ExcelExpImp1.WriteExcelData(r+1,c+1,txt1) 
        						 
							        WriteData(r+1,c+1,txt1,width,bgColor,"@",8,"Arial","True",fontColor) 
        							
								        }
					           } 
					              CloseExcel()
					        //document.Form1.ExcelExpImp1.CloseExcel()
					        //document.Form1.ExcelExpImp1.ClearExcel()
			        }
			        else
			        {
			        alert("Refresh the screen")
				        }	
        								
		         }
		 /*-----------Export To Excel -------------*/
function IsDigit(e)
    {
 
        if(e.shiftKey ==true)
            return false;
        var KeyIdentifierMap =
        {
            End            : 35,
            Home        : 36,
            Left        : 37,
            Right        : 39,
            'U+00007F'    : 46        // Delete
        }
        if ( !e )
            e = event ;

    var AvailableVal = window.event.srcElement.value
          var iCode = ( e.keyCode || e.charCode );
            if(e.shift==true)
                return false
            if(AvailableVal == '' && iCode == 48)
                return false
        if((iCode == 46) && (AvailableVal.indexOf(".") != -1))
                return false;
        if((iCode == 46) && (window.event.srcElement.value == ""))
                return false;

        if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
                iCode = KeyIdentifierMap[ e.keyIdentifier ] ;
            if(iCode == 39 ) return false;

        return (
                ( iCode >= 48 && iCode <= 57 )        // Numbers
                || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
                || iCode == 8                        // Backspace
                                       // Delete
                || iCode == 9                        // Tab
                )
    }

</script>


</HTML>
