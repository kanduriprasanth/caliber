<%@ Page Language="vb" AutoEventWireup="false" Codebehind="UserList.aspx.vb" Inherits="Admin.UserList" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>UserList</title>
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
				<TR class="SubHead">
					<TD class="MainHead">User List</TD>
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
								<tr>
									<td class="MainTd" colspan="2">
										<asp:literal id="FindLrl" runat="server">Find</asp:literal>
										<asp:TextBox id="FindTxt" runat="server" Width="100px" CssClass='TxtCls' MaxLength="99">%</asp:TextBox>
									</td>
									<td class="MainTd" colspan="2">
										<asp:literal id="FetchSizeLtrl" runat="server">Records Limit</asp:literal>
										<asp:textbox id="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:textbox>
										<asp:Button id="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
											onmouseout="this.className='ButCls'"></asp:Button>
									</td>
								</tr>
								
								<tr class="MainTd" >
								<td class="SubheadTd" colspan=7 >
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=Radio name=RB  value="AllAnalysts"   onClick='fnCrGetCode1()' style='height:15px;width:15px;' ID='RBID0' > <span id='KfLable0'>All Users</Span>
								</td>
								</tr>
								
								<tr>
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
				<asp:TextBox Runat="server" ID="SampleID" CssClass="hiderow"></asp:TextBox>
			</TABLE>
    </form>
		<SCRIPT language="javascript">
 var KfCheck=false
  	function fnCrGetCode(RowCnt)
	{ 
	var cnt='<%=request.querystring("Cnt")%>'
    var KfLableVal=document.all("KfLable"+ RowCnt).innerHTML
    var KdIdVal=document.all("KdId"+ RowCnt).innerText
    KfCheck=true
    	opener.fnCrSetToCode(KdIdVal,KfLableVal)  
    	 
	}
	
	function fnCrGetCode1()
	{ 
	var KfLableVal=document.all("KfLable0").innerHTML
	var KdIdVal=0
	KfCheck=true
	opener.fnCrSetToCode(KdIdVal,KfLableVal)  
	 
	}
	function fnCrCancel(){
	opener.fnCrSetToCode('','')
	
	//opener.Submit()
	window.self.close()
	}
	document.oncontextmenu=new Function("return false")
	function fnCrCloseWin(){
	if(KfCheck==false)
	{
	alert("Select User")
	return false
	}
	else
	{
		//opener.fnCrformSubmit()
		
		window.self.close()
	//	opener.Submit()
	}
	}
		</SCRIPT>
</body>
</HTML>