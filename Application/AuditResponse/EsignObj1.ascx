<%@ Control Language="vb" AutoEventWireup="false" Codebehind="EsignObj1.ascx.vb" Inherits="AuditResponse.EsignObj1" %>
 

<table Class='SubTable' width="250" align="center" border="0" cellpadding="0" cellspacing="0"
	style="BORDER-RIGHT:2px groove; BORDER-TOP:2px groove; DISPLAY:none; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove">
	<tr>
		<td Class='SubHeadTD' colspan="2"><asp:label id="lblheadingOne" runat="server">E-sign</asp:label></td>
	</tr>
	<tr>
		<td class="MainTD">User ID</td>
		<td class="MainTD">
			<asp:TextBox id="UserId" runat="server" CssClass="TxtCls" Width="0" Height="0" style='DISPLAY:none'></asp:TextBox></td>
	</tr>
	<tr>
		<td class="MainTD">Password</td>
		<td class="MainTD">
			<asp:TextBox id="Pws" runat="server" CssClass="TxtCls" Width="0" Height="0" style='DISPLAY:none'></asp:TextBox>
		</td>
	</tr>
</table>
<asp:Literal id="ltrlEsignObjId" runat="server"></asp:Literal>
<!------------------------------------>
<ASP:TEXTBOX ID='ESEnabled' Runat="server" Width="0" Height="0" style='DISPLAY:none'></ASP:TEXTBOX>
<ASP:TEXTBOX ID="ESWindowPath" Runat="server" Width="0" Height="0" style='DISPLAY:none'></ASP:TEXTBOX>
<ASP:TEXTBOX ID="ESActivity" Runat="server" Width="0" Height="0" style='DISPLAY:none'></ASP:TEXTBOX>
<ASP:TEXTBOX ID="ESButtonName" Runat="server" Width="0" Height="0" style='DISPLAY:none'></ASP:TEXTBOX>
<asp:TextBox id="TrnType" runat="server" Width="0" Height="0" style='DISPLAY:none'></asp:TextBox>
<asp:TextBox id="ScreenTitle" runat="server" Width="0" Height="0" style='DISPLAY:none'></asp:TextBox>
<SCRIPT ID="clientEventHandlersJS" LANGUAGE="javascript">
<!--
var winESign
var IsValidFlag=false;
var formName = document.forms(0).name
var ObjPrefix =document.forms(0).all("EsignObjId").value;
var SpecificAct=''
var AppAction
var EsignFor 
var RowCount
var kVal
var RecCntVal
var btnActVal
var ValValue

function  setSpecificAct(sAct)
{
SpecificAct=sAct
}

