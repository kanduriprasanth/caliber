<%@ Page Language="vb" AutoEventWireup="false" Codebehind="productList.aspx.vb" Inherits="IssueLogin.productList" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Product List</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout" onload="document.getElementById('FindTxt').focus()" onblur="document.getElementById('FindTxt').focus()">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="3">
				<!-- MAIN HEADER -->
				<TR class="SubHead"> 
					<TD class="MainHead"><b>Product List</b></TD>
				</TR>
				<TR>
					<TD>
						<DIV class="MainTd" style="HEIGHT: 20px" ID="Div1">
							<table width="100%" cellSpacing="0" cellPadding="0" align="center">
								<tr class="HideRow">
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<TR>
									<td class="MainTd" colSpan="1"><asp:literal id="SearchOptionLtrl" runat="server">Search Option</asp:literal>
									</td>
									<td class="MainTd" colSpan="3"><asp:radiobuttonlist id="SearchOptionRD" Runat="server" RepeatDirection="Horizontal" CellPadding="0"
											cssclass="RBList" CellSpacing="0" Height="18px">
											<asp:ListItem Value="1" Selected="True">Product / Material</asp:ListItem>
											<asp:ListItem Value="2"> Specification ID</asp:ListItem>
										</asp:radiobuttonlist></td>
								</TR>
								<tr>
									<td class="MainTd" colspan="2">
										<asp:literal id="FindLrl" runat="server">Find</asp:literal>
										<asp:TextBox id="FindTxt" runat="server" Width="150px" MaxLength=26 CssClass='TxtCls'>%</asp:TextBox>
									</td>
									<td class="MainTd" colspan="2">
										<asp:literal id="FetchSizeLtrl" runat="server">Records Limit</asp:literal>
										<asp:textbox id="FetchSizeTxt" runat="server" Width="30px" CssClass="TxtCls" MaxLength="3">50</asp:textbox>
										<asp:Button id="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
											onmouseout="this.className='ButCls'"></asp:Button>
									</td>
								</tr>
								<tr>
									<td class="MainTd" colspan="4">
										<DIV style="OVERFLOW: auto; HEIGHT: 200px; BACKGROUND-COLOR: gray">
											<asp:table id="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1" CellPadding="0"
												CssClass="SubTable"></asp:table></DIV>
									</td>
								</tr>
							</table>
						</DIV>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot"><INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 50px" onclick="fnCrCloseWin()"
							onmouseout="this.className='ButCls'" type="button" value="Ok"> <INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 60px" onclick="fnCrCancel()"
							onmouseout="this.className='ButCls'" type="button" value="Cancel">
					</TD>
				</TR>
			</TABLE>
		</form>
		<SCRIPT language="javascript">
 var KfCheck = false
  	function fnCrGetCode(RowCnt)
	{ 
		     var KfLableVal=document.all("KfLable"+ RowCnt).innerHTML;
		     var KfLableVal1=document.all("SpecLable"+ RowCnt).innerHTML;
		     var KdIdVal=document.all("KdId"+ RowCnt).innerText;
		     var KdIdVal1=document.all("SpecId"+ RowCnt).innerText;
		    KfCheck=true;
		   	opener.fnCrSetToCode(<%=BaseId%>,KdIdVal,KfLableVal,KfLableVal1,KdIdVal1);
	}
	function fnCrCancel(){
	
		opener.fnCrSetToCode('','','','')
		window.self.close()
    
		 
	}
	
	document.oncontextmenu=new Function("return false")
	function fnCrCloseWin(){
	if(KfCheck==false)
	{
	alert("Select value")
	return false
	}
	else
	{
		opener.fnCrformSubmit()
		window.self.close()
	}
	}
		</SCRIPT>
	</body>
</HTML>
