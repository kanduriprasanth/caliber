//Tool Tip Help Window Message
//function fnTipLayer(disPos){
//	var ua = navigator.userAgent
//	var dom = (document.getElementById)? 1:0
//	var ie4 = (document.all&&!dom)? 1:0
//	var ie5 = (document.all&&dom)? 1:0
//	var HideTip = "eval(obj+sv+hl+';'+obj+sl+'=0;'+obj+st+'=-800')"
//	var doc_root = ((ie5&&ua.indexOf("Opera")<0||ie4)&&document.compatMode=="CSS1Compat")? "document.documentElement":"document.body"

//	var mx = "event.x"
//	var my = "event.y"
//	var scl = "eval(doc_root).scrollLeft"
//	var sct = "eval(doc_root).scrollTop"
//	mx = mx+"+"+scl 
//	my = my+"+"+sct
//			
//	TipLayer.style.display='block'	
//	if(disPos=='1'){
//	TipLayer.style.left = eval(mx) - (TipLayer.clientWidth/2)
//	TipLayer.style.top = eval(my)
//	}else
//	if(disPos=='2'){
//	TipLayer.style.left = eval(mx) - (TipLayer.clientWidth)
//	TipLayer.style.top = eval(my)
//	}else{
//	TipLayer.style.left = eval(mx) - (TipLayer.clientWidth/2)
//	TipLayer.style.top = eval(my) - (TipLayer.clientHeight + 10)
//	}
//}
//function fnTipLayerClose(){
//TipLayer.style.display='none'
//}


//	//Allows only numericals from 0 - 9 characters.
//	function fnOnlyNumericals(){
//		var KC = window.event.keyCode
//		if(KC<48 || KC>57){
//		window.event.cancelBubble = true;	
//		return(false);
//		}
//	}

//	//Checks for Special Characters and Removes white spaces
//	function TrimAndEdit()
//	{
//		var forms = document.forms.length
//		for(i=0;i<forms;i++)
//		{
//			var formName = document.forms(i).name
//			var elements = document.all(formName).elements.length
//			for(j=0;j<elements;j++){
//				var EType = document.all(formName).elements(j).type
//				var EValue = document.all(formName).elements(j).value
//				
//				if((EType == "text" || EType == "textarea")&& !EValue==""){
//					var tmpAry = new Array()
//					var str = EValue
//					while(true){
//						if(str.indexOf("  ")!=-1){
//							tmpAry = str.split("  ");
//							str = tmpAry.join(" ");
//							document.all(formName).elements(j).value = str;
//						}
//						else{
//							if(str == " " || str == "\t")
//							document.all(formName).elements(j).value = ""
//							break;
//						}
//					}//while
//					if(str.indexOf("'")!=-1 || str.indexOf("`")!=-1 || str.indexOf("#")!=-1 || str.indexOf("<%")!=-1 || str.indexOf("%>")!=-1 ){
//						alert("Special Symbols  \" #(Hash), '(Single Quote), <%, %> and ` \"  are not allowed")
//						document.all(formName).elements(j).focus()
//						return(false);
//					}
//				}//if
//			}//j
//		}//i
//		return(true);
//	}


////Disable right click
var message="";
///////////////////////////////////
function clickIE() {if (document.all) {(message);return false;}}
function clickNS(e) {if
(document.layers||(document.getElementById&&!document.all)) {
if (e.which==2||e.which==3) {(message);return false;}}}
if (document.layers)
{document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}
else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}

document.oncontextmenu=new Function("return false")