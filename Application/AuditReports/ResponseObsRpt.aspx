<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ResponseObsRpt.aspx.vb" Inherits="AuditReports.ResponseObsRpt" %>
<%@ Register TagPrefix="uc3" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx"  %>
<%@ Register TagPrefix="uc2" TagName="Footer" Src="../CaliberCommonCtrls/ReportFooter.ascx"  %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>ObsResponsePrint</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
		 
    <style type="text/css">
    .PrintTable{Background-color:#C4DCFB; border-width:1px}
    </style>
    
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE cellSpacing="1" class="MainTable" cellPadding="1" width="100%" align="center" border="1">
				<TR>
					<TD><uc1:header id="Header1" runat="server"></uc1:header></TD>
				<TR>
					<TD><asp:panel id="HeaderDiv" runat="server" EnableViewState="False" HorizontalAlign="Left" Width="100%">
							<asp:Table id="H1" style="FONT-SIZE: 10px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="100%"
								CELLPADDING="1" CELLSPACING="1" BorderWidth="0" Runat="server"></asp:Table>
							<asp:Table id="ResTab" Width="100%" Runat="server" BackColor="#ffffff" horizontalalign="center"
								CellPadding="0" CellSpacing="0" Border="1" BorderColor="black"></asp:Table>
						</asp:panel><asp:panel id="BodyDiv" runat="server" EnableViewState="False" HorizontalAlign="Left" Width="720">
							<asp:Table id="DisTable"  Width="100%" Runat="server" BackColor="#ffffff" horizontalalign="center"
								CellPadding="0" CellSpacing="0" Border="1" BorderColor="black"></asp:Table>
							<asp:Table id="UsgTab" Width="100%" Runat="server" BackColor="#ffffff" horizontalalign="center"
								CellPadding="0" CellSpacing="0" Border="1" BorderColor="black"></asp:Table>
						</asp:panel><asp:panel id="FooterDiv" runat="server" EnableViewState="False" HorizontalAlign="Left" Width="720">
							<asp:Table id="F2" CssClass="HideRow" style="FONT-SIZE: 12px; MARGIN-LEFT: 0px; FONT-FAMILY: Arial" Width="720"
								CELLPADDING="1" CELLSPACING="1" BorderWidth="0" Runat="server"></asp:Table>
						</asp:panel><asp:textbox id="HeaderObjIDs" style="VISIBILITY: hidden" runat="server" text="H1" width="0"
							height="0"></asp:textbox><asp:textbox id="HeaderObjTypes" style="VISIBILITY: hidden" runat="server" text="TN" width="0"
							height="0"></asp:textbox><asp:textbox id="BodyObjIDs" style="VISIBILITY: hidden" runat="server" text="" width="0" height="0"></asp:textbox><asp:textbox id="BodyObjTypes" style="VISIBILITY: hidden" runat="server" text="" width="0" height="0"></asp:textbox><asp:textbox id="BodyObjTabHeadRows" style="VISIBILITY: hidden" runat="server" text="" width="0"
							height="0"></asp:textbox><asp:textbox id="HdrObjTabHeadRows" style="VISIBILITY: hidden" runat="server" text="" width="0"
							height="0"></asp:textbox><asp:textbox id="FooterObjIDs" style="VISIBILITY: hidden" runat="server" text="F2" width="0"
							height="0"></asp:textbox><asp:textbox id="FooterObjTypes" style="VISIBILITY: hidden" runat="server" text="TN" width="0"
							height="0"></asp:textbox></TD>
				</TR>
				<TR class="HideRow">
					<TD><uc2:footer id="Footer1" runat="server"></uc2:footer></TD>
				</TR>
				<TR class="HideRow">
					<TD style="TEXT-ALIGN: center"><uc3:caliberprintctrl id="CaliberPrintCtrl1" runat="server"></uc3:caliberprintctrl></TD>
				</TR>
				<tr >
                <td align="center">
                   <input type="button" id="button3" value="Export To Excel" class="ButSelCls" language="javascript"
                                                            onclick="ExpDataToExcel()">
                </td>
            </tr>
			</TABLE>
		</form>
		
		<script language="javascript">
	    
	    function ExpDataToExcel()
	    
	    {
	     
	     try
	       {
	         
	         var flag=CreateExcel();
	         if(flag==false)
	               {
	                  alert('No Records Are Availabe To Export')
	               }
	        }
	      catch(ex)
	         {
	               alert('You need to have Excel Installed and Active-X Components Enabled on your System.')
	               return(false);
	         } 
	    }


</script>

<script language="vbscript">

function CreateExcel()
        
        DIM Path, Obook,oExcel, fso, filePath ,oChart ,cNumCols ,cNumRows,r,c,startAdd,EndAdd,ColCnt,Range1,Range2, FontSelection
        
        If document.all("ResTab").rows.length <> 0 then
            
            cNumCols=document.all("ResTab").rows(6).cells.length
            cNumRows=document.all("ResTab").rows.length

            sHTML = document.all("ResTab").outerHTML 
                      
            SET fso = CreateObject("Scripting.FileSystemObject") 
            
            SET oExcel = CreateObject("Excel.Application") 
'            SET Obook = oExcel.Workbooks.Add() 
            
'            IF err.number >0 OR oExcel =NULL THEN 
'                msgbox("You need to have Excel Installed and Active-X Components Enabled on your System.") 
'                EXIT FUNCTION 
'            END IF 
            
            if fso.FolderExists("c:\Excel") then
                fso.DeleteFolder("c:\Excel")           
            end if
            
            SET Path = fso.CreateFolder("c:\Excel")
            filePath = Path & "\EquipmentReport.xls"
            fso.CreateTextFile(filePath).Write(sHTML)
                            
            DIM i 
            i = 0 
                   
            DO WHILE err.number > 0 
                err.Clear() 
                filePath = fso.GetSpecialFolder(1) & "\MyExportedExcel" & i & ".xls" 
                fso.CreateTextFile(filePath).Write(sHTML) 
                i = i + 1 
            LOOP 
          	
      	    set Obook = oExcel.Workbooks.open(filePath) 
            oExcel.ActiveWindow.DisplayGridlines = True
            
        
'            Obook.WorkSheets(1).Rows("1:1").Insert
'            Obook.WorkSheets(1).Rows("1:1").RowHeight = 330
'            Obook.WorkSheets(1).Name = "Equipment Report Sheet" 
'            Obook.WorkSheets(1).cells(1,2).ColumnWidth = 10
'            Obook.WorkSheets(1).Rows("2:2").RowHeight = 25.5
'            Obook.WorkSheets(1).cells(2,2).ColumnWidth=25.29
'            Obook.WorkSheets(1).cells(3,2).ColumnWidth=25.29
'            Obook.WorkSheets(1).cells(4,2).ColumnWidth=25.29
'            Obook.WorkSheets(1).cells(5,2).ColumnWidth=16
'            Obook.WorkSheets(1).cells(6,2).ColumnWidth=16
'            Obook.WorkSheets(1).cells(7,2).ColumnWidth=16
'            Obook.WorkSheets(1).cells(8,2).ColumnWidth=16
'            Obook.WorkSheets(1).cells(2,9).ColumnWidth=13
'            Obook.WorkSheets(1).Cells.Borders.LineStyle = "1"      
'            Obook.WorkSheets(1).Cells.Borders.Weight = 2
                                   
'            for r=0 to cNumRows-1
'            
'                if r=0 then
'                    Obook.WorkSheets(1).rows(r+2).Font.Bold=true
'                end if

'                for c=0 to cNumCols-1
'                    Obook.WorkSheets(1).cells(1,c+1).ColumnWidth=11
'                next

'            next  
     

                  
     
'            Obook.WorkSheets(1).Range("$A$2:$I$2").Font.FontStyle = "Bold"
'            Obook.WorkSheets(1).Range("$A$2:$I$2").Font.Bold = True
            Obook.WorkSheets(1).Range("$A$1:$C"& "$" & cNumRows &"").Font.Size = "11"
           
            oExcel.Visible = true 
            Set fso = Nothing 
            CreateExcel=true 
                    
            Else
                 CreateExcel=false  
        End If

    End function 

</script>


		<script language="javascript">
	
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
	
function fnPrintConfirm()
	{   
		
	 	var pageURL="WSPConfirm.aspx"
	    var features = "height=20,width=60,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=350,left=150"
	    window.showModalDialog( pageURL ,'Caliber LIMS','dialogheight=6;dialogwidth=15;help=0;status=0;scroll=0;edge=raised;')		
	    window.history.back()			
	}
	
 //-->
		</script>
	</body>
</HTML>

