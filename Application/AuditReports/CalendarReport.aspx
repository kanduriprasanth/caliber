<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CalendarReport.aspx.vb"
    Inherits="AuditReports.CalendarReport" %>

<%@ Register TagPrefix="uc1" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx" %>
<%@ Register TagPrefix="uc2" TagName="Footer" Src="../CaliberCommonCtrls/ReportFooter.ascx" %>
<%@ Register TagPrefix="uc3" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx" %>
<%@ Register TagPrefix="uc4" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>ReportModel</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    

    <script language="javascript" src="../JScript/Common2.js"></script>
    
    <link href="../TRIMS.css" rel="stylesheet">
    <style type="text/css">
    .OccupiedMnth
{
	background-color:#F5D6CC;
	font-size:X-small;
} 
    .UnOccupiedMnth
    {
        background-color:#99cc99;
    }
    </style>
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <table width="963px" border="1" cellspacing="1" cellpadding="1" align="center" style="width: ;
            height: 334px">
            <tr>
                <td>
                    <uc1:Header id="Header1" runat="server">
                    </uc1:Header>
                </td>
                <tr>
                    <td>
                        <asp:Panel CssClass="HideRow" ID="HeaderDiv" runat="server" Width="963px" HorizontalAlign="Left" 
			    EnableViewState="False">
                            <asp:Label ID="H1" Style="padding-right: 0px; padding-left: 0px; font-size: 12px;
                                padding-bottom: 0px; margin-left: 0px; padding-top: 0px; background-color: white;
                                text-align: center; font-bold: true" Width="963px" runat="server">&nbsp;<br>&nbsp;</asp:Label>
                            <asp:Table ID="H2" Style="font-size: 10px; margin-left: 0px; font-family: Arial"
                                Width="963px" runat="server" BorderWidth="0" CellSpacing="1" CellPadding="1">
                                <asp:TableRow>
                                    <asp:TableCell ID="Title1" HorizontalAlign="Center" Style="width: 963px; font-size: 14;
                                        font-weight: bold; padding: 0px; background-color: white; text-align: center"></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>
                        <asp:Panel ID="Panel1" runat="server" Width="963px" HorizontalAlign="Left" EnableViewState="False">
                              <asp:Table ID="Table1" Style="font-size: 10px; margin-left: 0px; font-family: Arial"
                                Width="963px" runat="server" BorderWidth="0" CellSpacing="1" CellPadding="1">
                                <asp:TableRow>
                                    <asp:TableCell ID="TableCell1" HorizontalAlign="Center" Style="width: 963px; font-size: 14;
                                        font-weight: bold; padding: 0px; background-color: white; text-align: center"></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>
                        <asp:Panel ID="BodyDiv" runat="server" Width="963px" HorizontalAlign="Left" EnableViewState="False">
                            <asp:Table ID="Table2" Width="963px" runat="server" BorderColor="black" Border="1"
                                CellSpacing="0" CellPadding="0" HorizontalAlign="center" BackColor="#ffffff">
                                <asp:TableRow CssClass="HideRow">
                                <asp:TableCell ColumnSpan="3" CssClass="MainTD">Year</asp:TableCell>
                                    <asp:TableCell CssClass="MainTD">
                                       <asp:DropDownList ID="YrDDL" runat="server" AutoPostBack="true" Width="150px">
				       </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow CssClass="HideRow">
                                <asp:TableCell  CssClass="MainTD">Audit Type</asp:TableCell>
                                    <asp:TableCell ColumnSpan="3" CssClass="MainTD">
                                       <asp:DropDownList ID="AdtTypeDDL" runat="server" Width="150px"> 
                                        <asp:ListItem Value="0">All</asp:ListItem>
                                        <asp:ListItem Value="1">Internal Audit (Self Inspection)</asp:ListItem>
                                        <asp:ListItem Value="2">External Audit</asp:ListItem>
                                        <asp:ListItem Value="3">Vendor Audit</asp:ListItem>
                                       </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <%--Table Row Added for Search options (Country, Vendor and Audit Description)--%>
                                <asp:TableRow>
                                    <asp:TableCell CssClass="MainTD">Search By</asp:TableCell>
                                    <asp:TableCell CssClass="MainTD">
                                        <asp:RadioButtonList ID="SrchRD" CssClass="RBList" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="2">Audit Description</asp:ListItem>
                                            <asp:ListItem Value="5">Department/Site</asp:ListItem>
                                            <asp:ListItem Value="4">Audit Agency/Customer Name</asp:ListItem>
                                            <asp:ListItem Value="3">Vendor Name</asp:ListItem>                                                 
                                            <asp:ListItem Value="1">Country</asp:ListItem>                                     
                                        </asp:RadioButtonList>
                                    </asp:TableCell>
                                    <asp:TableCell CssClass="MainTD" ID="SrchTxtID" ColumnSpan="2">
                                        <asp:TextBox ID="SrchTxt" runat="server" Width="200px" CssClass="TxtCls" Text="%" MaxLength="25"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell CssClass="MainTD">From</asp:TableCell>
                                    <asp:TableCell CssClass="MainTD">
                                        <uc4:CaliberCalender id="Stdate" runat="server">
                                        </uc4:CaliberCalender>
                                        <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;To</label>
                                        <uc4:CaliberCalender id="Eddate" runat="server">
					                    </uc4:CaliberCalender>
                                    </asp:TableCell>
                                        <%-- <asp:TableCell CssClass="MainTD">To</asp:TableCell>--%>
                                    <asp:TableCell CssClass="MainTD">
                                        <%-- <uc4:CaliberCalender id="Eddate" runat="server">
					                    </uc4:CaliberCalender>--%>
					                    &nbsp;<asp:Button ID="BtnLoad" runat="server"  class='ButCls' onmouseover="this.className='ButOCls'"
						                onmouseout="this.className='ButCls'" Width="70px" text='Display'></asp:Button>
				                    </asp:TableCell>
				                </asp:TableRow>
                  </asp:Table>
				            <%--<asp:tablecell cssclass="MainTd" id="YearTD" Width="100px">Year &nbsp;&nbsp;</asp:tablecell>
									<asp:tablecell cssclass="MainTd" Width="170px">
										<asp:dropdownlist id="Yearddl" runat="server" AutoPostBack="true"></asp:dropdownlist>
									</asp:tablecell>
									<asp:tablecell cssclass="MainTd" id="MonthTD" Width="100px">Month &nbsp;&nbsp;</asp:tablecell>
									<asp:tablecell cssclass="MainTd" Width="170px">
										<asp:dropdownlist id="MonthDdl" runat="server" AutoPostBack="true"></asp:dropdownlist>
									</asp:tablecell>--%>
                                    <%--<asp:tablecell cssclass="MainTd" id="InstCatTD" Width="200px">Audit (Audit Code)&nbsp;</asp:tablecell>
									<asp:tablecell cssclass="MainTd" Width="400px">
										<asp:dropdownlist id="Auditddl" runat="server" AutoPostBack="true"></asp:dropdownlist>
									</asp:tablecell>--%>
                             <%--<asp:Table ID="Table1" Width="125%" runat="server" BorderColor="black" Border="1"
                                CellSpacing="0" CellPadding="0" HorizontalAlign="center" BackColor="#ffffff">
                                <asp:TableRow CssClass="HideRow">
                                    <asp:TableCell CssClass="MainTD" Width="75px">
                                        <asp:Literal ID="MaxRecLtrl" runat="server"></asp:Literal>
                                    </asp:TableCell>
                                    <asp:TableCell CssClass="MainTD" Width="50px">
                                        <asp:Literal ID="MaxRecCntLtrl" runat="server">0</asp:Literal>
                                    </asp:TableCell>
                                    <asp:TableCell CssClass="MainTD" Width="120px">
                                        <asp:Literal ID="RecPerPageLtrl" runat="server"></asp:Literal>
                                    </asp:TableCell>
                                    <asp:TableCell CssClass="MainTD" Width="100px">
                                        <asp:TextBox ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" runat="server" AutoPostBack="False"
                                            Width="50px"></asp:TextBox>
                                    </asp:TableCell>
                                    <asp:TableCell CssClass="MainTD" Width="70px">
                                        <asp:Literal ID="PgNoLtrl" runat="server"></asp:Literal>
                                    </asp:TableCell>
                                    <asp:TableCell CssClass="MainTD" Width="180px">
                                        <asp:TextBox ID="PgNoTxt" CssClass="TxtCls" runat="server" AutoPostBack="False" Width="40px"
                                            MaxLength="5">1</asp:TextBox>
                                        &nbsp;
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>--%>
                            <asp:Table ID="ClbTab" Width="963px" runat="server" BorderColor="black" Border="1"
                                CellSpacing="0" CellPadding="0" HorizontalAlign="center" BackColor="#ffffff">
                            </asp:Table>
                        </asp:Panel>
                        <asp:Panel CssClass="HideROw" ID="FooterDiv" runat="server" Width="720" HorizontalAlign="Left"
			    EnableViewState="False">
                            <asp:Label ID="F1" Style="padding-right: 0px; padding-left: 0px; font-size: 14px;
                                padding-bottom: 0px; margin-left: 0px; padding-top: 0px; background-color: white;
                                text-align: center; font-bold: true" Width="712px" runat="server"></asp:Label>
                            <asp:Table ID="F2" Style="font-size: 12px; margin-left: 0px; font-family: Arial"
                                Width="720" runat="server" BorderWidth="0" CellSpacing="1" CellPadding="1">
                                 <asp:TableRow CssClass="HideRow" Height="0">
					<asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
						<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False"
						    ShowMessageBox="True"></asp:ValidationSummary>
					</asp:TableCell>
				</asp:TableRow>
                            </asp:Table>
                        </asp:Panel>
                        <asp:TextBox ID="HeaderObjIDs" Style="visibility: hidden" runat="server" Text="H1,H2"
                            Width="0" Height="0"></asp:TextBox><asp:TextBox ID="HeaderObjTypes" Style="visibility: hidden"
                                runat="server" Text="P,TN" Width="0" Height="0"></asp:TextBox><asp:TextBox ID="BodyObjIDs"
                                    Style="visibility: hidden" runat="server" Text="ClbTab" Width="0" Height="0"></asp:TextBox><asp:TextBox
                                        ID="BodyObjTypes" Style="visibility: hidden" runat="server" Text="TN" Width="0"
                                        Height="0"></asp:TextBox><asp:TextBox ID="BodyObjTabHeadRows" Style="visibility: hidden"
                                            runat="server" Text="1,1" Width="0" Height="0"></asp:TextBox><asp:TextBox ID="FooterObjIDs"
                                                Style="visibility: hidden" runat="server" Text="F1,F2" Width="0" Height="0"></asp:TextBox><asp:TextBox
                                                    ID="FooterObjTypes" Style="visibility: hidden" runat="server" Text="P,TN" Width="0"
                                                    Height="0"></asp:TextBox></td>
                </tr>
            <tr>
                <td>
                     <%--<uc2:Footer id="Footer1" runat="server"></uc2:Footer>--%>
                </td>
            </tr>
            <tr >
                <td align="center">
                   <input type="button" id="button3" value="Export To Excel" class="ButSelCls" language="javascript"
                                                            onclick="ExpDataToExcel()">
                </td>
            </tr>        
        </table>
    </form>

