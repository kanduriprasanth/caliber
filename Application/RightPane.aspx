<%@ Page Language="vb" AutoEventWireup="false"  CodeBehind="RightPane.aspx.vb" Inherits="QAMS300BL.RightPane" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Strict//EN">

<html>
<head runat="server">
    <title></title>
       <link rel="stylesheet" href="TRIMS.css">
       <script language="javascript" src="../JScript/Common.js"></script>
         <STYLE>
            .Acls { COLOR: #cfcfcf; TEXT-DECORATION: none }
            .menuItem { font-family: sans-serif; font-size: 10pt; width: 60px; padding-left: 20px; background-Color: menu; color: black; }
			.highlightItem { font-family: sans-serif; font-size: 10pt; width: 60px; padding-left: 20px; background-Color: highlight; color: white; }
            .text {font-family: Arial, Helvetica, sans-serif;font-size: 11px;font-weight: bold;}
            .box {border-top-width: 3px;border-right-width: 3px;border-top-style: solid;border-right-style: solid;border-bottom-style: none;border-left-style: none;border-top-color: #999999;	border-right-color: #333333;
}
         </STYLE>
</head>
<body leftmargin="0" topmargin="0" bottommargin="0" rightmargin="0" onload="fnDashBoard()">
<form id="form1" runat="server"  >

     <!--<div id="MainDiv" oncontextmenu="displayMenu();return false" align="center"  style="left:0; top:0; BORDER-RIGHT: #9cbdff 1px outset; BORDER-BOTTOM: #9cbdff 1px outset;background-color:#F5F5E6; FONT-SIZE: 11pt;" >Select Menu</div>-->
    
       <TABLE ID="BasicMenu"  style="padding-left:0px;" CELLSPACING="0" CELLPADDING="0" width="100%" >
			<TR>
				<!--<TD style="left:0; top:0; width:100%; height:20px; BORDER-BOTTOM: #9cbdff 1px outset;background-color:#F5F5E6; FONT-SIZE: 11pt;">
				    <img id="MainDiv" title="Menu" onclick="displayMenu()" src="IMAGES/DropLst.gif" />
				    &nbsp;<a id="TaskCntr999" runat="server"   class="Acls" Target="bodyFrame"><img title="Task Center" src="IMAGES/task_normal.gif" /></a>
				</TD> onclick="displayMenu()"-->
				<TD valign="bottom" style="left:0; top:0;  width:100%; height:29px;     FONT-SIZE: 11pt;">
				    <img id="ImgMenu"  title="Menu"  width= "160px" src="IMAGES/quickpanel_1img.jpg" onMouseOver="this.src='IMAGES/quickpanel_1imghover.jpg'" onMouseOut="this.src='IMAGES/quickpanel_1img.jpg'" />
				   
				</TD>
			</TR>
			<tr height=150 class="HideRow" >				
			    <td>			       
			        <div    id="DivTaskCtr"  runat=server   style="padding-left:15px;FONT-SIZE: 8pt; font-family:Arial, Helvetica, sans-serif; color:#000000; height:118px; width:160px;  padding-top:5px; background-image:url(IMAGES/PANEL5.png);background-repeat:no-repeat ">	
		  	          
		  	          <span style="text-align:left; width:151px; height:40px;  font-weight:bold; font-size:9pt;">Tasks and Alerts</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="TaskCntr" title="Click Here For Task Center"  href="CommunicationModule2/TaskCenter.aspx" Target="bodyFrame">TC </a>
		            </div>
			    </td>
			</tr>				
			<tr height=140>
			    <td >
				    <div  align="center" id="ArnoPop" onmousedown="dragStart(event,'ArnoPop')"  style="FONT-SIZE:  8pt; font-family:Arial, Helvetica, sans-serif;  color:#000000;height:135px; width:175px; padding-top:5px;background-image:url(IMAGES/PANEL2.png);background-repeat:no-repeat   ">
                      <h5 id="HQS" align="center" >Issue Status</h5>
                      <div class="text">Enter Issue Code</div>
			          <input type="text" name="TxtIssueCode"   style="width:100px;"  ID="TxtIssueCode" maxlength="30" Class="box" />				     
			          <br />
			          <span id="arnoVal" style="color:red"> </span>  
			          <br />
                      <div align="center"><img src="IMAGES/goButtonHover.jpg"    width="60" height="24" border="0" onclick="fnSubmitOnEnterKey('IssueStatus'),ClearIssueCode()" /></div> 			  			   				    
		            </div>
			   </td>				
			</tr>	
			<tr height=140>				
			    <td style="height: 119px">
			        <div  align="center" id="QuickRpt" onmousedown="dragStart(event,'QuickRpt')"  style="FONT-SIZE: 8pt; font-family:Arial, Helvetica, sans-serif; color:#000000; height:110px; width:175px;  padding-top:5px; background-image:url(IMAGES/PANEL6.png); background-repeat:no-repeat   ">	
		  	           <h5 id="HQR" align="center">Product/Material Status</h5>
		  	           <div class="text">Enter Product/Material Code</div>  
			           &nbsp;&nbsp; &nbsp;&nbsp;<input type="text" name="TxtPrdCode" style="width:100px;" maxlength="30"  ID="TxtPrdCode" Class="box"/>
			           <br />
			            <span id="ResMsg" style="color:red"></span>
			            <br />
                       <img src="IMAGES/goButtonHover.jpg"  width="60" height="24" border="0" onclick="fnSubmitOnEnterKey('ProductMatStatus')"/><br /><div align="center">
                           &nbsp;</div> 			    			   				    
		            </div>
			    </td>
			</tr>	
			
			<tr height=140>				
			    <td>
			        <div  align="center" id="QuickRpt1" onmousedown="dragStart(event,'QuickRpt1')"  style="FONT-SIZE: 8pt; font-family:Arial, Helvetica, sans-serif; color:#000000; height:110px; width:175px;  padding-top:5px; background-image:url(IMAGES/PANEL4.png); background-repeat:no-repeat   ">	
		  	           <h5 id="HQR1" align="center"> Batch/Lot Status</h5>
		  	           <div class="text">Enter Batch/Lot Id</div>  
			           &nbsp;&nbsp; &nbsp;&nbsp;<input type="text" name="TxtBatLot" style="width:100px;" maxlength="30"  ID="TxtBatLot" Class="box" />
			           <br /> 
			           <span id="COAMsg" style="color:red"></span>
			           <br />
                       <img src="IMAGES/goButtonHover.jpg"  width="60" height="24" border="0" onclick="fnSubmitOnEnterKey('BatchLaot')"/><br /><div align="center">
                           &nbsp;</div> 			    			   				    
		            </div>
			    </td>
			</tr>
			
			<tr height=140>				
			    <td>
			        <div  align="center" id="Div1" onmousedown="dragStart(event,'QuickRpt1')"  style="FONT-SIZE: 8pt; font-family:Arial, Helvetica, sans-serif; color:#000000; height:110px; width:175px;  padding-top:5px; background-image:url(IMAGES/PANEL5.png); background-repeat:no-repeat   ">	
		  	           <h5 id="H5_1" align="center"> Equipment Status</h5>
		  	           <div class="text">Enter Equipment Id</div>  
			           &nbsp;&nbsp; &nbsp;&nbsp;<input type="text" name="TxtEquipment" style="width:100px;" maxlength="30"  ID="TxtEquipment" Class="box" />
			           <br /> 
			           <span id="EqpMsg" style="color:red"></span>
			           <br />
                       <img src="IMAGES/goButtonHover.jpg"  width="60" height="24" border="0" onclick="fnSubmitOnEnterKey('Equipment')"/><br /><div align="center">
                           &nbsp;</div> 			    			   				    
		            </div>
			    </td>
			</tr>
			
			<tr class="HideRow"><td>
			<img id="RefreshImg" src="IMAGES/refresh.jpg"  />
			<input type="button"  id="RfrshDB" value="DashBoard" onMouseOver="this.className='ButOCls'" Class='ButCls'
										accessKey="C" onMouseOut="this.className='ButCls'" style="width:75px"  onclick="refreshDB()" /> <input type="button" value="TaskCenter" style="width:78px" onMouseOver="this.className='ButOCls'" Class='ButCls'
										accessKey="C" onMouseOut="this.className='ButCls'" onclick="refreshTC()" /></td>
			</tr>	
			
											
		</TABLE> 		
		
		<div id="menu1" onclick="clickMenu()" onmouseover="switchMenu()" onmouseout="switchMenu()" style=" z-index:100; BORDER-RIGHT: #9cbdff 2px outset; BORDER-TOP: #9cbdff 2px outset; DISPLAY: none; BORDER-LEFT: #9cbdff 2px outset; WIDTH: 100px; BORDER-BOTTOM: #9cbdff 2px outset; POSITION: absolute; BACKGROUND-COLOR: #ffffff">
		    <div class="menuItem" id="mnuTskCtr">Tasks&nbsp;and&nbsp;Alerts</div>
		    <div class="menuItem" id="mnuArNo">Quick&nbsp;Sample&nbsp;Status</div>
		    <div class="menuItem" id="mnuQkRpt">My&nbsp;Result&nbsp;Entry</div>	
		    <div class="menuItem" id="mnuQkCoa">Quick&nbsp;COA&nbsp;Report</div>		    
		</div>
		<div id="menu2" onclick="clickMenu2()" onmouseover="switchMenu()" onmouseout="switchMenu()" style="BORDER-RIGHT: #9cbdff 2px outset; BORDER-TOP: #9cbdff 2px outset; DISPLAY: none; BORDER-LEFT: #9cbdff 2px outset;BORDER-BOTTOM: #9cbdff 2px outset; POSITION: absolute;z-index:101; BACKGROUND-COLOR: #ffffff">
			<div class="menuItem"  id="Div2">Hide</div>					
		</div>
  </form>
            <a id="AncQRpt"  Target="bodyFrame" style="display:none;">Quick Report</a>
            <a id="RightPane" target="_self"  style="display:none;">Quick Report</a>
               <Div id="DivAdmDet"   runat="server"   style="   background-image: url(../IMAGES/Statuspopup.png); display:none; POSITION:absolute;width:150px;height:120px; font-family:Verdana; font-size:small; color:red">
		
		</Div>
</body>
          
</html>
<script>
function fnDashBoard()
{
    try{
	 if(window.parent.bodyFrame.document.getElementById("DashBoardMessage").innerText=="Please Reset Your DashBoard User Configuration")
	 {
	 document.getElementById("RfrshDB").disabled=true;
	 }
	 else if(window.parent.bodyFrame.document.getElementById("DashBoardMessage").innerText!="Please Reset Your DashBoard User Configuration")
	 {
	 document.getElementById("RfrshDB").disabled=false;
	 }
	 }
	  catch(ex)
  {
  
  }
}

function  refreshDB(){
 xmlHttp=GetXmlHttpObject()
	if (xmlHttp==null){
	  alert ("Browser does not support HTTP Request")
	  return
	 } 
	
	 
	var url="DashBoard/MsgDisplay1.aspx"	
	xmlHttp.onreadystatechange=bodyhome 
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)	

}

