<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CreationPopUp.aspx.vb" Inherits="InstName.CreationPopUp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Equipment Category List</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="../TRIMS.css" rel="stylesheet">
	</HEAD>
	<body onblur="document.getElementById('FindTxt').focus()" onload="document.getElementById('FindTxt').focus()"
		MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">Equipment Category List</TD>
				</TR>
				<TR>
					<TD>
						<DIV class="MainTd" id="Div1" style="HEIGHT: 20px">
							<table cellSpacing="0" cellPadding="0" width="100%" align="center">
								<TBODY>
									<tr class="HideRow">
										<td id="KdIdVal"></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<TR>
										<td class="MainTd" colSpan="1"><b><asp:literal id="SearchOptionLtrl" runat="server">Search 
            Option</asp:literal></b>
										</td>
										<td colSpan="3"><asp:radiobuttonlist id="SearchOptionRD" Height="18px" CellSpacing="0" cssclass="RBList" CellPadding="0"
												RepeatDirection="Horizontal" Runat="server">
												<asp:ListItem Value="1" Selected="True">Equipment Category</asp:ListItem>
												<asp:ListItem Value="2">Description</asp:ListItem>
											</asp:radiobuttonlist></td>
									</TR>
									<tr>
										<td class="MainTd" colSpan="2"><b><asp:Literal ID="FindLrl" runat="server">Find</asp:literal></b>
											<asp:textbox id="FindTxt" runat="server" CssClass="TxtCls" MaxLength="20" onfocusout="CheckSpace('FindTxt')" Width="150px">%</asp:textbox></td>
										<td class="MainTd" colspan="2">
											<b><asp:literal id="FetchSizeLtrl" runat="server">Records Limit</asp:literal></b>
											<asp:textbox id="FetchSizeTxt" onfocusout="ChkVal()" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:textbox>
											<asp:Button id="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
												onmouseout="this.className='ButCls'"></asp:Button>
										</td>
					</TD>
				</TR>
				<tr>
					<td class="MainTd" colSpan="4">
						<DIV style="OVERFLOW: auto; HEIGHT: 200px; BACKGROUND-COLOR: gray"><asp:table id="ResTab" runat="server" CellSpacing="1" CellPadding="0" CssClass="SubTable" Width="100%"
								BorderWidth="0"></asp:table></DIV>
					</td>
				</tr>
			</TABLE>
			</DIV></TD></TR> 
			<!-- MAIN FOOTER -->
			<TR>
				<TD class="MainFoot"><INPUT class="ButCls" onmouseover="this.className='ButOCls'"  onclick="fnCrCloseWin()"
						onmouseout="this.className='ButCls'" type="button" value="Ok"> <INPUT class="ButCls" onmouseover="this.className='ButOCls'"  onclick="fnCrCancel()"
						onmouseout="this.className='ButCls'" type="button" value="Cancel">
				</TD>
			</TR>
			</TBODY></TABLE>
		</form>
		<SCRIPT language="javascript">
 
  	function fnCrGetCode(RowCnt)
	{ 
		     var KfLableVal=document.all("KfLable"+ RowCnt).innerHTML
		     var KdIdVal=document.all("KdId"+ RowCnt).innerText
		     document.getElementById("KdIdVal").value = KdIdVal		     		   
		     opener.fnCrSetToCode(KdIdVal,KfLableVal)
	}
	function fnCrCancel(){
		opener.fnCrSetToCode('','')
		window.self.close()
		 
	}
	
	document.oncontextmenu=new Function("return false")
	function fnCrCloseWin(){
	   	if(document.getElementById("KdIdVal").value == undefined){
	   	  alert("Select Equipment Category")
	   	  return(false);
	   	}
		opener.fnCrformSubmit()
		window.self.close()
	}
	function myTrim(str)
   {
   return str.replace(/^\s+|\s+$/gm,'')
   }
    function CheckSpace(id) 
   {
   document.getElementById(id).value= myTrim(document.getElementById(id).value)
   }
	
	
	
	function ChkVal()
	{
	if (document.getElementById("FetchSizeTxt").value < 1 || document.getElementById("").value == "" )
	{
	document.getElementById("FetchSizeTxt").value=50
	}
	}
        </SCRIPT>
	</body>
</HTML>
