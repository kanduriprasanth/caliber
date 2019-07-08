

function ShowMask(PageUrl)
{
        var SAHeight =0
        var SAWidth = 0
        if(PageUrl)
        {
//            SAHeight =parseInt(document.body.clientHeight-80)
//            SAWidth = parseInt(document.body.clientWidth - 60)
            SAHeight =parseInt(document.body.clientHeight-40)
            SAWidth = parseInt(document.body.clientWidth-30)
            //if(SAHeight> 450){SAHeight=450}
            PageUrl = PageUrl+"&Hit="+(SAHeight)
            gDefaultPage = PageUrl;
        }
        initPopUp()
            showPopWin(SAWidth, SAHeight, null,"No",PageUrl);
}
function HideMask()
{
    hidePopWin()
    theBody = document.getElementsByTagName('BODY')[0];
    theBody.removeChild(document.getElementById ('popupMask'))
    if(document.getElementById ('WindowMask') !=null)
        theBody.removeChild(document.getElementById ('WindowMask'))
    if(document.getElementById ('WindowContainer') !=null)
        theBody.removeChild(document.getElementById('WindowContainer'))
}

var gPopupMask = null;
var gPopupContainer = null;
var gPopFrame = null;
var gReturnFunc;
var gPopupIsShown = false;
var gDefaultPage = "";
var gHideSelects = false;
var gReturnVal = null;
var gTabIndexes = new Array();
// Pre-defined list of tags we want to disable/enable tabbing into
var gTabbableTags = new Array("A","BUTTON","TEXTAREA","INPUT","IFRAME");	

// If using Mozilla or Firefox, use Tab-key trap.
if (!document.all) {
	document.onkeypress = keyDownHandler;
}



/**
 * Initializes popup code on load.	
 */
function initPopUp() {
	// Add the HTML to the body
	
	theBody = document.getElementsByTagName('BODY')[0];
	popmask = document.createElement('div');
	popmask.id = 'popupMask';
	popcont = document.createElement('div');
	popcont.id = 'popupContainer';
	if(gDefaultPage == "")
	{
	    popcont.innerHTML = '' +
		    '<div id="popupInner" style="background-color:white;width:100%;height:100%">' +
    		
			    '<div id="popupTitleBar">' +
    //				'<div id="popupTitle"></div>' +
    //				'<div id="popupControls">' +
    //					//'<img src="close.gif" onclick="hidePopWin(false);" id="popCloseBox" />' +
    //				'</div>' +
			    '</div>' +
			    '<img src="../IMAGES/loading.gif" />' +
			    //'<iframe src="'+ gDefaultPage +'"class="HideRow" style="width:0px;height:0px;background-color:white;background-image :../IMAGES/loading.gif" scrolling="auto" frameborder="0" allowtransparency="true" id="popupFrame" name="popupFrame" width="0px" height="0px"></iframe>' +
		    '</div>';
	}
	else
	{
	    popcont.innerHTML = '' +
		'<div id="popupInner" style="width:100%;height:100%">' +
			'<div id="popupTitleBar">' +
				'<div id="popupTitle"></div>' +
				'<div id="popupControls" style="text-align:right;height:18px;vertical-align:middle">' +
					'<img src="../Images/closeVista.gif" onclick="hidePopWin(false);" id="popCloseBox" />' +
				'</div>' +
			'</div>' +
			'<iframe src="'+ gDefaultPage +'" style="width:100%;height:100%;background-color:transparent;" scrolling="auto" frameborder="0" allowtransparency="true" id="popupFrame" name="popupFrame" width="100%" height="100%"></iframe>' +
		'</div>';
 	}

	theBody.appendChild(popmask);
	theBody.appendChild(popcont);
	
	gPopupMask = document.getElementById("popupMask");
	gPopupContainer = document.getElementById("popupContainer");
	if(gDefaultPage != "")
	{
	    gPopFrame = document.getElementById("popupFrame");	
	}
	// check to see if this is IE version 6 or lower. hide select boxes if so
	// maybe they'll fix this in version 7?
	var brsVersion = parseInt(window.navigator.appVersion.charAt(0), 10);
	if (brsVersion <= 6 && window.navigator.userAgent.indexOf("MSIE") > -1) {
		gHideSelects = true;
	}
	
	// Add onclick handlers to 'a' elements of class submodal or submodal-width-height
	var elms = document.getElementsByTagName('a');
	for (i = 0; i < elms.length; i++) {
		if (elms[i].className.indexOf("submodal") == 0) { 
			elms[i].onclick = function(){
				// default width and height
				var width = 0;
				var height =0;
					if(gDefaultPage == "") {width=500;height:300;}
				// Parse out optional width and height from className
				params = this.className.split('-');
				if (params.length == 3) {
					width = parseInt(params[1]);
					height = parseInt(params[2]);
				}
				showPopWin(width,height,null,"No" ,gDefaultPage); return false;
			}
		}
	}
}