<script language="javascript">
	    
//	    function ExpDataToExcel()
//	    
//	    {
//	     
//	     try
//	       {
//	         
//	         var flag=CreateExcel();
//	         if(flag==false)
//	               {
//	                  alert('No Records Are Availabe To Export')
//	               }
//	        }
//	      catch(ex)
//	         {
//	               alert('You need to have Excel Installed and Active-X Components Enabled on your System.')
//	               return(false);
//	         } 
//	    }

        function RDateValid(src,args){
   var Flag= VbRDateValid() ;
   if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    
  	    }
 }
 
   function ExpDataToExcel() {

        try {
            var ExcelType=0
            var flag = CreateExcel(ExcelType); //ExcelType required for if any chart export is there else 0
            if (flag == false) {
                alert('No Records Are Availabe To Export')
            }
        }
        catch (ex) {
            alert('You need to have Excel Installed and Active-X Components Enabled on your System.')
            return (false);
        }
    }    
    </script>

    <%--<script language="vbscript">

    function CreateExcel()
   
        DIM Path, Obook,oExcel, fso, filePath ,oChart ,cNumCols ,cNumRows,r,c,k,j,startAdd,EndAdd,ColCnt,Range1,Range2,SubNumCol,SubNumRows,PicPath
        
        If document.all("ClbTab").rows.length <> 0 then
            
            cNumCols=document.all("ClbTab").rows(1).cells.length
            cNumRows=document.all("ClbTab").rows.length

            sHTML = document.all("ClbTab").outerHTML 
                      
            SET fso = CreateObject("Scripting.FileSystemObject") 
            
            SET oExcel = CreateObject("Excel.Application") 

            if fso.FolderExists("c:\Excel") then
               fso.DeleteFolder("c:\Excel")           
            end if
            
            SET Path = fso.CreateFolder("c:\Excel")
            filePath = Path & "\AuditReport.xls"
            fso.CreateTextFile(filePath).Write(sHTML)
           	
      	    set Obook = oExcel.Workbooks.open(filePath) 
            oExcel.ActiveWindow.DisplayGridlines = True
            
            Obook.WorkSheets(1).cells.Font.Size = "10" 

            Obook.WorkSheets(1).Rows("1:1").Insert
            Obook.WorkSheets(1).Rows("2:2").Insert
            Obook.WorkSheets(1).Rows("3:3").Insert
            Obook.WorkSheets(1).Rows("4:4").Insert
            Obook.WorkSheets(1).Rows("5:5").Insert
            Obook.WorkSheets(1).Rows("6:6").Insert
            Obook.WorkSheets(1).Rows("7:7").Insert
            PicPath="<%=HttpPath%>/" & "<%=AdcockImag%>"
            With Obook.WorkSheets(1).Pictures.Insert(PicPath)
                With .ShapeRange
                    .LockAspectRatio = msoTrue
                    .Width = 40
                    .Height = 40
                End With
                .Left = Obook.WorkSheets(1).Cells(1, 2).Left
                .Top = Obook.WorkSheets(1).Cells(1, 2).Top
                .Placement = 1
                .PrintObject = True
            End With
            PicPath="<%=HttpPath%>/" & "<%=AdcockCaption%>"
            With Obook.WorkSheets(1).Pictures.Insert(PicPath)
                With .ShapeRange
                    .LockAspectRatio = msoTrue
                    .Width = 90
                    .Height = 15
                End With
                .Left = Obook.WorkSheets(1).Cells(4, 2).Left
                .Top = Obook.WorkSheets(1).Cells(4, 2).Top
                .Placement = 1
                .PrintObject = True
            End With
            With Obook.WorkSheets(1).Pictures.Insert(PicPath)
                With .ShapeRange
                    .LockAspectRatio = msoTrue
                    .Width = 90
                    .Height = 15
                End With
                .Left = Obook.WorkSheets(1).Cells(3, 4).Left
                .Top = Obook.WorkSheets(1).Cells(3, 4).Top
                .Placement = 1
                .PrintObject = True
            End With
            Obook.WorkSheets(1).cells(4,4).FormulaR1C1="<%=Session("CompanyAddr") %>"
            Obook.WorkSheets(1).cells(4,4).Font.Bold=true
            Obook.WorkSheets(1).cells(4,4).Font.Size = "14"
            Obook.WorkSheets(1).cells(r+8,c+1).Font.Name = "Calibri"
            Obook.WorkSheets(1).cells(7,4).FormulaR1C1=document.getElementById("TableCell1").innerText
            Obook.WorkSheets(1).cells(7,4).Font.Bold=true
            Obook.WorkSheets(1).cells(7,4).Font.Size = "14"
            Obook.WorkSheets(1).cells(r+8,c+1).Font.Name = "Calibri"

            for c=0 to cNumCols-1
            
                if c=0 then  
                    Obook.WorkSheets(1).cells(8,c+1).ColumnWidth=6
                else
                    Obook.WorkSheets(1).cells(8,c+1).ColumnWidth=25
                end if
               
            next
            
            Obook.WorkSheets(1).cells.Font.Name = "Calibri"
            
            SubNumRows=Obook.WorkSheets(1).UsedRange.Rows.Count
            
            Obook.WorkSheets(1).cells(SubNumRows+5,4).FormulaR1C1="Printed By: " & "<%=PrintedBy%>" & "    " & "Printed On: " & "<%=PrintedOn%>" 
            Obook.WorkSheets(1).cells(SubNumRows+5,4).Font.Bold=true 
            Obook.WorkSheets(1).cells(SubNumRows+5,4).Font.Size = "14"   
            Obook.WorkSheets(1).cells(r+8,c+1).Font.Name = "Calibri"      
            Obook.WorkSheets(1).Protect("caliber_09" )

