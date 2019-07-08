<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WorkStatusRptList.aspx.vb" Inherits="CAPAWORKS.WorkStatusRptList" %>

<%@ Register TagPrefix="uc1" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx"  %>
<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title><%=MainTitleLtrl.Text%></title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<script language="VBSCRIPT" src="../JScript/ExportToExcel.vbs"></script>
		
		<script src="../JScript/jquery.min.js" type="text/javascript"></script>
        <script src="../Plugins/JqueryModel/jquery.simplemodal.js" type="text/javascript"></script>
        <link href="../Plugins/JqueryModel/simplemodal.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="../Plugins/progressbar/jquery.ui.all.css" />
        <script type="text/javascript" src="../Plugins/progressbar/jquery.ui.core.js"></script>
        <script type="text/javascript" src="../Plugins/progressbar/jquery.ui.widget.js"></script>
        <script type="text/javascript" src="../Plugins/progressbar/jquery.ui.progressbar.js"></script>
        <link rel="stylesheet" href="../Plugins/progressbar/demos.css" />

        <style type="text/css">
        .ui-progressbar .ui-progressbar-value
        {
            background-image: url(../Plugins/progressbar/pbar-ani.gif);
        }
    </style>
    
    
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table CELLPADDING="0" CELLSPACING="0" BorderWidth="3" HorizontalAlign="center" cssclass="MainTable"
				runat="server" id="Table1" EnableViewState="False">
				<ASP:TABLEROW Height="20" CssClass="SubHead">
					<ASP:TABLECELL CssClass="MainHead">
						<ASP:Label id="MainTitleLtrl" Runat="server"></ASP:Label>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
				<ASP:TABLEROW>
					<ASP:TABLECELL> <!-----------Base table------------->
						<ASP:TABLE id="CrTopTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">
							<ASP:TABLEROW>
								<ASP:TABLECELL CSSClass="SubHead" ColumnSpan="6">
									<ASP:LabeL id="SubTitleLtrl" runat="server"></ASP:LabeL>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							 <ASP:TABLEROW>
								            <ASP:TABLECELL CSSClass="HeadTD" ColumnSpan="6">
									            <ASP:LabeL id="SearchLbl" runat="server" Text="&nbsp;Search"></ASP:LabeL>
								            </ASP:TABLECELL>								            
							            </ASP:TABLEROW>
							<asp:TableRow>
								<asp:TableCell CSSClass="MainTD" ColumnSpan="6">
									<%--<uc1:SearchCtrl id="SearchCtrl3" runat="server"></uc1:SearchCtrl>--%>
									<ASP:TABLE id="SrhTbl" runat="server" HorizontalAlign="left" CELLPADDING="0" CSSClass="SubTable"
							                cellspacing="1" width="100%">
							           
									    <ASP:TABLEROW>
								            <ASP:TABLECELL CSSClass="MainTD" ColumnSpan="1">
									            <ASP:LabeL id="WrkIDlbl" runat="server" Text="WorkItem ID like"></ASP:LabeL>
								            </ASP:TABLECELL>
								            <ASP:TABLECELL CSSClass="MainTD" ColumnSpan="1">
									            <ASP:TEXTBOX id="WrkIDTxt" runat="server" Text="%"></ASP:TEXTBOX>
								            </ASP:TABLECELL>
								            <ASP:TABLECELL CSSClass="MainTD" ColumnSpan="1">
									            <ASP:LabeL id="WrkRldToLbl" runat="server" Text="Work Related To"></ASP:LabeL>
								            </ASP:TABLECELL>
								            <ASP:TABLECELL CSSClass="MainTD" ColumnSpan="1">
									            <ASP:DROPDOWNLIST id="WrkRldToDDL" runat="server"  Width="210px" EnableViewState="true"></ASP:DROPDOWNLIST>
								            </ASP:TABLECELL>
								           <ASP:TABLECELL CSSClass="MainTD" ColumnSpan="1">
									            <ASP:LabeL id="TardateBetwnLbl" runat="server" Text="Target Date Between"></ASP:LabeL>
								            </ASP:TABLECELL>
								            <ASP:TABLECELL CSSClass="MainTD" ColumnSpan="1">
									            <uc1:CaliberCalender id="FromDate" runat="server"></uc1:CaliberCalender>
                                                And
                                                <uc1:CaliberCalender id="ToDate" runat="server">
                                                </uc1:CaliberCalender>
								            </ASP:TABLECELL>
							            </ASP:TABLEROW>							          
							          </ASP:TABLE>
							          
								</asp:TableCell>
							</asp:TableRow>
							<ASP:TABLEROW CssClass="HideRow">
								<ASP:TABLECELL CssClass="MainTD" ColumnSpan="2">
									<ASP:LINKBUTTON id="ActLb" Height="100%" Runat="server" Width="100%"></ASP:LINKBUTTON>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD" ColumnSpan="4"></ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="MaxRecLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="MaxRecCntLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="RecPerPageLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" Runat="server" AutoPostBack="False"
										Width="50px">20</ASP:TEXTBOX>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="PgNoLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX id="PgNoTxt" CssClass="TxtCls" Runat="server" AutoPostBack="False" Width="50px"
										MaxLength="5">1</ASP:TEXTBOX>&nbsp;&nbsp;&nbsp;&nbsp;
										<asp:button id="GoBtn" Runat="server" CssClass="ButCls" Text="Display" Visible="TRUE" ></asp:button>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW ID=WorkItemTabTR>
								<ASP:TABLECELL ColumnSpan="6">
									<ASP:TABLE id="WorkItemTab"  Width="100%" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
										cellspacing="1" ></ASP:TABLE>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							
                            <asp:TableRow>
                            <asp:TableCell ID="DocViewTd" style="height:600px;width:100%;" ColumnSpan=6 CssClass="HideRow">
            <%
    Response.WriteFile("../DMSManagement/ActiveX.inc")
            %>
                          </asp:TableCell>
                            </asp:TableRow>

							<ASP:TABLEROW CssClass="HideRow">
								<ASP:TABLECELL ColumnSpan="6">
									<ASP:TEXTBOX id="WrkRelatedTotxt" runat="server" Text="0"></ASP:TEXTBOX>
									<ASP:TEXTBOX id="WidthTXt" runat="server" Text="13"></ASP:TEXTBOX>
									
									
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							
							<ASP:TABLEROW ID="WordExceTr">
								<ASP:TABLECELL ColumnSpan="3" BackColor="white" HorizontalAlign=Left CssClass="MainFoot">
									<INPUT type="button" id="ExportBtn" value="Export To Excel" Class="ButSelCls" 
									LANGUAGE="javascript" runat="server" onclick="ExpDataToExcel()" NAME="ExportBtn">
								</ASP:TABLECELL>
								
								<ASP:TABLECELL ColumnSpan="3" BackColor="white" HorizontalAlign=Right CssClass="MainFoot">
									<INPUT type="button" id="Button1" value="Word Print" Class="ButSelCls" 
									LANGUAGE="javascript" runat="server" onclick="FnCallIntWordPrograssbar()" NAME="ExportBtn">
								</ASP:TABLECELL>
								
							</ASP:TABLEROW>	
							
							 <asp:TableRow ID="TableRow1" CssClass="HideRow">
							 
							 <asp:TableCell ColumnSpan="3"  HorizontalAlign="Left"  CssClass="MainFoot">
                                  <input id="Button2" type="button" value="Back" onmouseover="this.className='ButOCls'"
                                    class='ButCls' accesskey="C" onmouseout="this.className='ButCls'" onclick="BackFunction()"/>
                            </asp:TableCell>
                                 
                                 <asp:TableCell CssClass="MainFoot" HorizontalAlign="Center" ColumnSpan=3>
                                     <span id="PrinterOptSpan">
                                    <select id="PrinterSelList" style="width:150px">
                                        <option value=""> [ Select ] </option>
                                    </select>
                                     <input id="BtnPrint" type="button" value="Print" onmouseover="this.className='ButOCls'"
                                    class='ButCls' accesskey="C" onmouseout="this.className='ButCls'" onclick="PrintDocument()"/>
                                     </span>
                                </asp:TableCell>
                            </asp:TableRow>
                                                        
                            <ASP:TableRow  CssClass="HideRow">
                            <ASP:TableCell ID="HeadetrDiv" ColumnSpan=6>
                                <asp:Table id="H1" Runat="server" BorderWidth="0" CELLSPACING="1" CELLPADDING="1" Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell ID="TableCell1"  ColumnSpan=2 HorizontalAlign="left" runat=server><b><br><%=replace(Session("CompanyAddr"),vbcrlf, "<BR>")%></b></ASP:TableCell>
                                        <asp:TableCell ID="TableCell2" ColumnSpan=2 HorizontalAlign="Center" runat=server><b><br /><%=ActionPlanReport%></b></ASP:TableCell>
                                        <asp:TableCell ID="TableCell3" ColumnSpan=2  CssClass="MainTd" runat=server HorizontalAlign="right"><img src="../IMAGES/CompanyLogo.jpg"></ASP:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                                                               
                            </ASP:TableCell>
                            </ASP:TableRow>
                            
                            <ASP:TableRow  CssClass="HideRow">
                              <ASP:TableCell ColumnSpan=6>
                              <asp:Table id="F1" Runat="server" BorderWidth="0" CELLSPACING="1" CELLPADDING="1" Width="100%"></asp:Table>
                              	<ASP:TEXTBOX id="FootWidth" runat="server" Text="11"></ASP:TEXTBOX>
                               
                              </ASP:TableCell>
                            </ASP:TableRow>
						</ASP:TABLE>
						
						
					</ASP:TABLECELL>
				</ASP:TABLEROW>
				
				<asp:TableRow>
                    <asp:TableCell>
                <div id="MASkDiv">
                <div style="display:none;color:White;font-size:x-large" id="message">Loading...</div>
                <div id="progressbar"></div></div>
                     </asp:TableCell>
                </asp:TableRow>
        
			</asp:table>
		</form>
	</body>
	
	
	<script language="javascript" type="text/javascript">
	    function SaveWrkRldTo(obj){ //Saving Work Related To  on postback
	        document.getElementById("WrkRelatedTotxt").value= obj.value;
	    }
	   
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
	    /*-----------Export To Excel -------------*/
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
			       // var TableObjId="DevCtrlTable"
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
		 
    function FnHisPopup(ActPlnID)
        {            
            var pageURL ="RevHisPopUp.aspx?ActPlnID=" + ActPlnID 
            SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        
       
        
    </script>
	
	<script language=javascript>
	
	 
        /************* Word Document preview ***********/
        
        
    function WordFormatCorrections(WordContent)
    {
        WordContent = WordContent.replace(/<(\w[^>]*) src="\s*([^/IMAGES]*)([^>]*)/gi, "<$1 src=\""+window.location.href.substring(0, window.location.href.indexOf(window.location.pathname)) + '/' + window.location.pathname.substring(1,window.location.pathname.substring(1).indexOf("/")+1) +"$3") ;
    return WordContent;
    }
    
        
    function FnCallIntWordPrograssbar() {// to call Word Prograssbar
       WORDPRINT()
    }


   function getInternalPath(FilePath) {
        var THrefArr = [];
        var HrefArr = [];
        THrefArr = window.location.href.split("/");

        for (var i = 0; i < THrefArr.length - 2; i++) {
            HrefArr[i] = THrefArr[i];
        }
        var Href = HrefArr.join("/");
        FilePath = Href + "/HtmlFiles/SampleTemplate.dot";

        return FilePath;
    }
    
    var flag=0;
       function WORDPRINT()
        {
          if (flag==0)
          {
        
            var HelloWorldControl1Ins = document.getElementById("CaliberOfficeViewer");
            var FilePath=''
            var TempPath = HelloWorldControl1Ins.GetTempPath();
            var TemplatePath = getInternalPath(FilePath);
            HelloWorldControl1Ins.LoadDocument(TemplatePath);
            
            var FooterStr="<span style='width:30px;color:black'><b>" +"<%=FooterString%>" + "</b></span>"
            //var FooterStr= document.getElementById("FooterTab").outerHTML  //'"<span style='width:30px;color:black'><b>" +"<%=FooterString%>" + "</b></span>"
           // var HeaderFilePath=HelloWorldControl1Ins.GenerateHtmlFile("Action Plan Report","HeaderData_" + (1));
                     
           
            var HeaderContent =document.getElementById("H1").outerHTML;
            HeaderContent = HeaderContent == "" ? " " : HeaderContent;
            HeaderContent=WordFormatCorrections(HeaderContent)
        
            var HeaderFilePath=HelloWorldControl1Ins.GenerateHtmlFile(HeaderContent,"HeaderData_" + (1));
            var FooterFilePath=HelloWorldControl1Ins.GenerateHtmlFile(FooterStr ,"FooterData_" + (1));
                       
            var BodyData = document.getElementById("FPHeaderTd").innerHTML;
            BodyData =BodyData.replace(/FONT-SIZE: 12px;/gi,"FONT-SIZE: 7px;word-wrap:break-word;")
            var BodyFilePath=HelloWorldControl1Ins.GenerateHtmlFile(BodyData,"BodyData_" + (1));

            HelloWorldControl1Ins.InsertFilesInSection(BodyFilePath, HeaderFilePath, FooterFilePath , 2,  1);
            HelloWorldControl1Ins.SetPassword("Caliber_09");  // HelloWorldControl1Ins.DisableSave=false;
            HelloWorldControl1Ins.wd.ActiveWindow.DocumentMap = false;
            HelloWorldControl1Ins.PreviewDocument(3);
            //HelloWorldControl1Ins.DisableSave=false;
                                        
             $("#DevCtrlTabTR").addClass("HideRow");
             $("#DocViewTd").removeClass("HideRow");
             $("#WordExceTr").addClass("HideRow");
             $("#TableRow1").removeClass("HideRow");
             
             flag=1
             
           }
           else
           {
              $("#DevCtrlTabTR").addClass("HideRow");
             $("#DocViewTd").removeClass("HideRow");
             $("#WordExceTr").addClass("HideRow");
             $("#TableRow1").removeClass("HideRow");
           }  
          }
        
        

    </script>
  
  <script type="text/javascript">
//Printer Selection options
    function LoadPrinters() {
        try {
            var ActiveXObjeIns = document.CaliberOfficeViewer
            if (ActiveXObjeIns.IsWordInstalled() == true) {
                var PrintestList = new Array();
                PrintestList = ActiveXObjeIns.ReadPrinters().split("#*#");
                var PrinterSelObj = document.getElementById("PrinterSelList");
                for (var k = 0; k < PrintestList.length; k++) {
                    var oOption = document.createElement("OPTION");
                    oOption.text = PrintestList[k];
                    oOption.value = PrintestList[k];
                    PrinterSelObj.add(oOption)
                }
            }
        }
        catch (e) {
            alert("ActiveX Component Not Installed!");
            return false;
        }
    }

    var ActiveXObjeIns = document.CaliberOfficeViewer

    LoadPrinters()

    function PrintDocument() {
        if (document.getElementById("PrinterSelList").value != "") {
            var ActiveXObjeIns = document.getElementById("CaliberOfficeViewer");
            var PrntSts = ActiveXObjeIns.PrintDocument1(document.getElementById("PrinterSelList").value);
            if (PrntSts == true) {
//                opener.FnCallAjax(document.getElementById("BdyChldId").value, document.getElementById("cntTxt").value, document.getElementById("RgsId").value, document.getElementById("BdyId").value);
                alert('Print Completed Successfully');
                
                 $("#DevCtrlTabTR").removeClass("HideRow");
                 $("#DocViewTd").addClass("HideRow");
                $("#WordExceTr").removeClass("HideRow");
                $("#TableRow1").addClass("HideRow");
                
                window.close();
            }
        }
        else {
            alert('Select Printer');
        }
    }
    
    
    
    function  BackFunction()
    {
      $("#DevCtrlTabTR").removeClass("HideRow");
                 $("#DocViewTd").addClass("HideRow");
                $("#WordExceTr").removeClass("HideRow");
                $("#TableRow1").addClass("HideRow");
     }           
    
    function RepeatHeader()
    {
                 var TableId;
                var thText;
                TableId = "#DevCtrlTable" //document.getElementById("DevCtrlTable").id //$(this).selector
                if ($('#DevCtrlTable tr').length <= 1) {
                 return;
                }
//                if ($(TableId + ' tr:first-child td').length != $(TableId + ' tr:nth-child(2) td').length) {
//                    return;
//                }
                if ($(TableId + ' thead').length == 0) {
                   // $('<thead></thead>').append(TableId);
                    $(TableId).append('<thead></thead>');
                    var HeaderTr = $('<div></div>').append($(TableId + ' tr:first-child').clone()).html().replace(/SubHeadTD/gi, 'SubHead').replace(/class=SubHead/gi, 'class="SubHead"').replace(/<TD/gi, '<TH').replace(/TD>/gi, 'TH>');
                    $(TableId + ' thead').append(HeaderTr);
                    //$(TableId + ' thead tr').addClass("SubHead")
                    $(TableId + ' thead tr th').css("width", "").removeAttr("class").addClass("SubHeadTD").css("cursor", "pointer");
                    $(TableId + ' tbody').append(TableId);
                    
                  $(TableId + ' tbody tr:first-child').remove();
                 }   

    }
    $(document).keydown(function(e){
    var k = ( e.keyCode || e.charCode );
    if( e.ctrlKey || e.altKey/* || ev.shiftKey*/){
        return;
    }
})


    //RepeatHeader()
  </script>
</HTML>