function showPopWin(width, height, returnFunc, showCloseBox,Pageurl) {
	gPopupIsShown = true;
	disableTabIndexes();
	gPopupMask.style.display = "block";
	gPopupContainer.style.display = "block";
	// calculate where to place the window on screen
	centerPopWin(width, height);
	
	var titleBarHeight = parseInt(document.getElementById("popupTitleBar").offsetHeight, 10);


	gPopupContainer.style.width ="30px"; //width + "px";
	gPopupContainer.style.height ="30px"; //(height+titleBarHeight) + "px";
	if(gDefaultPage != "")
	{
	    gPopupContainer.style.width =width + "px";
	    gPopupContainer.style.height =(height+titleBarHeight) + "px";
	}
	setMaskSize();

	// need to set the width of the iframe to the title bar width because of the dropshadow
	// some oddness was occuring and causing the frame to poke outside the border in IE6
	if(gDefaultPage != "")
	{
	    gPopFrame.style.width = parseInt(document.getElementById("popupTitleBar").offsetWidth, 10) + "px";
	    gPopFrame.style.height = (height) + "px";
	// set the url
	    gPopFrame.src = gDefaultPage; //"EditGenericTemplate.aspx";
	}
	
	gReturnFunc = returnFunc;
	// for IE
	if (gHideSelects == true) {
		hideSelectBoxes();
	}
	
	window.setTimeout("setPopTitle();", 600);
}

//
var gi = 0;
function centerPopWin(width, height) {
	if (gPopupIsShown == true) {
		if (width == null || isNaN(width)) {
			width = gPopupContainer.offsetWidth;
		}
		if (height == null) {
			height = gPopupContainer.offsetHeight;
		}
		
		//var theBody = document.documentElement;
		var theBody = document.getElementsByTagName("BODY")[0];
		//theBody.style.overflow = "hidden";
		var scTop = parseInt(getScrollTop(),10);
		var scLeft = parseInt(theBody.scrollLeft,10);
	
		setMaskSize();
		
		//window.status = gPopupMask.style.top + " " + gPopupMask.style.left + " " + gi++;
		
		var titleBarHeight = parseInt(document.getElementById("popupTitleBar").offsetHeight, 10);
		
		var fullHeight = getViewportHeight();
		var fullWidth = getViewportWidth();
		
		gPopupContainer.style.top = ((scTop + (fullHeight - (height+titleBarHeight)) / 2)) + "px";
		gPopupContainer.style.left =  ((scLeft + (fullWidth - width) / 2)) + "px";
		//alert(fullWidth + " " + width + " " + gPopupContainer.style.left);
	}
}

window.onscroll = centerPopWin;

/**
 * Sets the size of the popup mask.
 *
 */
function setMaskSize() {
	var theBody = document.getElementsByTagName("BODY")[0];
			
	var fullHeight = getViewportHeight();
	var fullWidth = getViewportWidth();
	
	// Determine what's bigger, scrollHeight or fullHeight / width
	if (fullHeight > theBody.scrollHeight) {
		popHeight = fullHeight;
	} else {
		popHeight = theBody.scrollHeight;
	}
	
	if (fullWidth > theBody.scrollWidth) {
		popWidth = fullWidth;
	} else {
		popWidth = theBody.scrollWidth;
	}
	
	gPopupMask.style.height = popHeight + "px";
	gPopupMask.style.width = popWidth + "px";
}

/**
 * @argument callReturnFunc - bool - determines if we call the return function specified
 * @argument returnVal - anything - return value 
 */
