<%@ Page CodeBehind="MenuScroll.aspx.vb" Language="vb"  EnableViewState="false" AutoEventWireup="false" Inherits="QAMS300BL.MenuScroll" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Strict//EN">

<html>
	<head>
		<title></title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
		<meta name="GENERATOR" content="Microsoft Visual Studio 6.0" />
	<link rel="stylesheet" type="text/css" href="TRIMS.css" />
			<style type="text/css">			 		
			.ParentTD 
			{
			filter:progid:DXImageTransform.Microsoft.Gradient(startColorstr='#a1d5eb', endColorstr='#c4e2ef', gradientType='0');
			FONT-SIZE: 11pt; FONT-FAMILY: Arial;border-style:Outset;border-width:1px; color:white;
			}
			.AncHead { FONT-SIZE:9pt; WIDTH:100%;Height=100%; COLOR: #000000; FONT-FAMILY: Arial; TEXT-DECORATION: none }
			
			.Anc {Padding:0px;padding-Left:5px;padding-Bottom:2px; FONT-SIZE:8pt; WIDTH: 100%;Height:100%; COLOR:#003366; FONT-FAMILY:Sans Serif,Tahoma,Arial; TEXT-DECORATION: none;}
			.AncOver 
			{
			filter:progid:DXImageTransform.Microsoft.Gradient(startColorstr='#fef0d1', endColorstr='#b1965a', gradientType='0');
			Padding:0px;padding-Left:5px;padding-Bottom:2px; FONT-SIZE:8pt; WIDTH: 100%;Height:100%; COLOR:'#05208A'; FONT-FAMILY:Sans Serif,Tahoma,Arial; TEXT-DECORATION: none ;
			}
			.AncOver2 
			{   filter:progid:DXImageTransform.Microsoft.Gradient(startColorstr='#b1965a', endColorstr='#fef0d1', gradientType='0');
			    Padding:0px;padding-Left:5px;padding-Bottom:2px; FONT-SIZE:8pt; WIDTH: 100%;Height:100%; COLOR:#000000; FONT-FAMILY:Sans Serif,Tahoma,Arial; TEXT-DECORATION: none ;}
			
			.ToggleCls {BACKGROUND-POSITION: center 50%; BACKGROUND-IMAGE:URL(IMAGES/AutoClose.gif); WIDTH:18; CURSOR: hand; HEIGHT:15; background-color:#000000;background-repeat:no-repeat;border-width:1px;border-style:solid;border-color:#93A4DC;}
			.ToggleOVCls {BACKGROUND-POSITION: center 50%; BACKGROUND-IMAGE:URL(IMAGES/AutoClose.gif); WIDTH:18; CURSOR: hand; HEIGHT:15; background-color:#000000;background-repeat:no-repeat;border-width:1px;border-style:solid;border-color:#FFFFFF;}
			
			.ToggleCls1 {BACKGROUND-POSITION: center 50%; BACKGROUND-IMAGE:URL(IMAGES/AutoHideL.gif); WIDTH:18; CURSOR: hand; HEIGHT:15; background-color:#000000;background-repeat:no-repeat;border-width:1px;border-style:solid;border-color:#93A4DC;}
			.ToggleOVCls1 {BACKGROUND-POSITION: center 50%; BACKGROUND-IMAGE:URL(IMAGES/AutoHideD.gif); WIDTH:18; CURSOR: hand; HEIGHT:15; background-color:#000000;background-repeat:no-repeat;border-width:1px;border-style:solid;border-color:#93A4DC;}
			 
			.MenuHeader{Height:22px;Background-color:#000000;Color:#FFFFFF;border-style:groove;border-width:2px;font-family:Tahoma,Arial;font-size:8pt;Padding-left:4px;Padding-Top:1px;Padding-Right:1px;letter-spacing:1px;}
			
			.MenuTable{Border-Style:Groove;Border-width:1px;}
			.Menu{border-style:groove;Border-left:0px;border-width:1px;Background-Color:#FFFFFF;}
			.SubMenu{Background-Color:#FFFFFF;}
			</style>
			<script language="javascript" type="text/javascript">

			var ie = (navigator.appName.indexOf("Internet Explorer") !=-1) ? true: false;

            if(!ie)
            {
                HTMLElement.prototype.click = function() {
                var evt = this.ownerDocument.createEvent('MouseEvents');
                evt.initMouseEvent('click', true, true, this.ownerDocument.defaultView, 1, 0, 0, 0, 0, false, false, false, false, 0, null);
                this.dispatchEvent(evt);
                } 
            }
			
			function fnMenuNavigate(){ 
				window.parent.frames['mainFrame'].cols="0,*"				
			}
			function fnAutoHide(){
				if(document.getElementById("MenuFlag").value == 'true'){
					document.getElementById("MenuFlag").value = 'false'
					document.all("AutoHideSAM").className='ToggleOVCls1'					
					document.all("AutoHideSM").className='ToggleOVCls1'
					document.all("AutoHideRM").className='ToggleOVCls1'					
				}else{
					document.getElementById("MenuFlag").value = 'true'
					document.all("AutoHideSAM").className='ToggleCls1'
					document.all("AutoHideSM").className='ToggleCls1'
					document.all("AutoHideRM").className='ToggleCls1'
					fnMenuNavigate()
				}
			}

	function fnload(){
		document.all("PgLoadSts").value=1;		
		}
			</script>
	</head>
	<body  onload="javascript:fnload()" style="padding-left:-10pt ">
		
		
		
		<!-- IssueManager MODULES -->
		<TABLE ID="AOMMenu" Style="Display:none;"   width ="100%"   ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">			
			<TR height=20 Style=" cursor:hand;" onclick="fnShowAddOn()" >
				<TD valign=middle  width=85%><SPAN style='width:0px;'><img src="IMAGES/IssueManager_n.gif" onmouseover="this.src='Images/IssueManager_o.gif'" onmouseout="this.src='Images/IssueManager_n.gif'"/></SPAN>
				
				</TD>
			</TR>
			<TR><TD valign="top" id="LiteralAOMTD" Style="Display:none;">
				<ASP:LITERAL id="LiteralAOM" runat="server"></ASP:LITERAL>					
			</TD></TR>
		</TABLE>
					
		
		<!-- AUDIT MODULES -->
		<TABLE ID="AUDITMenu" Style="Display:none;"   width ="100%"   ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">			
			<TR height=20 Style=" cursor:hand;" onclick="fnShowAUDIT()" >
				<TD valign=middle  width=85%><SPAN style='width:0px;'><img src="IMAGES/audit_n.gif" onmouseover="this.src='Images/audit_o.gif'" onmouseout="this.src='Images/audit_n.gif'"/></SPAN>
				
				</TD>
			</TR>
			<TR><td id="LiteralAUDITTD" style="display: none;" valign="top">
				<ASP:LITERAL id="LiteralAUDIT" runat="server"></ASP:LITERAL>					
			</TD></TR>
		</TABLE>
		
		<!-- CAPA MODULES -->
		<TABLE ID="CAPAMenu" Style="Display:none;"   width ="100%"   ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">			
			<TR height=20 Style=" cursor:hand;" onclick="fnShowCAPA()" >
				<TD valign=middle  width=85%><SPAN style='width:0px;'><img src="IMAGES/capa_n.GIF" onmouseover="this.src='Images/capa_o.gif'" onmouseout="this.src='Images/capa_n.GIF'"/></SPAN>
				
				</TD>
			</TR>
			<TR><td id="LiteralCAPATD" style="display: none;" valign="top">
				<ASP:LITERAL id="LiteralCAPA" runat="server"></ASP:LITERAL>					
			</TD></TR>
		</TABLE>

		<!-- EFORM MODULES -->
		<TABLE ID="EFORMMenu" Style="Display:none;"   width ="100%"   ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">			
			<TR height=20 Style=" cursor:hand;" onclick="fnShowEFORM()" >
				<TD valign=middle  width=85%><SPAN style='width:0px;'><img src="IMAGES/EFormsManager_n.gif" onmouseover="this.src='Images/EFormsManager_o.gif'" onmouseout="this.src='Images/EFormsManager_n.gif'"/></SPAN>
				
				</TD>
			</TR>
			<TR><td id="LiteralEFORMTD" style="display: none;" valign="top">
				<ASP:LITERAL id="LiteralEFORM" runat="server"></ASP:LITERAL>					
			</TD></TR>
		</TABLE>
    
		<div style="display:none" >
		<!-- Schedule MODULES -->
		<TABLE ID="ScheduleMenu" Style="Display:none;"   width ="100%"   ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">			
			<TR height=20 Style=" cursor:hand;" onclick="fnShowSchedule()" >
				<TD valign=middle  width=85%><SPAN style='width:0px;'><img src="IMAGES/schedule_n.gif" onmouseover="this.src='Images/schedule_o.gif'" onmouseout="this.src='Images/schedule_n.gif'"/></SPAN>
				
				</TD>
			</TR>
			<TR><td id="LiteralScheduleTD" style="display: none;" valign="top">
				<ASP:LITERAL id="LiteralSchedule" runat="server"></ASP:LITERAL>					
			</TD></TR>
		</TABLE>
</div>
        <!-- MAST  -->
		<table ID="MASTMenu" Style="Display:none;"    WIDTH="100%"  ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">			
			<TR height=20 Style="  cursor:hand;" onclick="fnShowMAST()">
				<TD valign=middle  width=85%  ><SPAN style='width:106px;'><img src="Images/configuration_n.gif" onmouseover="this.src='Images/configuration_o.gif'" onmouseout="this.src='Images/configuration_n.gif'"  /></SPAN>				              
				
				</TD>
			</TR>
			<TR><TD valign="top" id="LiteralMASTTD" Style="Display:none;">
				<ASP:LITERAL id="LiteralMAST"  runat="server"></ASP:LITERAL>					
			</TD></TR>
		</table>

		<!-- ADMINISTRATOR -->
		<TABLE ID="ADMenu" Style="Display:none;" width="100%"  ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">			
			<TR height=20 Style="  cursor:hand;" onclick="fnShowAD()">
				<TD valign=middle  width=85%  ><SPAN style='width:106px;'><img src="IMAGES/SystemManager_n.gif" onmouseover="this.src='Images/SystemManager_o.gif'" onmouseout="this.src='Images/SystemManager_n.gif'"/></SPAN>				              
				
				</TD>
			</TR>
			<TR><TD valign="top" id="LiteralADTD" Style="Display:none;">
				<ASP:LITERAL id="LiteralAD"  runat="server"></ASP:LITERAL>					
			</TD></TR>
		</TABLE>
	
		<!-- BASIC LIMS -->
		<TABLE ID="BasicMenu" Style="Display:none;"   WIDTH="100%"  ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">
			<TR height=0 Style="  cursor:hand;" onclick="fnShowBasic()">
				<TD valign=middle  width=100% ><SPAN style='width:0px;'><img src="IMAGES/samplemanager_n.gif" onmouseover="this.src='Images/samplemanager_o.gif'" onmouseout="this.src='Images/samplemanager_n.gif'" width ="0" height ="0" /></SPAN>
				
				</TD>
			</TR>
			<TR>
				<TD colspan="2" valign="top" id="LiteralBLTD" Style="Display:none;Padding-Left:0px;" >
				<asp:Literal id="LiteralBL" runat="server"></asp:Literal>
			</TD></TR>
		</TABLE>
				
		<input type="hidden" value='true' id='MenuFlag' name='MenuFlag' />
		<input type="hidden"  id='HidQuickMenu' />
		<input type="hidden"  id='HidQuickVal' />		
		<input type="hidden" id='PgLoadSts' />
		<script language="javascript" type="text/javascript">		

		var plusImg = "IMAGES/plus.gif"
		var minusImg = "IMAGES/minus.gif"

		var col1= ''//'#abe69b'
		var col2=''//'#426f36'

		//////////////////////////////// ADMINISTRATOR ///////////////////////////
		function fnShowADMenu(MNo){
			fnShowMenu_Common(MNo,"AD")
		}
		function fnShowADSubMenu(MNo,jVal)	{
	        fnShowSubMenu_Common(MNo,jVal,"AD")
		}

		/////////////////////////////////////////////////////////////////////////

	////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////
		function fnShowMenu_Common(MNo,MeniPrefix)	{
		var maxMod = document.all(MeniPrefix+"_TotModules").value
		for(i=1;i<=maxMod;i++){
		    if(document.all(MeniPrefix+"_Mod"+ i) != null)
		    {
			    document.all(MeniPrefix+"_Mod"+ i).style.backgroundColor=col1
			    //document.all("AOM_Mod"+ i).style.color='Black'
			    if(i!=MNo){
			    document.all(MeniPrefix+"_Men"+ i).style.display='none'
			    }
			    document.all(MeniPrefix+"_Img"+ i).src=plusImg
		    }
		}
		
		document.all(MeniPrefix+"_Mod"+ MNo).style.backgroundColor=col2
		//document.all("AOM_Mod"+ MNo).style.color='White'
		if(document.all(MeniPrefix+"_Men"+ MNo).style.display=='block'){
		   document.all(MeniPrefix+"_Men"+ MNo).style.display='none'
 		}else{
		   document.all(MeniPrefix+"_Men"+ MNo).style.display='block'
		document.all(MeniPrefix+"_Img"+ MNo).src=minusImg
		}		
	}

	function fnShowSubMenu_Common(MNo,jVal,MeniPrefix)	{
		if(document.all(MeniPrefix+"_SubMen"+ MNo +"-"+ jVal)!=null){
			if(document.all(MeniPrefix+"_SubMen"+ MNo +"-"+ jVal).style.display == 'none'){
			document.all(MeniPrefix+"_SubMen"+ MNo +"-"+ jVal).style.display='block';
			document.all(MeniPrefix+"_Img"+ MNo +"-"+ jVal).src=minusImg
			}else{
			document.all(MeniPrefix+"_SubMen"+ MNo +"-"+ jVal).style.display = 'none';
			document.all(MeniPrefix+"_Img"+ MNo +"-"+ jVal).src=plusImg
			}
		}else{
		alert("No Sub Menus available")
		}
	}
	////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////
	
		function fnGetMenuInfo(innerTextArg){
			//alert(innerTextArg)
		}
		
		function fnOnError(){
			return true;
		}
		
		window.onerror = fnOnError;		
	
        </script>
	</body>
</html>
<script type="text/javascript" language="javascript">
function AddtoFevarate(obj,ModID, ModCatID){ 
var str
var MenuID
var Title
var Icon
var Path
var AncEle
var Arr

      str=obj.href
      Arr=str.split('/')  
      MenuID=obj.id             
      Title=obj.title          
      Path=Arr[Arr.length-2]+"/"+Arr[Arr.length-1]
       Icon="Images/MenuImages/"+MenuID+".jpg"   
           
      //Icon="Images/MenuImages/1_1_0.gif"  
      //AncEle="<A target='bodyFrame' class='Anc' id="+ MenuID +" oncontextmenu='displayMenu(this);return false'  Href='"+ Path +"' title='"+ Title +"'><IMG src='"+ Icon +"'></A>"  
      AncEle="<img id='"+ MenuID +"' src='"+ Icon +"' onclick=fnShowPage('" + Path + "','" + MenuID + "') oncontextmenu='displayMenu(this);return false;' title='" + Title + "' />"              
     
     // AncEle="<A target='bodyFrame' id="+ MenuID +" oncontextmenu='displayMenu(this);return false'  Href='"+ Path +"' title='"+ Title +"' ><div id=Div"+ MenuID +" class='QMI' onmousedown=dragStart(event,'Div"+ MenuID +"')>SL</DIV></A>"     
      document.getElementById("HidQuickMenu").value=AncEle;          
      document.getElementById("HidQuickVal").value=ModID+"$"+MenuID+"$"+Title+"$"+Path+"$"+Icon+"$"+ModCatID;                 
      window.setTimeout("ClearVal()",2000);
	}
function ClearVal(){
  document.all("HidQuickMenu").value="" 
}	
</script>

<script type="text/javascript" language="javascript">
function SetMenu_display(BlockabelContId,DispType)
{
    BlockabelContId = BlockabelContId == null ? "" : BlockabelContId
    DispType = DispType == null ? "none" : DispType
    if(window.parent.AppBody.frames != null)
    {
        var FrameObj = window.parent.AppBody.frames[0]
	    FrameObj.BasicMenu.style.display= (FrameObj.BasicMenu.id == BlockabelContId ? 'block' : DispType);
	    FrameObj.ADMenu.style.display= (FrameObj.ADMenu.id == BlockabelContId ? 'block' : DispType);
	    FrameObj.AOMMenu.style.display= (FrameObj.AOMMenu.id == BlockabelContId ? 'block' : DispType);
	    FrameObj.MASTMenu.style.display= (FrameObj.MASTMenu.id == BlockabelContId ? 'block' : DispType);
        FrameObj.CAPAMenu.style.display= (FrameObj.CAPAMenu.id == BlockabelContId ? 'block' : DispType);
        //FrameObj.AUDITMenu.style.display= (FrameObj.AUDITMenu.id == BlockabelContId ? 'block' : DispType);
//        var Flag="<%=Flag%>"
//        if(Flag!="EFrm")
//        {
            FrameObj.EFORMMenu.style.display= (FrameObj.EFORMMenu.id == BlockabelContId ? 'block' : DispType);
        //}
        
        FrameObj.ScheduleMenu.style.display= (FrameObj.ScheduleMenu.id == BlockabelContId ? 'block' : DispType);
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

function fnShowAUDIT()
{
	SetMenu_display("AUDITMenu")
}

function fnShowCAPA()
{
	SetMenu_display("CAPAMenu")
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

function fnShowBasic()
{	
    SetMenu_display("",'block')
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

</script>


<script type="text/javascript" language="javascript">

function SetLiteralTD_display(BlockabelContId,DispType)
{
    BlockabelContId = BlockabelContId == null ? "" : BlockabelContId
    DispType = DispType == null ? "none" : DispType

    LiteralBLTD.style.display=( LiteralBLTD.id == BlockabelContId ? 'block' : DispType);
    LiteralAOMTD.style.display=( LiteralAOMTD.id == BlockabelContId ? 'block' : DispType);
    LiteralADTD.style.display=( LiteralADTD.id == BlockabelContId ? 'block' : DispType);
    LiteralMASTTD.style.display=( LiteralMASTTD.id == BlockabelContId ? 'block' : DispType);
    LiteralCAPATD.style.display=( LiteralCAPATD.id == BlockabelContId ? 'block' : DispType);
    LiteralAUDITTD.style.display=( LiteralAUDITTD.id == BlockabelContId ? 'block' : DispType);
//     var Flag="<%=Flag%>"
//        if(Flag!="EFrm")
//        {
            LiteralEFORMTD.style.display= (LiteralEFORMTD.id == BlockabelContId ? 'block' : DispType);
       // }   
    LiteralScheduleTD.style.display=( LiteralScheduleTD.id == BlockabelContId ? 'block' : DispType);
}
function fnShowSchedule()
{
    if(LiteralScheduleTD.style.display=='none')
    {
        SetLiteralTD_display("LiteralScheduleTD")
    }
    else
    {
        SetLiteralTD_display()
    }
}

function fnShowEFORM()
{
    if(LiteralEFORMTD.style.display=='none')
    {
        SetLiteralTD_display("LiteralEFORMTD")
    }
    else
    {
        SetLiteralTD_display()
    }
}
function fnShowAUDIT()
{
    if(LiteralAUDITTD.style.display=='none')
    {
        SetLiteralTD_display("LiteralAUDITTD")
    }
    else
    {
        SetLiteralTD_display()
    }
}

function fnShowCAPA()
{
    if(LiteralCAPATD.style.display=='none')
    {
        SetLiteralTD_display("LiteralCAPATD")
    }
    else
    {
        SetLiteralTD_display()
    }
}

function fnShowBasic(){	
     if(LiteralBLTD.style.display=='none'){
        SetLiteralTD_display("LiteralBLTD")
    }else{
        SetLiteralTD_display()
    }	
}
function fnShowAddOn(){	
     if(LiteralAOMTD.style.display=='none'){
            SetLiteralTD_display("LiteralAOMTD")
  }else{
            SetLiteralTD_display("")
   }	
}
function fnShowAD(){	
     if(LiteralADTD.style.display=='none'){
            SetLiteralTD_display("LiteralADTD")
      }else{
            SetLiteralTD_display("")     
  }	
}

function fnShowENB(){	
     if(LiteralENBTD.style.display=='none'){        
   SetLiteralTD_display("LiteralENBTD")
 }else{
   SetLiteralTD_display("")
   }	
}

function fnShowBMR(){	
     if(LiteralBMRTD.style.display=='none'){        
   SetLiteralTD_display("LiteralBMRTD")
}else{
   SetLiteralTD_display("")
  }	
}


function fnShowMAST(){
     if(LiteralMASTTD.style.display=='none'){        
   SetLiteralTD_display("LiteralMASTTD")
}else{
   SetLiteralTD_display("")
  }	
}

function fnShowBAPR(){	
     if(LiteralBAPRTD.style.display=='none'){        
   SetLiteralTD_display("LiteralBAPRTD")
 }else{
   SetLiteralTD_display("")
    }	
}

function fnShowMYWOR(){	
     if(LiteralMYWORTD.style.display=='none'){        
   SetLiteralTD_display("LiteralMYWORTD")
 }else{
   SetLiteralTD_display("")
   }	
}

function fnShowAPPR(){	
     if(LiteralAPPRTD.style.display=='none'){        
   SetLiteralTD_display("LiteralAPPRTD")
 }else{
   SetLiteralTD_display("")
   }	
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



</script>