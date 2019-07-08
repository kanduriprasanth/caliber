<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="CaliberCalender.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="UserEnrolment.aspx.vb" Inherits="Admin.UserEnrolment" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Caliber QAMS</title>
		<%--<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">--%>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="calendar.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="calendar.js" type="text/javascript"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="f1" name="f1" method="post" runat="server">
			<uc1:Header id="Header1" runat="server"></uc1:Header>
			<br>
			<asp:ValidationSummary id="ValidationSumm" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<TABLE class="MainTable" height="200" cellSpacing="0" cellPadding="0" width="550" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">New User</TD>
				</TR>
				<TR>
					<TD>
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="SubHead">New User Enrollment Form</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<asp:Label Runat="server" id="Label1" style="PADDING-LEFT:5px" Width="140">First Name</asp:Label>
									<asp:textbox Runat="server" ReadOnly="True" ID="FirstName" CssClass="TxtCls" Width="200"></asp:textbox>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<asp:Label Runat="server" id="Label2" style="PADDING-LEFT:5px" Width="140">Last Name</asp:Label>
									<asp:textbox Runat="server" ReadOnly="True" ID="LastName" CssClass="TxtCls" Width="200"></asp:textbox>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD" id="CCTD">
									<asp:Label Runat="server" id="Label3" style="PADDING-LEFT:5px" Width="140">Date of Birth</asp:Label>
									<asp:Label Runat="server" id="Label14" style="PADDING-LEFT:0px" Width="200">
										<uc1:CaliberCalender id="CaliberCalender1" runat="server" Width="200" ></uc1:CaliberCalender>
									</asp:Label>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<asp:Label Runat="server" id="Label6" style="PADDING-LEFT:5px" Width="140">Role / Title</asp:Label>
									<asp:textbox Runat="server" ID="Role" CssClass="TxtCls" Width="200" MaxLength="25"></asp:textbox>
									<asp:RequiredFieldValidator id="Requiredfieldvalidator10" runat="server" Display="Dynamic" ErrorMessage="Enter Role / Title"
										ControlToValidate="Role">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<asp:Label Runat="server" id="Label8" style="PADDING-LEFT:5px" Width="140">Employee ID</asp:Label>
									<asp:textbox Runat="server" ID="EMPID" CssClass="TxtCls" Width="200" MaxLength="25"></asp:textbox>
									<asp:RequiredFieldValidator id="Requiredfieldvalidator11" runat="server" Display="Dynamic" ErrorMessage="Enter Employee ID"
										ControlToValidate="EMPID">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<ASP:LABEL Runat="server" id="Label13" style="PADDING-LEFT:5px" Width="140">ID Card No.</ASP:LABEL>
									<ASP:TEXTBOX Runat="server" ID="SSN" CssClass="TxtCls" Width="200" MaxLength="20"></ASP:TEXTBOX>
								</TD>
							</TR>
							<TR Class="HideRow">
								<TD class="MainTD">
									<asp:Label Runat="server" id="Label4" style="PADDING-LEFT:5px" Width="140">Plant</asp:Label>
									<asp:TextBox runat=server CssClass="TxtCls" ID="PlantTxt" Width="200" ReadOnly=True></asp:TextBox>
																		
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<asp:Label Runat="server" id="Label5" style="PADDING-LEFT:5px" Width="140">Phone Extn.</asp:Label>
									<asp:textbox Runat="server" ID="Phone" CssClass="TxtCls" Width="200" MaxLength="20" onkeyup="chk()"></asp:textbox>
									<asp:RequiredFieldValidator id="Requiredfieldvalidator9" runat="server" Display="Dynamic" ErrorMessage="Enter Phone Extn."
										ControlToValidate="Phone">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<asp:Label Runat="server" id="Label7" style="PADDING-LEFT:5px" Width="140">Address</asp:Label>
									<asp:textbox Runat="server" ID="Address" CssClass="TxtCls" Height="40" Width="200" TextMode="MultiLine" onkeypress="taLimit()" onkeyup="taCount()"></asp:textbox>
									<asp:RequiredFieldValidator id="Requiredfieldvalidator1" runat="server" Display="Dynamic"  ErrorMessage="Enter Address"
										ControlToValidate="Address">*</asp:RequiredFieldValidator>
								
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<asp:Label Runat="server" id="Label9" style="PADDING-LEFT:5px" Width="140">E-Mail</asp:Label>
									<asp:textbox Runat="server" ID="EMail" CssClass="TxtCls" Width="200" MaxLength="40"></asp:textbox>
									<asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" ControlToValidate="EMail" ErrorMessage="Entered E-Mail is incorrect. E-Mail like: AAA@Caliberindia.com"
										Display="Dynamic" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
								</TD>
							</TR>
							<!-- No need for CLAPS-->
							<TR style="DISPLAY:none">
								<TD class="MainTD">
									<asp:checkbox Runat="server" ID="ChangePassword" CssClass="ChkCls" checked="True" Enabled="False"></asp:checkbox>
									<asp:Label Runat="server" id="Label10" style="PADDING-LEFT:5px" Width="140">Change Password</asp:Label>
								</TD>
							</TR>
							<!------------------------->
							<TR>
								<TD class="MainTD">
									<asp:Label Runat="server" id="Label11" style="PADDING-LEFT:5px" Width="140">New Password</asp:Label>
									<asp:textbox Runat="server" ID="NewPassword" CssClass="TxtCls" Width="200" TextMode="Password"
										MaxLength="25"></asp:textbox>
									<asp:RequiredFieldValidator id="Requiredfieldvalidator3" runat="server" Display="Dynamic" ErrorMessage="Enter New Password"
										ControlToValidate="NewPassword">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<asp:Label Runat="server" id="Label12" style="PADDING-LEFT:5px" Width="140">Retype Password</asp:Label>
									<asp:textbox Runat="server" ID="RetypePassword" CssClass="TxtCls" Width="200" TextMode="Password"
										MaxLength="25"></asp:textbox>
									<asp:RequiredFieldValidator id="Requiredfieldvalidator4" runat="server" Display="Dynamic" ErrorMessage="Enter Retype Password"
										ControlToValidate="RetypePassword">*</asp:RequiredFieldValidator>
									<asp:CompareValidator id="CompareValidator1" runat="server" ControlToValidate="RetypePassword" Display="Dynamic"
										ErrorMessage="Retype Password should match with New Password" ControlToCompare="NewPassword">*</asp:CompareValidator>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
						<asp:TextBox ID="LoginID" Runat="server" Height="0" Width="0" style="DISPLAY:none"></asp:TextBox>
						<asp:button id="btnSubmit" runat="server" Text="Submit" CssClass="ButCls" onMouseOver="this.className='ButOCls'"
							onmouseout="this.className='ButCls'" Width="60"></asp:button>
						<input class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="reset" value="Reset" style="DISPLAY:none">
					</TD>
				</TR>
			</TABLE>
			<asp:TextBox ID="SPMaxLen" Runat="server" ReadOnly="True" Width="0" Height="0" style="DISPLAY:none"></asp:TextBox>
			<asp:TextBox ID="SPComplexity" Runat="server" ReadOnly="True" Width="0" Height="0" style="DISPLAY:none"></asp:TextBox>
			<asp:TextBox ID="PlantHid" Runat="server"  CssClass="HideRow" ReadOnly="True" Width="0" Height="0"></asp:TextBox>
			<asp:CustomValidator ControlToValidate="NewPassword" Runat="server" ID="CustValidation1" ClientValidationFunction="ClientValidate"
				 ErrorMessage="Invalid New Password Entry" Display="None"></asp:CustomValidator>
		</form>
		<script language="vbscript">
