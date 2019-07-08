<%@ Page CodeBehind="MainPage.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="QAMS300BL.MainPage" %>

<html>
<head>
    <title>Caliber QAMS</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio 6.0">
    <script language="javascript" src="../JScript/CustomValidationFuns.js"></script>
    
    <link rel=alternate media=print href="default.aspx">
    
    <style>
.Acls { COLOR: #cfcfcf; TEXT-DECORATION: none }
.Anc { border: 0px;}
.AHover { COLOR: #ffffff; TEXT-DECORATION: none }
.IMG { BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; BORDER-LEFT-COLOR: #aa4400; BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: #aa4400; BORDER-TOP-COLOR: #aa4400; BORDER-RIGHT-WIDTH: 1px; BORDER-RIGHT-COLOR: #aa4400 }
.IMGOver {BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; BORDER-LEFT-COLOR: teal; BORDER-BOTTOM-WIDTH: 1px; BORDER-BOTTOM-COLOR: teal; BORDER-TOP-COLOR: teal; BORDER-RIGHT-WIDTH: 1px; BORDER-RIGHT-COLOR: teal }
.AppNavCls { PADDING-RIGHT: 5px; PADDING-LEFT: 5px; FONT-SIZE: 8pt; COLOR: #ffffff; FONT-FAMILY: Georgia,Garamond; LETTER-SPACING: 1px; FONT-VARIANT: small-caps }
.AnchoClsB { FONT-SIZE: 10pt; BORDER-LEFT-COLOR: black; BORDER-BOTTOM-COLOR: black; WIDTH: 16px; COLOR: white; BORDER-TOP-STYLE: double; BORDER-TOP-COLOR: black; BORDER-RIGHT-STYLE: double; BORDER-LEFT-STYLE: double; BACKGROUND-COLOR: gray; TEXT-ALIGN: center; TEXT-DECORATION: none; BORDER-RIGHT-COLOR: black; BORDER-BOTTOM-STYLE: double }
.AnchoClsB1 { FONT-SIZE: 10pt; BORDER-LEFT-COLOR: darkred; BORDER-BOTTOM-COLOR: darkred; WIDTH: 16px; COLOR: white; BORDER-TOP-STYLE: double; BORDER-TOP-COLOR: darkred; BORDER-RIGHT-STYLE: double; BORDER-LEFT-STYLE: double; BACKGROUND-COLOR: gray; TEXT-ALIGN: center; TEXT-DECORATION: none; BORDER-RIGHT-COLOR: darkred; BORDER-BOTTOM-STYLE: double }

.menuItem { font-family: sans-serif; font-size: 10pt; width: 100px; padding-left: 20px; background-Color: menu; color: black; }
.highlightItem { font-family: sans-serif; font-size: 10pt; width: 100px; padding-left: 20px; background-Color: highlight; color: white; }
.clickableSpan { padding: 4; width: 500px; background-Color: blue; color: white; border: 4px gray solid; }
.QMI{BORDER-RIGHT: #c9dfae 2px outset;BORDER-TOP: #c9dfae 2px outset;FONT-SIZE: 6.5pt;color:black;BORDER-LEFT: #c9dfae 2px outset;WIDTH: 23px;BORDER-BOTTOM: #c9dfae 2px outset;POSITION: absolute;HEIGHT: 18px;BACKGROUND-COLOR: #ffffff; }
 
</style>
    <script language="javascript" src='../JScript/jquery.min.js'></script>

    <script language="javascript">
<!--   

			if((window.name=="CaliberQAMS") || (window.name=="bodyFrame"))
			{
			    
			}
			else
			{
			    window.navigate("index.aspx")
            }



function fnCallMenu(disPos)
{
  var ua = navigator.userAgent
	var dom = (document.getElementById)? 1:0
	var ie4 = (document.all&&!dom)? 1:0
	var ie5 = (document.all&&dom)? 1:0
	var HideTip = "eval(obj+sv+hl+';'+obj+sl+'=0;'+obj+st+'=-800')"
	var doc_root = ((ie5&&ua.indexOf("Opera")<0||ie4)&&document.compatMode=="CSS1Compat")? "document.documentElement":"document.body"

	var mx = "event.x"
	var my = "event.y"
	var scl = "eval(doc_root).scrollLeft"
	var sct = "eval(doc_root).scrollTop"
	mx = mx+"+"+scl 
	my = my+"+"+sct
	
	MenuDiv.style.display='block'
	MenuDiv.style.left = eval(mx) - (MenuDiv.clientWidth/2)
	MenuDiv.style.top = 70//eval(my)
	return(false);
}
function fnDisableMenu(){
MenuDiv.style.display='none'
}


function SetMenu_display(BlockabelContId,DispType)
{
    BlockabelContId = BlockabelContId == null ? "" : BlockabelContId
    DispType = DispType == null ? "none" : DispType
    if(window.parent.AppBody.frames != null)
    {
        var FrameObj = window.parent.AppBody.frames[0]
        var ForRestPwdFlag=false;  //This condition is for Handling If menus are not available for all modules
        
        //For Removing Modules Based on the Menus List
       if(FrameObj.AUDIT_TotModules!=undefined){
        if(FrameObj.AUDIT_TotModules.value=="0")
         FrameObj.AUDITMenu.style.display='none';
        else
         FrameObj.AUDITMenu.style.display='block';
         }
         
         if(FrameObj.AOM_TotModules!=undefined){
            if(FrameObj.AOM_TotModules.value=="0")
             FrameObj.AOMMenu.style.display='none';
            else 
             FrameObj.AOMMenu.style.display='block';
             ForRestPwdFlag=true;
         }
         
         if(FrameObj.CAPA_TotModules!=undefined){               
            if(FrameObj.CAPA_TotModules.value=="0")
             FrameObj.CAPAMenu.style.display='none';
            else 
             FrameObj.CAPAMenu.style.display='block';
             ForRestPwdFlag=true;
         }
         
        if(FrameObj.EFORM_TotModules!=undefined){      
         if(FrameObj.EFORM_TotModules.value=="0")
             FrameObj.EFORMMenu.style.display='none';
            else 
             FrameObj.EFORMMenu.style.display='block';
             ForRestPwdFlag=true;
         }
         
        if(FrameObj.Schedule_TotModules!=undefined){      
            if(FrameObj.Schedule_TotModules.value=="0")
             FrameObj.ScheduleMenu.style.display='none';
            else 
             FrameObj.ScheduleMenu.style.display='block';
                 ForRestPwdFlag=true;
         }
             
        if(FrameObj.MAST_TotModules!=undefined){      
            if(FrameObj.MAST_TotModules.value=="0")
             FrameObj.MASTMenu.style.display='none';
            else 
             FrameObj.MASTMenu.style.display='block';
             ForRestPwdFlag=true;
         }
         
         
        if(FrameObj.AD_TotModules!=undefined){      
            if(FrameObj.AD_TotModules.value=="0")
             FrameObj.ADMenu.style.display='none';
            else 
             FrameObj.ADMenu.style.display='block';
             ForRestPwdFlag=true;
         }
         
        if(FrameObj.BL_TotModules!=undefined){      
            if(FrameObj.BL_TotModules.value=="0")
             FrameObj.BasicMenu.style.display=DispType;
            else 
             FrameObj.BasicMenu.style.display=DispType;             
             ForRestPwdFlag=true;
        }
        
        if(ForRestPwdFlag==false){
            FrameObj.BasicMenu.style.display= (FrameObj.BasicMenu.id == BlockabelContId ? 'block' : DispType);
            FrameObj.ADMenu.style.display= (FrameObj.ADMenu.id == BlockabelContId ? 'block' : DispType);
            FrameObj.AOMMenu.style.display= (FrameObj.AOMMenu.id == BlockabelContId ? 'block' : DispType);
            FrameObj.CAPAMenu.style.display= (FrameObj.CAPAMenu.id == BlockabelContId ? 'block' : DispType);
            FrameObj.MASTMenu.style.display= (FrameObj.MASTMenu.id == BlockabelContId ? 'block' : DispType);
            //FrameObj.AUDITMenu.style.display= (FrameObj.AUDITMenu.id == BlockabelContId ? 'block' : DispType);
            FrameObj.EFORMMenu.style.display= (FrameObj.EFORMMenu.id == BlockabelContId ? 'block' : DispType);
            FrameObj.ScheduleMenu.style.display= (FrameObj.ScheduleMenu.id == BlockabelContId ? 'block' : DispType);
        }
    }
    else{window.history.go()}
    parent.AppBody.mainFrame.cols="175,*"	
}
function fnShowSchedule()
{
	SetMenu_display("ScheduleMenu")
}

function fnShowEFORM()
{
	SetMenu_display("EFORMMenu")
}

function fnShowAddOn()
{
	SetMenu_display("AOMMenu")
}

//ADMINISTRATOR
function fnShowAD()
{
	SetMenu_display("ADMenu")
}

function fnShowDMS()
{
	SetMenu_display("DMSMenu")
}

function fnShowENB()
{
	SetMenu_display("ENBMenu")
}

function fnShowBMR()
{
	SetMenu_display("BMRMenu")
}
function fnShowMAST()
{
	SetMenu_display("MASTMenu")
}
function fnShowBAPR()
{
	SetMenu_display("BAPRMenu")
}

function fnShowMYWOR()
{
	SetMenu_display("MYWORMenu")
}

function fnShowAPPR()
{
	SetMenu_display("APPRMenu")
}

function fnShowBasic()
{
    if(window.parent.AppBody.frames[0].BasicMenu.style.display=='none')
    {
	    SetMenu_display("",'block')
	    document.all("ImgLeftPane").src="IMAGES/pane-splitter-coll-v-new.PNG"	
    }
	else
	{ 
        document.all("ImgLeftPane").src="IMAGES/pane-splitter-coll-v-e-new.PNG"	     
        SetMenu_display("")
        parent.AppBody.mainFrame.cols="0,*"	
	}
}
function fnShowBasic1(ImgPath)
{ 
var arr       
     Arr=ImgPath.split('/')
if (Arr[Arr.length-1]=="pane-splitter-coll-v-new.PNG")
  {
    parent.AppBody.mainFrame1.cols="*,175"
    document.all("ImgRightPane").src="IMAGES/pane-splitter-coll-v-e-new.PNG"
  }else{
   parent.AppBody.mainFrame1.cols="*,0"
   document.all("ImgRightPane").src="IMAGES/pane-splitter-coll-v-new.PNG"
  }
}
function fnShowSuperSub(){
	var pageURL = "SupSubCompose.aspx"
	var features = 'dialogheight=10;dialogwidth=22.2;help=0;status=0;scroll=0;edge=raised;'
	var cReturnValue = window.showModalDialog(pageURL,'SuperScript',features)
}

function fnGoHome(){window.navigate('../BodyHome.aspx')}
function fnSignOut(){window.navigate('../Login.aspx')}
function fnRefresh(){
	window.frames("AppBody").frames("bodyFrame").window.history.go();
}
function ReLogin(){ 

 xmlHttp=GetXmlHttpObject()
	/*if (xmlHttp==null){
	  alert ("Browser does not support HTTP Request")
	  return
	 }  */
      var rtnval
      var EsignerID=parseInt(document.all("UserIDTxt").value) + parseInt(1500) // Encoding the esignID to SessionBuilder page     
      var PlantID=document.all("PlantIDTxt").value 
      var UserNm=document.all("UserNmTxt").value  
      var features = "height=180,width=400,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=250,left=250"	
	    LoginObj = window.frames("AppBody").frames("bodyFrame").window.open("SessionBuilder.aspx?EsignerID="+ EsignerID +"&PlantID="+ PlantID +"&UserNm="+ UserNm,'sessionBuilder',features)	
	    if(LoginObj.opener == null) LoginObj.opener=self;
	    LoginObj.focus(); 
	    
	
	/*var url="SessionBuilder.aspx?EsignerID="+ EsignerID +"&PlantID="+ PlantID +" "//"DashBoard/MsgDisplay.aspx"	
	xmlHttp.onreadystatechange=bodyhome 
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)	*/
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

function fnOnError(){
	return true;
}
function ass()
{
window.self.name="mainpage";
//fnShowBasic(this.src)
SetMenu_display("",'block')
document.all("ImgLeftPane").src="IMAGES/pane-splitter-coll-v-new.PNG"	
bas()
}

window.onerror = fnOnError;

var QuickEle
function fnCrQuickMenu(){
   
         var QuickVal      
         var Arr=new Array()
         if(window.parent.AppBody.frames[0].HidQuickMenu.value!=""){ 
         
             if(parseInt(document.getElementById("QMCntTxt").value)<10){             
                 QuickVal=window.parent.AppBody.frames[0].HidQuickVal.value
                 window.parent.AppBody.frames[0].HidQuickVal.value=""         
                 Arr= QuickVal.split('$')                 
                 if(!document.getElementById(Arr[1])){   
                        QuickEle=window.parent.AppBody.frames[0].HidQuickMenu.value              
                        window.parent.AppBody.frames[0].HidQuickMenu.value=""                
                        QuickMenuAdd(QuickVal)                        
                  }else if(document.getElementById(Arr[1]).style.display=='none'){         
                       alert("Please Re-Login Then Add")         
                  }else{
                        alert("Already exist")
                  }  
              }else{
               alert("Only  10 Quick Menu Icons Are  Allowed")
              }  
      }     
}

function QuickMenuAdd(Val){ 

    Val=Val.replace(/&/g,'@@')
	xmlHttp=GetXmlHttpObject()
	if (xmlHttp==null){
	  alert ("Browser does not support HTTP Request")
	  return
	 } 
	var url="QuickMenuUpd.aspx"
	url=url+"?"
	url=url+"MenuItems="+Val	 
	xmlHttp.onreadystatechange=stateChanged 	
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)	
}
function QuickMenuDel(MenuID){    
	xmlHttp=GetXmlHttpObject()
	if (xmlHttp==null){
	  alert ("Browser does not support HTTP Request")
	  return
	 } 
	var url="QuickMenuUpd.aspx"
	url=url+"?"
	url=url+"&MenuID="+MenuID
	xmlHttp.onreadystatechange=stateChanged1 
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

function stateChanged(){ 
 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){ 
    document.getElementById("QuickTD").innerHTML=document.getElementById("QuickTD").innerHTML+  QuickEle 
    document.getElementById("QMCntTxt").value=parseInt(document.getElementById("QMCntTxt").value)+1
    SessionStTime=0
  } 
} 
function stateChanged1(){ 
 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){  
    document.getElementById("QMCntTxt").value=parseInt(document.getElementById("QMCntTxt").value)-1   
    SessionStTime=0
  } 
} 
var MenuID
var obj
function displayMenu(obj) {
   //whichDiv=event.srcElement;  
  // menu1.style.leftPos+=10;
   //menu1.style.posLeft=event.clientX;
   //menu1.style.posLeft=(screen.availWidth)-(event.clientY);
   
   MenuID=obj.id   
   if(event.clientX>(screen.availWidth)-(100))  
       menu1.style.posRight=10;
   else
       menu1.style.posLeft=event.clientX;   
       menu1.style.posTop=event.clientY;
       menu1.style.display="";
       menu1.setCapture();
}
function clickMenu() {
   menu1.releaseCapture();
   menu1.style.display="none";
   el=event.srcElement;  
   
   if (el.id=="mnuDel") { 
       obj=document.getElementById(MenuID)         
       obj.style.display="none";    
       QuickMenuDel(MenuID)      
   }else if (el.id=="mnuClose") {   
    
   }
}
function switchMenu() {   
   el=event.srcElement;
   if (el.className=="menuItem") {
      el.className="highlightItem";
   } else if (el.className=="highlightItem") {
      el.className="menuItem";
   }
}

function FnGetMenu(){
if(window.event.keyCode==13){
  var EleId
   
  EleId=document.getElementById("TxtQuick").value;
  
 //window.parent.AppBody.frames[0].document.all("1-1-0").click()
try{
  window.parent.AppBody.frames[0].document.getElementById(EleId).click()
  }
  catch(ex)
  {
  alert("Invalid Quick Access Menu Code")
  }
  
 }
}

function fnPgLoad(){	
	tm=window.parent.AppBody.frames["menuFrame"].PgLoadSts.value	
	 
	if(tm==1){		
		PGLoadTD.style.display='none';	
//		A1.href="JavaScript:fnShowBasic()"
//		A2.href="JavaScript:fnShowAddOn()"
//		A3.href="JavaScript:fnShowAD()"	
//		A6.href="JavaScript:fnShowMAST()"
//		A7.href="JavaScript:fnShowBAPR()"
	}else{			
	}	
}

function ChangeImg(obj){
if(obj.id)
obj.src="Images/refresh_n.gif"
}

function fnShowPage(val,menucode){
 

  if(window.parent.AppBody.frames[0].document.getElementById(menucode)!=null)
  {
 
        var obj=document.getElementById("AncQM")
        
           obj.href=val
           obj.click() 
    }
    else
    {
    alert("Not Autherised To View The Page")
    }       
}
//-->
    </script>

</head>
<body topmargin="0" leftmargin="0" bottommargin="0" rightmargin="0" onload="ass(),fnPgLoad()">
    <form runat="server" id="f1">
        <table width="100%" height="100%" align="center" border="0" cellspacing="0" cellpadding="0">
            <tr height="55" style="height: 55px;">
                <!--1st TR-->
                <td width="100%">
                    <table width="100%" height="100%" align="center" border="0" cellspacing="0" cellpadding="0">
                        <tr valign="bottom" style="background-image: url('Images/top_bg.png'); height: 36px;
                            border-right: 0px;">
                            <!--<td style="Background-image:url('Images/logostrip_1.gif');background-repeat:no-repeat;background-color:#50b436;">
						
						</td>-->
                            <td width="30%" style="border-right: 0px;">
                                <!--[if IE 6]>
                                <img alt="" src="../Images/QMS_Title.jpg" />                                     
                            <![endif]-->
                                <!--[if !IE 6]>
                                <img alt="" src="../Images/QMS_Title.png" />                                 
                            <![endif]-->
                            </td>
                            <td align="center" style="border-left: 0px; border-right: 0px; background-color: #50b436;">
                                <span style="font-size: 9pt; color: #000; font-family: Arial; letter-spacing: 0px;
                                    font-variant: small-caps; font-weight: bold">Plant :</span>
                                <asp:Label ID="lblPlantName" Style="font-size: 9pt; color: #000; font-family: Georgia,Garamond;
                                    letter-spacing: 1px; font-variant: small-caps" runat="server">xioxioxio</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                                <span style="font-size: 9pt; color: #000; font-family: Arial; letter-spacing: 1px;
                                    font-variant: small-caps; font-weight: bold">Current User :</span>
                                <asp:Label ID="lblUserName" Style="font-size: 9pt; color: #000; font-family: Arial;
                                    letter-spacing: 1px; font-variant: small-caps" runat="server">xioxioxio</asp:Label>
                            <asp:TextBox ID="TxtUserId" style="display:none" runat="server"></asp:TextBox>
                            </td>
                            <td style="border-left: 0px;">
                                    <A id="BackA" onMouseOver="className='AHover'"  accesskey="S" Href="JavaScript:window.history.back();" title="Back Script Alt + S"><IMG Border="0" src="Images/back_n.png" onmouseover="this.src='Images/back_o.png'" onmouseout="this.src='Images/back_n.png'"></A>&nbsp;
                                    <A target="bodyFrame"  id="HomeA" accesskey="H" Href="BodyHome.aspx" title="Home Alt + H"><IMG Border="0" src="Images/home_n.png" onmouseover="this.src='Images/home_o.png'" onmouseout="this.src='Images/home_n.png'"></A>&nbsp;
                                    <A  id="RefreshA" Href="JavaScript:fnRefresh()" accesskey="R"  title="Refresh"><IMG Border="0" src="Images/refresh_n.png" onmouseover="this.src='Images/refresh_o.png'" onmouseout="this.src='Images/refresh_n.png'"></A>&nbsp;                                
                                    <A  id="ReBuildA" Href="JavaScript:ReLogin()"><IMG Border="0" style="cursor:hand"  title="Session Rebuild" src="Images/rebuild_n.png" onmouseover="this.src='Images/rebuild_o.png'" onmouseout="this.src='Images/rebuild_n.png'"></A>
                                    <A target="_parent" id="SignouthrefID" accesskey="X" Href="RIndex.aspx?UsrId=<%=UsrId%>" title="SignOut Alt + X"><IMG Border="0" src="Images/signout_n.png" onmouseover="this.src='Images/signout_o.png'" onmouseout="this.src='Images/signout_n.png'" ></A>                                 
                            </td>
                        </tr>
                        <tr height="30px">
                            <td colspan="2" width="80%" oncontextmenu="return false" onmouseover="fnCrQuickMenu()"
                                id="QuickTD" runat="server" style="border-right: 0; background-image: url('Images/strip_3.png');">
                            </td>
                            <td style="border-left: 0; border-bottom-width: thin; border-bottom-color: #c9dfae;
                                background-image: url('Images/strip_3.png'); height: 22px">
                                <span style="padding-left: 30; font-size: 9pt; font-family: verdana; letter-spacing: 0px;
                                    font-variant: small-caps;color:White;">Quick&nbsp;Menu&nbsp;Access&nbsp;</span><input type="text" name="TxtQuick"
                                        onkeypress="FnGetMenu()" maxlength="5" style="width: 80px; height: 22px;" title="Enter value for quick menu" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <!--1st TR-->
            <!--Body-->
            <!--2rd TR-->
            <tr height="95%">
                <td colspan="3" style="background-color: #528824; background-image:url('images/strip_3.png')">
                    <table width="100%" height="100%" align="center" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="10">
                                <img id="ImgLeftPane" border="0" onclick="fnShowBasic(this.src)" src="IMAGES/pane-splitter-coll-v-e-new.PNG">
                            </td>
                            <td>
                                <iframe id="AppBody" name="AppBody" style="display: block" align="middle" height="100%"
                                    scrolling="auto" src="HomeFrame.aspx" width="100%" marginwidth="0" marginheight="0">
                                </iframe>
                            </td>
                            <td width="2">
                                <img id="ImgRightPane" border="0" onclick="fnShowBasic1(this.src)" src="IMAGES/pane-splitter-coll-v-e-new.PNG">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <!--2rd TR-->
            <tr>
                <td align="center" colspan="3">
                    <span id="PGLoadTD" style="font-size: 12pt; z-index: 201; left: 484px; color: blue;
                        position: absolute; top: 356px">
                        <img src="IMAGES/loading.gif" /></span>
                </td>
            </tr>
            <!--3rd TR-->
            <tr height="5">
                <td colspan="3" height="1">
                </td>
            </tr>
        </table>
        <asp:TextBox ID="UserNmTxt" Style="display: none" runat="server"></asp:TextBox>
        <asp:TextBox ID="UserIDTxt" Style="display: none" runat="server"></asp:TextBox>
        <asp:TextBox ID="PlantIDTxt" Style="display: none" runat="server"></asp:TextBox>
        <div id="menu1" onclick="clickMenu()" onmouseover="switchMenu()" onmouseout="switchMenu()"
            style="border-right: #c9dfae 2px outset; border-top: #c9dfae 2px outset; display: none;
            border-left: #c9dfae 2px outset; width: 100px; border-bottom: #c9dfae 2px outset;
            position: absolute; background-color: #ffffff">
            <div class="menuItem" id="mnuDel">
                Delete</div>
        </div>
        <a id="AncQM" target="bodyFrame" style="display: none;">Quick Menu</a>
        <asp:TextBox ID="QMCntTxt" Style="display: none" runat="server" Text="0"></asp:TextBox>
    </form>
</body>
</html>

<script language="javascript">
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
 // dragObj.elNode.style.top  = (dragObj.elStartTop  + y - dragObj.cursorStartY) + "px";

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

function fnHelp(){


    var Obj=window.parent.AppBody.frames["menuFrame"].objname.value
    alert(Obj)
    if(Obj!=''){   
	var features = "height=550,width=720,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=0,left=0"
	HelpObj = window.open(Obj,'Help',features)
	if(HelpObj.opener == null) HelpObj.opener=self;
	HelpObj.focus();
	}
 }	
 
 if (document.images) 
{
  var img1 = new Image();
  var imglistAry =new Array()
  var imgList='bg_hd.gif;VolSolNameReg1.jpg;center-bg-menustrip.png;tabon_new.gif;tblheadbg.jpg;tabon.gif;'
  imgList=imgList + 'blue_button_repe.gif;tblheadbg.jpg;tabon.gif;bgaero.gif;bkg_cmntBoxTop.gif;bkg_cmntBoxTop.gif;'
  imgList=imgList + 'bg_hd.gif;button_bg2.gif;button_bg2.gif;down.jpg;up.jpg;Popup.jpg;f-next.gif;plus.gif;minus.gif;alert_anim.gif;'
  imgList=imgList + 'alert_static.gif;report_alert_anim.gif;report_alert_static.gif;action_alert_anim.gif;action_alert_static.gif;up.jpg;down.jpg;'
  imglistAry=imgList.split(';')
  
  for(i=0;i<imglistAry.length;i++){
   img1.src = "IMAGES/" +  imglistAry[i]
   }
 
}
//setTimeout("fnShowBasic1('IMAGES/pane-splitter-coll-v-e-new.PNG')",2000)
 function getplant()
{
var LId=<%=session("EsignerID")%>
window.navigate("PlantSelection.aspx?LId=" + LId+'&flg=1')
}

function bas()
{
    window.self.name='CaliberQAMS'
}



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



//---------------- End of pop Up  code----------------

//for disabling autocomplete
function AutoComplete()
{
var formcount = document.forms.length

for(i=0;i<formcount;i++)
{
 
 document.forms(i).setAttribute("autocomplete","off"); 
}
}
window.setTimeout("AutoComplete()",300);

window.setTimeout("Ajax_EffectnessMonitoring()",100)

//-->
</script>

