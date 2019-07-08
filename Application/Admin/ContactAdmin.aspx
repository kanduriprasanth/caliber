<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ContactAdmin.aspx.vb" Inherits="Admin.ContactAdmin" enableViewStateMac="False" %>
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
		
		<LINK href="../GlobalCls/calendar.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../GlobalCls/calendar.js" type="text/javascript"></script>
		<script type="text/javascript">
		
			if((window.name=="CaliberQAMS") || (window.name=="bodyFrame"))
			{
			    
			}
			else
			{
			    window.navigate("../index.aspx")
            }
            
		document.oncontextmenu=new Function("return false")
		</script>
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0" MS_POSITIONING="GridLayout">
		<form id="f1" name="f1" method="post" runat="server">
			<uc1:header id="Header1" runat="server"></uc1:header><asp:validationsummary id="ValidationSummary2" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:validationsummary><br>
			<TABLE class="MainTable" height="200" cellSpacing="0" cellPadding="0" width="500" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">Contact System Manager</TD>
				</TR>
				<TR>
					<TD>
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="SubHead">Message To System Manager</TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px"><asp:label id="Label1" Width="80" Runat="server">User ID</asp:label><asp:textbox id="UserName" Width="200" Runat="server" MaxLength="25" CssClass="TxtCls" TextMode=Password
										EnableViewState="True"></asp:textbox><asp:requiredfieldvalidator id="RFV1" Runat="server" ErrorMessage="Enter User ID" ControlToValidate="UserName">*</asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px"><asp:label id="Label2" Width="80" Runat="server">Subject</asp:label><asp:dropdownlist id="Subject" Width="200" Runat="server" EnableViewState="true"></asp:dropdownlist><asp:requiredfieldvalidator id="Requiredfieldvalidator1" Runat="server" ErrorMessage="Select Subject"
										ControlToValidate="Subject">*</asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px"><asp:label id="Label3" Runat="server">Message:</asp:label><asp:requiredfieldvalidator id="Requiredfieldvalidator2" Runat="server" ErrorMessage="Enter Message"
										ControlToValidate="Message">*</asp:requiredfieldvalidator><br>
									<asp:textbox onkeypress="taLimit()" id="Message" onkeyup="taCount()" Width="465" Runat="server"
										CssClass="TxtCls" TextMode="MultiLine" Rows="4"></asp:textbox></TD>
							</TR>
						</TABLE>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot"><asp:textbox id="LoginID" style="DISPLAY: none" Width="0" Runat="server" Height="0"></asp:textbox><asp:button id="btnSubmit" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							runat="server" Width="60" CssClass="ButCls" Text="Submit"></asp:button>
					</TD>
				</TR>
			</TABLE>
		</form>
		<script language="javascript">
		
		
		function cancelF11() {
		if (window.event && window.event.keyCode == 122) {
			alert("Function key F11 cannot accessed")
			window.event.keyCode = 8;
			window.event.cancelBubble = true;
			window.event.returnValue = false;
			return false;
			
		}
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
	 
	   //TEXTAREA VALIDATIONS FOR THE LENGHT
		var taMaxLength = 200
		function taLimit() {
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		}

		function taCount() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength*1){
				taObj.value=taObj.value.substring(0,taMaxLength*1);
				alert("Characters exceeding limit\nMaximum Lenght: "+ taMaxLength +" Chars")
			}
			//if (visCnt) visCnt.innerText=taObj.maxLength-taObj.value.length;
		}	
		
		</script>
		<SCRIPT LANGUAGE="javascript" FOR="document" EVENT="onkeydown">

 cancelF11()

		</SCRIPT>
	</body>
</HTML>
