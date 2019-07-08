<%@ Page Language="vb" AutoEventWireup="false" Codebehind="STDReasonPopUP.aspx.vb" Inherits="Admin.STDReasonPopUP" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Standard Reasons</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<%--<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">--%>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	
	</HEAD>
	<body MS_POSITIONING="GridLayout" leftmargin="0" topmargin="10" bottommargin="0" rightmargin="0"
		onblur="window.focus()">
		<form id="Form1" method="post" runat="server">
		
			<TABLE class="MainTable" height="100" cellSpacing="0" cellPadding="0" width="450" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">Reason List</TD>
				</TR>
				<TR>
					<TD>
						<DIV STYLE="HEIGHT:20px" class="SubHead">Standard Reasons
							<ASP:LABEL ID="lblReason" Runat="server" CssClass="HideRow"></ASP:LABEL></DIV>
						<DIV align="center" style="FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: red; FONT-FAMILY: Arial"><ASP:LABEL ID="noReason" Runat="server" BackColor=#0a246a ForeColor=#ffffff></ASP:LABEL></DIV>
						<DIV STYLE="OVERFLOW:auto;HEIGHT:250px;BACKGROUND-COLOR:'#DBDBDB'">
							<ASP:DATAGRID CssClass="SubTable" id="DataGrid1" CellPadding="0" CellSpacing="1" BorderWidth="0"
								runat="server" Width="100%" AutoGenerateColumns="False" AllowPaging="True" PagerStyle-Mode="NumericPages"
								PageSize="10" PagerStyle-CssClass="PagerTD" PagerStyle-PageButtonCount="15" PagerStyle-HorizontalAlign="Center">
								<COLUMNS>
									<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="45"
										ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="70px">
										<ITEMTEMPLATE>
											<ASP:LABEL id="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>Label</ASP:LABEL>
										</ITEMTEMPLATE>
									</ASP:TEMPLATECOLUMN>
									<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Reason">
										<ITEMTEMPLATE>
											<ASP:LABEL id="Label6" runat="server" Text='<%# fnSetRadiobutton(DataBinder.Eval(Container, "DataItem.Reason"))%>'>
											</ASP:LABEL>
										</ITEMTEMPLATE>
									</ASP:TEMPLATECOLUMN>
								</COLUMNS>
							</ASP:DATAGRID>
						</DIV>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
						<INPUT class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="button" value="Ok" style="WIDTH:50px" onclick="fnCrCloseWin()"> <INPUT class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="button" value="Cancel" style="WIDTH:60px" onclick="fnCancel()"> &nbsp;&nbsp;<ASP:LITERAL id="Literal1" Runat="server"></ASP:LITERAL>
							
					</TD>
				</TR>
			</TABLE>
		</form>
		<SCRIPT language="javascript">
	var SelectedReason=''
	function fnGetReason(ID)
	{
	
		SelectedReason = document.all("LB"+ ID).innerText
		opener.fnSetToReasons(SelectedReason)
	}
	function fnCancel(){
		opener.fnSetToReasons("")
		window.self.close()
	}
	
	document.oncontextmenu=new Function("return false")
	function fnCrCloseWin(){
        if (SelectedReason=='') 
        {
            alert("Select One Reason")
            return false
        }
        else
        {
               window.self.close()
        }
	}
	
	
	function fnOpenSTDRsn()
	{
		window.close();
		opener.fnOpStRs();
	}
		</SCRIPT>
	</body>
</HTML>
