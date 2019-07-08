<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ConfigRptCreationPopUp.aspx.vb" Inherits="Admin.ConfigRptCreationPopUp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Modules List</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	 
	</HEAD>
	<body MS_POSITIONING="GridLayout" onload="document.getElementById('FindTxt').focus()" onblur="document.getElementById('FindTxt').focus()">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">Modules List</TD>
				</TR>
				<TR>
					<TD>
						<DIV class="MainTd" style="HEIGHT: 20px" ID="Div1">
							<table width="100%" cellSpacing="0" cellPadding="0" align="center">
								<tr class="HideRow">
									<td id ="RBVal"></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr class="HideRow">
									<td class="MainTd" colspan="1">
										<asp:literal id="SearchOptionLtrl" runat="server">Search Option</asp:literal>
									</td>
									<td class="MainTd" colspan="3">
										<asp:RadioButtonList ID="SearchOptionRD" Runat="server" RepeatDirection="Horizontal" CellPadding="0"
											cssclass="RBList" CellSpacing="0" Height="18px">
											<asp:ListItem Value="1" Selected="True">Modules</asp:ListItem>
											<asp:ListItem Value="2">Lot</asp:ListItem>
										</asp:RadioButtonList>
									</td>
								</tr>
								<tr>
									<td class="MainTd" colspan="2">
										<asp:literal id="FindLrl" runat="server">Find</asp:literal>
										<asp:TextBox id="FindTxt" runat="server" Width="130px" CssClass='TxtCls' MaxLength="26">%</asp:TextBox>
									</td>
									<td class="MainTd" colspan="2">
										<asp:literal id="FetchSizeLtrl" runat="server">Records Limit</asp:literal>
										<asp:textbox id="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:textbox>
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
 
  	function fnCrGetCode(RowCnt)
	{         
	        
		     var KfLableVal=document.all("KfLable"+ RowCnt).innerHTML
		     var KdIdVal=document.all("KdId"+ RowCnt).innerText
		      document.getElementById("RBVal").value = KdIdVal
		     opener.fnCrSetToCode(KdIdVal,KfLableVal )
		   
	}
	function fnCrCancel(){
		opener.fnCrSetToCode('','')
		window.self.close()
		 
	}
	
	document.oncontextmenu=new Function("return false")
	function fnCrCloseWin(){
	     
		   if(document.getElementById("RBVal").value == undefined){
           alert("Select Value")
           return(false);
         } 		
		opener.fnCrformSubmit();
		window.self.close()
	}
		</SCRIPT>
	</body>
</HTML>
