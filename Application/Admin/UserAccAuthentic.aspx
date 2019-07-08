<%@ Page Language="vb" AutoEventWireup="false" Codebehind="UserAccAuthentic.aspx.vb" Inherits="Admin.UserAccAuthentic" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Status Change Authentication</title>
		<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
	</HEAD>
	<body MS_POSITIONING="GridLayout" onLoad="fnpsw_Init()" leftmargin="0" rightmargin="0"
		bottommargin="0" topmargin="0">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">Status Change Authentication</TD>
				</TR>
				<TR>
					<TD style="PADDING-BOTTOM:0px">
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="MainTD">Reason</TD>
								<TD class="MainTD"><textarea id="Reasons" class="TxtCls" style="WIDTH:250px"></textarea></TD>
							</TR>
							<TR>
								<TD class="MainTD">E-sign</TD>
								<TD class="MainTD"><input type="password" id="Password" class="TxtCls" style="WIDTH:140px" onkeypress="if(event.keyCode==13){fnCheckAuthentication();}">
									<ASP:LITERAL Runat="server" id="LITERAL3"></ASP:LITERAL></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
						<input type="button" onClick="fnCheckAuthentication()" id="btnSubmit" value="OK" Class="ButCls"
							onMouseOver="this.className='ButOCls'" onmouseout="this.className='ButCls'" style="WIDTH:50px">
						<ASP:LITERAL ID="Literal2" Runat="server"></ASP:LITERAL>
						<input class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="button" value="Cancel" style="WIDTH:50px" onclick="window.close()">
					</TD>
				</TR>
			</TABLE>
			<asp:TextBox Runat="server" ID="DBPassword" Height="0" Width="0" style="DISPLAY:none"></asp:TextBox>
			<ASP:PANEL Visible="False" ID="Panel1" Runat="server">
				<DIV style="BORDER-RIGHT: #999999 1px solid; BORDER-TOP: #999999 1px solid; PADDING-LEFT: 5px; Z-INDEX: 1000; LEFT: 10px; BORDER-LEFT: #999999 1px solid; WIDTH: 200px; BORDER-BOTTOM: #999999 1px solid; POSITION: absolute; TOP: 30px; HEIGHT: 20px; BACKGROUND-COLOR: lightyellow">
					<TABLE height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
						<TR>
							<TD><IMG src="../Images/ExlamatrySmall.gif"></TD>
							<TD><SPAN style="PADDING-LEFT: 2px; FONT-SIZE: 8pt; COLOR: red; FONT-FAMILY: Arial">
									<ASP:LITERAL id="Literal1" Runat="server"></ASP:LITERAL></SPAN></TD>
						</TR>
					</TABLE>
				</DIV>
			</ASP:PANEL>
		</form>
		<Script language="javascript">
   function fnpsw_Init()
	{	
		window.returnValue = ""
		//pswTitle.innerText = window.dialogArguments
		document.getElementById('Reasons').focus()
	}
	
	function fnCheckAuthentication()
	{	
		
		
			var pass = document.getElementById('Password').value
			var DBpass = document.getElementById('DBPassword').value
					
			if((document.getElementById('Reasons').value).length <=1){
				alert("Enter Reason")
				document.getElementById('Reasons').focus()
				return(false);
			}
			
			if(pass==""){
				alert("Enter E-signature")
				document.getElementById('Password').focus()
				return(false);
			}
								
			if(pass == DBpass){
				window.returnValue = document.getElementById('Reasons').value
				window.close();
			}else{
				alert("Invalid Password")
				return(false);
			}	
	}
		</Script>
	</body>
</HTML>