function  setAppAction(AppAct)
{
AppAct=EsignFor
if(AppAct=="2")
AppAction='Approved';

if(AppAct=="3")
AppAction='Returned';

if(AppAct=="5")
AppAction='Rejected';

if(AppAct=="6")
AppAction='Approved';
if(AppAct=="7")
AppAction='Re-check';
if(AppAct=="8")
AppAction='Re-test';

}
 function fnCallESign(EsignType,k,RecCnt,btnAct,Value){	
   
 EsignFor=EsignType
  kVal=k
  RecCntVal=RecCnt
  btnActVal=btnAct
  ValValue =Value
  

  if(kVal== undefined){
  EsignFor =3
  IsValidFlag = true;
  }
  else
  {
   IsValidFlag = false;
  }
  
  
	//arguments.IsValid = false;	
	 
	var ESEnabledId= ObjPrefix + '_ESEnabled'
	var ESEnabled = document.forms(0).all(ESEnabledId).value;
		
	if( ESEnabled=="1" && !IsValidFlag){	
	    //Page_IsValid &&
		var ESWindowPathId= ObjPrefix + '_ESWindowPath'

		if((document.forms(0).all(ESWindowPathId).value).length > 5)
		var pageURL = document.forms(0).all(ESWindowPathId).value
		else
		var pageURL = "../CaliberCommonCtrls/ESignature.aspx"  //
		
		 
		var ScreenLeft = parseInt((window.screen.width/2) - 191)
		var ScreenTop = parseInt((window.screen.height/2) - (400/2))
		
		var features = "height=200,width=470,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top="+ ScreenTop +",left="+ ScreenLeft +""
	winESign = window.open(pageURL,'ESign',features)
		
		
		//alert("ok")
		//showPopWin('../CaliberCommonCtrls/ESignature.aspx', 500, 170, null)
			
		//var vpath="../CaliberCommonCtrls/PrintInitiatedMsg.htm"
		//window.showModalDialog( vpath ,'Caliber BRM','dialogheight=0;dialogwidth=0;help=0;status=0;scroll=0;edge=raised;')		
		
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

function fnOpenConAdm()
{
window.parent.parent.navigate('../Admin/WrongAttempts.aspx','CaliberLIMS');
}

function setpos(u,p){
var UsId=ObjPrefix + "_UserId"
var Pwsid=ObjPrefix +"_Pws"

document.forms(0).all(UsId).value=u
document.forms(0).all(Pwsid).value=p

}
function fnIsESignValid(returnStatus){ 
	IsValidFlag = returnStatus;
	if(returnStatus){
	
	    var ButtonName=''
		var formName = document.forms(0).name
		for(i=0;i<document.forms(0).elements.length;i++)
	        {	
                    if (EsignFor == "1")  //Audit response invidual finding
                    { 
                      fnCallAjax(kVal,RecCntVal,btnActVal,ValValue);
                       break;
                    }
                      if (EsignFor == "8")  // Audit closure final submit
                    { 
                     Submit()
                       break;
                    }
                     if (EsignFor == "2")  //At audit closure individual confirmation
                     {
                       fnCallAjax(kVal,RecCntVal,btnActVal)
                        break;
                      }
                    
                    else if (EsignFor == "3") //Audit response total submit
                    {
                        ButtonName=''
                        if(document.forms(0).elements[i].type=='submit') 
                        {  	if((document.forms(0).elements[i].name='btnConfirm'))
                            {ButtonName=document.forms(0).elements[i].name
                            break;
                            }
                        }
                    } 
                     if (EsignFor == "5")  // At Acrion Plan  Accpetance and Recommendation
                    { 
                      Ajax_ApproveAcp(RowCount);
                       break;
                    }
                    
                    if (EsignFor == "6")  // At Acrion Plan  Accpetance and Recommendation
                    { 
                      Ajax_CloseActionplan(RowCount);
                       break;
                    }
                    if (EsignFor == "7")  // At Monitering Plan Initiation
                    { 
                      Ajax_MTRPlanInit(RowCount);
                       break;
                    }
                    
                    if (EsignFor == "12")  // At Monitering Plan Initiation
                    { 
                      SaveDocument();
                       break;
                    }
                    
                    
		    }
//		if((ButtonName=='btnConfirm'))
//		document.forms(0).all(ButtonName).click();
//		else
//		IsValidFlag=false
		
	    }	
	    else if(EsignFor == "3")
	    {
	     RestValue()
	    }
}

function fnActivity(){

	var ESActivityID =ObjPrefix + "_ESActivity"
	var ScreenTitleId=ObjPrefix + "_ScreenTitle"
	var ScreenTitle=document.forms(0).all(ScreenTitleId).value
	var TrnTypeId=ObjPrefix + "_TrnType"
	var Activity
     
	var TrnTypVal=document.forms(0).all(TrnTypeId).value
	Activity=''
	GetAppAction(TrnTypVal);
	
	AppAct=EsignFor
	
    if(AppAct=="2")
    AppAction='Approved';

    if(AppAct=="4")
    AppAction='Rejected';


	
	if(TrnTypVal=="1"){
	    if(SpecificAct=='')
	     {Activity= ScreenTitle + ':Registration Initiation';}
	    else
	     {Activity= ScreenTitle + ':'+ SpecificAct +' Initiation';}
	    
	}
	if(TrnTypVal=="2"){
	    if(SpecificAct=='')
	     {Activity= ScreenTitle + ':Registration Re-initiation';}
	    else
	     {Activity= ScreenTitle + ':'+ SpecificAct +' Re-initiation';}
	    
	}
	//
	if(TrnTypVal=="3"){
	    if(SpecificAct=='')
	     {Activity= ScreenTitle + ':Modification Initiation';}
	    else
	     {Activity= ScreenTitle + ':'+ SpecificAct +' Initiation';}
	    
	}
	 if(TrnTypVal=="4"){
	    if(SpecificAct=='')
	     {Activity= ScreenTitle + ':Modification Re-initiation';}
	    else
	     {Activity= ScreenTitle + ':'+ SpecificAct +' Re-initiation';}
	    
	}
	if(TrnTypVal=="5"){
	    if(SpecificAct=='')
	     {Activity= ScreenTitle + ':Status Change Initiation';}
	    else
	     {Activity= ScreenTitle + ':'+ SpecificAct +' Initiation';}
	    
	}
	if(TrnTypVal=="6"){
	    if(SpecificAct=='')
	     {Activity= ScreenTitle + ':Registration Approval: ' + AppAction ;}
	    else
	     {Activity= ScreenTitle + ':'+ SpecificAct +' Approval: ' + AppAction ;}
	    
	}
	
	if(TrnTypVal=="7"){
	    if(SpecificAct=='')
	     {Activity= ScreenTitle + ':Modification Approval: ' + AppAction ;}
	    else
	     {Activity= ScreenTitle + ':'+ SpecificAct +' Approval: ' +  AppAction ;}
	    
	}
  if(TrnTypVal=="8"){
	    if(SpecificAct=='')
	     {Activity= ScreenTitle + ':Status Change Approval: ' + AppAction ;}
	    else
	     {Activity= ScreenTitle + ':'+ SpecificAct +' Approval: ' + AppAction ;}
	    
	}
	
	if(TrnTypVal=="9"){
	     Activity= ScreenTitle  + ':Registration Re-initiation Transfer' ; 
	}
	if(TrnTypVal=="10"){
	           Activity= ScreenTitle  + ':Modification Re-initiation Transfer'; 
	 }
	 
	 if(TrnTypVal=="19"){
	  
	           Activity= 'Test Results:Registration Approval'; 
	 }
	
	 if(TrnTypVal=="21"){
	            
	           Activity= "OOS Test: Reviewer's Decision: "+ AppAction; 
	 }
	  if(TrnTypVal=="22"){
	            
	           Activity= "OOS Test: Reviewer's Decision:"+ AppAction; 
	 }
	 if(TrnTypVal=="23"){
	            
	           Activity= "OOS Test: Approver's Decision: "+ AppAction; 
	 }
	 if(TrnTypVal=="29"){
	           Activity= 'A.Q.Test Results:Registration Approval'; 
	 }
	 
	 if(TrnTypVal=="302"){
	           Activity= 'A.Q.Test Results:Re-test Initiation'; 
	 }
	 if(TrnTypVal=="303"){
	           Activity= 'A.Q.Test Results:Re-check Initiation '; 
	 }
	 if(TrnTypVal=="401"){
	           Activity= 'W.S.Test Results:Registration Approval'; 
	 }
	 
	 
	 if(TrnTypVal=="402"){
	           Activity= 'W.S.Test Results:Re-test Initiation'; 
	 }
	 if(TrnTypVal=="403"){
	           Activity= 'W.S.Test Results:Re-check Initiation '; 
	 }
	  if(TrnTypVal=="501"){
	  
	           Activity= 'Test Results:Registration Approval'; 
	 }
	 if(TrnTypVal=="508"){
	            
	           Activity= 'OOS Test Results:Registration Approval'; 
	 }
	 if(TrnTypVal=="506"){
	            
	           Activity= 'OOS Test Results:Registration Initiation'; 
	 }
	 
	///BMR-----------------------------------------------------------------
	if(TrnTypVal=="601"){
	    if(SpecificAct=='')
	     {Activity= ScreenTitle + ':Work Allocation Initiation';}
	    else
	     {Activity= ScreenTitle + ':'+ SpecificAct +' Initiation';}
	    
	}
	if(TrnTypVal=="602"){
	    if(SpecificAct=='')
	     {Activity= ScreenTitle + ':Work Allocation Re-initiation';}
	    else
	     {Activity= ScreenTitle + ':'+ SpecificAct +' Re-initiation';}
	    
	}

	if(TrnTypVal=="603"){
	    if(SpecificAct=='')
	     {Activity= ScreenTitle + ':Work Allocation Modification Initiation';}
	    else
	     {Activity= ScreenTitle + ':'+ SpecificAct +' Initiation';}
	    
	}
	 if(TrnTypVal=="604"){
	    if(SpecificAct=='')
	     {Activity= ScreenTitle + ':Work Allocation Modification Re-initiation';}
	    else
	     {Activity= ScreenTitle + ':'+ SpecificAct +' Re-initiation';}

	}
	///Caliber BRM-----------------------------------------------------------------

	document.forms(0).all(ESActivityID).value=Activity;
	return(Activity);
	 
}

//-->
</SCRIPT>
<SCRIPT LANGUAGE="jscript">
var formName = document.forms(0).name
document.body.attachEvent('onblur',fnRestoreESign)
document.body.attachEvent('onfocus',fnRestoreESign)
document.body.attachEvent('onbeforeunload',fnKillESign)
document.forms(0).attachEvent('onsubmit',fnCallESign)
 
</SCRIPT>