<!--

   Sub ClientValidate(source, arguments)
		Dim SPMaxLen,SPComplexity
		SPMaxLen = document.getElementById("SPMaxLen").value
				
		SPComplexity = document.getElementById("SPComplexity").value
		
		if (Len(arguments.Value) - SPMaxLen < 0) then
			'MsgBox "Minimum Password Length should be '"& SPMaxLen &"' Characters",vbExclamation,"CaliberLIMS"
			source.errormessage="Minimum Password Length should be "+ SPMaxLen +" Characters"
			arguments.IsValid=false
		else
			if PswComplexityChk(SPComplexity,arguments.Value) then
				arguments.IsValid=true
			else
				if SPComplexity="Medium" then
				source.errormessage="Enter Password Which includes Alpha numeric Characters"
				'MsgBox "Enter Password Which includes Alpha numeric Characters",vbExclamation,"CaliberLIMS"
				elseif SPComplexity="High" then
				source.errormessage="Enter Password Which includes Alpha numeric and Special Characters"
				'MsgBox "Enter Password Which includes Alpha numeric and Special Characters",vbExclamation,"CaliberLIMS"
				end if
				arguments.IsValid=false
			end if
		end if
   End Sub
' -->
		</script>
		<script language="javascript">
<!--
//Password Complexity function Validation
function PswComplexityChk(SPComplexity,PwsValue){
	var reqChars = "0123456789"
	var reqChars1 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPWRSTUVWXYZ"
	var reqChars2 ="`~!@#$%^&*()-_=+[{]}\|,<.>/?"
	
	if(SPComplexity == "Medium"){
		for(i=0;i<PwsValue.length;i++){
			if(reqChars.indexOf(PwsValue.charAt(i)) !=-1)
			break;
		}
		if(i==PwsValue.length)
		return(false);
		for(i=0;i<PwsValue.length;i++){
			if(reqChars1.indexOf(PwsValue.charAt(i)) !=-1)
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
		
		for(i=0;i<PwsValue.length;i++){
			if(reqChars2.indexOf(PwsValue.charAt(i)) !=-1)
			break;
		}
		if(i==PwsValue.length)
		return(false);

		for(i=0;i<PwsValue.length;i++){
			if(reqChars1.indexOf(PwsValue.charAt(i)) !=-1)
			break;
		}
		if(i==PwsValue.length)
		return(false);
	}
	return(true);
}

function chk()
{
	var txt=document.getElementById('Phone').value;
	var len=txt.length;
	var flag=true;
	var str=txt.charAt(len-1);
	var i;
	if( str!="+" && str!=" ")
	{	
		for(i=0;i<10;i++)
			if(str==i)
			{
				flag=false;
				break;
			}
		if(flag)
		{
			alert("Invalid Phone Extn.");
			document.getElementById('Phone').value="";
			document.getElementById('Phone').focus;
		}
	}
		
	
}
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
				alert("Invalid Phone Number");
				document.getElementById('Phone').value="";
				document.getElementById('Phone').focus;
			}
	
		}
		
		var taMaxLength = 250
		function taLimit() {
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		}

		function taCount() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength*1){
				taObj.value=taObj.value.substring(0,taMaxLength*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Chars")
			}
			//if (visCnt) visCnt.innerText=taObj.maxLength-taObj.value.length;
		}		
		
