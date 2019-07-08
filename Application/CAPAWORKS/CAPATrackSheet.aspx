<%@ Page Language="vb" AutoEventWireup="false" EnableViewState="true" Codebehind="CAPATrackSheet.aspx.vb"
    Inherits="CAPAWORKS.CAPATrackSheet" %>

<%--<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl3.ascx" %>--%>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.Text%>
    </title>
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
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />
    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>

    <link rel="stylesheet" href="../Plugins/progressbar/demos.css" />
    <style type="text/css">
        .ui-progressbar .ui-progressbar-value
        {
            background-image: url(../Plugins/progressbar/pbar-ani.gif);
        }
    </style>
    
    
    <style type="text/css">
    .ReportSubTable{
     border-collapse:collapse;border:none;mso-border-alt:solid #5fa8cf .5pt;mso-border-themecolor:text1;mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt;height:20.45pt;
     color :Black; 
            font-weight:600; 
            Background-Color:#FFFFFF;
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
            background:#54a2cc;
            
    }
    .ReportHeaderTd{
    border:solid #5fa8cf 1 pt;font-family:Microsoft Sans Serif,Arial;background:#54a2cc;font-weight:bold;font-size:11
    color :#fcfceb; 
            font-weight:600; 
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
    }
    .ReportFirstRow{
    border:solid #5fa8cf 1 pt;font-family:Verdana,Arial;background:#FFFFFF;font-weight:normal;font-size:11
    }
    .ReportNextRow{
    border:solid #5fa8cf 1 pt;font-family:Verdana,Arial;background:#dcebf2;font-weight:normal;font-size:11
    }
    
        .MsoTableGrid Td 
        {
            color :Black; 
            font-weight:600; 
            Background-Color:#FFFFFF;
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
        }
        
        .MsoNormal
        {
            color :#fcfceb; 
            font-weight:600; 
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
        }
        
        .MainSubTD
        {
            color :#Black; 
            font-weight:600; 
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
            border-color:#ffffff;
            border-bottom-color:#ffffff;
            border-top-color:#5fa8cf;
            border-right-color:#5fa8cf;
            border-left-color:#5fa8cf;
        }
        
        .ChangeColor
        {
            Background-color:#eefce6;
            border:solid #c8e3b8 1 pt;
        }
        
        .OldColor
        {
            Background-color:#5fa8cf;
            border:solid #5fa8cf 1 pt;
        }
    
        
    </style>

    <style type="text/css">
    .ReportSubTable{
     border-collapse:collapse;border:none;mso-border-alt:solid #5fa8cf .5pt;mso-border-themecolor:text1;mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt;height:20.45pt;
     color :Black; 
            font-weight:600; 
            Background-Color:#FFFFFF;
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
            background:#54a2cc;
            
    }
    .ReportHeaderTd{
    border:solid #5fa8cf 1 pt;font-family:Microsoft Sans Serif,Arial;background:#54a2cc;font-weight:bold;font-size:11
    color :#fcfceb; 
            font-weight:600; 
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
    }
    .ReportFirstRow{
    border:solid #5fa8cf 1 pt;font-family:Verdana,Arial;background:#FFFFFF;font-weight:normal;font-size:11;
    }
    .ReportNextRow{
    border:solid #5fa8cf 1 pt;font-family:Verdana,Arial;background:#dcebf2;font-weight:normal;font-size:11; 
    }
    
        .MsoTableGrid Td 
        {
            color :Black; 
            font-weight:600; 
            Background-Color:#FFFFFF;
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
        }
        
        .MsoNormal
        {
            color :#fcfceb; 
            font-weight:600; 
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
        }
        
        .MainSubTD
        {
            color :#Black; 
            font-weight:600; 
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
            border-color:#ffffff;
            border-bottom-color:#ffffff;
            border-top-color:#5fa8cf;
            border-right-color:#5fa8cf;
            border-left-color:#5fa8cf;
        }
        
        .ChangeColor
        {
            Background-color:#eefce6;
            border:solid #c8e3b8 1 pt;
        }
        
        .OldColor
        {
            Background-color:#5fa8cf;
            border:solid #5fa8cf 1 pt;
        }
    
        
    </style>

    
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
    
        <!-- Our activeX object -->
        <span style="display: none">
            <%
                Response.WriteFile("../DMSManagement/ActiveX.inc")
            %>
        </span>
                    
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="Table1" EnableViewState="False" Width="20in">
            <asp:TableRow Height="20" CssClass="SubHead">
                <asp:TableCell CssClass="MainHead" >
                    <asp:Label ID="MainTitleLtrl" runat="server"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow">
                <asp:TableCell CssClass="SubHead">
                    <asp:Label ID="SubTitleLtrl" runat="server"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" width=100%>
                        
                 <asp:TableRow>
                
                <asp:TableCell ColumnSpan=6>
                    <asp:Table ID="SrhTbl" runat="server" HorizontalAlign="left" CellPadding="0" CssClass="SubTable"
                        CellSpacing="1" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:Label ID="PlanIDlbl" runat="server" Text="Plan ID like"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:TextBox ID="PlanIDTxt" runat="server" Text="%"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:Label ID="IsuCatLbl" runat="server" Text="Issue Category"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:DropDownList ID="IsuCatDDL" runat="server" Width="210px" EnableViewState="true">
                                </asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:Label ID="InitBetwnLbl" runat="server" Text="Initiated Between"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <uc1:CaliberCalender id="FromDate" runat="server">
                                </uc1:CaliberCalender>
                                And
                                <uc1:CaliberCalender id="ToDate" runat="server">
                                </uc1:CaliberCalender>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:TextBox ID="WidthTXt" Text="10" runat="server" CssClass="hideRow"></asp:TextBox>
                                <asp:Label ID="StatusLbl" runat="server" Text="Status"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:RadioButtonList ID="StatusRBL" runat="server" RepeatDirection="horizontal" CssClass="MainTD">
                                    <asp:ListItem Text="All" Selected="true" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="Open" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Closed" Value="2">
                                    </asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:Label ID="PlanTypLbl" runat="server" Text="Plan Type"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:DropDownList ID="PlanTypDDL" runat="server" Width="210px" EnableViewState="true">
                                </asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:Label ID="MtrReqCap" runat="server"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:RadioButtonList ID="EftReqRbl" runat="server" RepeatDirection="horizontal" CssClass="MainTD">
                                                                    <asp:ListItem Text="All" Value="0" Selected=True></asp:ListItem>
                                    <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="No" Value="2"></asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="MainTD">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:Label ID="ForcedClsLbl" runat="server"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:RadioButtonList ID="FclsReqRbl" runat="server" RepeatDirection="horizontal"
                                    CssClass="MainTD">
                                    <asp:ListItem Text="All" Selected="true" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="Yes" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="No" Value="1"></asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                            <asp:TableCell CssClass="HideRow" ColumnSpan="1">
                                <asp:Label ID="LabeL1" runat="server" Text="Effectiveness Status"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="HideRow" ColumnSpan="1">
                                <asp:RadioButtonList ID="EffectStatusRdl" runat="server" RepeatDirection="horizontal"
                                    CssClass="MainTD">
                                    <asp:ListItem Text="Satisfactory" Value="Satisfactory"></asp:ListItem>
                                    <asp:ListItem Text="Not-Satisfactory" Value="Not-Satisfactory"></asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                            
                            
                           <%-- --------------------------------------Added For Dept And Incharge Group Filter By Asish----------------------------------------------------%>
                            
                            
                            
                            
                            
                            <asp:TableCell CssClass="MainTd" ColumnSpan="1">
                                <asp:Label ID="InchargeGrpLbl" runat="server" Text="Incharge Group "></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTd" ColumnSpan="1">
                                
                                <input type="button" id="UserGrpPopUpBtn" runat="server" class ='RsnPUP' onclick='fnOpenInchargeGrpPopUp()'/>                               
                              
                                <asp:Label ID="InchargeUsrGrpLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="InchargeGrpTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="InchargeGrpTxtTmp" runat="server" CssClass="HideRow"></asp:TextBox>
                                
                                
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="MainTd" ColumnSpan="1">
                                <asp:Label ID="InchargeDeptLbl" runat="server" Text="Incharge Department "></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTd" ColumnSpan="1">
                                <asp:DropDownList  ID="InchargeDeptDdl" runat="server" Width="210px" EnableViewState="true">
                                   
                                </asp:DropDownList>
                            </asp:TableCell>
                            
                           
                          
                            
                        </asp:TableRow>
                         <asp:TableRow CssClass="MainTD">
                            
                            <asp:TableCell CssClass="MainTd" ColumnSpan="1">
                                <asp:Label ID="InitDeptLbl" runat="server" Text="Initiating Department "></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTd" ColumnSpan="5">
                                <asp:DropDownList  ID="InitDeptDdl" runat="server" Width="210px" EnableViewState="true">
                                   
                                </asp:DropDownList>
                            </asp:TableCell>
                            
                            </asp:TableRow> 
                              <%-- -----------------------------------------------Added For Dept And Incharge Group Filter By Asish-------------------------------------------%>
                            
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow">
                <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                    <asp:LinkButton ID="ActLb" Height="100%" runat="server" Width="100%"></asp:LinkButton>
                </asp:TableCell>
                <asp:TableCell CssClass="MainTD" ColumnSpan="4"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="MainTD">
                    <asp:Literal ID="MaxRecLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
                <asp:TableCell CssClass="MainTD">
                    <asp:Literal ID="MaxRecCntLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
                <asp:TableCell CssClass="MainTD">
                    <asp:Literal ID="RecPerPageLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
                <asp:TableCell CssClass="MainTD">
                    <asp:TextBox ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" runat="server" AutoPostBack="False"
                        Width="50px">20</asp:TextBox>
                </asp:TableCell>
                <asp:TableCell CssClass="MainTD">
                    <asp:Literal ID="PgNoLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
                <asp:TableCell CssClass="MainTD">
                    <asp:TextBox ID="PgNoTxt" CssClass="TxtCls" runat="server" AutoPostBack="False" Width="50px"
                        MaxLength="5">1</asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="GoBtn" runat="server" CssClass="ButCls" Text="Display" Visible="TRUE">
                    </asp:Button>
                </asp:TableCell>
            </asp:TableRow>
            </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="DevCtrlTabTR">
                <asp:TableCell ColumnSpan="6">
                    <asp:Table ID="ActionPlanTAb" Width="100%" runat="server" HorizontalAlign="center"
                        CellPadding="2" CssClass="SubTable" CellSpacing="1">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ID="DocViewTd" Style="height: 600px; width: 100%;" ColumnSpan="6"
                    CssClass="HideRow">
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow">
                <asp:TableCell ColumnSpan="6">
                    <asp:TextBox ID="IsuCatTxt" runat="server" Text="0"></asp:TextBox>
                    <asp:TextBox ID="PlanTypTxt" runat="server" Text="0"></asp:TextBox>
                    <%-- --------------------Added For Dept And Incharge Group Filter By Asish--%>  
                    
                    <asp:TextBox ID="InitDeptTxt" runat="server" Text="0"></asp:TextBox>
                    <asp:TextBox ID="InchargeDeptTxt" runat="server" Text="0"></asp:TextBox>
                    
                    <%-- --------------------Added For Dept And Incharge Group Filter By Asish--%>  

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="WordExceTr">
                <asp:TableCell ColumnSpan="6" BackColor="white" HorizontalAlign="Left" CssClass="MainFoot">
                    <input type="button" id="ExportBtn" value="Export To Excel" class="ButSelCls" language="javascript"
                        runat="server" onclick="write_to_excel()" name="ExportBtn" />
                </asp:TableCell>
                <asp:TableCell ColumnSpan="3" BackColor="white" HorizontalAlign="Right" CssClass="HideRow">
                    <input type="button" id="Button1" value="Word Print" class="ButSelCls" language="javascript"
                        runat="server" onclick="FnCallIntWordPrograssbar()" name="ExportBtn" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow1" CssClass="HideRow">
                <asp:TableCell ColumnSpan="3" HorizontalAlign="Left" CssClass="MainFoot">
                                  <input id="Button2" type="button" value="Back" onmouseover="this.className='ButOCls'"
                                    class='ButCls' accesskey="C" onmouseout="this.className='ButCls'" onclick="BackFunction()"/>
                </asp:TableCell>
                <asp:TableCell CssClass="MainFoot" HorizontalAlign="Center" ColumnSpan="3">
                                     <span id="PrinterOptSpan">
                                    <select id="PrinterSelList" style="width:150px">
                                        <option value=""> [ Select ] </option>
                                    </select>
                                     <input id="BtnPrint" type="button" value="Print" onmouseover="this.className='ButOCls'"
                                    class='ButCls' accesskey="C" onmouseout="this.className='ButCls'" onclick="PrintDocument()"/>
                                     </span>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow">
                <asp:TableCell ID="HeadetrDiv" ColumnSpan="6">
                    <asp:Table ID="H1" runat="server" BorderWidth="0" CellSpacing="1" CellPadding="1"
                        Width="100%">
                        <asp:TableRow>
                            <asp:TableCell ID="TableCell1" ColumnSpan="2" HorizontalAlign="left" runat="server"><b><br><%=replace(Session("CompanyAddr"),vbcrlf, "<BR>")%></b></asp:TableCell>
                            <asp:TableCell ID="TableCell2" ColumnSpan="2" HorizontalAlign="Center" runat="server"><b><br /><%=ActionPlanReport%></b></asp:TableCell>
                            <asp:TableCell ID="TableCell3" ColumnSpan="2" CssClass="MainTd" runat="server" HorizontalAlign="right"><img src="../IMAGES/CompanyLogo.jpg"></asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow">
                <asp:TableCell ColumnSpan="6">
                    <asp:Table ID="F1" runat="server" BorderWidth="0" CellSpacing="1" CellPadding="1"
                        Width="100%">
                    </asp:Table>
                    <asp:TextBox ID="FootWidth" runat="server" Text="11"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                <div id="MASkDiv">
                    <div style="display: none; color: White; font-size: x-large" id="message">
                        Loading...</div>
                    <div id="progressbar">
                    </div>
                </div>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript" type="text/javascript">
	    function SaveIsuCat(obj){ //Saving Issue Category on postback
	        document.getElementById("IsuCatTxt").value= obj.value;
	    }
	    function SavePlanTyp(obj){ //Saving Plan Type on postback
	        document.getElementById("PlanTypTxt").value= obj.value;
	    }
	    function SaveInitDept(obj){ //Saving Init Dept on postback by Asish
	        document.getElementById("InitDeptTxt").value= obj.value;
	    }
	    function SaveInchargeDept(obj){ //Saving Incharge Dept on postback by Asish
	        document.getElementById("InchargeDeptTxt").value= obj.value;
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
	        
    var CaliberDocumentViewerIns = document.getElementById("CaliberDocumentViewer");
	    
	       
	function write_to_excel1(ExcelType1) {
    str = "";
    var mytable = document.getElementById("ActionPlanTAb");
    var rowCount = mytable.rows.length;
    var colCount = mytable.rows(1).cells.length;
    CaliberDocumentViewerIns.LoadDocument(getTemplatePath(),false,"1");
//    CaliberDocumentViewerIns.LoadDocument(getTemplatePath(),true,1);
    var oBook = CaliberDocumentViewerIns.ExcelWorkBook;
    var oSheet = CaliberDocumentViewerIns.ExcelWorkBook.Worksheets(1); 
    
    for (var i = 0; i < rowCount; i++) {
        for (var j = 0; j < colCount; j++) {
            if (i == 0) {
                str = mytable.rows[i].cells[j].innerText;
                oBook.WorkSheets(1).cells(i+1,j+1).ColumnWidth=23.14;
                oBook.WorkSheets(1).cells(i+1,j+1).Font.Bold = true;
                oBook.WorkSheets(1).cells(i+1,j+1).Name = "Calibri";
                oBook.WorkSheets(1).cells(i+1,j+1).Font.Size = 11;
                oBook.WorkSheets(1).cells(i+1,j+1).HorizontalAlignment = 3;
                oBook.WorkSheets(1).cells(i+1,j+1).VerticalAlignment = 3;
            }
            else {
                str = mytable.rows[i].cells[j].innerText;
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
    //    oBook.WorkSheets(1).Protect("caliber_09")
    //    oBook.Application.Dialogs(5).Show("C:\\" + "Actionplan" + ".xlsx");
    //    CaliberDocumentViewerIns.CloseControl();


    oBook.WorkSheets(1).Protect("caliber_09")
    var ExcelFilePath = CaliberDocumentViewerIns.ReadFileDialogPath();
    CaliberDocumentViewerIns.SaveExcelFile(ExcelFilePath);
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
		 
    function FnHisPopup(ActPlnID)
        {            
            var pageURL ="RevHisPopUp.aspx?ActPlnID=" + ActPlnID 
            SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        
</script>

<script language="javascript">
	
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
            var HelloWorldControl1Ins = document.getElementById("CaliberDocumentViewer");
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
//            HelloWorldControl1Ins.wd.ActiveWindow.DocumentMap = false;
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

var HelloWorldControl1Ins1 = document.getElementById("CaliberDocumentViewer");

    function LoadPrinters() {    
        try {
            if (HelloWorldControl1Ins1.IsWordInstalled() == true) {
                var PrintestList = new Array();
                PrintestList = HelloWorldControl1Ins1.ReadPrinters().split("#*#");
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

    LoadPrinters()

    function PrintDocument() {
        if (document.getElementById("PrinterSelList").value != "") {
            var PrntSts = HelloWorldControl1Ins1.PrintDocument1(document.getElementById("PrinterSelList").value);
            if (PrntSts == true) {
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
                TableId = "#ActionPlanTAb" //document.getElementById("ActionPlanTAb").id //$(this).selector
                if ($('#ActionPlanTAb tr').length <= 1) {
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
    
//-----------------------------------Added For Dept And Incharge Group Filter By Asish-----------------------------
    
    
    
    function fnOpenInchargeGrpPopUp() {
    var pageURL = "InchUserGrpPopUp.aspx?DeptDdl=" +document.getElementById("InchargeDeptDdl").value

    var features = "height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50"
    var SpWinObj = window.open(pageURL, 'SpecCodes', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}
function fnCrIncGrpSetToCode(UserGrpIdVal, UserGrpCodeVal, UserGrpUcodeVal,UserGrpDescVal) {
if (UserGrpDescVal!='')
{ 
    document.getElementById("InchargeGrpTxt").value = UserGrpCodeVal
    document.getElementById("InchargeUsrGrpLbl").innerHTML = UserGrpDescVal +"( " + UserGrpUcodeVal+ " )"
    document.getElementById("InchargeGrpTxtTmp").value = UserGrpDescVal +"( " + UserGrpUcodeVal+ " )"
}
else
{
    document.getElementById("InchargeGrpTxt").value = UserGrpCodeVal
    document.getElementById("InchargeUsrGrpLbl").innerHTML = UserGrpDescVal 
    document.getElementById("InchargeGrpTxtTmp").value = UserGrpDescVal 
}
}
//-----------------------------------Added For Dept And Incharge Group Filter By Asish-----------------------------
</script>

</html>
