<%@ Page Language="vb" AutoEventWireup="false" Codebehind="SecurityProfile.aspx.vb" Inherits="Admin.SecurityProfile" %>
<%@ Register TagPrefix="uc1" TagName="ESignWebUC" Src="ESignWebUC.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title></title>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<STYLE>.hide { DISPLAY: none; BACKGROUND-COLOR: #cccccc }
	.show { DISPLAY: block; BACKGROUND-COLOR: #cccccc }
	INPUT.down { BORDER-TOP-WIDTH: 1px; BACKGROUND-POSITION: center 50%; BORDER-LEFT-WIDTH: 1px; BACKGROUND-IMAGE: url(../Images/down.jpg); BORDER-BOTTOM-WIDTH: 1px; WIDTH: 16px; HEIGHT: 16px; BORDER-RIGHT-WIDTH: 1px }
	INPUT.up { BORDER-TOP-WIDTH: 1px; BACKGROUND-POSITION: center 50%; BORDER-LEFT-WIDTH: 1px; BACKGROUND-IMAGE: url(../Images/up.jpg); BORDER-BOTTOM-WIDTH: 1px; WIDTH: 16px; HEIGHT: 16px; BORDER-RIGHT-WIDTH: 1px }
	.chkCls { BORDER-RIGHT: 2px groove; BORDER-TOP: 2px groove; BORDER-LEFT: 2px groove; WIDTH: 18px; BORDER-BOTTOM: 2px groove; HEIGHT: 18px; BACKGROUND-COLOR: orange }
	.MainTDOver { PADDING-LEFT: 2px; FONT-SIZE: 9pt; FONT-FAMILY: Arial; BACKGROUND-COLOR: #ffdab9 }
		</STYLE>
		<SCRIPT language="javascript" src='../JScript/Common.js'></SCRIPT>
		<script language="vbscript" runat="server">
		Sub Check_Validate(source As object, args As ServerValidateEventArgs)
        args.IsValid = (SysActive.Checked = True)
		End Sub		
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout" onblur="fnRestoreESign()" onfocus="fnRestoreESign()"
		onbeforeunload="fnCloseObject();fnKillESign()">
		<form id="f1" name="f1" method="post" runat="server" onsubmit="return fnCallESign();">
			<asp:ValidationSummary id="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<TABLE class="MainTable" height="200" cellSpacing="0" cellPadding="0" width="575" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead"><asp:Literal ID="MainHeadLtrl" Runat="server" ></asp:Literal></TD>
				</TR>
				<TR>
					<TD>
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="SubHead" colspan="3"><asp:Literal ID="SubHeadLtrl" Runat="server"></asp:Literal></TD>
							</TR>
							<!-- Not Required for CLAPS -->
							<TR style="DISPLAY:none" class="HideRow">
								<TD class="MainTD" colspan="3"><B><font color="#003366"><asp:Literal ID="SysOptLtrl" Runat="server"></asp:Literal></font></B></TD>
							</TR>
							<TR style="DISPLAY:none" class="HideRow">
								<TD class="MainTD" colspan="3">
									<asp:CheckBox ID='SysActive' Runat="server" Checked="True" Text="Security System Active" onClick="this.checked=true;"></asp:CheckBox>
								</TD>
							</TR>
							
							<TR style="DISPLAY:none" class="HideRow">
								<TD class="MainTD" colspan="3">
									<asp:CheckBox ID="IPBased" Runat="server" Text="IP Address Based Security" OnClick="if(document.getElementById('IPCount').value==0){alert('No Client is Registered/Active. Register/Activate At Least One Client IP Address To Select This Option.');this.checked=false;}"></asp:CheckBox></TD>
							</TR>
							<!------------------>
							<TR>
								<TD class="MainTD" colspan="3"><B><font color="#003366"><asp:Literal ID="LoginPswSetLtrl" Runat="server"></asp:Literal></font></B></TD>
							</TR>
							
							<TR>
								<TD class="MainTD"><asp:Label Runat="server" id="Label1" Width="20">1.</asp:Label></TD>
								<TD class="MainTD"><asp:Label Runat="server" id="Label2" Width="200"><asp:Literal ID="MinUsrNameLenLtrl" Runat="server"></asp:Literal></asp:Label></TD>
								<TD class="MainTD">
									<asp:textbox Runat="server" ID="MinUsrNameLen" CssClass="TxtCls" Width="40" MaxLength="2" onKeyPress="return fnOnlyNumericals()"
										 title='Should be between 3 and 10'></asp:textbox>
									<asp:Label Runat="server" id="CharLbl1" Width="20"></asp:Label>
									<asp:requiredfieldvalidator id="MinUsrNameLenErrMsg" runat="server" 
										Display="Dynamic" ControlToValidate="MinUsrNameLen">*</asp:requiredfieldvalidator>
									<asp:rangevalidator id="MinUsrNameLenRangeVal" runat="server" 
										Display="Dynamic" ControlToValidate="MinUsrNameLen" Type="Integer" MinimumValue="3" MaximumValue="10">*</asp:rangevalidator>
								</TD>
							</TR>
							
							<TR>
								<TD class="MainTD"><asp:Label Runat="server" id="Label4" Width="20">2.</asp:Label></TD>
								<TD class="MainTD"><asp:Label Runat="server" id="Label5" Width="200"><asp:Literal ID="MinPSWLenLtrl" Runat="server"></asp:Literal></asp:Label></TD>
								<TD class="MainTD">
									<asp:textbox Runat="server" ID="MinPSWLen" CssClass="TxtCls" Width="40" MaxLength="2" onKeyPress="return fnOnlyNumericals()"
										 title='Should be between 5 and 10'></asp:textbox>
									<asp:Label Runat="server" id="CharLbl" Width="20"></asp:Label>
									<asp:requiredfieldvalidator id="MinPSWLenErrMsg" runat="server" 
										Display="Dynamic" ControlToValidate="MinPSWLen">*</asp:requiredfieldvalidator>
									<asp:rangevalidator id="MinPSWLenRangeVal" runat="server" 
										Display="Dynamic" ControlToValidate="MinPSWLen" Type="Integer" MinimumValue="5" MaximumValue="10">*</asp:rangevalidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD"><asp:Label Runat="server" id="Label6" Width="20">3.</asp:Label></TD>
								<TD class="MainTD"><asp:Label Runat="server" id="MaxTenPSWlbl" Width="200"></asp:Label></TD>
								<TD class="MainTD">
									<asp:textbox Runat="server" ID="MaxPSWTenure" CssClass="TxtCls" Width="40" MaxLength="3" onKeyPress="return fnOnlyNumericals()"
										title='Should be between 30 and 120'></asp:textbox>
									<asp:Label Runat="server" id="Dayslbl" Width="20"></asp:Label>
									<asp:requiredfieldvalidator id="MxTenPSWReqFVal" runat="server" 
										Display="Dynamic" ControlToValidate="MaxPSWTenure">*</asp:requiredfieldvalidator>
									<asp:rangevalidator id="MxTenPSWRangeVal" runat="server" 
										Display="Dynamic" ControlToValidate="MaxPSWTenure" Type="Integer" MinimumValue="30" MaximumValue="120">*</asp:rangevalidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD"><asp:Label Runat="server" id="Label9" Width="20">4.</asp:Label></TD>
								<TD class="MainTD"><asp:Label Runat="server" id="PSWExpAlertlbl" Width="200"></asp:Label></TD>
								<TD class="MainTD">
									<asp:textbox Runat="server" ID="PSWExpiryAlert" CssClass="TxtCls" Width="40" MaxLength="2" onKeyPress="return fnOnlyNumericals()"
										title='Should be between 5 and 20'></asp:textbox>
									<asp:Label Runat="server" id="DaysBeforelbl" Width="90"></asp:Label>
									<asp:requiredfieldvalidator id="PSWExpAlertErrMsg" runat="server"  Display="Dynamic"
										ControlToValidate="PSWExpiryAlert">*</asp:requiredfieldvalidator>
									<asp:rangevalidator id="PSWExpAlertRangeVal" runat="server" 
										Display="Dynamic" ControlToValidate="PSWExpiryAlert" Type="Integer" MinimumValue="5" MaximumValue="20">*</asp:rangevalidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD"><asp:Label Runat="server" id="Label12" Width="20">5.</asp:Label></TD>
								<TD class="MainTD"><asp:Label Runat="server" id="RtnPSWHislbl" Width="200"></asp:Label></TD>
								<TD class="MainTD">
									<asp:textbox Runat="server" ID="PSWHistory" CssClass="TxtCls" Width="40" MaxLength="1" onKeyPress="return fnOnlyNumericals()"
										title='Should be between 1 and 5'></asp:textbox>
									<asp:Label Runat="server" id="PSWlbl" Width="20"></asp:Label>
									<asp:requiredfieldvalidator id="RtnPSWHisErrMsg" runat="server" ControlToValidate="PSWHistory">*</asp:requiredfieldvalidator>
									<asp:rangevalidator id="RtnPSWHisRangeVal" runat="server" ErrorMessage="'Retain History Of The Passwords' should be between 1 and 5"
										Display="Dynamic" ControlToValidate="PSWHistory" Type="Integer" MinimumValue="1" MaximumValue="5">*</asp:rangevalidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD"><asp:Label Runat="server" id="Label15" Width="20">6.</asp:Label></TD>
								<TD class="MainTD"><asp:Label Runat="server" id="PSWComplbl" Width="200"></asp:Label></TD>
								<TD class="MainTD">
									<table width="100%" border="0" cellpadding="0" cellspacing="0">
										<tr>
											<td>
												<asp:RadioButtonList id="PSWComplexity" runat="server" CssClass="RBList" RepeatDirection="Horizontal"
													onMouseOver="this.title='Low: Any Characters \nMedium: Alpha Numeric Combination \nHigh: Alpha Numeric + Special Character(s)'">
													<asp:ListItem Value="Low">Low</asp:ListItem>
													<asp:ListItem Value="Medium" Selected="True">Medium</asp:ListItem>
													<asp:ListItem Value="High">High &nbsp;</asp:ListItem>
												</asp:RadioButtonList>
											</td>
											<td>
												<asp:requiredfieldvalidator id="SelPSWCompErrMsg" runat="server" ErrorMessage="Select Password Complexity"
													ControlToValidate="PSWComplexity">*</asp:requiredfieldvalidator>
											</td>
										</tr>
									</table>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD" colspan="3"><B><font color="#003366"><asp:Literal ID="AccLokLtrl" Runat="server"></asp:Literal></font></B></TD>
							</TR>
							<TR>
								<TD class="MainTD" colspan="4"><asp:Label Runat="server" id="AccLokAftLbl" Width="160"></asp:Label>
									<asp:textbox Runat="server" ID="AccountLockOut" CssClass="TxtCls" Width="40" MaxLength="2" onKeyPress="return fnOnlyNumericals()"
										title='Should be between 3 and 5'></asp:textbox>
									<asp:Label Runat="server" id="ConsInvalAtptsLbl" Width="180"></asp:Label>
									<asp:requiredfieldvalidator id="EnterLokFalsifiErrMsg" runat="server" 
										ControlToValidate="AccountLockOut">*</asp:requiredfieldvalidator>
									<asp:rangevalidator id="EnterLokFalsifiRangeVal" runat="server" 
										Display="Dynamic" ControlToValidate="AccountLockOut" Type="Integer" MinimumValue="3" MaximumValue="5">*</asp:rangevalidator>
								</TD>
							</TR>
							<!-- Not needed for CLAPS-->
							<TR style="DISPLAY:none">
								<TD class="MainTD" colspan="3"><B><font color="#003366">E - Sign Password Options</font></B></TD>
							</TR>
							<TR style="DISPLAY:none">
								<TD class="MainTD" colspan="3">
									<asp:RadioButtonList  id="ESignPSWOption" runat="server" CssClass="RBList" AutoPostBack="True" RepeatDirection="Horizontal">
										<asp:ListItem Value="No" Selected="True">Same as Login Password</asp:ListItem>
										<asp:ListItem Value="Yes">Separate Password &nbsp;</asp:ListItem>
									</asp:RadioButtonList>
								</TD>		
							</TR>
							<!---------------------------->
							<%if ESignPSWOption.SelectedValue="Yes" then%>
							<TR>
								<TD class="MainTD" colspan="3" style="LETTER-SPACING:1px;HEIGHT:25px"><B><font color="#003366">E-sign 
											Password Settings</font></B></TD>
							</TR>
							<TR>
								<TD class="MainTD"><asp:Label Runat="server" id="Label17" Width="20">1.</asp:Label></TD>
								<TD class="MainTD"><asp:Label Runat="server" id="Label20" Width="200">Minimum Password Length</asp:Label></TD>
								<TD class="MainTD">
									<asp:textbox Runat="server" ID="EMinPSWLen" CssClass="TxtCls" Width="40" MaxLength="2" onKeyPress="return fnOnlyNumericals()"
										title='Should be between 5 and 10'></asp:textbox>
									<asp:Label Runat="server" id="Label21" Width="20">Characters</asp:Label>
									<asp:requiredfieldvalidator id="RequiredFieldValidator10" runat="server" ErrorMessage="Enter Minimum Passowrd Length"
										Display="Dynamic" ControlToValidate="EMinPSWLen">*</asp:requiredfieldvalidator>
									<asp:rangevalidator id="Rangevalidator6" runat="server" ErrorMessage="'Minimum Passowrd Length' should be between 5 and 10"
										Display="Dynamic" ControlToValidate="EMinPSWLen" Type="Integer" MinimumValue="5" MaximumValue="10">*</asp:rangevalidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD"><asp:Label Runat="server" id="Label22" Width="20">2.</asp:Label></TD>
								<TD class="MainTD"><asp:Label Runat="server" id="Label23" Width="200">Maximum Tenure Of Password</asp:Label></TD>
								<TD class="MainTD">
									<asp:textbox Runat="server" ID="MaxEPSWTenure" CssClass="TxtCls" Width="40" MaxLength="3" onKeyPress="return fnOnlyNumericals()"
										title='Should be between 30 and 120'></asp:textbox>
									<asp:Label Runat="server" id="Label24" Width="20">Days</asp:Label>
									<asp:requiredfieldvalidator id="RequiredFieldValidator11" runat="server" ErrorMessage="Enter Maxumum Tenure of Password"
										Display="Dynamic" ControlToValidate="MaxEPSWTenure">*</asp:requiredfieldvalidator>
									<asp:rangevalidator id="Rangevalidator7" runat="server" ErrorMessage="'Maxumum Tenure of Password' should be between 30 and 120"
										Display="Dynamic" ControlToValidate="MaxEPSWTenure" Type="Integer" MinimumValue="30" MaximumValue="120">*</asp:rangevalidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD"><asp:Label Runat="server" id="Label25" Width="20">3.</asp:Label></TD>
								<TD class="MainTD"><asp:Label Runat="server" id="Label26" Width="200">Password Expiry Alert</asp:Label></TD>
								<TD class="MainTD">
									<asp:textbox Runat="server" ID="EPSWExpiryAlert" CssClass="TxtCls" Width="40" MaxLength="2" onKeyPress="return fnOnlyNumericals()"
										title='Should be between 5 and 20'></asp:textbox>
									<asp:Label Runat="server" id="Label27" Width="70">Days Before</asp:Label>
									<asp:requiredfieldvalidator id="Requiredfieldvalidator2" runat="server" ErrorMessage="Enter Password Expiry Alert"
										Display="Dynamic" ControlToValidate="EPSWExpiryAlert">*</asp:requiredfieldvalidator>
									<asp:rangevalidator id="Rangevalidator8" runat="server" ErrorMessage="'Password Expiry Alert' should be between 5 and 20"
										Display="Dynamic" ControlToValidate="EPSWExpiryAlert" Type="Integer" MinimumValue="5" MaximumValue="20">*</asp:rangevalidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD"><asp:Label Runat="server" id="Label28" Width="20">4.</asp:Label></TD>
								<TD class="MainTD"><asp:Label Runat="server" id="Label29" Width="200">Retain History Of The Last</asp:Label></TD>
								<TD class="MainTD">
									<asp:textbox Runat="server" ID="EPSWHistory" CssClass="TxtCls" Width="40" MaxLength="2" onKeyPress="return fnOnlyNumericals()"
										title='Should be between 1 and 5'></asp:textbox>
									<asp:Label Runat="server" id="Label30" Width="20">Passwords</asp:Label>
									<asp:requiredfieldvalidator id="Requiredfieldvalidator7" runat="server" ErrorMessage="Enter Retain History Of The Password"
										ControlToValidate="EPSWHistory">*</asp:requiredfieldvalidator>
									<asp:rangevalidator id="Rangevalidator9" runat="server" ErrorMessage="'History Of The Password' should between 1 and 5"
										Display="Dynamic" ControlToValidate="EPSWHistory" Type="Integer" MinimumValue="1" MaximumValue="5">*</asp:rangevalidator>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD"><asp:Label Runat="server" id="Label31" Width="20">5.</asp:Label></TD>
								<TD class="MainTD"><asp:Label Runat="server" id="Label32" Width="200">Password Complexity</asp:Label></TD>
								<TD class="MainTD">
									<table width="100%" border="0" cellpadding="0" cellspacing="0">
										<tr>
											<td>
												<asp:RadioButtonList id="EPSWComplexity" runat="server" CssClass="RBList" RepeatDirection="Horizontal"
													onMouseOver="this.title='Low: Any Characters \nMedium: Alpha Numeric Combination \nHigh: Alpha Numeric + Special Character(s)'">
													<asp:ListItem Value="Low">Low</asp:ListItem>
													<asp:ListItem Value="Medium" Selected="True">Medium</asp:ListItem>
													<asp:ListItem Value="High">High &nbsp;</asp:ListItem>
												</asp:RadioButtonList>
											</td>
											<td>
												<asp:requiredfieldvalidator id="Requiredfieldvalidator14" runat="server" ErrorMessage="Select Password Complexity"
													ControlToValidate="EPSWComplexity">*</asp:requiredfieldvalidator>
											</td>
										</tr>
									</table>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD" colspan="3"><B><font color="#003366">Account Lockout: E-sign</font></B></TD>
							</TR>
							<TR>
								<TD class="MainTD" colspan="4"><asp:Label Runat="server" id="Label33" Width="135">Account Will Lockout After</asp:Label>
									<asp:textbox Runat="server" ID="EPSWLockOut" CssClass="TxtCls" Width="40" MaxLength="2" onKeyPress="return fnOnlyNumericals()"
										title='Should be between 1 and 5'></asp:textbox>
									<asp:Label Runat="server" id="Label34" Width="200">Consecutive Invalid E-sign Attempts.</asp:Label>
									<asp:requiredfieldvalidator id="Requiredfieldvalidator8" runat="server" ErrorMessage="Enter E-sign Account Lockout For Falsification Attempts"
										ControlToValidate="EPSWLockOut">*</asp:requiredfieldvalidator>
									<asp:rangevalidator id="Rangevalidator10" runat="server" ErrorMessage="'Account Lockout For Invalid E-sign Attempts' between 1 and 5"
										Display="Dynamic" ControlToValidate="EPSWLockOut" Type="Integer" MinimumValue="1" MaximumValue="5">*</asp:rangevalidator>
								</TD>
							</TR>
							<%end if%>
							<TR>
								<TD class="MainTD" colspan="3"><B><font color="#003366"><asp:Literal ID="SessTimeLtrl" Runat="server"></asp:Literal></font></B></TD>
							</TR>
							<TR>
								<TD class="MainTD" colspan="4"><asp:Label Runat="server" id="FrshChallLbl"></asp:Label>
									<asp:textbox Runat="server" ID="IdleSession" CssClass="TxtCls" Width="40" MaxLength="2" title='Should be between 5 and 90'></asp:textbox>
									<asp:Label Runat="server" id="MinIdlSessLbl" Width="160"></asp:Label>
									<asp:requiredfieldvalidator id="MinIdlSessErrMsg" runat="server" 
										ControlToValidate="IdleSession">*</asp:requiredfieldvalidator>
									<asp:rangevalidator id="MinIdlSessRangeVal" runat="server" 
										Display="Dynamic" ControlToValidate="IdleSession" Type="Integer" MinimumValue="5" MaximumValue="90">*</asp:rangevalidator>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD style="PADDING-TOP:0px">
						<TABLE style="BORDER-RIGHT: 2px groove; BORDER-TOP: 2px groove; BORDER-LEFT: 2px groove; BORDER-BOTTOM: 2px groove"
							cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
							<TR>
								<TD class="MainTD" width="140px">
									<ASP:LABEL Runat="server" id="ReasonLbl" style="PADDING-LEFT:1px" Width="140px" ></ASP:LABEL>
							        
							
								</TD>
								<TD class="MainTD">
									<ASP:TEXTBOX ID="Reasons" CssClass="TxtCls" TextMode="MultiLine" Runat="server" Width="280px"  onkeypress="taLimit()" onkeyup="taCount()"></ASP:TEXTBOX>
									<asp:requiredfieldvalidator id="ReasonErrMsg" runat="server" Display="Dynamic" ControlToValidate="Reasons">*</asp:requiredfieldvalidator>
									<INPUT type="button" onclick="fnOpenReasons(1)"   class='RsnPUP' title='Click for Standard Reason'>
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
						<input class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="reset" value="Reset" style="DISPLAY:none">
					</TD>
				</TR>
			</TABLE>
			<ASP:TEXTBOX Runat="server" ID="IPCount" Width="0" Height="0" style='DISPLAY:none'></ASP:TEXTBOX>
			<UC1:ESIGNWEBUC id="ESignWebUC1" runat="server"></UC1:ESIGNWEBUC>
		</form>
		<SCRIPT language="javascript">
<!--
	function fnSetToReasons(argValue){
	
		document.getElementById('Reasons').value = argValue
	}
	
	/* Esing Activity and button name setting */
	window.onload = new Function("fnSetEsingActivity('Security Profile Setting','btnSubmit')")
//-->
	
		
	   //TEXTAREA VALIDATIONS FOR THE LENGHT
		var taMaxLength = 500
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
		
		
		//For Disabling Right Click
		//context menu	//contextMenu


//Disable right click

//var message="";

/////////////////////////////////////

 

if (document.layers){

document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;

}else{

document.onmouseup=clickNS;document.oncontextmenu=clickIE;

document.oncontextmenu=new Function("return false")

document.body.oncontextmenu= contextMenu

document.body.onselectstart=DisableCopy

}


		</SCRIPT>
		
	</body>
</HTML>
