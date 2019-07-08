<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="PlantSelection.aspx.vb" Inherits="QAMS300BL.PlantSelection" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Strict//EN">
<HTML>
	<HEAD >
		<title>PlantSelection</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<link rel="stylesheet" href="TRIMS.css">
		<script type="text/javascript" language="javascript">
		document.oncontextmenu=new Function("return false")
		</script>
	</HEAD>
	<body bottomMargin="0" leftMargin="0" topMargin="0" rightMargin="0" style="background-image:url(IMAGES/Bgbig.GIF); background-repeat:no-repeat;">
		<form id="Form1" method="post" runat="server">
			<uc1:header  id="Header1" runat="server" >

			</uc1:header><br>
			<br>
			<br>
			<br>
			
			<br>
			<br>
			
			<br>
			<br>
			<br>
			<center>
			<font  style=" font-weight:bold;FONT-SIZE: 12pt; COLOR: black; font-family:verdana  ">Plant Selection</font>
			</center>
			<br><center>
			<div style="BORDER-RIGHT: gray thin solid; BORDER-TOP: gray thin solid; MARGIN-TOP: 20px;  BORDER-LEFT: gray thin solid; WIDTH: 500px; BORDER-BOTTOM: gray thin solid; "
				align="center">
				<asp:table id="PlantTable" Width="100%" Runat="server" HorizontalAlign="Center" CSSClass="SubTable"></asp:table>
			</div></center>
			<asp:TextBox Runat="server" CssClass="HideRow" ID="HidTxt"></asp:TextBox>
			<asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ErrorMessage="Select a Plant" ControlToValidate="HidTxt"
				CssClass="HideRow"></asp:requiredfieldvalidator>
			<br>
			 
			  <div align="center" style="font-weight:bold;FONT-SIZE: 10pt; COLOR: black; font-family:verdana">
			  <span style="display:none;height:0px;width:0px">
                  <asp:Label ID="DefaultPlantLbl" runat="server" Text="Select Default Plant"></asp:Label>
                  <asp:DropDownList ID="DefaultPlantDDL" runat="server">
                  <asp:ListItem Text ="[ Select ]" Value ="0">
                  </asp:ListItem>
                  </asp:DropDownList>
			  </span>
			  <div style="MARGIN-TOP:20px;WIDTH:500px;" align="right">
			  <asp:Button ID="ContBtn" runat="server" CssClass="ButCls_80" Text="Continue" onMouseOver="this.className='ButOCls_80'"
				onmouseout="this.className='ButCls_80'"></asp:Button>
			  </div>
			
			<asp:ValidationSummary id="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			  
			  </div>
			
		</form>
		<script language="javascript">
		function fnSetPlantCode(PlantID)
		{
			
			document.all("HidTxt").value=PlantID
		}
		
		function cancelBack() {
	
		//If tried to go back using combination of "Alt" key
		if (window.event && window.event.keyCode == 18)
		{
			alert("Not allowed")
			window.event.cancelBubble = true;
			window.event.returnValue = false;
			return false;
		}
	}
		
		</script>
		<SCRIPT LANGUAGE="javascript" FOR="document" EVENT="onkeydown">
<!--
 cancelBack()

//-->
		</SCRIPT>
	</body>
</HTML>