function  refreshTC(){
 xmlHttp=GetXmlHttpObject()
	if (xmlHttp==null){
	  alert ("Browser does not support HTTP Request")
	  return
	 } 
	var url="CommunicationModule2/Confirmation.aspx"	
	xmlHttp.onreadystatechange=rightpane 
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)	

}

function bodyhome(){

var obj=document.getElementById("AncQRpt")
 obj.href="BodyHome.aspx"       
 obj.click() 
}

function rightpane(){

var obj=document.getElementById("RightPane")
 obj.href="RightPane.aspx"       
 obj.click() 
}

function SampleStatus(){

var smppage="TestDataReports/SampleStatus.aspx?"
var redirectpath= document.getElementById("sampsts")

            
            if(smpstsurl!='' && strsts!='To Be Alloted' && strsts!='Sample Under Approval' && strsts!='Sample Terminated')
            {
         
           redirectpath.href=smppage + smpstsurl
            }

 
}


var str=""
function showpop()
{
//var TxtAr= document.getElementById("TxtArNo").value;
 //alert(document.getElementById("arnoVal").value!=undefined);
  //alert(document.getElementById("arnoVal").value);
 // alert(document.getElementById('arnoVal')!=null)
if((document.getElementById("arnoVal").innerHTML)!="" )
 {
 //alert(document.getElementById("arnoVal").value);
 
    if(document.getElementById('DivAdmDet')!=null && str.length >12 && str!='A.R.No. Does not Exist' && strsts!='To Be Alloted' && strsts!='Sample Under Approval' && strsts!='Sample Terminated')
    {
    
    DivAdmDet.style.display='block';
    DivAdmDet.style.cursor='none';
    DivAdmDet.style.left=10;
    DivAdmDet.style.top=280;
    }
    else
    {
    }
  }
}

