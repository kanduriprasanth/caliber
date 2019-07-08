<%@ Page Language="vb" AutoEventWireup="false" Codebehind="UserReg.aspx.vb" Inherits="Admin.NewUser" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>UserReg</title>
		<%--<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">--%>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
        <script language="javascript" src='../JScript/jquery.min.js'></script>
        <script language="javascript" src='../JScript/Common.js'></script>
		
		<STYLE>.hide { DISPLAY: none; BACKGROUND-COLOR: #cccccc }
	.show { DISPLAY: block; BACKGROUND-COLOR: #cccccc }
	INPUT.down { BORDER-TOP-WIDTH: 1px; BACKGROUND-POSITION: center 50%; BORDER-LEFT-WIDTH: 1px; BACKGROUND-IMAGE: url(../Images/down.jpg); BORDER-BOTTOM-WIDTH: 1px; WIDTH: 16px; HEIGHT: 16px; BORDER-RIGHT-WIDTH: 1px }
	INPUT.up { BORDER-TOP-WIDTH: 1px; BACKGROUND-POSITION: center 50%; BORDER-LEFT-WIDTH: 1px; BACKGROUND-IMAGE: url(../Images/up.jpg); BORDER-BOTTOM-WIDTH: 1px; WIDTH: 16px; HEIGHT: 16px; BORDER-RIGHT-WIDTH: 1px }
	.chkCls { BORDER-RIGHT: 2px groove; BORDER-TOP: 2px groove; BORDER-LEFT: 2px groove; WIDTH: 18px; BORDER-BOTTOM: 2px groove; HEIGHT: 18px; BACKGROUND-COLOR: orange }
	.MainTDOver { PADDING-LEFT: 2px; FONT-SIZE: 9pt; FONT-FAMILY: Arial; BACKGROUND-COLOR: #ffdab9 }
		</STYLE>
		
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="f1" name="f1" method="post" runat="server">
			<asp:ValidationSummary id="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<TABLE class="MainTable" height="200" cellSpacing="0" cellPadding="0" width="500" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead"><asp:Literal ID="MainHeadLtrl" Runat="server"></asp:Literal></TD>
				</TR>
				<TR>
					<TD>
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="SubHead" ><asp:Literal ID="SubHeadLtrl" Runat="server"></asp:Literal></TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<asp:Label Runat="server" id="CatLbl" style="PADDING-LEFT:5px" Width="140"></asp:Label>
									<asp:DropDownList Runat="server" ID="CategoryList" AutoPostBack="True" Width="200">
										<asp:ListItem Value=''>[Select Category]</asp:ListItem>
									</asp:DropDownList>
									<asp:RequiredFieldValidator id="CatErrMsg" runat="server" Display="Dynamic" 
										ControlToValidate="CategoryList">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<asp:Label Runat="server" id="RoleLbl" style="PADDING-LEFT:5px" Width="140"></asp:Label>
									<asp:DropDownList Runat="server" ID="RoleList" AutoPostBack="True" Width="200">
										<asp:ListItem Value=''>[Select Role]</asp:ListItem>
									</asp:DropDownList>
									<asp:RequiredFieldValidator id="RoleErrMsg" runat="server" Display="Dynamic" 
										ControlToValidate="RoleList">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<asp:Label Runat="server" id="FNameLbl" style="PADDING-LEFT:5px" Width="140"></asp:Label>
									<asp:textbox Runat="server" ID="FirstName" CssClass="TxtCls" Width="200" MaxLength=40></asp:textbox>
									<asp:RequiredFieldValidator id="FNameErrMsg" runat="server" Display="Dynamic" 
										ControlToValidate="FirstName">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<asp:Label Runat="server" id="LNameLbl" style="PADDING-LEFT:5px" Width="140"></asp:Label>
									<asp:textbox Runat="server" ID="LastName" CssClass="TxtCls" Width="200" MaxLength=40></asp:textbox>
									<asp:RequiredFieldValidator id="LNameErrMsg" runat="server" Display="Dynamic" 
										ControlToValidate="LastName">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<ASP:PANEL Runat="server" ID="Panel1">
								<TR>
									<TD class="MainTD" style="HEIGHT: 17px" colSpan="2">
										<asp:Label id="RprtToLbl" style="PADDING-LEFT: 5px" Width="140" Runat="server"></asp:Label>
										<asp:DropDownList id="ReportingTo" Width="200" Runat="server">
											<asp:ListItem Value=''>[Reporting To]</asp:ListItem>
										</asp:DropDownList></TD>
							</ASP:PANEL>
							<TR>
								<TD class="MainTD">
									<asp:Label Runat="server" id="UNameAlltdLbl" style="PADDING-LEFT:5px" Width="140"></asp:Label>
									<asp:textbox Runat="server" ID="UserName" CssClass="TxtCls" MaxLength="25" Width="200" ></asp:textbox>
									<asp:RequiredFieldValidator id="UNameAlltdErrMsg" runat="server" Display="Dynamic" 
										ControlToValidate="UserName">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR Class="HideRow">
								<TD class="MainTD">
									<asp:Label Runat="server" id="PlantLbl" style="PADDING-LEFT:5px" Width="140"></asp:Label>
									<asp:DropDownList ID="PlantDD" Runat="server" Width="200" ></asp:DropDownList>
									<asp:textbox Runat="server" ID="Plant" CssClass="HideRow" Width="200" MaxLength="40"></asp:textbox>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<asp:Label Runat="server" id="PswAlltdLbl" style="PADDING-LEFT:5px" Width="140"></asp:Label>
									<asp:textbox Runat="server" ID="PasswordTxt" CssClass="TxtCls" Width="200" TextMode="Password"
										MaxLength="25"></asp:textbox>
									<asp:RequiredFieldValidator id="PswAlltdErrMsg" runat="server" Display="Dynamic" 
										ControlToValidate="PasswordTxt">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<asp:Label Runat="server" id="RePswLbl" style="PADDING-LEFT:5px" Width="140"></asp:Label>
									<asp:textbox Runat="server" ID="RetypePassword" CssClass="TxtCls" Width="200" TextMode="Password"
										MaxLength="25"></asp:textbox>
									<asp:RequiredFieldValidator id="RePswErrMsg" runat="server" Display="Dynamic" 
										ControlToValidate="RetypePassword">*</asp:RequiredFieldValidator>
									<asp:CompareValidator id="RePswCValMsg" ControlToCompare="PasswordTxt" ControlToValidate="RetypePassword"
										text="*" runat="server" ></asp:CompareValidator>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
						<asp:button id="btnSubmit" runat="server" Text="Submit" CssClass="ButCls" onMouseOver="this.className='ButOCls'"
							onmouseout="this.className='ButCls'" Width="60"></asp:button>
						<input class="hide" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="reset" value="Reset" style='WIDTH:60px'>
					</TD>
				</TR>
			</TABLE>
			<ASP:PANEL Runat="server" ID="Panel2" CssClass="HideRow">
				<TABLE style="BORDER-RIGHT: #999999 1px solid; BORDER-TOP: #999999 1px solid; MARGIN-TOP: 10px; BORDER-LEFT: #999999 1px solid; BORDER-BOTTOM: #999999 1px solid"
					cellSpacing="0" cellPadding="0" width="500" align="center" border="0">
					<TR>
						<TD class="MainTD"  style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; COLOR: red; PADDING-TOP: 10px"> 
							<asp:Literal id="FootNoteLtrl" Runat="server"></asp:Literal> <A id="NavGProfile"  runat="server" href="GProfile.aspx"></A></TD>
					</TR>
				</TABLE>
			</ASP:PANEL>
			<asp:table id="tab1" CssClass="HideRow" Runat="server">
				<asp:TableRow>
					<asp:TableCell Runat="server" ID="CVD" CssClass="HideRow" ForeColor="#ffffff"></asp:TableCell>
				</asp:TableRow>
			</asp:table>
			
			<asp:TextBox ID="SecProfUsrNameMinLen" Runat="server" ReadOnly="True" Width="0" Height="0" style="DISPLAY:none"></asp:TextBox>
            
            <asp:CustomValidator ControlToValidate="UserName" Runat="server" ID="CustValidation1" ClientValidationFunction="ClientValidate"
				   Display="None"></asp:CustomValidator>
				 
		</form>
		<script language="vbscript">
<!--
'   Sub ClientValidate(source, arguments)
'		Dim SecProfUsrNameMinLen
'		SecProfUsrNameMinLen = document.getElementById('SecProfUsrNameMinLen').value
'		
'		if (Len(arguments.Value) - SecProfUsrNameMinLen < 0) then
'			MsgBox "Minimum UserId Allotted Length should be '"& SecProfUsrNameMinLen &"' Characters",vbExclamation,"CaliberLIMS"
'			arguments.IsValid=false
'		end if
'   End Sub
' -->
		</script>
	</body>
	<script language="javascript">
		//<!--
	
		 function ClientValidate(src,args){
		 		var SecProfUsrNameMinLen
		 		SecProfUsrNameMinLen = document.getElementById('SecProfUsrNameMinLen').value
		 	    if ((args.Value).length - SecProfUsrNameMinLen < 0) 
		 	    {
			      src.errormessage ="Minimum User Name Allotted Length should be " + SecProfUsrNameMinLen + " Characters"
                  args.IsValid=false;
  	              Page_IsValid=false;
		 	    }


		 }
		 
		 if (document.layers){

document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;

}else{

document.onmouseup=clickNS;document.oncontextmenu=clickIE;

document.oncontextmenu=new Function("return false")

document.body.oncontextmenu= contextMenu

document.body.onselectstart=DisableCopy

}
   
//context menu	

		/*Allows only numericals from 0 - 9 characters.*/
/*''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
function fnOnlyNumericals(){
 
	var KC = window.event.keyCode
	if(KC<48 || KC==64 || KC==94 || KC==95 || KC==124 || KC==126)
	{
		
	window.event.cancelBubble = true;	
	return(false);
	}
	
}

function ValUnwantedChar1(Content,Type)
{
 
 var UnallowedChar = " ";
	
	var NotValidChar =false;
	for(var k=0;k<UnallowedChar.length;k++)
	{
	    if(Content.indexOf(UnallowedChar[k]) != -1 )
	    {
	        NotValidChar = true;
	        break;
	    }
	}
	return NotValidChar
}

function ValUnwantedChar(Content,Type)
{
 
 var UnallowedChar = new Array()
	UnallowedChar = ((Type == 0) ? "<,>, " : "<,>") .split(",")
	var NotValidChar =false;
	for(var k=0;k<UnallowedChar.length;k++)
	{
	    if(Content.indexOf(UnallowedChar[k]) != -1 )
	    {
	        NotValidChar = true;
	        break;
	    }
	}
	return NotValidChar
}  
function fnOnlyNumericals1(src,args)
{
	src.errormessage = ''
	var RetVal = document.getElementById("UserName").value
	
    var str = ''
	
	if(ValUnwantedChar(document.getElementById("FirstName").value,1) == true)
	{
        str = "'<' '>' characters are not allowed in First Name" + "\n- "

	}
	if(ValUnwantedChar(document.getElementById("LastName").value,1) == true)
	{
        str += "'<' '>' characters are not allowed in Last Name" + "\n- "
	}
	if(ValUnwantedChar(document.getElementById("UserName").value,0) == true)
	{
        str += "Spaces or '<' '>' characters are not allowed in User Name Allotted" + "\n- "
	}
	
	if(str!="")
    {	
        src.errormessage=str.substring(0,str.length-3)
        args.IsValid=false;
        Page_IsValid=false;  	
    }
    else
    {
        Page_IsValid=true;
        args.IsValid=true;
    }
 }

//	var UnallowedChar = new Array()
//	UnallowedChar = "<,>, ".split(",")
//	var NotValidChar =false;
//	for(var k=0;k<UnallowedChar.length;k++)
//	{
//	    if(RetVal.indexOf(UnallowedChar[k]) != -1 )
//	    {
//	        NotValidChar = true;
//	        break;
//	    }
//	}
	
//	if(NotValidChar == true)
//	{
//	    src.errormessage ="Spaces or '<' '>' characters are not allowed in User ID Allotted"
//	    Page_IsValid=false;
//        args.IsValid=false;
//    }
//    else
//    {
//        Page_IsValid=true;
//        args.IsValid=true;
//    }
	

/*''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
		
		 
		
		
		function Test(src,args){
			var Flag= chk() ;
			if(Flag==false){
					args.IsValid=false;
  					Page_IsValid=false;
  							}
  								}
		function chk()
		{
			//alert("fnmae:"+document.getElementById('FirstName').value);
			//alert("lnmae:"+document.getElementById('LastName').value);
			
			if(document.getElementById('LastName').value == document.getElementById('FirstName').value)
			{
				document.getElementById('LastName').value="";
				document.getElementById('LastName').focus();
				return false;
			}
			return true;
		}
		//-->
		
//Function to validate Minimum length of User Id		
//function FnUsrNamMinLengthValid(src,args)
//{
//    src.errormessage = ''
//    if((document.getElementById("UserName").value != '') && (document.getElementById("UserName").value.length < <%=ConfigurationManager.AppSettings("UsrIdMinLength")%>))
//    {
//        src.errormessage = "User Name Allotted Text should be Greater Than Or Equal To <%=ConfigurationManager.AppSettings("UsrIdMinLength")%> Characters";
//        Page_IsValid=false;
//        args.IsValid=false;
//    }
//    else
//    {
//        Page_IsValid=true;
//        args.IsValid=true;
//    }
//}
    </script>
</HTML>
