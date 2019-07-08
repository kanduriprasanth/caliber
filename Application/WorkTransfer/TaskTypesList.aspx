<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TaskTypesList.aspx.vb" Inherits="WorkTransfer.TaskTypesList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Tasks List</title>
   <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
 <script language="javascript" src="../JScript/Common2.js"></script>

</head>
<body ms_positioning="GridLayout" >
   <form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="3">
				<!-- MAIN HEADER -->
				<TR class="SubHead">
					<TD class="MainHead">Tasks List</TD>
				</TR>
             <tr>
                <td>
						
                    <table width="100%" cellspacing="0" cellpadding="0" class ="SubTable">
                        <tr class="HideRow" >
                        </tr>
                        
                           <tr>
                            <td class="MainTD" >
                                <asp:Literal ID="FindLrl" runat="server">Find</asp:Literal>
                                <asp:TextBox ID="FindTxt" runat="server" Width="100px" CssClass='TxtCls' MaxLength="26">%</asp:TextBox>
                            </td>
                            <td class="MainTD">
                                <asp:Literal ID="Literal1" runat="server">Total Records :</asp:Literal>
                                 <asp:Label ID="MaxRecCntLbl" runat="server"><%=TotalRecCnt %></asp:Label>
                            </td>
                          
                        </tr>
                        
                        <tr>
                            <td class="MainTD">
                                <asp:Literal ID="FetchSizeLtrl" runat="server">Records Per Page</asp:Literal>
                                <asp:TextBox ID="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" onkeypress="return IsDigit1(event);"
                                    MaxLength="3">50</asp:TextBox>
                            </td>
                            <td class="MainTD">
                                <asp:Literal ID="PgNoLtrl" runat="server">Page No.</asp:Literal>
                                <asp:TextBox ID="PgNoTxt" CssClass="TxtCls" runat="server" AutoPostBack="False" Width="50px"
                                    MaxLength="5" onkeypress="return IsDigit1(event);">1</asp:TextBox>
                                <asp:Button ID="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
                                    onmouseout="this.className='ButCls'"></asp:Button>
                            </td>
                        </tr>
                       
                        <tr>
                            <td class="MainTD" colspan="4">
                                    <asp:Table ID="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                        CellPadding="0" CssClass="SubTable">
                                    </asp:Table>
                            </td>
                        </tr>
                        <tr class="HideRow">
                            <td id="RBVal">
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
				
                </td>
            </tr>
            <!-- MAIN FOOTER -->
              <TR>
					<TD class="MainFoot">
					<INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 50px" onclick="fnCrCloseWin()"
					onmouseout="this.className='ButCls'" type="button" value="Ok">
					 <INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 60px" onclick="fnCrCancel()"
					onmouseout="this.className='ButCls'" type="button" value="Cancel">
					</TD>
				</TR>
        </table>
    </form>

    <script language="javascript">
		 
  	function fnCrGetCode(RowCnt)
	{ 	
	
        var TaskTypeID=document.getElementById("TaskTypeID"+ RowCnt).innerHTML	
        var TaskName=document.getElementById("TaskName"+ RowCnt).innerHTML
        var ISAppList=document.getElementById("ISAppList"+ RowCnt).innerHTML

        opener.funSetTaskName(TaskTypeID,TaskName,ISAppList)     
        document.getElementById("RBVal").value = TaskTypeID
              
		   	
	}
	function fnCrCancel(){
		 opener.funSetTaskName('','','')  
		window.self.close()
	}
	
	document.oncontextmenu=new Function("return false")

	function fnCrCloseWin(){
	      if(document.getElementById("RBVal").value == undefined)
	      {
            alert("Select At Least One Value  ")
            return(false);
          }    
		window.self.close()
	}
	
    </script>
</body>
</html>

