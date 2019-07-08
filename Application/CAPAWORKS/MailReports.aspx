<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MailReports.aspx.vb" Inherits="CAPAWORKS.MailReports" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.text %>
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
    

</head>
<body ms_positioning="GridLayout">
    <form id="form1" runat="server">
    <asp:Table ID="MainTab" runat="server" CssClass="HideRow"  Width="90%">
     
    </asp:Table>
    <asp:Table ID="SubTab" runat="server" >
    <asp:TableRow CssClass="HideRow">
    <asp:TableCell>
    <input type="button" id="ExptExcl" onclick="ExcelExportForMail()" />
    <asp:TextBox ID="FilePathTxt" runat="server" CssClass="HideRow"></asp:TextBox>
    </asp:TableCell>
    </asp:TableRow>
    </asp:Table>
    
    <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="tt" EnableViewState="False" Width="98%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Table ID="IssueTab" CssClass="SubTable" runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                                 BorderWidth="0"></asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" HorizontalAlign="Right">
                                <asp:Button ID="BtnConferm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'"></asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:Button ID="Button1" runat="server" CausesValidation="false"></asp:Button>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ID="TableCell1" ColumnSpan="2">
                    <asp:TextBox ID="IssueIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IssueAulIdTxt" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
    </form>
    
    <script language="javascript">
        function ExcelExportForMail()
        {
            var Flag=CreateExcel(1)
            alert('Files Created Successfully')
            if(Flag==true)
            {
                form1.submit();
            }
        }
       
    </script>
    
    <script language="vbscript">

function CreateExcel(ExcelType)
    
    DIM Path,AttachmntPath, Obook,oExcel,NoOfTab,NoOfTabArr,FileNameArr, FileName, fso,cnt,cnt1,filePath ,oChart ,cNumCols ,cNumRows,r,c,startAdd,EndAdd,ColCnt,Range1,Range2,tbl,Flag,tblArr,ExcelVer,j,k,l,i, subcNumCols,subcNumRows, chartaxiscnt1,chartaxiscnt2
 
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
    NoOfTab="<%=ReportIdLst%>"
    FileName="<%=FileName%>"
    NoOfTabArr=split(NoOfTab,",")
    FileNameArr=split(FileName,",")

    for i=0 to UBound(NoOfTabArr)
    
      SET oExcel = CreateObject("Excel.Application") 
      SET Obook = oExcel.Workbooks.Add() 

      Obook.WorkSheets(1).Name = "DI Report Log" 
   

                If document.getElementById("ReportTab_" & NoOfTabArr(i)).rows.length <> 0 then

                     cNumCols=document.getElementById("ReportTab_" & NoOfTabArr(i)).rows(1).cells.length
                     cNumRows=document.getElementById("ReportTab_" & NoOfTabArr(i)).rows.length

                    for r=0 to cNumRows-3
                        
                        if r=0 then
                             Obook.WorkSheets(1).rows(r+1).Font.Bold=true
                        end if

                        for c=0 to cNumCols-1
                            if c=0 then  
                                Obook.WorkSheets(1).cells(r+1,c+1).ColumnWidth=11
                            else
                                Obook.WorkSheets(1).cells(r+1,c+1).ColumnWidth=19
                            end if
                            Obook.WorkSheets(1).cells(r+1,c+1).FormulaR1C1=document.getElementById("ReportTab_" & NoOfTabArr(i)).rows(r).cells(c).innerText  
                            Obook.WorkSheets(1).cells(r+1,c+1).Borders.LineStyle = "1"
                            Obook.WorkSheets(1).cells(r+1,c+1).Borders.Weight = 2
                            Obook.WorkSheets(1).cells(r+1,c+1).HorizontalAlignment = 3
                            if r=0 then
                              Obook.WorkSheets(1).cells(r+1,c+1).Columns.Style="Good"
                            end if
                        next

                    next

                 end if

               
        dim ToatlRowCnt
        dim PreparedBy 
        dim PreparedOn
        PreparedBy="Prepared By: " & "<%=PreparedBy%>"
        PreparedOn="Prepared On: " & "<%=PreparedOn%>"
        
        ToatlRowCnt=Obook.WorkSheets(1).UsedRange.Rows.Count
        Obook.WorkSheets(1).cells(ToatlRowCnt+3,1).FormulaR1C1=PreparedBy
        Obook.WorkSheets(1).cells(ToatlRowCnt+3,4).FormulaR1C1=PreparedOn
        Obook.WorkSheets(1).cells(ToatlRowCnt+3,1).Font.Bold=true
        Obook.WorkSheets(1).cells(ToatlRowCnt+3,4).Font.Bold=true
        Obook.WorkSheets(1).cells(ToatlRowCnt+3,1).Font.Size = "15"
        Obook.WorkSheets(1).cells(ToatlRowCnt+3,4).Font.Size = "15"
        Obook.WorkSheets(1).Protect("caliber_09")
        
        set fso=CreateObject("Scripting.FileSystemObject") 
        
        if fso.FolderExists(fso.GetSpecialFolder(1) & "\ReportFolder")=false then
            fso.CreateFolder(fso.GetSpecialFolder(1) & "\ReportFolder")
        end if
        
        if fso.FileExists(fso.GetSpecialFolder(1) & "\ReportFolder\" & FileNameArr(i) & ".xlsx")=true then
            fso.DeleteFile(fso.GetSpecialFolder(1) & "\ReportFolder\" & FileNameArr(i) & ".xlsx")
        end if
        stop
        Obook.SaveAs(fso.GetSpecialFolder(1) & "\ReportFolder\" & FileNameArr(i))
        
        if AttachmntPath<>"" then        
            AttachmntPath = AttachmntPath & ";" & fso.GetSpecialFolder(1) & "\ReportFolder\" & FileNameArr(i) & ".xlsx"            
        else        
             AttachmntPath = ";" & fso.GetSpecialFolder(1) & "\ReportFolder\" & FileNameArr(i) & ".xlsx"
        end if
                
        oExcel.Visible = false
        oExcel.Quit
        CreateExcel=true 
        set fso=nothing

    next
    
    document.getElementById("FilePathTxt").value = AttachmntPath

End function 

    </script>
    
    <script language="javascript">
//        setTimeout("ExcelExportForMail()",500);
    </script>
    
    <script language="javascript">
        function FnSendMail(RptId)
		{
//		    RgsChildId = RgsChildId;
//		    Cnt = Cnt;
		    
		    var xmlHttp;
        try 
        {    
            //FF, Opera, Safari, Chrome, IE7+
            xmlHttp = new XMLHttpRequest();  
        } 
        catch(e) 
        {    
            try 
            {      
                //IE6+
                xmlHttp  = new ActiveXObject("Microsoft.XMLHTTP");    
            } 
            catch(e) 
            {
                try 
                {
                    //IE5+
                    xmlHttp  = new ActiveXObject("Msxml2.XMLHTTP");
                } 
                catch(e) 
                {
                    xmlHttp  = null;
                }
            }
        }  

        if (xmlHttp!=null)
        {
            xmlHttp.onreadystatechange=function()
            {
                if(xmlHttp.readyState==4)
                {  
                    var s = xmlHttp.responseText;
                     if(s=="1")
                    {
                       
                       alert('Mail successfully Sent');
                    }
                    else
                    {
                         
                         alert('Mail Sending Faild');                                     
                    }
                    
                }
                    
                
            }
        }            
        var url="Mail_Ajax.aspx?RptId=" + RptId;
        xmlHttp.open("GET",url,true);
        xmlHttp.send(null);
		}
    </script>
</body>

</html>