'            DIM GlbRowNo
'            GlbRowNo=1
           
'            for r=0 to cNumRows-1
'               
'              if r<>0 then
'                  SubNumCol=document.all("Tbl_" & r).rows(1).cells.length
'                  SubNumRows=document.all("Tbl_" & r).rows.length 
'                  
'                 for j=0 to SubNumRows-1
'                    GlbRowNo=GlbRowNo+1  
'                    for k=0 to SubNumCol-1
'                        if document.all("Tbl_" & r).rows(j).cells(k).innerText="Department(s)/Site(s) To Be Audited" or document.all("Tbl_" & r).rows(j).cells(k).innerText="Area To Be Inspected" then
'                            Obook.WorkSheets(1).cells(GlbRowNo,k+3).Font.Bold=true
'                        end if    
'                        Obook.WorkSheets(1).cells(GlbRowNo,k+3).ColumnWidth=24
'                        Obook.WorkSheets(1).cells(GlbRowNo,k+3).Borders.LineStyle = "1"
'                        Obook.WorkSheets(1).cells(GlbRowNo,k+3).Borders.Weight = 2                                 
'                    next            
'                  next
'                    
'              end if
'               
'            next
                
            oExcel.Visible = true 
            Set fso = Nothing 
            CreateExcel=true 
                    
        Else
           CreateExcel=false  
        End If

    End function 

