
'''''''''''''''''''''''''''''CREATED BY MURAHARI 30-OCT-2008''''''''''''''''''''''''''''''''''''
Dim objExcel, objWorkbook,objWorksheet, fn, newname, i,  r1  
Dim strPathToFile
Dim objXLWS


' -----Open excel Instance--- 
function OpenExcel 
On Error Resume Next 
    Set objExcel = CreateObject("Excel.Application") 'creating instance of a excel application
    'Set objWb = objExcel.WorkBooks.Open("C:\TEMP\test.xls")
    'Set objWorkbook = objExcel.Workbooks.Add(Missing.Value)
    'set objWorksheet =objExcel.ActiveSheet
    'strPathToFile = "C:\Documents and Settings\jbarn17\My Documents\Book1.xls"
    objExcel.Workbooks.Add ' adding work book to the excel instance
    Set objXLWS = objExcel.ActiveSheet ' getting the active sheet in the Excel instance
    objXLWS.Name = "Sheet1"  
    objExcel.Visible = True
    ' Error Handler Message
        If Err >0 Then Msgbox  "MS-Excel Not Installed!",0,"Export Result"
end function
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'-----Close Excel Instance ------------------------------
function CloseExcel
     On Error Resume Next 
    ' Displaying  the Alerts corresding  to excel
    objExcel.DisplayAlerts = true 
    'Saving the excel Instance
    objExcel.save
    'objWorkbook.Close False 
    'Set objWorkbook = Nothing 
    objExcel.visible=true
    objExcel.Workbook.Close
       
    'objExcel.Quit 
     objExcel.Parent.Windows(1).Visible = True
     window.history.go
     Set objXLWS = Nothing 
     objExcel.Workbook.Close False 
     Set oExcel = Nothing 

end function
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'- Writing the data to the excel file and applying formatting--------------------------
Function writeData(r1,c1,value,width,colour,format,size,FontName,FontFlag,FontColour)
On Error Resume Next 
    dim intReturn1
    intReturn1 = InStr( 1 ,width, "px", 0)
    if intReturn1>0 then
        width=Mid(width,1, intReturn1-1)
    end if
'msgbox width

    With objXLWS.Cells(r1,c1)
        .Font.Name = FontName'"Arial"
        .Font.Size = size
        .Font.colorindex = FontColour
        .WrapText = false
        .NumberFormat = format
        .ColumnWidth =  width 'dColWidth
        .Font.Bold = FontFlag
        .Value = value
        .interior.Pattern = xlSolid
        .interior.PatternColorIndex = xlAutomatic
        .interior.colorindex=colour
        .Borders.LineStyle = xlContinuous
        .Borders.LineStyle= xlNone
        ' .Borders(xlEdgeTop).Weight = xlThin
        .Borders.ColorIndex = 15
    End With
End function
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''