function fnContentClose(){
DivAdmDet.style.display='none';
}

function ClearIssueCode(){
    var Arno=document.all("TxtIssueCode").value   
    document.all("TxtIssueCode").value='';    
//	arnoVal.innerHTML=  Arno
	if(Arno!=""){
	
	}
	 
}
function fnSubmitOnEnterKey(ViewType){
    
	var KC = window.event.keyCode
//	if(KC==13){
	    if(ViewType=='IssueStatus'){
    		FnGetReport()
    		document.all("TxtIssueCode").value="";
//    		ClearIssueCode()
	    }
	    else if (ViewType=='ProductMatStatus'){
	   
	    	FnGetReport1()   
	    	 document.all("TxtPrdCode").value="";
    	
	    } else if (ViewType=='BatchLaot'){
	    
	    	FnGetReport2()
	    	document.all("TxtBatLot").value="";
	    }
//	}
        else if (ViewType=='Equipment'){
	    
	    	FnGetReport3()
	    	document.all("TxtEquipment").value="";
	    }
	
}


var flag
function FnGetReport(){

 arnoVal.innerHTML=""

  //if(window.event.keyCode==13){
  	  if(trim(document.all("TxtIssueCode").value)==""){
       arnoVal.innerHTML="Invalid Issue Code" 

}else{
       xmlHttp=GetXmlHttpObject()
	if (xmlHttp==null){
	  alert ("Browser does not support HTTP Request")
	  return
	 } 

	var url="ArNoSts.aspx"
	url=url+"?"
	url=url+"&ArNo="+document.all("TxtIssueCode").value+"&Typ=1"
	xmlHttp.onreadystatechange=stateChanged1 
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)	
	}
 
	if((flag=='')){
	 
	 
	  document.all("TxtIssueCode").value=""
	  arnoVal.innerHTML="Invalid Issue Code" 
	  return false;
	}
	else{
	
	
	if(flag=="1")
	 {
	  
	   arnoVal.innerHTML="Not Authorised To Enter Issue Code" 
	   document.all("TxtIssueCode").value=""	
	   Page_IsValid=false;
	   return false;
	  }
	}
	
	//}
}
function FnGetReport2(){
 COAMsg.innerHTML=""
  //if(window.event.keyCode==13){
  
    if((document.all("TxtBatLot").value)==""){
       COAMsg.innerHTML="Invalid Batch/Lot Id" 
       
       }
else{
       xmlHttp=GetXmlHttpObject()
       
	if (xmlHttp==null){
	  alert ("Browser does not support HTTP Request")
	  return
	 } 
	
	var url="ArNoSts.aspx"
	url=url+"?"
	url=url+"&ArNo="+document.all("TxtBatLot").value+"&Typ=3"
	xmlHttp.onreadystatechange=stateChanged3 
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)
}

	if((flag=='')){
	
	  
	  document.all("TxtBatLot").value=""
	  COAMsg.innerHTML="Invalid Batch/Lot Id" 
	}
	else{
	 
	if(flag=="1")
	 {
	  
	   COAMsg.innerHTML="Not Authorised To Enter Batch/Lot Id" 
	   document.all("TxtBatLot").value=""	
	   Page_IsValid=false;
	   return false;
	  }
	}
	
}

