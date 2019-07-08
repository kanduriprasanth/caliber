<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ExcelExport.aspx.vb" Inherits="Dossier.ExcelExport" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">

    <link rel="stylesheet" href="../Styles/TRIMS.css">

    <script type="text/javascript" src="../JScript/Common2.js"></script>
    

</head>
<body ms_positioning="GridLayout">
    <form autocomplete="off" id="Form1" method="post" runat="server">
        <asp:Table ID="tt"  HorizontalAlign="center" CssClass="MainTable" runat="server">
            <asp:TableRow  CssClass="MainHead">
                <asp:TableCell>
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" HorizontalAlign="center" ID="Table1">
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="IARow" runat="server" CssClass="HideRow">
                <asp:TableCell>
                    <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%"  HorizontalAlign="Center">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow  CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" HorizontalAlign="center" ID="Table2">
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan=2>
                               <input type="button" id="Excelbtn" onclick="FnClick()" value=" Export Excel " class="ButSelCls" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
           
        </asp:Table>
    </form>

    <script type="text/javascript">
 
function CreateExcel()
        
        DIM Path, Obook,oExcel, fso, filePath ,oChart ,cNumCols ,cNumRows,r,c,startAdd,EndAdd,ColCnt,Range1,Range2, SRow,ERow
                
        If document.all("Table1").rows.length <> 0 then
            
            cNumCols=document.all("Table1").rows(0).cells.length
            cNumRows=document.all("Table1").rows.length
            
            '----------- Creating Excel object and Excel workbook style----------

            SET oExcel = CreateObject("Excel.Application") 
            SET Obook = oExcel.Workbooks.Add() 
            oExcel.ActiveWindow.DisplayGridlines = True
           
            Obook.WorkSheets(1).Rows("1:1").Insert
            Obook.WorkSheets(1).Rows("1:1").RowHeight = 330
            Obook.WorkSheets(1).Cells.Borders.LineStyle = "1"      
            Obook.WorkSheets(1).Cells.Borders.Weight = 2
                 
            '------------- Inserting data from table into Excel--------------

            for r=0 to cNumRows-1
               
                for c=0 to cNumCols-1
            
                    Obook.WorkSheets(1).cells(r+2,c+1).FormulaR1C1=document.all("Table1").rows(r).cells(c).innerText
                    Obook.WorkSheets(1).cells(r+2,c+1).ColumnWidth=16
                    ColPos= ColPos + ColSpan
                    
                next
            
            next

           '-----------------------taking "total" column value for displaying chart-------------------

            Range1=cNumCols-3 '--------- "-3" is for multiple series based on table columns
            Range2=cNumCols  
                       
           '-------------------- Counting total excel row count occupied by the table data---------------

            SRow=2
            ERow=cNumRows+1
            '------------------------passing range for chart object------------------

            startAdd=Obook.WorkSheets(1).Cells(SRow,Range1).address(false,false)
            EndAdd=Obook.WorkSheets(1).Cells(ERow,Range2).address(false,false)
            Set oChart=Obook.WorkSheets(1).chartObjects.Add(100, 40, 600, 250).Chart
                  
            oChart.ChartType = "51"
                                
            With oChart      
             .SetSourceData(Obook.WorkSheets(1).Range(startAdd,EndAdd)) 
             .HasTitle = True      
             .HasLegend = False 
             .SeriesCollection(1).XValues = "='Sheet1'!$A$" & SRow+1 & ":$A$" & ERow      
                           
              With .ChartTitle            
               .Characters.Text = "Chart"           
               .Font.Size = 15              
              End With
            End With

            Obook.WorkSheets(1).cells(ERow+3,cNumCols/2).FormulaR1C1="Printed By : <%=UserName%>    " & "  Printed On : <%=PrintedOn%>"
            Obook.WorkSheets(1).cells(ERow+3,cNumCols/2).Font.FontStyle = "Bold"
            Obook.WorkSheets(1).cells(ERow+3,cNumCols/2).Font.Bold = True
            Obook.WorkSheets(1).cells(ERow+3,cNumCols/2).Font.Size = "13"

            Obook.WorkSheets(1).Protect("Caliber_09")
            oExcel.Visible = true 
            Set fso = Nothing 
            
        End If

    End function 

</script>
   
   <script type="text/javascript">
       function FnClick() {

           CreateExcel()
       }
   </script>
</body>

</html>

