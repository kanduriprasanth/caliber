<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DBGroupColumnPopup.aspx.vb" Inherits="DashBoard.DBGroupColumnPopup" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Data Source</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">Group Column</TD>
				</TR>
				<TR>
					<TD>
						<DIV class="MainTd"  ID="Div1">
							<table width="100%" cellSpacing="0" cellPadding="0" align="center">
								 
					 			
								<tr>
									<td class="MainTd" colspan="6">
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
		opener.document.all("GroupColumnLbl").innerText=document.all("GroupCol" + RowCnt).innerText
		opener.document.all("GroupColumnTxt").value=document.all("GroupCol" + RowCnt).innerText
		 


	}
	function fnCrCancel(){
	 	window.self.close()
		 
	}
	
	document.oncontextmenu=new Function("return false")
	function fnCrCloseWin(){
	    
//		opener.fnCrformSubmit()
		window.self.close()
	}
        </SCRIPT>
	</body>
</HTML>
