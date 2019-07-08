<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ReportListpopup.aspx.vb" Inherits="DashBoard.ReportListpopup" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Report Configuration List </title>
        <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
        <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
        <meta name="vs_defaultClientScript" content="JavaScript">
        
        <link rel="stylesheet" href="../TRIMS.css">
		  
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="5px" width="100%" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR> 
					<TD class="MainHead">Report Configuration List </TD>
				</TR>
				<TR>
					<TD>
						<DIV class="MainTD"  ID="Div1"  >
							<table height="100%" width="100%" cellSpacing="0" cellPadding="0" align="center">
								<tr class="HideRow">
									<td id="KdIdVal"></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<Tr class="MainTD">
									<td class="MainTD" colspan="1">
										<b><asp:literal id="SearchOptionLtrl" runat="server">Search Option</asp:literal></b>
									</td>
									<td class="MainTD" colspan="3">
										<asp:RadioButtonList ID="SearchOptionRD" Runat="server" RepeatDirection="Horizontal" CellPadding="0"
											cssclass="RBList" CellSpacing="0" Height="18px">
											<asp:ListItem Value="1" Selected="True">Report Id</asp:ListItem>
											<asp:ListItem Value="2"> Report Title </asp:ListItem>
										</asp:RadioButtonList>
									</td>
								</Tr>
								<tr  class="MainTD">
									<td class="MainTD">
										<b><asp:literal id="FindLrl" runat="server">Find</asp:literal></b>
										<asp:TextBox id="FindTxt" runat="server" Width="180px" CssClass='TxtCls'>%</asp:TextBox>
									</td>
									<td class="MainTD">
										<b><asp:literal id="Literal1" runat="server">Records Limit</asp:literal></b>
									</td>
									<td class="MainTD" colspan="3">
										<asp:textbox id="RecordLimitTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:textbox>
						 			
									</td>
									<td class="MainTD" colspan="2">
										<asp:Button id="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
											onmouseout="this.className='ButCls'"></asp:Button>
									</td>
								</tr>
								<tr>
									<td class="MainTD" colspan="7">
									<DIV style="OVERFLOW: auto; HEIGHT: 350px; BACKGROUND-COLOR: gray">
											<asp:table id="ResTab" runat="server" Width="100%" Height="100%" BorderWidth="0" CellSpacing="1" CellPadding="0"
												CssClass="SubTable"></asp:table>
												</DIV>
									</td>
								</tr>
							</table>
						</DIV>
					</TD>
				</TR>
				
                <tr class="HideRow">
                <td id="RBVal">
                </td>
                <td>

                </tr>
				<!-- MAIN FOOTER -->
				<TR class="MainFoot">
					<TD ><INPUT class="ButCls" onmouseover="this.className='ButOCls'"  onclick="fnCrCloseWin()"
							onmouseout="this.className='ButCls'" type="button" value="Ok"> <INPUT class="ButCls" onmouseover="this.className='ButOCls'"  onclick="fnCrCancel()"
							onmouseout="this.className='ButCls'" type="button" value="Cancel">
					</TD>
				</TR>
			</TABLE>
		</form>
		<SCRIPT language="javascript">
 
  	function fnCrGetCode(RowCnt)
	{    
	
	    var TotalrecCount =<%=TotalrecCount %>
	    var RecidArr = new Array()
	    var RecTitileArr = new Array()
	    var CheckCount=1 
	    
	     for (var i=0;i<TotalrecCount;i++)
	     {
	       if (document.getElementById("chk" + i).checked == true)
	       { 
	        CheckCount =CheckCount +1
	        if (CheckCount <=25)
	        {
	            RecidArr.push(document.getElementById("ReportId" + i).innerHTML)
	            RecTitileArr.push(document.getElementById("ReportTitle" + i).innerHTML)
	            document.getElementById("RBVal").value =document.getElementById("ReportId" + i).innerHTML
	        }
	        else
	        {
	          alert("You Can Select Maximum 24 Reports");
	          document.getElementById("chk" + RowCnt).checked=false
	        }
	       }
	     }
	
	     var RptIdStr=RecidArr.join(",")
	     var RptTitleStr =RecTitileArr.join("; ")
	     
		opener.SetReportListValues(RptIdStr,RptTitleStr)
	}
	
	
	
	function fnCrCancel(){
	    opener.SetReportListValues('','')
	 	window.self.close()
	}
	
	document.oncontextmenu=new Function("return false")
	
	function fnCrCloseWin(){debugger
    document.getElementById("RBVal").value =""
    fnCrGetCode(0)
	    if (document.getElementById("RBVal").value ==undefined || document.getElementById("RBVal").value =="")
	    {
	      alert("Select At Least One Report")
	    }
        else
        {
            window.self.close()
        }		
	}
        </SCRIPT>
	</body>
</HTML>
