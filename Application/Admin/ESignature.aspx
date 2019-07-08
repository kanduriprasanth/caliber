<%@ Page Language="vb" AspCompat="true" AutoEventWireup="false" Codebehind="ESignature.aspx.vb"
    Inherits="Admin.ESignature" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Caliber QAMS</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    
    <link href="../TRIMS.css" rel="stylesheet">

    <script language="javascript" src='../JScript/Common.js'></script>

    <style>
			.strip 
			{
			 filter:progid:DXImageTransform.Microsoft.Gradient(startColorstr='#555FAD', endColorstr='#9DADE0', gradientType='0');
			 Height:20px;Color:#FFFFFF;font-family:Trebuchet MS,Arial;font-size:10pt;Font-Weight:Bold;Padding-Left:5px;padding-right:5px
			}
		</style>
</head>
<body ms_positioning="GridLayout" onload="fnOnLoad()" leftmargin="0" topmargin="0"
    bottommargin="0" rightmargin="0" style="background-image: url(Images/login_bg.png);
    background-repeat: repeat">
    <form id="Form1" method="post" runat="server">
        <asp:ValidationSummary ID="vsm1" runat="server" ShowMessageBox="True" ShowSummary="False">
        </asp:ValidationSummary>
        <fieldset id="asd" runat="server" style="border-color: white">
            <legend style="font-weight: bold; font-family: Verdana; color: Black; font-size: 10pt;">
                Electronic Signature</legend>
            <table cellspacing="0" cellpadding="0" width="450" height="99%" align="center">
                <%--<TR>
					<!--<TD style='PADDING-RIGHT:5px;PADDING-LEFT:5px;PADDING-BOTTOM:2px;PADDING-TOP:2px;BACKGROUND-COLOR:#7386C3'>
						<SPAN style='FONT-SIZE:10pt; COLOR:white; FONT-FAMILY:Trebuchet MS,Arial'>Electronic 
							Signature</SPAN></TD>-->
					<td class="strip">Electronic Signature</td>
				</TR>--%>
                <tr>
                    <td style='height: 1px'>
                    </td>
                </tr>
                <tr>
                    <td style='padding-right: 15px; padding-left: 15px; padding-bottom: 15px; padding-top: 15px'>
                        <table height="100%" width="100%" cellspacing="0" cellpadding="0" align="center"
                            border="0" style='border-right: #999999 1px solid; padding-right: 5px; border-top: #999999 1px solid;
                            padding-left: 5px; font-size: 8pt; padding-bottom: 5px; border-left: #999999 1px solid;
                            padding-top: 5px; border-bottom: #999999 1px solid; font-family: Tahoma,ms serif;
                            background-image: url(IMAGES/tabon_new.png);'>
                            <tr>
                                <td align="center">
                                    <span style='font-weight: bold; color: #000000'>Meaning of this Electronic Signature</span></td>
                            </tr>
                            <tr>
                                <td style='padding-right: 1px; padding-bottom: 2px; padding-top: 2px' align="center">
                                    <span style='width: 95px; text-align: right'>Activity:</span> <span style='width: 250px;
                                        text-align: left' id="Activity">---</span>
                                </td>
                            </tr>
                            <tr>
                                <td style='padding-bottom: 2px; padding-top: 2px' align="center">
                                    <span style='width: 120px; text-align: right'>Signed By:</span>
                                    <asp:Label ID="lblUserName" runat="server" Style='text-align: left' Width="250"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <span style='width: 90px; text-align: right'>User ID:</span> <span style='width: 200px;
                                        text-align: left'>
                                        <input type="password" class="TxtCls" value='<%=Session("LoginName")%>' readonly></span>
                                    <br>
                                    <span style='width: 90px; text-align: right'>E-Sign:</span> <span style='width: 200px;
                                        text-align: left'>
                                        <asp:TextBox ID="txtPassword" runat="server" CssClass="TxtCls" TextMode="Password"
                                            MaxLength="25"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="Requiredfieldvalidator3" ControlToValidate="txtPassword"
                                            runat="server" ErrorMessage="Enter E-Sign">*</asp:RequiredFieldValidator>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style='padding-bottom: 10px; padding-top: 2px'>
                                    <asp:Button runat="server" Text="OK" CssClass="ButCls" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" ID="btnLogin" style="width:60px"></asp:Button>
                                    <input type="button" value="Cancel" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
                                     class="ButCls" onclick="fnCloseWin()" style="width:60px"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <asp:TextBox ID="IsValidLogin" runat="server" Width="0" Height="0" Style='display: none'></asp:TextBox>
            <asp:Panel Visible="False" ID="Panel1" runat="server">
                <div style="border-right: #999999 1px solid; border-top: #999999 1px solid; padding-left: 5px;
                    z-index: 1000; left: 132px; border-left: #999999 1px solid; width: 255px; border-bottom: #999999 1px solid;
                    position: absolute; top: 15px; height: 20px; background-color: lightyellow">
                    <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td>
                                <img src="../Images/ExlamatrySmall.gif"></td>
                            <td>
                                <span style="padding-left: 2px; font-size: 8pt; color: red; font-family: Arial">
                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal></span></td>
                        </tr>
                    </table>
                </div>
            </asp:Panel>
        </fieldset>
    </form>

    <script language="javascript">
<!--
	function fnCloseWin(){
		opener.fnIsESignValid(false);		
		window.close()
	}
	
	function fnOnLoad(){
		//Valid
		 
		if(document.getElementById('IsValidLogin').value=="1"){
			opener.fnIsESignValid(true);			
			window.close()
		}
		//Wrong attempts exceeds
		if(document.getElementById('IsValidLogin').value=="2"){
			opener.fnIsESignValid(false);
			
			//window.open('WrongAttempts.aspx?Type=ESign','CaliberLIMS')
			window.close()
			opener.fnOpenConAdm();
		}
		Activity.innerText = opener.fnActivity();
		document.getElementById('txtPassword').focus();
	}
	
	function fnRelogin(){
			
		window.close();
		opener.fnClsWin();
			
	}
		
	// keycode for F11 function
	function cancelF11() {
		if (window.event && window.event.keyCode == 122) {
			alert("Key F11 is not Accessed")
			window.event.keyCode = 8;
		}
		// keycode for backspace

        if (window.event && window.event.keyCode == 8) {
			window.event.cancelBubble = true;
			window.event.returnValue = false;
			return false;
		}
	}
//-->
    </script>

    <script language="javascript" for="document" event="onkeydown">
<!--
 cancelF11()
//-->
    </script>

</body>
</html>