function FnGetReport3(){
 EqpMsg.innerHTML=""
  //if(window.event.keyCode==13){
  
    if((document.all("TxtEquipment").value)==""){
       EqpMsg.innerHTML="Invalid Equipment Id" 
       
       }
else{
       xmlHttp=GetXmlHttpObject()
       
	if (xmlHttp==null){
	  alert ("Browser does not support HTTP Request")
	  return
	 } 
	
	var url="ArNoSts.aspx"
	url=url+"?"
	url=url+"&ArNo="+document.all("TxtEquipment").value+"&Typ=4"
	xmlHttp.onreadystatechange=stateChanged3 
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)
}

	if((flag=='')){
	
	  
	  document.all("TxtEquipment").value=""
	  EqpMsg.innerHTML="Invalid Equipment Id" 
	}
	else{
	 
	if(flag=="1")
	 {
	  
	   EqpMsg.innerHTML="Not Authorised To Enter Equipment Id" 
	   document.all("TxtEquipment").value=""	
	   Page_IsValid=false;
	   return false;
	  }
	}
	
}

function FnGetReport1(){
 ResMsg.innerHTML=""
  //if(window.event.keyCode==13){
  
    if((document.all("TxtPrdCode").value)==""){
       ResMsg.innerHTML="Invalid Product/Material Code" 
       
       }
else{
       xmlHttp=GetXmlHttpObject()
       
	if (xmlHttp==null){
	  alert ("Browser does not support HTTP Request")
	  return
	 } 
	
	var url="ArNoSts.aspx"
	url=url+"?"
	url=url+"&ArNo="+document.all("TxtPrdCode").value+"&Typ=2"
	xmlHttp.onreadystatechange=stateChanged2 
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)
}

	if((flag=='')){
	
	  
	  document.all("TxtPrdCode").value=""
	  ResMsg.innerHTML="Invalid Product/Material Code" 
	}
	else{
	 
	if(flag=="1")
	 {
	  
	   ResMsg.innerHTML="Not Authorised To Enter Product/Material Code" 
	   document.all("TxtPrdCode").value=""	
	   Page_IsValid=false;
	   return false;
	  }
	}
	
}

