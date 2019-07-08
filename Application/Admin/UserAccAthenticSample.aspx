<%@ Page Language="vb" AutoEventWireup="false" Codebehind="UserAccAthenticSample.aspx.vb" Inherits="Admin.UserAccAthenticSample" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Status Change Reason</title>
		<%--<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">--%>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
	</HEAD>
	<body MS_POSITIONING="GridLayout" onLoad="fnpsw_Init()" leftmargin="0" rightmargin="0"
		bottommargin="0" topmargin="0">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">Status Change Reason</TD>
				</TR>
				<TR>
					<TD style="PADDING-BOTTOM:0px">
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="MainTD">Remark(s) / Reason(s)</TD>
								<TD class="MainTD"><textarea  id="Reasons" onfocusout="CheckSpace()" MaxLength="200" onkeypress="taLimit()" onkeyup="taCount()" Rows="2"  class="TxtCls" style="WIDTH:250px"></textarea></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
						<input type="button" onClick="fnCheckAuthentication()" id="btnSubmit" value="OK" Class="ButCls"
							onMouseOver="this.className='ButOCls'" onmouseout="this.className='ButCls'" style="WIDTH:50px">
						<input class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="button" value="Cancel" style="WIDTH:50px" onclick="window.close()">
					</TD>
				</TR>
			</TABLE>
		</form>
		<Script language="javascript">

		    function myTrim(str) {
		        return str.replace(/^\s+|\s+$/gm, '')
		    }
		    function CheckSpace() {
		        document.getElementById("Reasons").value = myTrim(document.getElementById("Reasons").value)
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

   function fnpsw_Init()
	{	
		window.returnValue = ""
		//pswTitle.innerText = window.dialogArguments
		document.getElementById('Reasons').focus()
	}


	function trim(str) {
	    return (str + '').replace(/^\s+|\s+$/g, "");
	}

	function fnCheckAuthentication()
	{	
		
		//alert(m_Password)
		//	var pass = document.getElementById('Password').value
		//	var DBpass = m_Password//document.getElementById('DBPassword').value
	    //	alert(m_Password)

	    var Reasons = trim((document.getElementById('Reasons').value))
			//if((document.getElementById('Reasons').value).length <=1){
	    if (Reasons.length <= 1) {
				alert("Enter Remark(s) / Reason(s)")
				document.getElementById('Reasons').focus()
				return(false);
			}
			
			//if(pass==""){
			//	alert("Enter E-signature")
		//		document.getElementById('Password').focus()
		//		return(false);
		//	}
								
			//if(pass == DBpass){
				window.returnValue = document.getElementById('Reasons').value
				window.close();
		//	}else{
			//	alert("Invalid Password")
			//	return(false);
			//}	
//
	}
		</Script>
	</body>
</HTML>