</script>--%>
    <!-----------Script  For Export Data And Create Chart in to Excell------------->

    <script language="vbscript">

function CreateExcel(ExcelType)
    
    DIM Path, Obook,oExcel,NoOfTables,fso,cnt,cnt1,filePath ,oChart ,cNumCols ,cNumRows,r,c,startAdd,EndAdd,ColCnt,Range1,Range2,tbl,Flag,tblArr,ExcelVer,j,k,l,i, subcNumCols,subcNumRows, chartaxiscnt1,chartaxiscnt2
    NoOfTables=1
    ExcelVer=ExelStr
    i=0
    j=0
    k=0
    l=0
    r=0
    c=0

    Flag=0
    datarow=1
    colcnt=1
    excelrowcnt=1
        
    SET oExcel = CreateObject("Excel.Application") 
    SET Obook = oExcel.Workbooks.Add() 

    Obook.WorkSheets(1).Name = "Log Report" 
       
    for i=0 to NoOfTables-1

        if i=0 then
           tbl="ClbTab"
        else
           tbl="" 
           tblArr=split(tbl,",")
        end If
        
        if i=0 then
            
            If document.getElementById(tbl).rows.length <> 0 then

                Flag=1
            
                subcNumCols=document.getElementById(tbl).rows(1).cells.length
                subcNumRows=document.getElementById(tbl).rows.length
                                               
                for r=0 to subcNumRows-1
                    
                    if r=0 then
                        Obook.WorkSheets(1).rows(r+1).Font.Bold=true
                    end if
                    
                    for c=0 to subcNumCols-1
                        if c=0 then  
                            Obook.WorkSheets(1).cells(r+1,c+1).ColumnWidth=18
                        else
                            Obook.WorkSheets(1).cells(r+1,c+1).ColumnWidth=30
                        end if
                        
                        if document.getElementById(tbl).rows(r).cells.length > 1 then
                         Obook.WorkSheets(1).cells(r+1,c+1).FormulaR1C1=document.getElementById(tbl).rows(r).cells(c).innerText 
                                      
                        elseif document.getElementById(tbl).rows(r).cells.length = 1 and c=0 then
                            Obook.WorkSheets(1).cells(r+1,c+4).FormulaR1C1=document.getElementById(tbl).rows(r).cells(c).innerText                          
                            Obook.WorkSheets(1).cells(r+1,c+1).Borders.LineStyle = "1"
                            Obook.WorkSheets(1).cells(r+1,c+1).Borders.Weight = 2
                            Obook.WorkSheets(1).cells(r+1,c+1).HorizontalAlignment = 3
                            EXIT for                             
                        end if
                        
                        Obook.WorkSheets(1).cells(r+1,c+1).Borders.LineStyle = "1"
                        Obook.WorkSheets(1).cells(r+1,c+1).Borders.Weight = 2
                        Obook.WorkSheets(1).cells(r+1,c+1).HorizontalAlignment = 3
                        
                        Obook.WorkSheets(1).cells(r+1,c+1).WrapText = True  'Added by P Suresh
                    next

                next  

            end If

        else
        
            for j=0 to UBound(tblArr)

                If document.getElementById(tblArr(j)).rows.length <> 0 then

                     cNumCols=document.getElementById(tblArr(j)).rows(1).cells.length
                     cNumRows=document.getElementById(tblArr(j)).rows.length
                                          
                     excelrowcnt=Obook.WorkSheets(1).UsedRange.Rows.Count
                     chartaxiscnt1=excelrowcnt+2
                     chartaxiscnt2=excelrowcnt+2

                     dim Titlename
                     
                    for r=0 to cNumRows-3
                        
                        if r=1 then
                             Obook.WorkSheets(1).rows(excelrowcnt+r+1).Font.Bold=true
                        end if

                        for c=0 to cNumCols-1
                            if c=0 then  
                                Obook.WorkSheets(1).cells(excelrowcnt+r+1,c+1).ColumnWidth=11
                            else
                                Obook.WorkSheets(1).cells(excelrowcnt+r+1,c+1).ColumnWidth=19
                            end if
                            Obook.WorkSheets(1).cells(excelrowcnt+r+1,c+1).FormulaR1C1=document.getElementById(tblArr(j)).rows(r).cells(c).innerText  
                            Obook.WorkSheets(1).cells(excelrowcnt+r+1,c+1).Borders.LineStyle = "1"
                            Obook.WorkSheets(1).cells(excelrowcnt+r+1,c+1).Borders.Weight = 2
                            Obook.WorkSheets(1).cells(excelrowcnt+r+1,c+1).HorizontalAlignment = 3
                            if r=0 then
