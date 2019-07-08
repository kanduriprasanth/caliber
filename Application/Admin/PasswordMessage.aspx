<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PasswordMessage.aspx.vb" Inherits="Admin.PasswordMessage" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head runat="server">
    <title>Password Message</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<link rel="stylesheet" type="text/css" href="../subModal.css">
		<script language="javascript" type="text/javascript" src="../JScript/PopUpJs.js"></script>
    <LINK href="../TRIMS.CSS" rel="stylesheet">
    <style type="text/css">
	.ARSCls { BORDER-RIGHT: 1px outset;   PADDING-RIGHT: 5px; BORDER-TOP: 1px outset; PADDING-LEFT: 5px; FONT-SIZE: 10pt; PADDING-BOTTOM: 3px; BORDER-LEFT: 1px outset; COLOR: black; PADDING-TOP: 1px; BORDER-BOTTOM: 1px outset; FONT-FAMILY: verdana; TEXT-DECORATION: none }
	.ARSOCls { BORDER-RIGHT: 1px outset; PADDING-RIGHT: 5px; BORDER-TOP: 1px outset; PADDING-LEFT: 5px; FONT-SIZE: 10pt; PADDING-BOTTOM: 3px; BORDER-LEFT: 1px outset; COLOR: black; PADDING-TOP: 1px; BORDER-BOTTOM: 1px outset; FONT-FAMILY: verdana; TEXT-DECORATION: none }
		</style>
		<script language="javascript">
		var gTabIndexes = new Array();
        var gTabbableTags = new Array("A","BUTTON","TEXTAREA","INPUT","IFRAME","SUBMIT");

		function cls()
		{
		window.parent.parent.navigate("../Login.aspx");
		//window.parent.parent.close();
		}
		 var gPopupMask = null;
         var gPopupContainer = null;
         var gPopFrame = null;
         var gReturnFunc;
         var gPopupIsShown = false;
         var gDefaultPage ="PopUp.aspx"
         var gHideSelects = false;
         var gReturnVal = null;
         function disableTabIndexes() 
         {
	        if (document.all) 
	        {
		        var i = 0;
		        for (var j = 0; j < gTabbableTags.length; j++) 
		        {
			        var tagElements = document.getElementsByTagName(gTabbableTags[j]);
			        for (var k = 0 ; k < tagElements.length; k++)
			        {
				        gTabIndexes[i] = tagElements[k].tabIndex;
				        tagElements[k].tabIndex="-1";
				        i++;
			        }
		        }
	        }
        }
		function GetPopup()
		{          
            fnOpenCrPopUp()            
            
		}
		function fnOpenCrPopUp()
		{
		
          var pageURL = "PopUp.aspx"         
          winEsign=showPopWin(pageURL,  700, 400, null) 
		}
		function showPopWin(url, width, height, showCloseBox) 
		{
		     initPopUp()
		     if (showCloseBox == null || showCloseBox == true)
		     {
		        document.getElementById("popCloseBox").style.display = "block";
		     }
		     else
		     {
		     document.getElementById("popCloseBox").style.display = "none";
	         }
	         gPopupIsShown = true;
	         disableTabIndexes();
	         gPopupMask.style.display = "block";
	         gPopupContainer.style.display = "block";
	         centerPopWin(width, height);
		}
		function initPopUp()
		{	
	
	        theBody = document.getElementsByTagName('BODY')[0];
	        popmask = document.createElement('div');
	        popmask.id = 'popupMask';
	        popcont = document.createElement('div');
	        popcont.id = 'popupContainer';
	        popcont.innerHTML = '';
	        popcont.innerHTML = '' +
		    '<div id="popupInner">' +
			'<div id="popupTitleBar">' +
				'<div id="popupTitle"><b>Lims System Manager Confirmation</b></div>' +
				'<div id="popupControls">' +
					'<img src="../CaliberCommonCtrls/Images/close1.gif" onclick="hidePopWin(false);" id="popCloseBox" />' +
				'</div>' +
			    '</div>' +
			    '<iframe src="'+ gDefaultPage +'" style="width:100%;height:100%;background-color:transparent;" scrolling="auto" frameborder="0" allowtransparency="true" id="popupFrame" name="popupFrame" width="100%" height="100%"></iframe>' +
		    '</div>';
	
	        theBody.appendChild(popmask);
	        theBody.appendChild(popcont);	
	        gPopupMask = document.getElementById("popupMask");
	        gPopupContainer = document.getElementById("popupContainer");
	        gPopFrame = document.getElementById("popupFrame");	
	
	        var brsVersion = parseInt(window.navigator.appVersion.charAt(0), 10);
	        if (brsVersion <= 6 && window.navigator.userAgent.indexOf("MSIE") > -1)
	        {
		        gHideSelects = true;
	        }
	
        }
		var gi = 0;
        function centerPopWin(width, height)
        {
	        if (gPopupIsShown == true)
	         {
		        if (width == null || isNaN(width)) {
			    width = gPopupContainer.offsetWidth;
		        }
		        if (height == null) {
			    height = gPopupContainer.offsetHeight;
		        }
		        var theBody = document.getElementsByTagName("BODY")[0];		
		        var scTop = parseInt(getScrollTop(),10);
		        var scLeft = parseInt(theBody.scrollLeft,10);
	
		        setMaskSize();
		        var titleBarHeight = parseInt(document.getElementById("popupTitleBar").offsetHeight, 10);
		
		        var fullHeight = getViewportHeight();
		        var fullWidth = getViewportWidth();
		
		        gPopupContainer.style.top = (scTop + ((fullHeight - (height+titleBarHeight)) / 2)) + "px";
		        gPopupContainer.style.left =  (scLeft + ((fullWidth - width) / 2)) + "px";	
	}
}
function setMaskSize() {
	var theBody = document.getElementsByTagName("BODY")[0];
			
	var fullHeight = getViewportHeight();
	var fullWidth = getViewportWidth();
	
	// Determine what's bigger, scrollHeight or fullHeight / width
	if (fullHeight > theBody.scrollHeight) {
		popHeight = fullHeight;
	} else {
		popHeight = theBody.scrollHeight;
	}
	
	if (fullWidth > theBody.scrollWidth) {
		popWidth = fullWidth;
	} else {
		popWidth = theBody.scrollWidth;
	}
	
	gPopupMask.style.height = popHeight + "px";
	gPopupMask.style.width = popWidth + "px";
}
		</script>
