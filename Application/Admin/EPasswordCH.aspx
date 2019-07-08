<%@ Page Language="vb" AutoEventWireup="false" Codebehind="EPasswordCH.aspx.vb" Inherits="Admin.EPasswordCH" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE></TITLE>
		<META name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<META name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<META name="vs_defaultClientScript" content="JavaScript">
		
		<LINK REL="stylesheet" TYPE="text/css" HREF="CUSTOM.css">
	</HEAD>
	<BODY MS_POSITIONING="GridLayout" onload="document.getElementById('UserName').focus()">
		<FORM id="Form1" method="post" runat="server" onsubmit="return ClientValidate();">
			<TABLE WIDTH="500" Height="200" class="MainTable" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">
			<!-- MAIN HEADER -->
			<TR><TD class="MainHead">E-sign Password</TD></TR>
			<!-- MAIN BODY -->
			
				<TR><TD>				
						<TABLE WIDTH="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0" style="Border-style:groove;border-width:2px;">
						<TR><TD class="SubHead" colspan="3"><ASP:LABEL Runat="server" id="lblTitle"></ASP:LABEL> E-sign Password</TD></TR>
						<TR><TD class="MainTD" style="padding-Top:5px;">						
							<ASP:LABEL Runat="server" id="Label1" style="PADDING-LEFT:5px" Width="140">User ID</ASP:LABEL>
							<ASP:TEXTBOX ID="UserName" CssClass=TxtCls Runat=server Width=200 TextMode=Password  MaxLength=20></ASP:TEXTBOX>
							<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator2" runat="server" Display="Dynamic" ErrorMessage="Enter User Name" ControlToValidate="UserName">*</ASP:REQUIREDFIELDVALIDATOR>
						</TD></TR>
						
						<ASP:PANEL Runat=server ID=Panel1>
						<TR><TD class="MainTD">
							<ASP:LABEL Runat="server" id="lblOldPWS" style="PADDING-LEFT:5px" Width="140">Current Password</ASP:LABEL>
							<ASP:TEXTBOX ID="OldPassword" CssClass=TxtCls TextMode=Password  Runat=server Width=200 MaxLength=20></ASP:TEXTBOX>
							<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator4" runat="server" Display="Dynamic" ErrorMessage="Enter Current Password" ControlToValidate="OldPassword">*</ASP:REQUIREDFIELDVALIDATOR>
						</TD></TR>
						</ASP:PANEL>
						
						<TR><TD class="MainTD">
							<ASP:LABEL Runat="server" id="lblNewPWS" style="PADDING-LEFT:5px" Width="140">New Password</ASP:LABEL>
							<ASP:TEXTBOX ID=Password CssClass=TxtCls TextMode=Password  Runat=server Width=200 MaxLength=20></ASP:TEXTBOX>
							<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator3" runat="server" Display="Dynamic" ErrorMessage="Enter New Password" ControlToValidate="Password">*</ASP:REQUIREDFIELDVALIDATOR>
							<ASP:COMPAREVALIDATOR ID="Comparevalidator1" Runat=server Display=Dynamic ErrorMessage="Current Password and New Password should not match" ControlToValidate="OldPassword" ControlToCompare="Password" Operator=NotEqual>*</ASP:COMPAREVALIDATOR>
						</TD></TR>
						
						<TR><TD class="MainTD">
							<ASP:LABEL Runat="server" id="lblReNewPWS" style="PADDING-LEFT:5px" Width="140">Retype Password</ASP:LABEL>
							<ASP:TEXTBOX ID="RePassword" CssClass=TxtCls TextMode=Password  Runat=server Width=200 MaxLength=20></ASP:TEXTBOX>
							<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator1" runat="server" Display="Dynamic" ErrorMessage="Retype Password" ControlToValidate="RePassword">*</ASP:REQUIREDFIELDVALIDATOR>
							<ASP:COMPAREVALIDATOR ID=CMPVal Runat=server Display=Dynamic ErrorMessage="Passwords Doesn't match correct" ControlToValidate="RePassword" ControlToCompare="Password">*</ASP:COMPAREVALIDATOR>
						</TD></TR>
						</TABLE>
					</TD>
				</TR>
			
				<!-- MAIN FOOTER -->
				<TR><TD class="MainFoot">
						<ASP:BUTTON id="btnSubmit" runat="server" Text="Submit" CssClass="ButCls" onMouseOver="this.className='ButOCls'" onmouseout="this.className='ButCls'" Width=60></ASP:BUTTON>
						<INPUT class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'" type="reset" value="Reset" style="width:60px;">
				</TD></TR>
			</TABLE>
			
			<ASP:TEXTBOX ID="SPESign" Runat=server ReadOnly=True Width=0 Height=0 style="display:none;"></ASP:TEXTBOX>
			<ASP:TEXTBOX ID="SPMaxLen" Runat=server ReadOnly=True Width=0 Height=0 style="display:none;"></ASP:TEXTBOX>
			<ASP:TEXTBOX ID="SPComplexity" Runat=server ReadOnly=True Width=0 Height=0 style="display:none;"></ASP:TEXTBOX>
			<ASP:VALIDATIONSUMMARY id="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></ASP:VALIDATIONSUMMARY>
		</FORM>

<SCRIPT language="javascript">
<!--
 function ClientValidate(){
	
	if(Page_IsValid){
		var SPMaxLen = document.getElementById('SPMaxLen').value
		var SPComplexity = document.getElementById('SPComplexity').value
		var pass = document.getElementById('Password').value
		if(pass.length - SPMaxLen < 0){
			alert("Minimum Password Length should be '"+ SPMaxLen +"' Characters")
			return(false);
		}else{
			if(PswComplexityChk(SPComplexity,pass))
				return(true);
			else{
				if(SPComplexity=="Medium")
				alert("Enter Password Which includes Alpha numeric Characters")
				if(SPComplexity=="High")
				alert("Enter Password Which includes Alpha numeric and Special Characters")				
				return(false);
			}
		}
		return(true);
   }
}

   
//Password Complexity function Validation
function PswComplexityChk(SPComplexity,PwsValue){
	var reqChars = "0123456789"
	if(SPComplexity == "Medium"){
		for(i=0;i<PwsValue.length;i++){
			if(reqChars.indexOf(PwsValue.charAt(i)) !=-1)
			break;
		}
		if(i==PwsValue.length)
		return(false);
	}
	
	if(SPComplexity == "High"){
		for(i=0;i<PwsValue.length;i++){
			if(reqChars.indexOf(PwsValue.charAt(i)) !=-1)
			break;
		}
		if(i==PwsValue.length)
		return(false);
		
		reqChars ="`~!@#$%^&*()-_=+[{]}\|,<.>/?"
		for(i=0;i<PwsValue.length;i++){
			if(reqChars.indexOf(PwsValue.charAt(i)) !=-1)
			break;
		}
		if(i==PwsValue.length)
		return(false);
	}
	return(true);
}
// -->
</SCRIPT>
</BODY>
</HTML>