'                                Obook.WorkSheets(1).cells(excelrowcnt+r+1,c+1).Columns.Style="Good"
                                Titlename=document.getElementById(tblArr(j)).rows(r).cells(c).innerText
                                exit for
                            elseif r=1 then
'                                Obook.WorkSheets(1).cells(excelrowcnt+r+1,c+1).Columns.Style="Good"
                            end if
                        next

                    next

                    Range1=cNumCols-6
                    Range2=cNumCols-1
                    
                    excelrowcnt=Obook.WorkSheets(1).UsedRange.Rows.Count
                    startAdd=Obook.WorkSheets(1).Cells(excelrowcnt,Range1).address(false,false)
                    EndAdd=Obook.WorkSheets(1).Cells(excelrowcnt,Range2).address(false,false)
                    Set oChart=Obook.WorkSheets(1).chartObjects.Add(10, 318, 430, 250).Chart
                  
                    oChart.ChartType = ExcelType
                    oChart.ApplyLayout(4)
                    oChart.PlotArea.Interior.Pattern = 1 
                    oChart.ChartStyle = 10

                    if ExcelVer= "Excel.Application.11" then   ' W.R.To Excel 2003
            
                        With oChart     
                         .SetSourceData(Obook.WorkSheets(1).Range(startAdd,EndAdd)) 
                         .HasTitle = True      
                         .HasLegend = False  
                         .SeriesCollection(1).XValues = "='Occupancy Report'!R3C2:R" & chartaxiscnt1 & "C2"  
    '                      Obook.WorkSheets(1).Shapes("Chart 1").Height = 270   
              
                          With .ChartTitle            
                               .Characters.Text = "Occupancy Report"           
                               .Font.Size = 15              
                          End With
              
                        End With 

                    end if 

                    if ExcelVer= "Excel.Application.12" then   ' W.R.To Excel 2007
                          With oChart      
                             .SetSourceData(Obook.WorkSheets(1).Range(startAdd,EndAdd)) 
                             .HasTitle = True      
                             .HasLegend = True 
                             .SeriesCollection(1).XValues = "='Occupancy Report'!$c$" & chartaxiscnt1 & ":$H$" & chartaxiscnt1 
                 
                              With .ChartTitle            
                               .Characters.Text = "Occupancy Report - " & Titlename         
                               .Font.Size = 15              
                              End With
                          End With
                    end if

                    Obook.WorkSheets(1).Rows(excelrowcnt+1 & ":" & excelrowcnt+1).Insert
                    Obook.WorkSheets(1).Rows(excelrowcnt+1 & ":" & excelrowcnt+1).RowHeight = 255

                    Obook.WorkSheets(1).Shapes("Chart " & j+1).Left =  Obook.WorkSheets(1).Cells(excelrowcnt+1, 1).Left+2
                    Obook.WorkSheets(1).Shapes("Chart " & j+1).Top = Obook.WorkSheets(1).Cells(excelrowcnt+1, 1).Top+2
                    Obook.WorkSheets(1).Shapes("Chart " & j+1).Height = Obook.WorkSheets(1).Cells(excelrowcnt+1, 1).Height-5
                    
                    Obook.WorkSheets(1).Range("$A$2:$I$2").Font.FontStyle = "Bold"
                    Obook.WorkSheets(1).Range("$A$2:$I$2").Font.Bold = True
                    Obook.WorkSheets(1).Range("$A$2:$I$2").Font.Size = "11"

                 end if

            next
                               
        end if

    next
    
    dim ToatlRowCnt
    dim PreparedBy 
    dim PreparedOn
    PreparedBy="Printed By: " & "<%=PrintedBy%>"
    PreparedOn="Printed On: " & "<%=PrintedOn%>" 
    ToatlRowCnt=Obook.WorkSheets(1).UsedRange.Rows.Count
    Obook.WorkSheets(1).cells(ToatlRowCnt+3,4).FormulaR1C1=PreparedBy
    Obook.WorkSheets(1).cells(ToatlRowCnt+3,6).FormulaR1C1=PreparedOn
    Obook.WorkSheets(1).cells(ToatlRowCnt+3,4).Font.Bold=true
    Obook.WorkSheets(1).cells(ToatlRowCnt+3,6).Font.Bold=true
    Obook.WorkSheets(1).cells(ToatlRowCnt+3,4).Font.Size = "14"
    Obook.WorkSheets(1).cells(ToatlRowCnt+3,6).Font.Size = "14"
    Obook.WorkSheets(1).Protect("caliber_09")

    oExcel.Visible = true 
    Set fso = Nothing 
    CreateExcel=true 
    obook.Application.Dialogs(5).Show("C:\\Schedule")        'Added by P Suresh
