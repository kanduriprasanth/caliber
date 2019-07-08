<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DataSourcePopup.aspx.vb" Inherits="DashBoard.DataSourcePopup" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Data Source</title>
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
					<TD class="MainHead">Data Source</TD>
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
											<asp:ListItem Value="1" Selected="True">Name</asp:ListItem>
											<asp:ListItem Value="2"> Description </asp:ListItem>
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
									<td class="MainTD" colspan="3">
										<asp:textbox id="RecordLimitTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:textbox>
						 			
									</td>
									<td class="MainTD" colspan="2">
										<asp:Button id="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
											onmouseout="this.className='ButCls'"></asp:Button>
									</td>
								</tr>
								<tr>
									<td class="MainTD" colspan="6">
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
	     var DataSourceName=document.all("DataSourceName" + RowCnt).innerText
	     var DataSourceId =document.all("DataSourceId" + RowCnt).innerText
	     var ClsfNo=document.all("Clacification" + RowCnt).innerText
		opener.fnAddGroupColms(DataSourceId,DataSourceName,ClsfNo)
	}
	function fnCrCancel(){
	 	window.self.close()
	}
	
	document.oncontextmenu=new Function("return false")
	function fnCrCloseWin(){
		window.self.close()
	}
        </SCRIPT>
	</body>
</HTML>

