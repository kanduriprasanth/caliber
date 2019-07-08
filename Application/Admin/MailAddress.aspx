<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MailAddress.aspx.vb" Inherits="Admin.MailAddress" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Caliber QAMS - Select Recipients</title>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<style>
		.MenuAnc { BORDER-RIGHT: 2px groove; PADDING-RIGHT: 2px; BORDER-TOP: 2px groove; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; BORDER-LEFT: 2px groove; WIDTH: 90px; PADDING-TOP: 2px; BORDER-BOTTOM: 2px groove }
		.MenuAncOver { BORDER-RIGHT: 2px groove; PADDING-RIGHT: 2px; BORDER-TOP: 2px groove; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; BORDER-LEFT: 2px groove; WIDTH: 90px; COLOR: white; PADDING-TOP: 2px; BORDER-BOTTOM: 2px groove; BACKGROUND-COLOR: #aa4400 }
		.ToAnc { BORDER-RIGHT: 0px groove; PADDING-RIGHT: 2px; BORDER-TOP: 0px groove; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; BORDER-LEFT: 0px groove; COLOR: black; PADDING-TOP: 2px; BORDER-BOTTOM: 0px groove; TEXT-DECORATION: none }
		.ToAncOver { BORDER-RIGHT: 1px outset; PADDING-RIGHT: 1px; BORDER-TOP: 1px outset; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; BORDER-LEFT: 1px outset; COLOR: black; PADDING-TOP: 1px; BORDER-BOTTOM: 1px outset; TEXT-DECORATION: none }
		</style>
	</HEAD>
	<body MS_POSITIONING="GridLayout" bottommargin="5" rightmargin="5" leftmargin="5" topmargin="10"
		onload="fnLoadData()" onblur="window.focus()">
		<form id="f1" name="f1" method="post" runat="server">
			<asp:ValidationSummary id="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<TABLE class="MainTable" height="300" cellSpacing="0" cellPadding="0" width="500" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead" colspan="2">Select Recipients</TD>
				</TR>
				<TR>
					<TD style="PADDING-RIGHT:0px" valign="top">
						<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center" height="100%" style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove"
							valign="top">
							<TR>
								<TD class="MainTD" valign="top">Select <B>Name</B> from list</TD>
							</TR>
							<TR>
								<TD class="MainTD" valign="top" style="PADDING-RIGHT:1px;PADDING-BOTTOM:3px">
									<asp:ListBox ID="Recipients" Runat="server" Height="250" Width="200"></asp:ListBox>
								</TD>
							</TR>
						</TABLE>
					</TD>
					<TD> <!--''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''-->
						<TABLE cellSpacing="0" cellPadding="0" width="100%" Height="100%" align="center" style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;PADDING-BOTTOM:3px;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove">
							<TR>
								<td class="MainTD"></td>
								<TD class="MainTD" style="FONT-SIZE:x-small;PADDING-TOP:5px;FONT-FAMILY:Microsoft Sans Serif">
									<asp:Label Runat="server" ID="Label5">&nbsp;Message recipients:</asp:Label></TD>
							</TR>
							<TR>
								<TD class="MainTD" align="center" valign="top">
									<input type="button" value="To :-->" style="BORDER-RIGHT:1px outset;BORDER-TOP:1px outset;BORDER-LEFT:1px outset;WIDTH:55px;BORDER-BOTTOM:1px outset"
										onclick="fnToAdd()">
								</TD>
								<TD class="MainTD" align="center" valign="top">
									<select id="ToRecipients" name="ToRecipients" size="8" style="WIDTH:180px" ondblclick="fnToRemove()">
									</select>
								</TD>
							</TR>
							<TR>
								<TD class="MainTD" align="center" valign="top">
									<input type="button" value="Cc :-->" style="BORDER-RIGHT:1px outset;BORDER-TOP:1px outset;BORDER-LEFT:1px outset;WIDTH:55px;BORDER-BOTTOM:1px outset"
										onclick="fnCcAdd()">
								</TD>
								<TD class="MainTD" align="center" valign="top">
									<select id="CcRecipients" name="CcRecipients" size="8" style="WIDTH:180px" ondblclick="fnCcRemove()">
									</select>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR >
					<TD class="MainFoot" colspan="2">
						<input type="button" value="Ok" style="BORDER-RIGHT:2px outset;BORDER-TOP:2px outset;BORDER-LEFT:2px outset;WIDTH:60px;BORDER-BOTTOM:2px outset"
							onclick="fnOk()" Class="ButCls" onMouseOver="this.className='ButOCls'" onmouseout="this.className='ButCls'"> <input type="button" value="Cancel" style="BORDER-RIGHT:2px outset;BORDER-TOP:2px outset;BORDER-LEFT:2px outset;WIDTH:60px;BORDER-BOTTOM:2px outset"
							onclick="window.close()" Class="ButCls" onMouseOver="this.className='ButOCls'" onmouseout="this.className='ButCls'">
					</TD>
				</TR>
			</TABLE>
			<input type="hidden" value="asfd" name="test">
		</form>
		<script language="javascript">
function  fnOk(){
	var ToLen = document.getElementById('ToRecipients').length
	var CcLen = document.getElementById('CcRecipients').length
	if(ToLen>0){
		var ToValueAry = new Array()
		var ToTextAry = new Array()
		for(i=0;i<ToLen;i++){
			ToValueAry[ToValueAry.length] = document.getElementById('ToRecipients')(i).value
			ToTextAry[ToTextAry.length] = document.getElementById('ToRecipients')(i).text
		}
		opener.fnSetTo(ToTextAry.join(";"),ToValueAry.join(","))
	}
	
	if(CcLen>0){
		var CcValueAry = new Array()
		var CcTextAry = new Array()
		for(i=0;i<CcLen;i++){
			CcValueAry[CcValueAry.length] = document.getElementById('CcRecipients')(i).value
			CcTextAry[CcTextAry.length] = document.getElementById('CcRecipients')(i).text
		}
		opener.fnSetCc(CcTextAry.join(";"),CcValueAry.join(","))
	}
	window.self.close()
}

function  fnToAdd(){
	var SI = document.getElementById('Recipients').selectedIndex
	if(SI>=0){
		var oOption = document.createElement("OPTION")
		oOption.text = document.getElementById('Recipients')(SI).text
		oOption.value = document.getElementById('Recipients')(SI).value
		document.getElementById('ToRecipients').add(oOption)
	}else
	alert("No item(s) are selected for adding to the Recipients list")
}

function  fnCcAdd(){
	var SI = document.getElementById('Recipients').selectedIndex
	if(SI>=0){
		var oOption = document.createElement("OPTION")
		oOption.text = document.getElementById('Recipients')(SI).text
		oOption.value = document.getElementById('Recipients')(SI).value
		document.getElementById('CcRecipients').add(oOption)
	}else
	alert("No item(s) are selected for adding to the Recipients list")
}


function  fnToRemove(){
	var SI = document.getElementById('ToRecipients').selectedIndex
	if(SI>=0)
	document.getElementById('ToRecipients').remove(SI)
	else
	alert("No item(s) are selected for performing this action")
}

function  fnCcRemove(){
	var SI = document.getElementById('CcRecipients').selectedIndex
	if(SI>=0)
	document.getElementById('CcRecipients').remove(SI)
	else
	alert("No item(s) are selected for performing this action")
}



function fnLoadData(){
	var ToText = opener.fnGetTo()
	var ToKeys = opener.fnGetToKeys()
	var CcText = opener.fnGetCc()
	var CcKeys = opener.fnGetCcKeys()
	
	if(ToKeys!=""){
		var ToKeysAry = new Array()
		var ToTextAry = new Array()
		ToKeysAry = ToKeys.split(",")
		ToTextAry = ToText.split(";")
		for(i=0;i<ToKeysAry.length;i++){
			var oOption = document.createElement("OPTION")
			oOption.text = ToTextAry[i]
			oOption.value = ToKeysAry[i]
			document.getElementById('ToRecipients').add(oOption)
		}
	}
	
	if(CcKeys!=""){
		var CcKeysAry = new Array()
		var CcTextAry = new Array()
		CcKeysAry = CcKeys.split(",")
		CcTextAry = CcText.split(";")
		for(i=0;i<CcKeysAry.length;i++){
			var oOption = document.createElement("OPTION")
			oOption.text = CcTextAry[i]
			oOption.value = CcKeysAry[i]
			document.getElementById('CcRecipients').add(oOption)
		}
	}
}
		</script>
	</body>
</HTML>
