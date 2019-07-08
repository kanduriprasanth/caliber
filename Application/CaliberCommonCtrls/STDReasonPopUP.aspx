<%@ Page Language="vb" AutoEventWireup="false" Codebehind="STDReasonPopUP.aspx.vb" Inherits="CaliberCommonCtrls.STDReasonPopUP" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Standard Reasons</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout" leftmargin="0" topmargin="10" bottommargin="0" rightmargin="0">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100" cellSpacing="0" cellPadding="0" width="450" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<tr class="HideRow">
									<td></td>
									<td></td>
									<td id="RBVal"></td>
									<td></td>
									<td></td>
								</tr>
				<TR>
					<TD class="MainHead">Standard Remark(s) / Reason(s)</TD>
				</TR>
				<TR>
					<TD>
						<DIV STYLE="HEIGHT:20px" class="SubHead">
							<ASP:LABEL ID="lblReason" Runat="server"></ASP:LABEL></DIV>
						<DIV STYLE="OVERFLOW:auto;HEIGHT:250px;BACKGROUND-COLOR:gray">
							<asp:Table CssClass="SubTable" id="ResTab" CellPadding="0" CellSpacing="1" BorderWidth="0"
								runat="server" Width="100%"></asp:Table>
						</DIV>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
						<INPUT class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="button" value="Ok" style="WIDTH:50px" onclick="fnSpCloseWin()"> <INPUT class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="button" value="Cancel" style="WIDTH:60px" onclick="fnCancel()">
					</TD>
				</TR>
			</TABLE>
		</form>
		<SCRIPT language="javascript">
	var SelectedReason=''
	var CallObj='<%=CallObj%>'
 	function fnGetReason(ID)
	{
	 
		SelectedReason = document.all("LB"+ ID).innerText
		document.getElementById("RBVal").value = SelectedReason
		 
		opener.fnSetToReasons(SelectedReason,CallObj)
	}
	function fnCancel(){
		opener.fnSetToReasons("",CallObj)
		window.self.close()
	}
	
	document.oncontextmenu=new Function("return false")
	
	function fnSpCloseWin(){
	 
	      if(document.getElementById("RBVal").value == undefined)
	      
	      {
	      
        alert("Select Reason")
        return(false);
      }    
		//opener.fnSpformSubmit()
		window.self.close()
	}
		</SCRIPT>
	</body>
</HTML>
