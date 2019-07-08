
'-----------Script for Microsoft word document ----------------------

Dim objWord,objDoc

'Dim oMissing As object = System.Reflection.Missing.Value

function MSWordInstalled()

    MSWordInstalled =IsMSWordInstalled() 

end function


    function IsMSWordInstalled()
        On Error Resume Next
        Err.Clear()
        IsMSWordInstalled =true 
        dim objWord 
        set  objWord =Nothing
        Set objWord = CreateObject("Word.Application")

        If Err >0 Then 
            IsMSWordInstalled = false
        end IF
        Err.Clear()

        IF objWord <> Nothing then
            Dim oMissing
            set oMissing = System.Reflection.Missing.Value
            objWord.Quit True, oMissing, oMissing 
            Set objWord = Nothing
            objWord=nothing
        END IF

    end function

    function IsMSExcelInstalled()
        On Error Resume Next
        Err.Clear()
        IsMSExcelInstalled =true 
        dim objExcel 
        set objExcel =Nothing
        Set objExcel= CreateObject("Excel.Application")

        IF Err >0 Then 
            IsMSExcelInstalled = false
        end IF
        Err.Clear()
        
        IF objExcel <> Nothing then
            Dim oMissing
            set oMissing = System.Reflection.Missing.Value
            objExcel.Quit True, oMissing, oMissing 
            Set objExcel = Nothing
            objExcel=nothing
        END IF
        
   end function

Public Function DocumentAccess(Byval Template,Byval BodyFile,Byval HeaderFile, Byval FooterFile, byval Caption, Byval PrintPreview,ByVal Orientation)

    dim Visibility

    IF Not PrintPreview ="Print" then
        PrintPreview ="Preview"
        Visibility ="True"
    else
        Visibility ="False"
    end IF

    openWordDocument Caption,Visibility,Template 
    InsertHtmlFiles BodyFile,HeaderFile,FooterFile, Orientation

    IF PrintPreview ="Print" then
        PrintDocument()
        CloseDocument()
    else
        PreviewDocument()
    end IF

end Function
public function PrintAndClose()
PrintDocument()
CloseDocument()
end function

'-----------Open Document ----------------------
Public Function openWordDocument(Byval Caption, byval Visibility, ByVal TemplatePath)

    On Error Resume Next 
    Set objWord = CreateObject("Word.Application")

    'objWord.DisplayAlerts = 1
    objWord.Caption = Caption '"Caliber"
    objWord.Visible = Visibility

    If TemplatePath = "" Then
        Set objDoc = objWord.Documents.Add()
    Else
        Set objDoc = objWord.Documents.Open(TemplatePath, , True)
    End If

' Error Handler Message
        If Err >0 Then Msgbox  "MS-Word Not Installed!",0,"Export Result"
End Function

 Public Function PrintDocument()
    On Error Resume Next
        objWord.PrintOut False

End Function

Public Function PreviewDocument()
    On Error Resume Next
    SetReadOnly("Caliber")
    objWord.PrintPreview = True

End Function

'-----------Inserting Header Footer as well as body files in to the document ----------------------

Public Function InsertHtmlFiles(ByVal BodyFilePath, ByVal HeaderFilePath, ByVal FooterFilePath, Byval Orientation)
    On Error Resume Next
    With objWord
 
        If .ActiveWindow.ActivePane.View.Type = 11 Or .ActiveWindow.ActivePane.View.Type = 2 Then
            .ActiveWindow.ActivePane.View.Type = 3
        End If
        If .ActiveWindow.ActivePane.View.Type <> 3 Then
            .ActiveWindow.ActivePane.View.Type = 3
        End If

        .ActiveWindow.ActivePane.View.SeekView = 9

        IF not HeaderFilePath = "" then
            .Selection.InsertFile(HeaderFilePath)
        end IF

        .ActiveWindow.ActivePane.View.SeekView = 0
        .ActiveWindow.ActivePane.View.SeekView = 10

        IF not HeaderFilePath = "" then
            .Selection.InsertFile(FooterFilePath)
        end IF

        .ActiveWindow.ActivePane.View.SeekView = 0
        .Selection.InsertFile(BodyFilePath)
        .ActiveWindow.ActivePane.View.SeekView = 9
        .ActiveWindow.ActivePane.View.SeekView = 0
'        .TopMargin = InchesToPoints(0.5)
'        .BottomMargin = InchesToPoints(0.5)
'        .LeftMargin = InchesToPoints(0.5)
'        .RightMargin = InchesToPoints(0.5)

        If Orientation = 1 Then
            .Selection.PageSetup.Orientation =0 ' Word.WdOrientation.wdOrientPortrait
        Else
            .Selection.PageSetup.Orientation =1 ' Word.WdOrientation.wdOrientLandscape

        End If

        'objDoc.SaveAs(TempHtmlPath, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing, oMissing)

    End With

End Function

'-----------Closing The word document ----------------------
Public Function CloseDocument()
    On Error Resume Next
    dim Visible

    IF not Visible ="True" then
        Visible ="False"
    End If

    If Visible = "False" Then

        Dim SaveChanges
        set SaveChanges = True
        Dim oMissing
        set oMissing = System.Reflection.Missing.Value
        objDoc.Close SaveChanges, oMissing, oMissing 
        Set objDoc = Nothing
        objWord.Quit SaveChanges, oMissing, oMissing 
        Set objWord = Nothing
    Else

    End If

