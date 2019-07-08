

/*This block is used for Standard reasons popup*/
/*''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
var winObj
function fnOpenReasons(ReasonType){
	var pageURL = "STDReasonPopUP.aspx?ReasonType="+ ReasonType
	
	var PWidth=470
    var PHeight=390
    var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
    var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
	
	var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft
	winObj = window.open(pageURL,'STDReason',features)
	if(winObj.opener == null) winObj.opener=self;
	winObj.focus();
}

function fnCloseObject(){
	if(winObj != null)
	winObj.close();
}
/*''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/



/*Allows only numericals from 0 - 9 characters.*/
/*''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
function fnOnlyNumericals(){
	var KC = window.event.keyCode
	if(KC<48 || KC>57){
	window.event.cancelBubble = true;	
	return(false);
	}
}
/*''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/

/* Allows to remove space from string
/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
function trim(str)
{
    if(!str || typeof str != 'string')
        return "";
    return str.replace(/^[\s]+/,'').replace(/[\s]+$/,'').replace(/[\s]{2,}/,' ');
}

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
					var poptop   =obj.clientTop;
				
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


//if (document.layers){
//document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;
//}else{
//document.onmouseup=clickNS;document.oncontextmenu=clickIE;
//document.oncontextmenu=new Function("return false")
//document.body.oncontextmenu= contextMenu  
// document.body.onselectstart=DisableCopy  

//}


 
function DisableCopy(){
if(!(event.srcElement.type=='text'|| event.srcElement.type=='textarea'))     	   
return false;
}