// -->
		</script>
		<script language="vbscript">
 function VbMfgDateValid
 
      MfgDate=document.getElementById("CaliberCalender1_CalDateVal").value
        VbMfgDateValid=0
     if MfgDate="" then exit function
	  ThisMonth = <%=ThisMonth%>
	  ThisYear = <%=ThisYear%>
	  ThisDay = <%=ThisDay%>
	  Today=dateSerial(ThisYear,ThisMonth,ThisDay)
	  MfgDateAry=split(MfgDate,"/")
	  MfgDateVal=dateSerial(MfgDateAry(2),MfgDateAry(0),MfgDateAry(1))
	
	DDgap=DateDiff("d",Today,MfgDateVal)
	if DDgap>0 then
		VbMfgDateValid=1
	 end if
	 
	 'Minimum age validation
	  ThisMonth = <%=ThisMonth%>
	  ThisYear = <%=ThisYear%>
	  ThisYear=  ThisYear-15
	  ThisDay = <%=ThisDay%>
	  Today=dateSerial(ThisYear,ThisMonth,ThisDay)
	  MfgDateAry=split(MfgDate,"/")
	  MfgDateVal=dateSerial(MfgDateAry(2),MfgDateAry(0),MfgDateAry(1))
	  DDgap=DateDiff("d",Today,MfgDateVal)
	if DDgap>0 then
		VbMfgDateValid=2
	 end if
	 
	'Maximam  Age Validation	 
	  ThisMonth = <%=ThisMonth%>
	  ThisYear = <%=ThisYear%>
	  ThisYear=  ThisYear-75
	  ThisDay = <%=ThisDay%>
	  Today=dateSerial(ThisYear,ThisMonth,ThisDay)
	  MfgDateAry=split(MfgDate,"/")
	  MfgDateVal=dateSerial(MfgDateAry(2),MfgDateAry(0),MfgDateAry(1))
	  DDgap=DateDiff("d",Today,MfgDateVal)
	if DDgap<0 then
		VbMfgDateValid=3
	 end if 
	 		 

 End function
  //-->
		</script>
		<SCRIPT language="javascript">
	   //TEXTAREA VALIDATIONS FOR THE LENGHT
		var taMaxLength = 250
		function taLimit() {
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		}

		function taCount() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength*1){
				taObj.value=taObj.value.substring(0,taMaxLength*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Chars")
			}
			//if (visCnt) visCnt.innerText=taObj.maxLength-taObj.value.length;
		}		
		</SCRIPT>
	</body>
			
	<script language="javascript">
	<!--
function MfgDateValid(src,args)
{
  var Flag= VbMfgDateValid();
  if(Flag==0)
  {
	args.IsValid=true;
  	Page_IsValid=true;
  }
   
  else if(Flag==1)
  {
    src.errormessage ="InValid Date Selection"
    args.IsValid=false;
  	Page_IsValid=false;
  }
  
  else if(Flag==2)
  {
  	 src.errormessage ="Seem To be under aged, check & enter the correct date of birth"
  	 args.IsValid=false;
  	 Page_IsValid=false;
  }
  
  else if(Flag==3)
  {
  	 src.errormessage ="Seem to be over aged, Check & enter the correct date of birth"
  	 args.IsValid=false;
  	 Page_IsValid=false;
  }
}

//context menu
	//-->
		</script>

	
</HTML>
