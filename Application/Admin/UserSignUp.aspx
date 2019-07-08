<%@ Page Language="vb" AutoEventWireup="false" Codebehind="UserSignUp.aspx.vb" Inherits="Admin.UserSignUp" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Caliber QAMS</title>
		<%--<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">--%>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
        <script language="javascript" src='../JScript/Common3.js'></script>
		
	</HEAD>
	<body MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<form id="f1" name="f1" method="post" runat="server">
			<uc1:Header id="Header1" runat="server"></uc1:Header>
			<br>
			<asp:ValidationSummary id="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<TABLE class="MainTable" height="200" cellSpacing="0" cellPadding="0" width="500" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead"><asp:Literal ID="MainHeadLtrl" Runat="server"></asp:Literal> </TD>
				</TR>
				<TR>
					<TD style="PADDING-BOTTOM:0px">
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="SubHead"><asp:Literal ID="SubHeadLtrl" Runat="server"></asp:Literal></TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<asp:Label Runat="server" id="CatLbl" style="PADDING-LEFT:5px" Width="140"></asp:Label>
									
									<asp:DropDownList Runat="server" ID="CategoryList" AutoPostBack="True" Width="200">
										<asp:ListItem Value=''>[Select Category]</asp:ListItem>
									</asp:DropDownList>
									<asp:RequiredFieldValidator id="CatErrMsg" runat="server" Display="Dynamic" ErrorMessage="Select Category"
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
									<asp:Label Runat="server" id="AlltdUserNameLbl" style="PADDING-LEFT:5px" Width="140">  </asp:Label>
									<asp:textbox Runat="server" ID="UserName" CssClass="TxtCls" Width="200" MaxLength="25" TextMode="Password"></asp:textbox>
									<asp:RequiredFieldValidator id="AlltdUserNameErrMsg" runat="server" Display="Dynamic" 
										ControlToValidate="UserName">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD">
									<asp:Label Runat="server" id="AlltdPswLbl" style="PADDING-LEFT:5px" Width="140"> </asp:Label>
									<asp:textbox Runat="server" ID="Password" CssClass="TxtCls" Width="200" TextMode="Password" MaxLength="25"></asp:textbox>
									<asp:RequiredFieldValidator id="AlltdPswErrMsg" runat="server" Display="Dynamic" 
										ControlToValidate="Password">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
						<asp:button id="btnSubmit" runat="server" Text="Submit" CssClass="ButCls" onMouseOver="this.className='ButOCls'"
							onmouseout="this.className='ButCls'"></asp:button>
						<input class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="reset" value="Reset" style="DISPLAY:none">
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
	<SCRIPT language="javascript">
	
	
			if((window.name=="CaliberQAMS") || (window.name=="bodyFrame"))
			{
			    
			}
			else
			{
			    window.navigate("../index.aspx")
            }
	if(window.history.length==0)
	{
	
	    var pageURL=location.href + '' //Added to Resolve the issue regarding  shorcut access of LIMS
        var PathAry= new Array()
        PathAry=pageURL.split('/')
        var AryLength= (PathAry.length)-2
        var i
	    var str=''
	    for(i=0; i<AryLength;i++)
	    {
		 
	        str=str + PathAry[i]+'/'
	    }
	        pageURL= str + "Index.aspx" //End of Add
			
	    var yval = screen.availHeight  
		var xval = screen.availWidth
		var features = "height="+ yval +",width="+ xval +",toolbar=no,resizable=yes,menubar=no,status=yes,scrollbars=yes,top=0,left=0"
		window.open(pageURL,'CaliberLIMS',features)
	}
	    
	
	//For Disabling Right Click
//contextMenu


//Disable right click

//var message="";

/////////////////////////////////////

function cancelF11() {
		if (window.event && window.event.keyCode == 122) {
			alert("Function key F11 cannot accessed")
			window.event.keyCode = 8;
			window.event.cancelBubble = true;
			window.event.returnValue = false;
			return false;
			
		}
	}		
		</SCRIPT>
		
		<SCRIPT LANGUAGE="javascript" FOR="document" EVENT="onkeydown">

 cancelF11()

		</SCRIPT>
</HTML>