function GetIssueSts(){
if((document.all("TxtIssueCode").value)==""){

 arnoVal.innerHTML="Invalid Issue Code" 
document.all("TxtIssueCode").value=""
}else{
 xmlHttp=GetXmlHttpObject()
	if (xmlHttp==null){
	    alert ("Browser does not support HTTP Request")
	    return
	    } 
	    var url="ArNoSts.aspx"
	    url=url+"?"
	    url=url+"&ArNo="+document.all("TxtIssueCode").value+"&Typ=1"
	    xmlHttp.onreadystatechange=stateChanged 
	    xmlHttp.open("GET",url,true)
	    xmlHttp.send(null)	
   }
}  
 
 function UpdateQTask(TaskID){
 xmlHttp=GetXmlHttpObject()
	if (xmlHttp==null){
	  alert ("Browser does not support HTTP Request")
	  return
	 } 
	var url="ArNoSts.aspx"
	url=url+"?"
	url=url+"&TaskID="+TaskID+"&Typ=3"
	xmlHttp.onreadystatechange=stateChanged2 
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)	
 }
 
function GetXmlHttpObject(){ 
    var objXMLHttp=null
	if (window.XMLHttpRequest){
	   objXMLHttp=new XMLHttpRequest()
	}else if (window.ActiveXObject){
	objXMLHttp=new ActiveXObject("Microsoft.XMLHTTP")
	}
	return objXMLHttp
}
var smpstsurl=""
var strsts=""
function stateChanged(){ 
 
var StsArr = new Array();
var StrUrl = new Array();
var MCode  
DivAdmDet.innerText=""
 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){ 
    flag=xmlHttp.responseText
    //lblSts.innerText=xmlHttp.responseText
    str=xmlHttp.responseText
    StrUrl= str.split('#*#');
    if (StrUrl.length>1)
    {
    strsts=StrUrl[0];
    smpstsurl=StrUrl[1];
   
    }
    else
    {
    smpstsurl=""
    }
     StsArr = str.split(',');
    var   StsArrlen =StsArr.length;
   // if (StsArr.length >=0)
    //{
   // lblSts.innerText=StsArr[0] + "..."
    
   // } 
  
   
    if (str.length >12)
    {    
    lblSts.innerText=StrUrl[0]  + "..."
    DivAdmDet.innerText = StrUrl[0] //xmlHttp.responseText
    } 
    else 
    {
    lblSts.innerText=StrUrl[0]
    }       
    
 
    //lblSts.innerHTML= xmlHttp.responseText +" <a href='' Target='bodyFrame' style='color:blue;' >[Details]</a>" 
    SessionStTime=0   
  } 
  
} 
function stateChanged1(){ 
arnoVal.innerHTML=""
arnoVal.innerHTML=""
 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){ 
     flag=xmlHttp.responseText
     var StrUrl = new Array();
      StrUrl= flag.split('#*#');
     
      var MenuCode= StrUrl[1];          
       var obj=document.getElementById("AncQRpt")
       
       if(flag!="" && flag!="1"){
//       if(window.parent.menuFrame.document.getElementById(MenuCode)!=null)
//       {
       
//       if(flag!="" && flag!="1"){     

       
       var pageURL = StrUrl[0];
        var features = "height=700,width=850,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=200,left=100"
        SpWinObj = window.open(pageURL,'SpecCodes',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
          
//        }
//       }
//       else
//       {
//       
//       ResMsg.innerHTML="Not Autherised To View The Page"
//   page_IsValid=false;
//   return false;
//       }
     }
     else
       {
      
       arnoVal.innerHTML="Invalid Issue Code"
   page_IsValid=false;
   return false;
       }  
    SessionStTime=0
   
  }   
} 
function stateChanged2(){ 
ResMsg.innerHTML="";
 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){       
    SessionStTime=0
    
    flag=xmlHttp.responseText           
       var obj=document.getElementById("AncQRpt")
       
       
       if(flag!="" && flag!="1"){     
      
       var pageURL = flag;
        var features = "height=700,width=850,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=200,left=100"
        SpWinObj = window.open(pageURL,'SpecCodes',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
          
        }
        else
        {
            ResMsg.innerHTML="Invalid Product/Material Code"
   page_IsValid=false;
   return false;
        }
      
  } 
} 