End function 

    </script>

    <script language="vbscript">
   function VbRDateValid 
    SDate=document.getElementById("Stdate$CalDateVal").value
  if SDate="" then exit function
    EDate=document.getElementById("Eddate$CalDateVal").value
  if EDate="" then exit function
	 
	  SDateArr=split(SDate,"/")
	  EDateArr=split(EDate,"/")
	  
	  SDate=dateSerial(SDateArr(2),SDateArr(0),SDateArr(1))
	  EDate=dateSerial(EDateArr(2),EDateArr(0),EDateArr(1))
	
	DDgap=DateDiff("d", EDate,SDate)
	if DDgap>0 then
	VbRDateValid=false
	else VbRDateValid=true
	end if

end function
    </script>

    <script language="javascript">
	<!--

function ChkReasons(){
    var Reasons = ''//document.getElementById('ReasonsTxt').value
    var AskReasons = 0//document.getElementById('AskReasonsTxt').value
	   if(AskReasons==1 && Reasons==''){
	   alert("Enter Reasons For Other Print")
	   return(false);
	   }
       return(true);
}
isWorkSheetPrint=1;
PageOrientation=1;
function fnPrintConfirm()
	{   
		
	  var pageURL="WSPConfirm.aspx" 	  
	  var features = "height=20,width=60,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=350,left=150"
	 window.showModalDialog( pageURL ,'Caliber LIMS','dialogheight=6;dialogwidth=15;help=0;status=0;scroll=0;edge=raised;')		
			 			
	}
	
 //-->
    </script>

</body>
</html>