function hidePopWin(callReturnFunc) {
	gPopupIsShown = false;
	var theBody = document.getElementsByTagName("BODY")[0];
	theBody.style.overflow = "";
	restoreTabIndexes();
	if (gPopupMask == null) {
		return;
	}
	gPopupMask.style.display = "none";
	gPopupContainer.style.display = "none";
	if (callReturnFunc == true && gReturnFunc != null) {
		// Set the return code to run in a timeout.
		// Was having issues using with an Ajax.Request();
		if(gDefaultPage == "")
	    {
		    gReturnVal = window.frames["popupFrame"].returnVal;
		    window.setTimeout('gReturnFunc(gReturnVal);', 1);
		}
	}
		if(gDefaultPage != "")
	    {
	        gPopFrame.src = "";
	    }
	// display all select boxes
	if (gHideSelects == true) {
		displaySelectBoxes();
	}
}

/**
 * Sets the popup title based on the title of the html document it contains.
 * Uses a timeout to keep checking until the title is valid.
 */
function setPopTitle() {
	return;
	//if (window.frames["popupFrame"].document.title == null) {
	//	window.setTimeout("setPopTitle();", 10);
//	} else {
//		document.getElementById("popupTitle").innerHTML = window.frames["popupFrame"].document.title;
//	}
}

// Tab key trap. iff popup is shown and key was [TAB], suppress it.
// @argument e - event - keyboard event that caused this function to be called.
function keyDownHandler(e) {
    if (gPopupIsShown && e.keyCode == 9)  return false;
}

// For IE.  Go through predefined tags and disable tabbing into them.
function disableTabIndexes() {
	if (document.all) {
		var i = 0;
		for (var j = 0; j < gTabbableTags.length; j++) {
			var tagElements = document.getElementsByTagName(gTabbableTags[j]);
			for (var k = 0 ; k < tagElements.length; k++) {
				gTabIndexes[i] = tagElements[k].tabIndex;
				tagElements[k].tabIndex="-1";
				i++;
			}
		}
	}
}

// For IE. Restore tab-indexes.
function restoreTabIndexes() {
	if (document.all) {
		var i = 0;
		for (var j = 0; j < gTabbableTags.length; j++) {
			var tagElements = document.getElementsByTagName(gTabbableTags[j]);
			for (var k = 0 ; k < tagElements.length; k++) {
				tagElements[k].tabIndex = gTabIndexes[i];
				tagElements[k].tabEnabled = true;
				i++;
			}
		}
	}
}


/**
* Hides all drop down form select boxes on the screen so they do not appear above the mask layer.
* IE has a problem with wanted select form tags to always be the topmost z-index or layer
*
* Thanks for the code Scott!
*/
function hideSelectBoxes() {
	for(var i = 0; i < document.forms.length; i++) {
		for(var e = 0; e < document.forms[i].length; e++){
			if(document.forms[i].elements[e].tagName == "SELECT") {
				document.forms[i].elements[e].style.visibility="hidden";
			}
		}
	}
}

/**
* Makes all drop down form select boxes on the screen visible so they do not reappear after the dialog is closed.
* IE has a problem with wanted select form tags to always be the topmost z-index or layer
*/
function displaySelectBoxes() {
	for(var i = 0; i < document.forms.length; i++) {
		for(var e = 0; e < document.forms[i].length; e++){
			if(document.forms[i].elements[e].tagName == "SELECT") {
			document.forms[i].elements[e].style.visibility="visible";
			}
		}
	}
}


function getViewportHeight() {
	if (window.innerHeight!=window.undefined) return window.innerHeight;
	if (document.compatMode=='CSS1Compat') return document.documentElement.clientHeight;
	if (document.body) return document.body.clientHeight; 

	return window.undefined; 
}
function getViewportWidth() {
	var offset = 17;
	var width = null;
	if (window.innerWidth!=window.undefined) return window.innerWidth; 
	if (document.compatMode=='CSS1Compat') return document.documentElement.clientWidth; 
	if (document.body) return document.body.clientWidth; 
}

/**
 * Gets the real scroll top
 */
function getScrollTop() {
	if (self.pageYOffset) // all except Explorer
	{
		return self.pageYOffset;
	}
	else if (document.documentElement && document.documentElement.scrollTop)
		// Explorer 6 Strict
	{
		return document.documentElement.scrollTop;
	}
	else if (document.body) // all other Explorers
	{
		return document.body.scrollTop;
	}
}
function getScrollLeft() {
	if (self.pageXOffset) // all except Explorer
	{
		return self.pageXOffset;
	}
	else if (document.documentElement && document.documentElement.scrollLeft)
		// Explorer 6 Strict
	{
		return document.documentElement.scrollLeft;
	}
	else if (document.body) // all other Explorers
	{
		return document.body.scrollLeft;
	}
}
