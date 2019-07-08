<%@ Page Language="vb" AutoEventWireup="false" Codebehind="PasswordCH.aspx.vb" Inherits="Admin.PasswordCH" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE></TITLE>
		<META name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<META name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<META name="vs_defaultClientScript" content="JavaScript">
		
		<%--<LINK REL="stylesheet" TYPE="text/css" HREF="CUSTOM.css">--%>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	</HEAD>
	<BODY MS_POSITIONING="GridLayout" onload="document.getElementById('UserName').focus()">
		<FORM id="Form1" method="post" runat="server" onsubmit="return ClientValidate();">
			<TABLE WIDTH="500" Height="200" class="MainTable" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">
			<!-- MAIN HEADER -->
			<TR><TD class="MainHead">Login Password</TD></TR>
			<!-- MAIN BODY -->
			
				<TR><TD>
						<TABLE WIDTH="100%" ALIGN="center" BORDER="0" class="SubTable" CELLSPACING="1" CELLPADDING="0" style="Border-style:groove;border-width:2px;">
						<TR><TD class="SubHead" colspan="3">Change Login Password</TD></TR>
						<TR><TD class="MainTD" style="padding-Top:5px;">						
							<ASP:LABEL Runat="server" id="Label1" style="PADDING-LEFT:5px" Width="140">User ID</ASP:LABEL>
							<ASP:TEXTBOX ID="UserName" CssClass=TxtCls Runat=server Width=200 MaxLength=20 ReadOnly=True>*****</ASP:TEXTBOX>
							<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator2" runat="server" Display="Dynamic" ErrorMessage="Enter User Name" ControlToValidate="UserName">*</ASP:REQUIREDFIELDVALIDATOR>
						</TD></TR>
						
						<TR><TD class="MainTD">
							<ASP:LABEL Runat="server" id="Label3" style="PADDING-LEFT:5px" Width="140">Current Password</ASP:LABEL>
							<ASP:TEXTBOX ID="OldPassword" CssClass=TxtCls TextMode=Password  Runat=server Width=200 MaxLength=25></ASP:TEXTBOX>
							<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator4" runat="server" Display="Dynamic" ErrorMessage="Enter Current Password" ControlToValidate="OldPassword">*</ASP:REQUIREDFIELDVALIDATOR>
						</TD></TR>
						
						<TR><TD class="MainTD">
							<ASP:LABEL Runat="server" id="Label7" style="PADDING-LEFT:5px" Width="140">New Password</ASP:LABEL>
							<ASP:TEXTBOX ID=Password CssClass=TxtCls TextMode=Password  Runat=server Width=200 MaxLength=25></ASP:TEXTBOX>
							<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator3" runat="server" Display="Dynamic" ErrorMessage="Enter New Password" ControlToValidate="Password">*</ASP:REQUIREDFIELDVALIDATOR>
							<ASP:COMPAREVALIDATOR ID="Comparevalidator1" Runat=server Display=Dynamic ErrorMessage="Current Password and New Password should not match" ControlToValidate="OldPassword" ControlToCompare="Password" Operator=NotEqual>*</ASP:COMPAREVALIDATOR>
						</TD></TR>
						
						<TR><TD class="MainTD">
							<ASP:LABEL Runat="server" id="Label2" style="PADDING-LEFT:5px" Width="140">Retype Password</ASP:LABEL>
							<ASP:TEXTBOX ID="RePassword" CssClass=TxtCls TextMode=Password  Runat=server Width=200 MaxLength=25></ASP:TEXTBOX>
							<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator1" runat="server" Display="Dynamic" ErrorMessage="Enter Retype Password" ControlToValidate="RePassword">*</ASP:REQUIREDFIELDVALIDATOR>
							<ASP:COMPAREVALIDATOR ID=CMPVal Runat=server Display=Dynamic ErrorMessage="New Password And Retype Password Do Not Match" ControlToValidate="RePassword" ControlToCompare="Password">*</ASP:COMPAREVALIDATOR>
						</TD></TR>
						</TABLE>
					</TD>
				</TR>
			<tr>
								<td colspan="2" style="color:red">
								Note: Whenever the password is changed session will be automatically closed. So User Should Relogin again.
						</td>		</tr>
				<!-- MAIN FOOTER -->
				<TR><TD class="MainFoot">
						<ASP:BUTTON id="btnSubmit" runat="server" Text="Submit" CssClass="ButCls" onMouseOver="this.className='ButOCls'" onmouseout="this.className='ButCls'" Width=60></ASP:BUTTON>
						<INPUT class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'" type="reset" value="Reset" style="DISPLAY:none">
				</TD></TR>
			</TABLE>
			<ASP:TEXTBOX ID="SPESign" Runat=server ReadOnly=True Width=0 Height=0 style="display:none;"></ASP:TEXTBOX>
			<ASP:TEXTBOX ID="SPMaxLen" Runat=server ReadOnly=True Width=0 Height=0 style="display:none;"></ASP:TEXTBOX>
			<ASP:TEXTBOX ID="SPComplexity" Runat=server ReadOnly=True Width=0 Height=0 style="display:none;"></ASP:TEXTBOX>
			<ASP:TEXTBOX ID="UserNameHidTxt" CssClass=HideRow Runat=server Width=200 MaxLength=20></ASP:TEXTBOX>
			<ASP:VALIDATIONSUMMARY id="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></ASP:VALIDATIONSUMMARY>
		</FORM>


