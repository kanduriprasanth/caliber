<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PageCfgListpopup.aspx.vb" Inherits="DashBoardMapping.PageCfgListpopup" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Page Configuration List </title>
        <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
        <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
        <meta name="vs_defaultClientScript" content="JavaScript">
        
        <link rel="stylesheet" href="../TRIMS.css">
		  
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR> 
					<TD class="MainHead">Page Configuration List </TD>
				</TR>
				<TR>
					<TD>
						<DIV class="MainTD"  ID="Div1">
							<table width="100%" cellSpacing="0" cellPadding="0" align="center">
								<tr class="HideRow">
									<td id="KdIdVal"></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<Tr class="Hiderow">
									<td class="MainTD" colspan="1">
										<b><asp:literal id="SearchOptionLtrl" runat="server">Search Option</asp:literal></b>
									</td>
									<td class="MainTD" colspan="3">
										<asp:RadioButtonList ID="SearchOptionRD" Runat="server" RepeatDirection="Horizontal" CellPadding="0"
											cssclass="RBList" CellSpacing="0" Height="18px">
											<asp:ListItem Value="1" Selected="True">Page Unique ID</asp:ListItem>
											<asp:ListItem Value="2"> Page Title </asp:ListItem>
										</asp:RadioButtonList>
									</td>
								</Tr>
								<tr  class="Hiderow">
									<td class="MainTD">
										<b><asp:literal id="FindLrl" runat="server">Find</asp:literal></b>
										<asp:TextBox id="FindTxt" runat="server" Width="180px" CssClass='TxtCls'>%</asp:TextBox>
									</td>
									<td class="MainTD">
										<b><asp:literal id="Literal1" runat="server">Records Limit</asp:literal></b>
									</td>
									<td class="MainTD">
										<asp:textbox id="RecordLimitTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:textbox>
						 			
									</td>
									<td class="MainTD">
										<asp:Button id="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
											onmouseout="this.className='ButCls'"></asp:Button>
									</td>
								</tr>
								<tr>
									<td class="MainTD" colspan="4">
									 <div style="overflow: auto; height: 350px; width: 550px; background-color: gray">
									 
											<asp:table id="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1" CellPadding="0"
												CssClass="SubTable"></asp:table>
												
												</div>
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
	    var PageCfgIdArr = new Array()
	    var pageCfgTitielArr = new Array()
	    
	    
	     for (var i=0;i<TotalrecCount;i++)
	     {
	       if (document.getElementById("chk" + i).checked == true)
	       { 
	            PageCfgIdArr.push(document.getElementById("pageCfgId" + i).innerHTML)
	            pageCfgTitielArr.push(document.getElementById("pageCfgTitile" + i).innerHTML)
	            document.getElementById("RBVal").value =document.getElementById("pageCfgId" + i).innerHTML
	       }
	     }
	
	     var pageCfgIdStr=PageCfgIdArr.join(",")
	     var PageTitleStr =pageCfgTitielArr.join("; ")
	     
		opener.SetPageCfgValue(pageCfgIdStr,PageTitleStr)
	}
	
	
	
	function fnCrCancel(){
	    opener.SetPageCfgValue('','')
	 	window.self.close()
	}
	
	document.oncontextmenu=new Function("return false")
	
	function fnCrCloseWin(){
	    if (document.getElementById("RBVal").value ==undefined)
	    {
	      alert("Select At Least One Page Configuration ")
	    }
        else
        {
            window.self.close()
        }		
	}
        </SCRIPT>
	</body>
</HTML>