function stateChanged3(){ 
stateChanged3.innerHTML="";
 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){       
    SessionStTime=0
    
    flag=xmlHttp.responseText           
       var obj=document.getElementById("AncQRpt")
       
       
       if(flag!="" && flag!="1"){     
      
       var pageURL = flag;
        var features = "height=700,width=850,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=200,left=100"
        SpWinObj = window.open(pageURL,'SpecCodes',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
          
        }
        else
        {
            stateChanged3.innerHTML="Invalid Equipment Id"
   page_IsValid=false;
   return false;
        }
      
  } 
} 

</script>
<script language=javascript type="text/javascript">
<!--
var obj
function displayMenu() {
 
   obj=event.srcElement; 
    
   if(obj.id==""){   
   }else if(obj.id=="ImgMenu"){
    menu1.style.posLeft=event.clientX;   
    menu1.style.posTop=event.clientY;
    menu1.style.display="";
    menu1.setCapture();
   }else{
    menu2.style.posLeft=event.clientX;   
    menu2.style.posTop=event.clientY;
    menu2.style.display="";
    menu2.setCapture();
   }
}

function switchMenu() {   
       el=event.srcElement;  
       if (el.className=="menuItem") {
       el.className="highlightItem";
       } else if (el.className=="highlightItem") {
       el.className="menuItem";
       }else{             
       }            
}

function clickMenu() {
   menu1.releaseCapture();
   menu1.style.display="none";
   el=event.srcElement;      
   if (el.id=="mnuArNo"){ 
   ArnoPop.style.display=""
   }else if (el.id=="mnuQkRpt") { 
   QuickRpt.style.display=""
   }
   else if (el.id=="mnuQkCoa"){
   QuickRpt1.style.display=""
   }else{
   DivTaskCtr.style.display=""         
   }
}

function clickMenu2() {  
   menu2.releaseCapture();
   menu2.style.display="none";
   el=event.srcElement;  
   if (el.className=="highlightItem") {   
     if(obj.id=='ArnoPop' || obj.id=='TxtArNo' || obj.id=='BtnOk' || obj.id=='HQS' || obj.id=='lblSts'){  
     ArnoPop.style.display="none"; 
     document.getElementById("TxtArNo").value=""
     lblSts.innerText=""
     }
     if(obj.id=='QuickRpt' || obj.id=='TxtRptArNo' || obj.id=='HQR'){  
     QuickRpt.style.display="none"; 
     document.getElementById("TxtRptArNo").value="" 
     }
      if(obj.id=='QuickRpt1' || obj.id=='TxtRptArNo1' || obj.id=='HQR1'){  
     QuickRpt1.style.display="none"; 
     document.getElementById("TxtRptArNo1").value="" 
     }
     
     if(obj.id=='DivTaskCtr'){      
     DivTaskCtr.style.display="none";
     }
     
   }
}  
  
//-->
</script>