End Function

Public Function ConvertToUrl(ByVal strFile)
    On Error Resume Next 
    strFile = Replace(strFile, "\", "/")
    strFile = Replace(strFile, ":", "|")
    strFile = Replace(strFile, " ", "%20")
    strFile = "file:///" + strFile
    'strFile = "http://" + strFile
    ConvertToUrl = strFile
End Function


Public Function ConvertUrl(ByVal strFile)
    On Error Resume Next 
    strFile = Replace(strFile, "\", "/")
    strFile = Replace(strFile, ":", "|")
    strFile = Replace(strFile, " ", "%20")
    'strFile = "file:///" + strFile
    'strFile = "http://" + strFile
    ConvertUrl = strFile
End Function


'---------------------------------------------------------------------------------
'---------------------------------------------------------------------------------
'InsFileWithSection
'---Parameters Details

'BodyFile   --> Http path of the file
'HeaderFile --> Http path of Header file
'FooterFile --> Http path of Footer file
'Orientation--> Page orientation[1--> Poretrait; 2-->Landscape]
'SectionCnt --> Current Section Count [Initial values is 0]
'MaxCount   --> Maximum no of Section [This is used for avoiding insertion of section after last Execution]
'---------------------------------------------------------------------------------
'---------------------------------------------------------------------------------

public Function InsFileWithSection(Byval BodyFile,Byval HeaderFile,Byval FooterFile,Byval Orientation, Byval SectionCnt,Byval MaxCount)
    On Error Resume Next 
    'SectionCnt initial value is zero

    dim Msg

    set oSec = objDoc.Sections(SectionCnt + 1)
    'IF SectionCnt =0  then
      '  oSec.PageSetup.DIFferentFirstPageHeaderFooter = True
    'else
        oSec.PageSetup.DIFferentFirstPageHeaderFooter = False
    'end IF
    

    oSec.Range.InsertFile(BodyFile)

    If Orientation = 2 Then
        oSec.PageSetup.Orientation = 1 'LandScape Orientation
    Else ' 1
        oSec.PageSetup.Orientation = 0 'Portrait Orientation
    End If

    If SectionCnt > 0 Then
        oSec.Headers(1).LinkToPrevious = False
    End If

    oSec.Headers(1).Range.InsertFile(HeaderFile)

    If SectionCnt > 0 Then
        oSec.Footers(1).LinkToPrevious = False
    End If

    oSec.Footers(1).Range.InsertFile(FooterFile)

    If SectionCnt < MaxCount-1 Then
        objDoc.Range(oSec.Range.End - 1).InsertBreak(2) '2 --> Section Brake [ Word.WdBreakType.wdSectionBreakNextPage]
    End If

    If Err >0 Then 
        Msg = "Error # " & Str(Err.Number) & " was generated by " & Err.Source & ControlChars.CrLf & Err.Description
        MsgBox Msg, MsgBoxStyle.Information, "Error" 
        Err.Clear()
    End If

End Function

'-------------------------------------------------
'---Should be called after Insertion of Document
'-------------------------------------------------
Public Function SetReadOnly(password)

    objDoc.Protect 3, ,password 

End Function

function InsertFirstPageFile(Byval BodyFile,Byval HeaderFile,Byval FooterFile)
On Error Resume Next 
    dim Msg
    
    set oSec = objDoc.Sections(objDoc.Sections.Count)
    objDoc.Range(oSec.Range.End - 1).InsertBreak(2)
   
    set oSec = objDoc.Sections(objDoc.Sections.Count)
    oSec.PageSetup.Orientation = 0 'Portrait Orientation
    oSec.PageSetup.DIFferentFirstPageHeaderFooter = False
    oSec.Headers(1).LinkToPrevious = False
    oSec.Footers(1).LinkToPrevious = False

    oSec.Range.InsertFile (BodyFile)', oSec.Range.Start 
    oSec.Headers(1).Range.InsertFile(HeaderFile)
    oSec.Footers(1).Range.InsertFile(FooterFile)

    If Err >0 Then 
        Msg = "Error # " & Str(Err.Number) & " was generated by " & Err.Source & ControlChars.CrLf & Err.Description
        MsgBox Msg, MsgBoxStyle.Information, "Error" 
        Err.Clear()
    End If

end function

function GetSectionRages()
    
    Dim Sec1
    Dim nStartPg
    Dim nEndPg
    Dim  nSecPages
    Dim NumSections
    NumSections = objDoc.Sections.Count
    nStartPg = 1
    dim RetValue 
    RetValue =""
    For Each Sec1 In objDoc.Sections
    
        nEndPg = Sec1.Range.Information(3) - 1
        If Sec1.Index = NumSections Then nEndPg = nEndPg + 1

        nSecPages = nEndPg - nStartPg + 1
        
        RetValue = RetValue & "," & nStartPg
        
        nStartPg = nEndPg + 1
        
    
    Next
    
GetSectionRages = RetValue

end Function