<SCRIPT language="javascript">
<!--


function fnSignout()

{
window.parent.parent.navigate("../Login.aspx");
}
 function ClientValidate(){
	
	if(Page_IsValid){
		var SPMaxLen = document.getElementById('SPMaxLen').value
		var SPComplexity = document.getElementById('SPComplexity').value
		var pass = document.getElementById('Password').value
		if(pass.length - SPMaxLen < 0){
			alert("Minimum Password Length should be '"+ SPMaxLen +"' Characters")
			return(false);
		}else{
			if(PswComplexityChk(SPComplexity,pass))
				return(true);
			else{
				if(SPComplexity=="Medium")
				alert("Enter Password Which includes Alpha numeric Characters")
				if(SPComplexity=="High")
				alert("Enter Password Which includes Alpha numeric and Special Characters")				
				return(false);
			}
		}
		return(true);
   }
}

   
//Password Complexity function Validation
function PswComplexityChk(SPComplexity,PwsValue){
	var reqChars = "0123456789"
	if(SPComplexity == "Medium"){
		for(i=0;i<PwsValue.length;i++){
			if(reqChars.indexOf(PwsValue.charAt(i)) !=-1)
			break;
		}
		if(i==PwsValue.length)
		return(false);
	}
	
	if(SPComplexity == "High"){
		for(i=0;i<PwsValue.length;i++){
			if(reqChars.indexOf(PwsValue.charAt(i)) !=-1)
			break;
		}
		if(i==PwsValue.length)
		return(false);
		
		reqChars ="`~!@#$%^&*()-_=+[{]}\|,<.>/?"
		for(i=0;i<PwsValue.length;i++){
			if(reqChars.indexOf(PwsValue.charAt(i)) !=-1)
			break;
		}
		if(i==PwsValue.length)
		return(false);
	}
	return(true);
}
// -->

		  //For Disabling Right Click
		//context menu		
function contextMenu(){

if(event.srcElement.type=='text'||event.srcElement.type=='textarea'){

var obj=event.srcElement

var Txt=obj.value

var rowCnt=0

if(event.srcElement.type=='textarea')

{Txt=obj.innerText

var d=0

for(d=0;d<Txt.length;d++){

if(Txt.charAt(d)=='\n')

rowCnt= rowCnt+ 1

}

}

if(Txt!=''){

var popWidth

var popHeight

var oPopup = window.createPopup();

var oPopupBody = oPopup.document.body;

oPopupBody.style.backgroundColor = "lightyellow";

oPopupBody.style.border = "solid black 1px";

oPopupBody.style.fontFamily="arial"

oPopupBody.style.fontSize=14

oPopupBody.style.marginLeft=5

var TxtSize=Txt.length

oPopupBody.innerText =Txt

var popleft = obj.clientLeft;

var poptop =obj.clientTop;

popWidth= obj.clientWidth + 20

popHeight=obj.clientHeight

poptop=poptop + popHeight

if(popWidth<300){popWidth=300}

var lineCnt

lineCnt=parseInt((TxtSize*10)/obj.clientWidth)

if(rowCnt>lineCnt){lineCnt=rowCnt}

popHeight=24

if(lineCnt>0){ popHeight=(lineCnt*22) + 10 }

oPopup.show(popleft, poptop, popWidth, popHeight , obj);

}

}else{

return false;

}

}//contextMenu


//Disable right click

//var message="";

/////////////////////////////////////

function clickIE() {

if (document.all) {

(message);return false;

}

}

 

function clickNS(e) {

if(document.layers||(document.getElementById&&!document.all)) {

if (e.which==2||e.which==3) {

(message);return false;}

}

}

 

if (document.layers){

document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;

}else{

document.onmouseup=clickNS;document.oncontextmenu=clickIE;

document.oncontextmenu=new Function("return false")

document.body.oncontextmenu= contextMenu

document.body.onselectstart=DisableCopy

}

 

function DisableCopy(){

if(!(event.srcElement.type=='text'|| event.srcElement.type=='textarea'))

return false;

}

</SCRIPT>
</BODY>
</HTML>
