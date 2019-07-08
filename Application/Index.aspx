<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Index.aspx.vb" Inherits="QAMS300BL.Index" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 strict//EN">
<html>

<head>
    <title>Caliber QAMS</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio 6.0">
 	<LINK REL="stylesheet" TYPE="text/css" HREF="TRIMS.css">
    <link rel="stylesheet" type="text/css" href="CUSTOM.CSS">
    <script language="JavaScript" src="JScript/DisableRightClick.js"></script>
    <script language="JavaScript" src="JScript/DisableViewSource.js"></script>

<style type ="text/css" >
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
    <script language="JavaScript">
		<!--
		msg = "Welcome To ValTrack"
		pos=0
		var nextletter
		function scrollMsg()
		{	 
			window.status +=msg.charAt(pos)
			pos++
			if(pos>msg.length){
				window.status ="";
				pos=0;
			}
			if(pos == msg.length)
			nextletter = setTimeout("scrollMsg()",1000);
			else
			nextletter = setTimeout("scrollMsg()",100);
		}
		function stopScroll(){
			clearTimeout(nextletter);
		}
		//-->
    </script>

</head>
<body onload="StartButton.focus()">
    <div class="myBox" align="center">
        <table border="0" align="center" cellspacing="0" cellpadding="0" width="103%" height="113%">
            <tr>
                <td align="center" style="background-image: url(IMAGES/indexpage.png);background-repeat:no no-repeat;">
                    <table border="0" cellspacing="1" cellpadding="1" style="width: 450px;">
                        <tr>
                            <td align="left" valign="top">
                              
                               
                        </tr>
                        <tr>
                        <td align="center" style="height:250px;" valign="middle" >
                         <img src="IMAGES/QMS_Title.png" />
                            <br />
                             <span Style="color:White">Quality Assurance Management System</span>
                        </td>
                        </tr>
                        <tr>
                            <td valign="top" align="right">
                                <input type="button" id="StartButton" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' onMouseOut="this.className='ButCls'" value=' Enter '
                                    onclick="openProject()" />
                                    <br />
                                    <br />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>

    <script language="javascript">
		<!--
			function openProject(){
				
				//var yval = screen.availHeight  
//				var xval = screen.availWidth
//				var features = "height="+ yval +",width="+ xval +",toolbar=no,resizable=yes,menubar=no,status=yes,scrollbars=yes,top=0,left=0"
			    //				window.open('Login.aspx','CaliberQAMS',features)

			    var pageURL = location.href + '' //Added to Resolve the issue regarding  shorcut access of LIMS
			    var PathAry = new Array()
			    PathAry = pageURL.split('/')
			    var AryLength = (PathAry.length) - 2
			    var i
			    var str = ''
			    for (i = 0; i < AryLength; i++) {

			        str = str + PathAry[i] + '/'
			    }
			    pageURL = str + "login.aspx" //End of Add
			    //var pageURL = "login.aspx";
			    var yval = screen.availHeight;
			    var xval = screen.availWidth;
			    var features = "height=" + yval + ",width=" + xval + ",toolbar=no,resizable=yes,menubar=no,status=yes,scrollbars=yes,top=0,left=0";
			    window.open(pageURL, 'CaliberQAMS', features)

			}
		//-->
    </script>

</body>
</html>