<script language=javascript>
<!--
function Browser() {
  var ua, s, i;

  this.isIE    = false;
  this.isNS    = false;
  this.version = null;

  ua = navigator.userAgent;

  s = "MSIE";
  if ((i = ua.indexOf(s)) >= 0) {
    this.isIE = true;
    this.version = parseFloat(ua.substr(i + s.length));
    return;
  }

  s = "Netscape6/";
  if ((i = ua.indexOf(s)) >= 0) {
    this.isNS = true;
    this.version = parseFloat(ua.substr(i + s.length));
    return;
  }

  // Treat any other "Gecko" browser as NS 6.1.
  s = "Gecko";
  if ((i = ua.indexOf(s)) >= 0) {
    this.isNS = true;
    this.version = 6.1;
    return;
  }
}

function dragGo(event) {
  var x, y;
  
  // Get cursor position with respect to the page.
  if (browser.isIE) {
    x = window.event.clientX + document.documentElement.scrollLeft
      + document.body.scrollLeft;
    y = window.event.clientY + document.documentElement.scrollTop
      + document.body.scrollTop;
  }
  if (browser.isNS) {
    x = event.clientX + window.scrollX;
    y = event.clientY + window.scrollY;
  }

  // Move drag element by the same amount the cursor has moved.
  dragObj.elNode.style.left = (dragObj.elStartLeft + x - dragObj.cursorStartX) + "px";
  dragObj.elNode.style.top  = (dragObj.elStartTop  + y - dragObj.cursorStartY) + "px";

  if (browser.isIE) {
    window.event.cancelBubble = true;
    window.event.returnValue = false;
  }
  if (browser.isNS)
    event.preventDefault();
}

function dragStop(event) {

  // Clear the drag element global.
  dragObj.elNode = null;

  // Stop capturing mousemove and mouseup events.
  if (browser.isIE) {
    document.detachEvent("onmousemove", dragGo);
    document.detachEvent("onmouseup",   dragStop);
  }
  if (browser.isNS) {
    document.removeEventListener("mousemove", dragGo,   true);
    document.removeEventListener("mouseup",   dragStop, true);
  }
}

var browser = new Browser();
// Global object to hold drag information.
var dragObj = new Object();
dragObj.zIndex = 0;

function dragStart(event, id) {

  var el;
  var x, y;

  // If an element id was given, find it. Otherwise use the element being
  // clicked on.

  if (id)
    dragObj.elNode = document.getElementById(id);
  else {
    if (browser.isIE)
      dragObj.elNode = window.event.srcElement;
    if (browser.isNS)
      dragObj.elNode = event.target;

    // If this is a text node, use its parent element.

    if (dragObj.elNode.nodeType == 3)
      dragObj.elNode = dragObj.elNode.parentNode;
  }

  // Get cursor position with respect to the page.

  if (browser.isIE) {
    x = window.event.clientX + document.documentElement.scrollLeft
      + document.body.scrollLeft;
    y = window.event.clientY + document.documentElement.scrollTop
      + document.body.scrollTop;
  }
  if (browser.isNS) {
    x = event.clientX + window.scrollX;
    y = event.clientY + window.scrollY;
  }

  // Save starting positions of cursor and element.

  dragObj.cursorStartX = x;
  dragObj.cursorStartY = y;
  dragObj.elStartLeft  = parseInt(dragObj.elNode.style.left, 10);
  dragObj.elStartTop   = parseInt(dragObj.elNode.style.top,  10);

  if (isNaN(dragObj.elStartLeft)) dragObj.elStartLeft = 0;
  if (isNaN(dragObj.elStartTop))  dragObj.elStartTop  = 0;

  // Update element's z-index.

  dragObj.elNode.style.zIndex = ++dragObj.zIndex;

  // Capture mousemove and mouseup events on the page.

  if (browser.isIE) {
    document.attachEvent("onmousemove", dragGo);
    document.attachEvent("onmouseup",   dragStop);
    window.event.cancelBubble = true;
    window.event.returnValue = false;
  }
  if (browser.isNS) {
    document.addEventListener("mousemove", dragGo,   true);
    document.addEventListener("mouseup",   dragStop, true);
    event.preventDefault();
  }
}



function FnGetMenu(Menucode){

  
  
  try{
 
  window.parent.menuFrame.document.getElementById(Menucode).click()
 
  }
  catch(ex)
  {
  alert("Not Autherised To View The Page")
   page_IsValid=false;
   return false;
  }
}



//-->
</script>
