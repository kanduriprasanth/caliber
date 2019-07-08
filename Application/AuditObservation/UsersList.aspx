<%@ Page Language="vb" AutoEventWireup="false" Codebehind="UsersList.aspx.vb" Inherits="AuditObservation.UsersList" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>User List</title>
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
					<TD class="MainHead">User List</TD>
				</TR>
				<TR>
					<TD>
						<DIV class="MainTd" id="Div1" style="HEIGHT: 20px">
							<table cellSpacing="0" cellPadding="0" width="100%" align="center">
								<tr class="HideRow">
									<td></td>
									<td></td>
									<td id="RBVal"></td>
									<td></td>
									<td></td>
								</tr>
								<TR class="HideRow">
									<td class="MainTd" colSpan="1"><asp:literal id="SearchOptionLtrl" runat="server">Search 
            Option</asp:literal>
									</td>
									<td class="MainTd" colSpan="3"><asp:radiobuttonlist id="SearchOptionRD" Runat="server" RepeatDirection="Horizontal" CellPadding="0"
											cssclass="RBList" CellSpacing="0" Height="18px">
											<asp:ListItem Value="1" Selected="True">Category</asp:ListItem>
											<asp:ListItem Value="2"> Subject</asp:ListItem>
										</asp:radiobuttonlist></td>
								</TR>
								<tr>
									<td class="MainTd" colSpan="2"><asp:literal id="FindLrl" runat="server">Find</asp:literal>
										<asp:textbox id="FindTxt" runat="server" Width="180px" CssClass="TxtCls">%</asp:textbox></td>
									<td class="MainTd" colSpan="2"><asp:literal id="FetchSizeLtrl" runat="server">Records 
            Limit</asp:literal>
										<asp:textbox id="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:textbox><asp:button class="ButCls" id="btnFind" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
											runat="server" Text="Display"></asp:button></td>
								</tr>
								<tr>
									<td class="MainTd" colSpan="4">
										<DIV style="OVERFLOW: auto; HEIGHT: 200px; BACKGROUND-COLOR: gray"><asp:table id="ResTab" runat="server" CellPadding="0" CellSpacing="1" Width="100%" CssClass="SubTable"
												BorderWidth="0"></asp:table></DIV>
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
 
  	function fnCrGetCode(RowCnt)
	{ 
		   var InChargeNo
		var InChargeName
		InChargeNo=document.all("InCharge"+RowCnt).innerHTML;		
		document.getElementById("RBVal").value=InChargeNo		
		InChargeName=document.all("NB"+RowCnt).innerHTML;				
		opener.fnCrSetToCode(InChargeNo,InChargeName)		  
	}
	function fnCrCancel(){
		opener.fnCrSetToCode('','')
		window.self.close()
		 
	}
	
	document.oncontextmenu=new Function("return false")
	function fnCrCloseWin(){
	  if(document.getElementById("RBVal").value == undefined){
        alert("Select a User")
        return(false);
      }    
		opener.fnCrformSubmit()
		window.self.close()
	}
		</SCRIPT>
	</body>
</HTML>