</head>
<body>
    <form id="form1" runat="server" >
    <table  height="90%" border="0" cellSpacing="0" cellPadding="0" width="70%" align="center">
    <tbody>
					<TR>
						<TD style="FONT-SIZE:10pt; FONT-FAMILY:Ms Serif" vAlign="middle">&nbsp;
							<TABLE border="0" class="MainTable"  bordercolor="white" cellSpacing="0" cellPadding="0" Height="160" width="500"
								align="center"  style="BACKGROUND-COLOR:#ffffff">
								<TR class="MainHead">
									<TD colspan="2" valign="middle" style="PADDING-LEFT:5px;FONT-SIZE:12pt;PADDING-BOTTOM:2px;COLOR:Black;PADDING-TOP:3px;FONT-FAMILY:verdana;LETTER-SPACING:1px; ">
										<B>Caliber System Manager
											<ASP:LABEL Runat="server" ID="lblTitle"></ASP:LABEL></B>
									</TD>
								</TR>
								<TR class="MainTD">
									<TD width="70" valign="middle" align="center" style="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-TOP:10px">
										&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="imgSaveImage" Runat="server" ImageUrl=></asp:Image><BR>
										<BR>
									</TD>
									<TD style="FONT-SIZE:10pt; FONT-FAMILY:verdana">
										<TABLE border="0" cellspacing="0" cellpadding="0" Height="100%" width="100%" align="center">
											<TR >
												<TD style="PADDING-RIGHT:10px;FONT-SIZE:12pt;COLOR:#003366;LETTER-SPACING:0px">
													 <asp:Label ID="lblSaveMessage" Runat="server"></asp:Label>
												</TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								
								<tr>
								    <td colspan="2">
								    <input type="button" Class='ButCls' onMouseOver="this.className='ButOCls'"  onMouseOut="this.className='ButCls'" Width="70" onclick="cls()" value="SignOut" /></td>
								</tr>
								
							</TABLE>
						</TD>
					</TR>
					<TR height="10%">
						<TD>&nbsp;</TD>
					</TR>
				</tbody>   
    </table>    
    
    
    </form>
</body>
</html>
