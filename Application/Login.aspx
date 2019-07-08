<%@ Page Codebehind="Login.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="QAMS300BL.Login" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 strict//EN">
<html>
<head>
    <title>Caliber QAMS</title>

    <script language="JavaScript" src="JScript/DisableRightClick.js"><!--// --> </script>

    <script language="JavaScript" src="JScript/DisableViewSource.js"><!--// --> </script>

    <link rel="stylesheet" type="text/css" href="TRIMS.css">
    <style type="text/css">
.myBox
{
	position:fixed;
	border:solid black 0px;
	top:41%;
	left:48%;
	margin-top: -200px;
	margin-left: -330px;
	padding:20px;
	width: 700px;
	height: 420px;
	/*background: url(Images/Image2.bmp);*/
 }

</style>

    <script language="javascript">
			//window.navigate("Admin/syslogin.aspx")
			if(window.name!="CaliberQAMS")
			  window.navigate("index.aspx")
    </script>

</head>
<body onload="document.getElementById('txtUserId').focus()">
    <form runat="server" method="post" id="Form1">
        <div class="myBox" align="center">
            <table border="0" align="center" cellspacing="0" cellpadding="0" width="103%" height="113%">
                <tr>
                    <td align="center" style="background-image: url(Images/BgImage.png)">
                        <table border="0" cellspacing="0" cellpadding="0" style="width: 400px;">
                            <tr>
                                <td align="center">
                                    <img src="Images/QMS_Title.png" />
                                    <br />
                                    <span style="font-size: 10pt; color: white; font-family: Tahoma,Times New Roman;
                                        letter-spacing: 1px">Licensed To: < Company Name > </span>
                                    <br />
                                     <span style="font-size: 10pt; color: white; font-family: Tahoma,Times New Roman;
                                        letter-spacing: 1px">Version: 3.0.0</span>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <span style='color: white; font-family: Tahoma,Arial; font-size: 10pt; width: 75px;
                                        text-align: right'>User ID:</span>&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox TextMode="Password"
                                            Width="200px" CssClass="form-login" runat="server" MaxLength="25" ID="txtUserId"
                                            title="Enter User ID"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter User ID"
                                        ControlToValidate="txtUserId" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <span style='color: white; font-family: Tahoma,Arial; font-size: 10pt; width: 75px;
                                        text-align: right'>Password:</span>
                                    <asp:TextBox TextMode="Password" Width="200px" CssClass="form-login" runat="server"
                                        MaxLength="25" ID="txtPassword" title="Enter Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="Requiredfieldvalidator2" runat="server" ErrorMessage="Enter Password"
                                        ControlToValidate="txtPassword" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="HideRow">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <span style='font-size: 10pt; width: 75px; color: white; font-family: Tahoma,Arial;
                                        text-align: right'><font color="white">Language:</font></span>
                                    <asp:DropDownList ID="LanguageDdl" runat="server" CssClass="DDL-login" AccessKey="R">
                                        <asp:ListItem Value="0" Selected="true">English</asp:ListItem>
                                        <asp:ListItem Value="1">Arabic</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <span style='font-size: 10pt; width: 75px; color: white; font-family: Tahoma,Arial;
                                        text-align: right'><font color="white">Domain:</font></span>
                                    &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DomainDDL" runat="server" CssClass="DDL-login" AccessKey="D">
                                    <asp:ListItem Text="Local" Value="1" Selected="True"></asp:ListItem>
                                   <asp:ListItem Text="vision.com" Value="vision\"></asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td style='padding-top: 2px;'>
                                    <asp:Button onMouseOver="this.className='ButOCls'" Class='ButCls' onMouseOut="this.className='ButCls'"
                                        runat="server" ID="btnLogin" Text=" Login "></asp:Button>
                                    <input type="button" onmouseover="this.className='ButOCls'" class='ButCls' onmouseout="this.className='ButCls'"
                                        onclick="window.self.close()" value=' Cancel '>
                                    <br />
                                    <asp:Label ID="lblErrorDisplay" runat="server" ForeColor="white" Style='font-family: Tahoma,Arial;
                                        font-size: 8pt;'></asp:Label>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td style='padding-top: 2px;'>
                                    <a href="Admin/UserSignUp.aspx">
                                        <img src="Images/newusersignup.png" class="newusrsgnupBtnCls" border="0"></a>
                                    <a href="Admin/ContactAdmin.aspx">
                                        <img src="Images/systemmanager.png" class="ContSysAdmnBtnCls" border="0"></a>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                ShowSummary="False"></asp:ValidationSummary>
        </div>
    </form>

    <script language="javascript">
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
	        pageURL= str + "login.aspx" //End of Add
			
	    var yval = screen.availHeight  
		var xval = screen.availWidth
		var features = "height="+ yval +",width="+ xval +",toolbar=no,resizable=yes,menubar=no,status=yes,scrollbars=yes,top=0,left=0"
		window.open(pageURL,'CaliberQAMS',features)
	}
<!--
	// keycode for F11 function
	function cancelF11() {
		if (window.event && window.event.keyCode == 122) {
			alert("Function key F11 cannot accessed")
			window.event.keyCode = 8;
			window.event.cancelBubble = true;
			window.event.returnValue = false;
			return false;
		}
	}
	function cancelBack() {
		//If tried to go back using back space from the document.
		if (window.event && window.event.keyCode == 8 && window.event.srcElement.name!="txtUserId" && window.event.srcElement.name!="txtPassword") {
			alert("Not allowed")
			window.event.cancelBubble = true;
			window.event.returnValue = false;
			return false;
			//window.close()
		}
		//If tried to go back using combination of "Alt" key
		if (window.event && window.event.keyCode == 18)
		{
			alert("Not allowed")
			window.event.cancelBubble = true;
			window.event.returnValue = false;
			return false;
		}
	}
	
//-->
    </script>

    <script type="text/javascript" for="document" event="onkeydown">
<!--
 cancelBack()
 cancelF11()
//-->
    </script>

</body>
</html>
