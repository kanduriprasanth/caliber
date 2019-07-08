<%@ Page Language="vb" AutoEventWireup="false" Codebehind="UserParticularsCH.aspx.vb" Inherits="Admin.UserParticularsCH" %>
<%@ Register TagPrefix="uc1" TagName="ESignWebUC" Src="ESignWebUC.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>UserParticularsCH</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<%--<LINK href="CUSTOM.CSS" type="text/css" rel="stylesheet">--%>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
         <script language="javascript" src='../JScript/Common3.js'></script>
		<SCRIPT language="javascript" src='../JScript/Common.js'></SCRIPT>
		<script language="javascript">
		function chk()
		{
			var txt=document.getElementById('Phone').value;
			var len=txt.length;
			var flag=true;
			var str;
			var i,j;
			for(j=0;j<len;j++)
			{
					str=txt.charAt(j);
					if( str!="+" && str!=" ")
					{	
						if(isNaN(str))
						{
							flag=false;
							break;
						}
					}
			}
			if(!flag)
			{
				alert("Invalid Phone Extn.");
				document.getElementById('Phone').value="";
				document.getElementById('Phone').focus;
			}
	
		}
		
		</script>
	</HEAD>
	<BODY MS_POSITIONING="GridLayout" onblur="fnRestoreESign()" onfocus="fnRestoreESign()"
		onbeforeunload="fnCloseObject();fnKillESign()">
		<form id="Form1" method="post" runat="server" onsubmit="return fnCallESign();">
			<ASP:VALIDATIONSUMMARY id="ValidationSumm" runat="server" ShowMessageBox="True" ShowSummary="False"></ASP:VALIDATIONSUMMARY>
			<TABLE class="MainTable" height="200" cellSpacing="0" cellPadding="0" width="500" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">User Particulars</TD>
				</TR>
				<TR>
					<TD>
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="SubHead">Change User Particulars</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label1" style="PADDING-LEFT:5px" Width="140">First Name</ASP:LABEL>
									<asp:Label ID="FirstNameLbl" runat ="server" > </asp:Label>
									 
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label2" style="PADDING-LEFT:5px" Width="140">Last Name</ASP:LABEL>
									<asp:Label ID="LastNameLbl" runat ="server" > </asp:Label>
									 
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label3" style="PADDING-LEFT:5px" Width="140">Date Of Birth</ASP:LABEL>
									<asp:Label ID="DOBLbl" runat ="server" > </asp:Label> <%--&nbsp;&nbsp;&nbsp;&nbsp;--%>									 
									<%--(MM/DD/YYYY)--%>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label6" style="PADDING-LEFT:5px" Width="140">Role / Title</ASP:LABEL>
									<ASP:TEXTBOX Runat="server" ID="RoleTile" CssClass="TxtCls" MaxLength="25"></ASP:TEXTBOX>
									<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator10" runat="server" Display="Dynamic" ErrorMessage="Enter Role / Title"
										ControlToValidate="RoleTile">*</ASP:REQUIREDFIELDVALIDATOR>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label8" style="PADDING-LEFT:5px" Width="140">Employee ID</ASP:LABEL>
									<ASP:TEXTBOX Runat="server" ID="EMPID" CssClass="TxtCls" MaxLength="25"></ASP:TEXTBOX>
									<ASP:REQUIREDFIELDVALIDATOR id="EmpIdRequiredfieldvalidator" runat="server" Display="Dynamic" ErrorMessage="Enter Employee ID"
										ControlToValidate="EMPID">*</ASP:REQUIREDFIELDVALIDATOR>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label13" style="PADDING-LEFT:5px" Width="140">ID Card No.</ASP:LABEL>
									<ASP:TEXTBOX Runat="server" ID="SSN" CssClass="TxtCls" MaxLength="20"></ASP:TEXTBOX>
								</TD>
							</TR>
							<TR Class="HideRow">
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label4" style="PADDING-LEFT:5px" Width="140">Plant</ASP:LABEL>
									<asp:DropDownList ID="PlantDD" Runat="server"></asp:DropDownList>
									<ASP:TEXTBOX Runat="server" ID="Plant" CssClass="HideRow" MaxLength="40"></ASP:TEXTBOX>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label5" style="PADDING-LEFT:5px" Width="140">Phone Extn.</ASP:LABEL>
									<ASP:TEXTBOX Runat="server" ID="Phone" CssClass="TxtCls" MaxLength="20" onkeyup="chk()"></ASP:TEXTBOX>
									<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator9" runat="server" Display="Dynamic" ErrorMessage="Enter Phone Extn."
										ControlToValidate="Phone">*</ASP:REQUIREDFIELDVALIDATOR>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label7" style="PADDING-LEFT:5px" Width="140">Address</ASP:LABEL>
									<ASP:TEXTBOX Runat="server" ID="Address" CssClass="TxtCls" Height="40" Width="200" TextMode="MultiLine"></ASP:TEXTBOX>
									<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator1" runat="server" Display="Dynamic" ErrorMessage="Enter Address"
										ControlToValidate="Address">*</ASP:REQUIREDFIELDVALIDATOR>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label9" style="PADDING-LEFT:5px" Width="140">E-Mail</ASP:LABEL>
									<ASP:TEXTBOX Runat="server" ID="EMail" CssClass="TxtCls" MaxLength="40" Width="200"></ASP:TEXTBOX>
									<ASP:REGULAREXPRESSIONVALIDATOR id="RegularExpressionValidator3" runat="server" ControlToValidate="EMail" ErrorMessage="Entered E-Mail is incorrect. E-Mail like: AAA@Caliberindia.com"
										Display="Dynamic" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</ASP:REGULAREXPRESSIONVALIDATOR>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD>
						<TABLE style="BORDER-RIGHT: 2px groove; BORDER-TOP: 2px groove; BORDER-LEFT: 2px groove; BORDER-BOTTOM: 2px groove"
							cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
							<TR>
								<TD class="MainTD" width="140px">
									<ASP:LABEL Runat="server" id="Label10" style="PADDING-LEFT:1px" Width="140">Remark(s) / Reason(s)
							<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator4" runat="server" Display="Dynamic" ErrorMessage="Enter Remark(s) / Reason(s)"
											ControlToValidate="Reasons">*</ASP:REQUIREDFIELDVALIDATOR>
							</ASP:LABEL>
								</TD>
								<TD class="MainTD">
									<ASP:TEXTBOX ID="Reasons" CssClass="TxtCls" TextMode="MultiLine" Runat="server" Width="280"></ASP:TEXTBOX>
									<INPUT type="button" onclick="fnOpenReasons(1)" class='RsnPUP' title='Click for Standard Reason'>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
						<ASP:BUTTON id="btnSubmit" runat="server" Text="Submit" CssClass="ButCls" onMouseOver="this.className='ButOCls'"
							onmouseout="this.className='ButCls'" Width="60"></ASP:BUTTON>
						<INPUT class="HideRow" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="reset" value="Reset" style="WIDTH:60px">
					</TD>
				</TR>
			</TABLE>
			<UC1:ESIGNWEBUC id="ESignWebUC1" runat="server"></UC1:ESIGNWEBUC>
		</form>
		<SCRIPT language="javascript">
<!--
	function fnSetToReasons(argValue){
		document.getElementById('Reasons').value = argValue
	}
	
	/* Esing Activity and button name setting */
	window.onload = new Function("fnSetEsingActivity('User Particulars Change','btnSubmit');")
	
	window.onerror = "return true;"
	
//-->
		  //For Disabling Right Click
		//context menu	
</SCRIPT>
		
	</BODY>
</HTML>
