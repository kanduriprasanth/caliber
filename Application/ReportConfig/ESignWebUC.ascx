<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ESignWebUC.ascx.vb" Inherits="ReportConfig.ESignWebUC" %>
<ASP:TEXTBOX ID='ESEnabled' Runat="server" Width="0" Height="0" style='DISPLAY:none'></ASP:TEXTBOX>
<ASP:REQUIREDFIELDVALIDATOR ID="ESignEN1" ControlToValidate="ESEnabled" Runat="server" ErrorMessage=''>*</ASP:REQUIREDFIELDVALIDATOR>
<ASP:TEXTBOX ID="ESWindowPath" Runat="server" Width="0" Height="0" style='DISPLAY:none'></ASP:TEXTBOX>
<ASP:TEXTBOX ID="ESActivity" Runat="server" Width="0" Height="0" style='DISPLAY:none'></ASP:TEXTBOX>
<ASP:TEXTBOX ID="ESButtonName" Runat="server" Width="0" Height="0" style='DISPLAY:none'></ASP:TEXTBOX>
<SCRIPT ID="clientEventHandlersJS" LANGUAGE="javascript">
<!--
var winESign
var IsValidFlag=false;

function fnCallESign(source, arguments){
	//return(true);	
	
	//arguments.IsValid = false;	
	
	var formName = document.forms(0).name
	var ESEnabled = document.all(formName).all("ESignWebUC1_ESEnabled").value;
	 
	
	if(Page_IsValid && ESEnabled=="1" && !IsValidFlag){		
	if((document.all(formName).all("ESignWebUC1_ESWindowPath").value).length > 5)
 	var pageURL = document.all(formName).all("ESignWebUC1_ESWindowPath").value
		else
		 
		var pageURL = "../Admin/ESignature.aspx"
		var ScreenLeft = parseInt((window.screen.width/2) - 191)
		var ScreenTop = parseInt((window.screen.height/2) - (400/2))
		 
		var features = "height=200,width=470,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top="+ ScreenTop +",left="+ ScreenLeft +""
		winESign = window.open(pageURL,'ESign',features)
		if(winESign.opener == null) winESign.opener=self;
		winESign.focus();
		
		return(false);
	}else{
	IsValidFlag = false;
	}
}
function fnRestoreESign(){
	if(winESign !=null)
	winESign.focus();
	window.onerror = function fnOnerror(){return true;}	
}
function fnKillESign(){
	if(winESign !=null)
	winESign.close();
	window.onerror = function fnOnerror(){return true;}	
}
function fnClsWin()
{
window.parent.parent.navigate('../Login.aspx','CaliberLIMS');
}
function fnOpenConAdm()
{
window.parent.parent.navigate('../Admin/WrongAttempts.aspx','CaliberLIMS');
}
function fnOpStRs()
{
window.parent.navigate('../Admin/STDReasonsReg.aspx','CaliberLIMS');
}
function fnIsESignValid(returnStatus){
	IsValidFlag = returnStatus;
	if(returnStatus){
		var formName = document.forms(0).name
		var ButtonName = document.all(formName).all("ESignWebUC1_ESButtonName").value
		document.all(formName).all(ButtonName).click();
	}
}

function fnActivity(){
	var formName = document.forms(0).name
	return(document.all(formName).all("ESignWebUC1_ESActivity").value);
}

function fnSetEsingActivity(strActivity,objButton){
	var formName = document.forms(0).name
	document.all(formName).all("ESignWebUC1_ESActivity").value = strActivity
	document.all(formName).all("ESignWebUC1_ESButtonName").value = objButton
}

window.onerror = new Function("return true;")

//-->
</SCRIPT>