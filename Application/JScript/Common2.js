/*------------Pop Up Left Top X, Y pos. And Std. Width----------*/
var TransType = 0;

var PopUpLeftTopX
var PopUpLeftTopY
var PopUpWidth
var PopUpHeight

var GlobalIssueID = 0



function handleKeyDown(e) {
    var ctrlPressed = 0;
    var altPressed = 0;
    var shiftPressed = 0;

    var evt = (e == null ? event : e);

    shiftPressed = evt.shiftKey;
    altPressed = evt.altKey;
    ctrlPressed = evt.ctrlKey;
    self.status = ""
    + "shiftKey=" + shiftPressed
    + ", altKey=" + altPressed
    + ", ctrlKey=" + ctrlPressed

    if ((shiftPressed || altPressed || ctrlPressed)
     && (evt.keyCode < 16 || evt.keyCode > 18))
        alert("You pressed the " + fromKeyCode(evt.keyCode)
    + " key (keyCode " + evt.keyCode + ")\n"
    + "together with the following keys:\n"
    + (shiftPressed ? "Shift " : "")
    + (altPressed ? "Alt " : "")
    + (ctrlPressed ? "Ctrl " : "")
   )
    return true;
}

function handleKeyDown1(e) {
    var ctrlPressed = 0;

    var evt = (e == null ? event : e);


    ctrlPressed = evt.ctrlKey;
    self.status = ""
     + "ctrlKey=" + ctrlPressed

    if (ctrlPressed)
        alert("You pressed the "
    + (ctrlPressed ? "Ctrl " : "")
   )
    return true;
}




function SetPopDimensions() {
    PopUpLeftTopX = 20
    PopUpLeftTopY = 20
    PopUpWidth = 550
    PopUpHeight = 330

}
/* sample Code
//function fnOpenCrPopUp(oObject){
//   SetPopDimensions()
    
// 	var pageURL = "CreationPopUP.aspx"
//	var features = "height="+ PopUpHeight + ",width=" + PopUpWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + PopUpLeftTopY + ",left=" + PopUpLeftTopX


*/

function DisableDrop() {
    var obj = document.all('Approve_2')
    if (obj != null) {
        document.all('Approve_2').disabled = true
    }
}






/*-----*/

function ChkTextSize(ObjId, SizeLimit) {

    var Obj = document.getElementById(ObjId)
    var Txt = Obj.value

    if (Txt != '') {
        var TxtSize = Txt.length
        if (TxtSize > parseInt(SizeLimit * 1)) {
            Obj.value = Obj.value.substring(0, SizeLimit * 1);
            alert('Text Size Limited To ' + SizeLimit + ' Characters')
            //Obj.value = ''
            Obj.focus()
            return (false)
        }
    }
}







/*------------------*/

/*-------------------on approval--------*/

function SetRes(val) {
    if ((document.all("Approve")[1].checked == true) && (document.all("RemarksTxt").value == ''))
    { document.all("RemarksTxt").value = '---' }
    else
        if (document.all("RemarksTxt").value == '---')
        { document.all("RemarksTxt").value = '' }
}

function SetRes2(val, objId) {
    var RemTxt = "RemTxt" + objId
    var Approve = "AP" + objId
    if ((document.all(Approve)[1].checked == true) && (document.all(RemTxt).value == ''))
    { document.all(RemTxt).value = '---' }
    else
        if (document.all(RemTxt).value == '---')
        { document.all(RemTxt).value = '' }
}

var RequestPrefix = '';
var AppAction
function AskReasons() {
    if (!CheckReasons())
        Page_IsValid = false;

    return (Page_IsValid);
}

function CheckReasons() {
    var flag = true
    var RemarksObjName = RequestPrefix + ":RemarksTxt"
    var AppObjName = RequestPrefix + ":Approve"
    RequestPrefix = ''// to solve popup msg issue, Ravi-27-feb-08
    if (RequestPrefix == '') {
        RemarksObjName = "RemarksTxt"
        AppObjName = "Approve"
    }
    var formName = document.forms(0).name

    if ((document.forms(0).all(AppObjName)[1].checked) || (document.forms(0).all(AppObjName)[2].checked)) {
        if (document.forms(0).all(RemarksObjName).value == "") {
            alert("Enter  'Reasons If Not Approved'")
            flag = false
        }
    }
    if (document.forms(0).all(AppObjName)[0].checked)
        AppAction = 'Approve'

    if (document.forms(0).all(AppObjName)[1].checked)
        AppAction = 'Return'

    if (document.forms(0).all(AppObjName)[2].checked)
        AppAction = 'Drop'

    return (flag)
}

function GetAppAction(TrnTypVal) {
    var AppObjName = "Approve"
    var formName = document.forms(0).name

    if ((TrnTypVal == "6") || (TrnTypVal == "7")) {
        try {
            if (document.forms(0).all(AppObjName)[1].checked)
                AppAction = 'Approve'

            if (document.forms(0).all(AppObjName)[2].checked)
                AppAction = 'Return'

            if (document.forms(0).all(AppObjName)[3].checked)
                AppAction = 'Drop'
        }
        catch (Ex) {

        }


    } else {
        if (TrnTypVal == "8") {
            if (document.forms(0).all(AppObjName)[1].checked)
                AppAction = 'Approve'
            if (document.forms(0).all(AppObjName)[2].checked)
                AppAction = 'Drop'
        }
    }
    if (TrnTypVal == "21") {
        if (document.forms(0).all("DesciOption")[1].checked)
            AppAction = 'Forward As It Is'
        if (document.forms(0).all("DesciOption")[2].checked)
            AppAction = 'Forward With Discreet Values'
        if (document.forms(0).all("DesciOption")[3].checked)
            AppAction = 'Continue OOS Investigation'
    }
    if (TrnTypVal == "22") {
        if (document.forms(0).all("DesciOption")[1].checked)
            AppAction = 'Forward With Discreet Values'
        if (document.forms(0).all("DesciOption")[2].checked)
            AppAction = 'Continue OOS Investigation'
    }
    if (TrnTypVal == "23") {
        if (document.forms(0).all("DesciOption")[1].checked)
            AppAction = 'Approve'
        if (document.forms(0).all("DesciOption")[2].checked)
            AppAction = 'Return'
    }

}

function AskReasons1() {
    if (!CheckReasons1())
        Page_IsValid = false;

    return (Page_IsValid);
}

function CheckReasons1() {
    var flag = true
    if ((document.all("Approve")[2].checked)) {
        if (document.getElementById("Remarks").value == "") {
            alert("Enter  'Reasons If Not Approved'")
            flag = false
        }
    }

    if (document.all("Approve")[1].checked)
        AppAction = 'Approve'

    if (document.all("Approve")[2].checked)
        AppAction = 'Drop'

    return (flag)
}

/*Allows only numericals from 0 - 9 characters.*/
/*''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
function fnOnlyNumericals() {
    var KC = window.event.keyCode
    if (KC < 48 || KC > 57) {
        window.event.cancelBubble = true;
        return (false);
    }
}
/*''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/

/*--------------------------*/

function fnOpenReasons(ReasonType, CallObj) {

    var PWidth = 470
    var PHeight = 390
    var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
    var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

    var pageURL = "../CaliberCommonCtrls/STDReasonPopUP.aspx?ReasonType=" + ReasonType + "&CallObj=" + CallObj
    var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft
    winObj = window.open(pageURL, 'STDReason', features)
    if (winObj.opener == null) winObj.opener = self;
    winObj.focus();
}
function fnSetToReasons(argValue, CallObj) {
    var objId
    if (RequestPrefix != '') {
        objId = RequestPrefix + "_" + CallObj
    } else {
        objId = CallObj
    }
    var obj = document.getElementById(objId)
    obj.value = argValue
}

//-----------------------
function fnFinalSub(args, Src) {
    document.getElementById("IsFinalSub").value = 1
}
//----------------
//--------------Calander js file Code---------------------

var ClClientId = ""
var gx = 0;
var gy = 0;
var input_date;
var display_date;
var ReqFrom = 0
var ie = document.all

function fnCalCheck(clId) {
    var ObjId
    var obj
    var obj2
    ObjId = clId + '_' + 'CalDateDisplay'

    //  obj=document.getElementById(objId)
    //if(obj.value==''){
    //ObjId= clId +'_' + 'CalDateVal'
    //obj2=document.getElementById(ObjId)
    //obj2.value=''
    //}
}


function fun1(evnt) {
    gx = evnt.pageX;
    gy = evnt.pageY;
    return true;
}

if (navigator.appName.indexOf("Netscape") != -1) {
    document.onmousemove = fun1;
}

var d = new Date()
var dc;
var monthname = new Array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec");
var data = new Array(6);
data[0] = new Array(0, 0, 0, 0, 0, 0, 0);
data[1] = new Array(0, 0, 0, 0, 0, 0, 0);
data[2] = new Array(0, 0, 0, 0, 0, 0, 0);
data[3] = new Array(0, 0, 0, 0, 0, 0, 0);
data[4] = new Array(0, 0, 0, 0, 0, 0, 0);
data[5] = new Array(0, 0, 0, 0, 0, 0, 0);


function GetLocalizedDate(m, d, y, displayObj) {
    displayObj.value = d + '-' + monthname[m - 1] + '-' + y;
    ShortFormat = monthname[m - 1] + '-' + y;
    ShortFormatDateval = m + '/' + 1 + '/' + y;
    //displayObj.value= d + '-' +  m + '-' + y;

    return m + '/' + d + '/' + y;
}

var yearImage = "<A Href='javascript:chg(-1,1)'><IMG Border=0 SRC='../IMAGES/DOWN.jpg'></A><A Href='javascript:chg(+1,1)'><IMG Border=0 SRC='../IMAGES/UP.jpg'></A>"
var monthImage = "<A Href='javascript:chg(-1,2)'><IMG Border=0 SRC='../IMAGES/DOWN.jpg'></A><A Href='javascript:chg(+1,2)'><IMG Border=0 SRC='../IMAGES/UP.jpg'></A>"
function chg(k, T) {
    if (T - 2 == 0)
    { d.setMonth(d.getMonth() + k); }
    else {
        d.setYear(d.getFullYear() + k);
    }

    document.getElementById('month_year').innerHTML = monthImage + "<SPAN style='width:60px'>" + monthname[d.getMonth()] + ' ' + d.getFullYear() + "</SPAN>" + yearImage;
    var dd = new Date(d);
    for (i = 0; i < 6; i++)
        for (j = 0; j < 7; j++) data[i][j] = 0;
    dd.setDate(1);
    i = 0;
    do {
        data[i][dd.getDay()] = dd.getDate();
        if (dd.getDay() == 6) i++;
        dd.setDate(dd.getDate() + 1);
    } while (dd.getDate() != 1);

    for (i = 0; i < 6; i++)
        for (j = 0; j < 7; j++)
            if (data[i][j] == 0) {
                document.getElementById("c" + i + "" + j).innerHTML = "&nbsp;";
                document.getElementById("c" + i + "" + j).className = "day_out";
            }
            else {
                document.getElementById("c" + i + "" + j).innerHTML = data[i][j];
                document.getElementById("c" + i + "" + j).className = "day";

                if (dc != undefined)
                    if (dc.getDate() == data[i][j])
                        document.getElementById("c" + i + "" + j).className = "day_c";
            }
}

function setDate(i, j) {
    if (data[i][j] == '0') {
        return (false)
    }
    //if (data[i][j]!='0') {
    m = d.getMonth() + 1;
    input_date.value = GetLocalizedDate(m, data[i][j], d.getFullYear(), display_date);
    //}
    if (ReqFrom == 1) {
        display_date.value = ShortFormat
        input_date.value = ShortFormatDateval
    }
    if (ReqFrom == 0) {
        input_date.value = GetLocalizedDate(m, data[i][j], d.getFullYear(), display_date);
    }
    hd();
    /*************************************************Caliber BRM********************************************/
    if (typeof (SetMSTFieldsValue) == "function")
        setTimeout("SetMSTFieldsValue('" + display_date.id.substring(0, display_date.id.indexOf("_")) + "','" + input_date.value + "')", 0)
    /********************************************************************************************************/
}
/*
function getDate(cel,disd) {
ReqFrom=0
input_date = cel;//For BL
display_date=disd//For Display
   
if (cel.value.length !=0) {
d = new Date(cel.value); 
if (d == 'NaN')
d = new Date();
dc = new Date(d);
}
*/

function getDate(cel2, disd2) {
    ReqFrom = 0
    var cel = (typeof cel2 == "object" ? cel2 : document.getElementById(cel2))
    var disd = (typeof disd2 == "object" ? disd2 : document.getElementById(disd2))

    input_date = cel; //For BL
    display_date = disd//For Display

    if (cel.value.length != 0) {
        d = new Date(cel.value);
        if (d == 'NaN')
            d = new Date();
        dc = new Date(d);
    }

    chg(0);
    if (navigator.userAgent.indexOf("MSIE") != -1) {
        avkCalendar.style.left = window.event.x + document.body.scrollLeft;
        avkCalendar.style.top = window.event.y + document.body.scrollTop;
        hideElement('SELECT', document.getElementById('avkCalendar'));
        hideElement('APPLET', document.getElementById('avkCalendar'));
    }
    else if (navigator.appName.indexOf("Netscape") != -1) {
        document.getElementById('avkCalendar').style.left = gx + 5;
        document.getElementById('avkCalendar').style.top = gy + 5;
    }

    document.getElementById('avkCalendar').style.visibility = "visible";
}

function getDateInShortForm(cel, disd) {
    ReqFrom = 1
    input_date = cel; //For BL
    display_date = disd; //For Display
    if (cel.value.length != 0) {
        d = new Date(cel.value);
        if (d == 'NaN')
            d = new Date();
        dc = new Date(d);
    }


    chg(0, 0);
    if (navigator.userAgent.indexOf("MSIE") != -1) {
        avkCalendar.style.left = window.event.x + document.body.scrollLeft;
        avkCalendar.style.top = window.event.y + document.body.scrollTop;
        hideElement('SELECT', document.getElementById('avkCalendar'));
        hideElement('APPLET', document.getElementById('avkCalendar'));
    }
    else if (navigator.appName.indexOf("Netscape") != -1) {
        document.getElementById('avkCalendar').style.left = gx + 5;
        document.getElementById('avkCalendar').style.top = gy + 5;
    }

    document.getElementById('avkCalendar').style.visibility = "visible";


}

function hd() {
    document.getElementById('avkCalendar').style.visibility = 'hidden';
    showElement('SELECT');
    showElement('APPLET');
}

/* hides <select> and <applet> objects (for IE only) */
function hideElement(elmID, overDiv) {
    if (ie) {
        for (i = 0; i < document.all.tags(elmID).length; i++) {
            obj = document.all.tags(elmID)[i];
            if (!obj || !obj.offsetParent) {
                continue;
            }

            // Find the element's offsetTop and offsetLeft relative to the BODY tag.
            objLeft = obj.offsetLeft;
            objTop = obj.offsetTop;
            objParent = obj.offsetParent;

            while (objParent.tagName.toUpperCase() != "BODY") {
                objLeft += objParent.offsetLeft;
                objTop += objParent.offsetTop;
                objParent = objParent.offsetParent;
            }

            objHeight = obj.offsetHeight;
            objWidth = obj.offsetWidth;

            if ((overDiv.offsetLeft + overDiv.offsetWidth) <= objLeft);
            else if ((overDiv.offsetTop + overDiv.offsetHeight) <= objTop);
            else if (overDiv.offsetTop >= (objTop + objHeight));
            else if (overDiv.offsetLeft >= (objLeft + objWidth));
            else obj.style.visibility = "hidden";
        }
    }
}

/*
* unhides <select> and <applet> objects (for IE only)
*/

function showElement(elmID) {
    if (ie) {
        for (i = 0; i < document.all.tags(elmID).length; i++) {
            obj = document.all.tags(elmID)[i];

            if (!obj || !obj.offsetParent)
                continue;

            obj.style.visibility = "";
        }
    }
}

document.write('<div id="avkCalendar" class="calendar">');
document.write('<table class="calendar">');
//document.write('<tr><td onClick="chg(-1);" class="nav">&lt;</td>');
document.write('<TR><td colspan="6" id="month_year" align="center">' + monthname[d.getMonth()] + ' ' + d.getFullYear() + '</td>');
document.write('<td class="closew" onClick="hd()">x</td></tr>');
document.write('<tr>');
document.write('    <td class="wd">Su</td>');
document.write('    <td class="wd">Mo</td>');
document.write('    <td class="wd">Tu</td>');
document.write('    <td class="wd">We</td>');
document.write('    <td class="wd">Th</td>');
document.write('    <td class="wd">Fr</td>');
document.write('    <td class="wd">St</td>');
document.write('  </tr>');

for (i = 0; i < 6; i++) {
    document.write('  <tr>');

    for (j = 0; j < 7; j++)
        if (data[i][j] != 0)

            document.write('<td onClick="setDate(' + i + ',' + j + ')" class="day" id="c' + i + j + '"> </td>');
        else
            document.write('<td  class="day_out" onClick="setDate(' + i + ',' + j + ')" id="c' + i + j + '"></td>');

    document.write('  </tr>');
} //

document.write('</table></div>');


//for disabling autocomplete
function AutoComplete() {
    var formcount = document.forms.length

    for (i = 0; i < formcount; i++) {

        document.forms(i).setAttribute("autocomplete", "off");
    }
}
window.setTimeout("AutoComplete()", 300);


function IsDigit2(e)  ///Function To check Numeric values onblur Event if copied and paste Alphabets
{
    var AvailableVal = window.event.srcElement.value;
    if (isNaN(AvailableVal) == true)
        window.event.srcElement.value = "";
}


function IsDigit1(e)  ///Function To check Numeric values
{
    if (e.shiftKey == true)
        return false;
    var KeyIdentifierMap =
        {
            End: 35,
            Home: 36,
            Left: 37,
            Right: 39,
            'U+00007F': 46		// Delete
        }
    if (!e)
        e = event;

    var AvailableVal = window.event.srcElement.value.indexOf(".")
    var iCode = (e.keyCode || e.charCode);

    if ((iCode == 46) && (AvailableVal != -1))
        return false;
    if ((iCode == 46) && (window.event.srcElement.value == ""))
        return false;

    if (!iCode && e.keyIdentifier && (e.keyIdentifier in KeyIdentifierMap))
        iCode = KeyIdentifierMap[e.keyIdentifier];
    if (iCode == 39) return false;
    return (
            (iCode >= 48 && iCode <= 57)		// Numbers
            || (iCode >= 35 && iCode <= 40)		// Arrows, Home, End
            || iCode == 8						// Backspace
            || iCode == 46						// Delete
            || iCode == 9	                    // Tab
            )



}










//function isAlphaNumeric(keyCode) {

//return (((keyCode >= 48 && keyCode <= 57) && isShift == false) ||

//(keyCode >= 65 && keyCode <= 90) || keyCode == 8 ||

//(keyCode >= 96 && keyCode <= 105) || keychar == "'")
//}





// To set max length of multiline textbox 
var taMaxLength = 1500

function taLimit1() {
    var taObj = window.event.srcElement;
    if (taObj.value.length == taMaxLength * 1) return false;
}

function taCount1() {
    var taObj = window.event.srcElement;
    if (taObj.value.length > taMaxLength * 1) {
        taObj.value = taObj.value.substring(0, taMaxLength * 1);
        alert("Characters Exceeding Limit\nMaximum Length: " + taMaxLength + " Characters")

    }

    //CheckMIn3Char ()
    //if (taObj.value.length !="") {
    taObj.detachEvent('onchange', CheckMIn3Char)
    taObj.attachEvent('onchange', CheckMIn3Char)

    //}
}


function CheckMIn3Char() {
    var taObj = window.event.srcElement;
    if (taObj.value.length < 3) {
        //alert('Text Should Be More Than 3 Characters')
        alert('Text Should Be Greater Than or Equal To 3 Characters')
        taObj.focus()
        taObj.value = "";
    }
}



// For effective ness monitoring plan  
function fnOpenPopUp(BaseId, CtrlID) {
    var PWidth = 550
    var PHeight = 420
    var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
    var ScreenTop = parseInt(window.screen.height - PHeight) / 2;
    var pageURL = "../IssueLogin/PopupPage.aspx?BaseID=" + BaseId + "&CtrlId=" + CtrlID
    var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=200,left=100"
    SpWinObj = window.open(pageURL, 'SpecCodes', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();

}


function functionMtrPlan(planId) {
    //SetPopDimensions()
    var PWidth = 950
    var PHeight = 720
    var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
    var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

    var pageURL = "../CAPAWORKS/EftMonitoringPlanList.aspx?PlanID=" + planId
    var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=200,left=100"
    SpWinObj = window.open(pageURL, 'SpecCodes', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}


//  For Stand Text popup

function fnOpenStandardPopUp(BaseId, CtrlID, MaxCount) {
    debugger
    //SetPopDimensions()
    var PWidth = 550
    var PHeight = 420
    var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
    var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

    var pageURL = "../IssueLogin/StdtxtPopupPage.aspx?BaseID=" + BaseId + "&CtrlId=" + CtrlID + "&MaxCount=" + MaxCount
    var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft
    SpWinObj = window.open(pageURL, 'SpecCodes', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}

function SetStandardTxtValue(BaseId, CtrlID, MaxCount, Standardtxt) {
    debugger
    if (Standardtxt != '') {
        var PrevVal = ''
        if (document.getElementById(BaseId + "_" + CtrlID).value == '') {
            document.getElementById(BaseId + "_" + CtrlID).value = Standardtxt
        } else {
            document.getElementById(BaseId + "_" + CtrlID).value = document.getElementById(BaseId + "_" + CtrlID).value + '; ' + Standardtxt
        }
        StdMaxLimit1(MaxCount, BaseId, CtrlID)
        StdMaxCount1(MaxCount, BaseId, CtrlID)
    }
    else {
        document.getElementById(BaseId + "_" + CtrlID).value = ''
    }
}


function StdMaxLimit1(MaxCount, BaseId, CtrlID) {
    debugger
    if (document.getElementById(BaseId + "_" + CtrlID).value.length == taMaxLength * 1) return false;
}

function StdMaxCount1(MaxCount, BaseId, CtrlID) {
    debugger

    if (document.getElementById(BaseId + "_" + CtrlID).value.length > MaxCount * 1) {
        document.getElementById(BaseId + "_" + CtrlID).value = document.getElementById(BaseId + "_" + CtrlID).value.substring(0, MaxCount * 1);
        alert("Text Should Be Less Than or Equal To  " + MaxCount + " Characters")
    }
}

function StdMaxLimit(taMaxLength) {
    var taObj = window.event.srcElement;
    if (taObj.value.length == taMaxLength * 1) return false;
}

function StdMaxCount(taMaxLength) {
    var taObj = window.event.srcElement;
    if (taObj.value.length > taMaxLength * 1) {
        taObj.value = taObj.value.substring(0, taMaxLength * 1);
        alert("Text Should Be Less Than or Equal To  " + taMaxLength + " Characters")
    }
}


function MinCount(txtMinLength) {
    txtMinLength = 3 // as per luupin requirement we are overright the minlength with standard value 
    var taObj = window.event.srcElement;

    //if (taObj.value !="") {
    CheckMIn3Char();
    //taObj.attachEvent('onchange', CheckMIn3Char)

    //}

    //  if (taObj.value.length<txtMinLength*1){
    //		taObj.value=taObj.value.substring(0,txtMinLength*1);
    //		alert("Characters Length Must Be Grater Than or Equal : "+ txtMinLength +" Characters")
    //	}
}


// *********** Common Controls  Callig  An d Value Set Functions ************//


// ********  For Reference Issue Popup ********* 

function fnOpenRefisuPopUp(BaseId, CtrlID) {
    //SetPopDimensions()
    var pageURL = "../IssueLogin/IsuRegPopup.aspx?BaseID=" + BaseId + "&CtrlId=" + CtrlID
    var features = "height=420,width=750,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
    SpWinObj = window.open(pageURL, 'SpecCodes', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}


function fnSetIssueRefs(KfLableVal, BaseID, CtrlId) {
    if (KfLableVal != "") {
        var FldValue = KfLableVal.split("#*#")
        document.getElementById("Value_" + BaseID + "_" + CtrlId).innerHTML = FldValue[0]
        document.getElementById(BaseID + "_" + CtrlId).value = FldValue[1]
    }
    else {
        document.getElementById("Value_" + BaseID + "_" + CtrlId).innerHTML = ""
        document.getElementById(BaseID + "_" + CtrlId).value = ""
    }

    // if (FunctId !=0) QAMS_SpecialValidations(FunctId,BaseID,CtrlId,document.getElementById("IssueID").value)
}


//***** For Action Plan poup **********

function fnActPlnPopUp(FieldId, CtrlId) {

    var ActplnCnt
    var ActPlnsArr = new Array()

    if (document.getElementById(FieldId + "_" + CtrlId).value != "") {
        var ActPln = document.getElementById(FieldId + "_" + CtrlId).value
        ActPlnsArr = ActPln.split("#*#");
        ActplnCnt = ActPlnsArr.length
    }
    else { ActplnCnt = '' }

    var ActinplanArr
    var pageURL = "../TestEFormExecution/ActionPlanList.aspx?FieldId=" + FieldId + "&CtrlId=" + CtrlId + "&ActplnCnt=" + ActplnCnt //+ "&ValidationList=" + ValidationList + "&IsuLogID=" + document.getElementById("IssueLogIdTXt").value
    var features = "height=500,width=600,toolbar=no,menubar=no,status=no,scrollbars=yes,top=250,left=300"
    SpWinObj = window.open(pageURL, 'SpecCodes', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}

function setvalue(FieldId, CtrlId, ValueArr) {
    if (ValueArr != '') {

        document.getElementById("Value_" + FieldId + "_" + CtrlId).innerHTML = ValueArr.join(";</br>")  //"Action Plan(s) Raised " //
        document.getElementById(FieldId + "_" + CtrlId).value = ValueArr.join("#*#")
    }
    else {
        document.getElementById("Value_" + FieldId + "_" + CtrlId).innerHTML = ""
        document.getElementById(FieldId + "_" + CtrlId).value = ""
    }
}


// **** Action Plan Type 2- Fields *****  

function FnAcpListPopup(BaseId, CtrlID, IsuTypeID) {
    if (isNaN(GlobalIssueID) == true)
    { GlobalIssueID = 0 }

    var pageURL = "../IssueLogin/ActionPlanCheckList.aspx?BaseID=" + BaseId + "&CtrlId=" + CtrlID + "&IsuTypeID=" + IsuTypeID + '&IsuLogID=' + GlobalIssueID
    //SetPopDimensions()
    var PWidth = 470
    var PHeight = 390
    var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
    var ScreenTop = parseInt(window.screen.height - PHeight) / 2;
    var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft
    SpWinObj = window.open(pageURL, 'SpecCodes', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();

}

function FnCet_AapValue(IsuLogID, IsuTypeID, BaseId, CtrlID, AcpNameArr, AcpTypeArr, StatusFlag, ItemSelflag) {

    if (AcpNameArr != "") {
        document.getElementById("AcpListtxt_" + BaseId + "_" + CtrlID).value = AcpNameArr + '#@#' + AcpTypeArr

        var pageURL = "../IssueLogin/EffectedDocpoup.aspx?BaseID=" + BaseId + "&CtrlId=" + CtrlID + "&StatusFlag=" + StatusFlag + "&IsuTypeID=" + IsuTypeID + '&IsuLogID=' + IsuLogID

        var PWidth = 1000
        var PHeight = 650
        var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
        var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

        var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft
        SpWinObj = window.open(pageURL, 'EffectedDocpoup', features)
        if (SpWinObj.opener == null) SpWinObj.opener = self;
        SpWinObj.focus();
    }
    //For Hiding the Preview if no items selected
    if (AcpNameArr == "") {

        if (ItemSelflag == 0) {
            document.getElementById(BaseId + "_" + CtrlID).value = "";
            document.getElementById("Value_" + BaseId + "_" + CtrlID).className = "HideRow";
        }
        else if (document.getElementById(BaseId + "_" + CtrlID).value != "") {
            document.getElementById("Value_" + BaseId + "_" + CtrlID).className = "MainTD";
        }
    }
}


function SetAcpValue(BaseId, CtrlId, XmlString) {
    document.getElementById(BaseId + "_" + CtrlId).value = XmlString
    if (XmlString != '')
        document.getElementById("Value_" + BaseId + "_" + CtrlId).className = "MainTD"
    else
        document.getElementById("Value_" + BaseId + "_" + CtrlId).className = "HideRow"
}

function fnAcpPreview(BaseId, CtrlId) {
    var pageURL = "../IssueLogin/EffectedDocpoup.aspx?BaseID=" + BaseId + "&CtrlId=" + CtrlId + "&AcpNamelst=" + '' + "&AcpTypelst=" + '' + "&StatusFlag=" + 2
    //+ "&WitId=" + document.getElementById("WorkItemIdTxt").value 
    var PWidth = 1000
    var PHeight = 650
    var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
    var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

    var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft

    //SpWinObj = ShowMask(pageURL,'EffectedDocpoup',features)
    SpWinObj = window.open(pageURL, 'EffectedDocpoup', features)

    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}




// **** Muti Object Reference popup    *****//

function Fun_MutiObjRefpopup(BaseId, CtrlId, ObjectType, SheetId, IsuBaseID, FldCaption) {
    var PWidth = 800
    var PHeight = 600
    var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
    var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

    // FldCaption="Object Reference"  //MutiObjectRefPopup
    var LotID = ""

    // If Deviation process

    if (ObjectType == 6) {
        if (BaseId == 'FLD_60' && CtrlId == 29) { LotID = 'FLD_61_30' }
        if (BaseId == 'FLD_61' && CtrlId == 30) { LotID = 'FLD_60_29' }
    }


    var pageURL = "../IssueLogin/MultirefObjPopup.aspx?BaseID=" + BaseId + "&CtrlId=" + CtrlId + "&StatusFlag=1&ObjectType=" + ObjectType + "&SheetId=" + SheetId + "&FldCaption=" + FldCaption + "&IsuBaseID=" + IsuBaseID + '&LotID=' + LotID + '&TransType=' + TransType
    var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft
    SpWinObj = window.open(pageURL, 'SpecCodes3', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}

function SetObjectValue(BaseId, CtrlId, ObjectValue) {
    if (ObjectValue != "") {
        document.getElementById(BaseId + "_" + CtrlId).value = ObjectValue
        document.getElementById("Value_" + BaseId + "_" + CtrlId).className = "MianTD"
    }
    else {
        document.getElementById(BaseId + "_" + CtrlId).value = ""
        document.getElementById("Value_" + BaseId + "_" + CtrlId).className = "HideRow"
    }
}

function Fun_Fun_MutiObjRefPreview(BaseId, CtrlId, ObjectType, SheetId, FldCaption) {
    FldCaption = "Object Reference"  //MutiObjectRefPopup
    var pageURL = "../IssueLogin/MultirefObjPopup.aspx?BaseID=" + BaseId + "&CtrlId=" + CtrlId + "&StatusFlag=2&ObjectType=" + ObjectType + "&SheetId=" + SheetId + "&FldCaption=" + FldCaption
    var features = "height=600,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=250,left=150"
    SpWinObj = window.open(pageURL, 'SpecCodes1', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}



// ***** Work Allocation User Group ***********//

function WorkAllUserGrpPopup(BaseId, CtrlID, IsuLogid, IsuTypeId, CusValFunId) {
    var InitideptName = '0'
    CusValFunId = '0'
    var IHODSelDepts = '0'

    var InintdeptcrlId = 'FLD_2_40'
    var IHodId = ''

    var capobj = document.getElementById("CAPT_" + BaseId + "_" + CtrlID)
    if (capobj != null) {
        var Caption = document.getElementById("CAPT_" + BaseId + "_" + CtrlID).innerHTML
        Caption = Caption.replace(/\s/g, '+');
    }
    //var IHodId1 = 'FLD_101' + '_' + CtrlID
    //var IHodId2 = 'FLD_117' + '_' + CtrlID

    var obj = document.getElementById(InintdeptcrlId)
    if (obj != null) {
        var DeptDll = document.getElementById(InintdeptcrlId);
        InitideptName = DeptDll.options(DeptDll.selectedIndex).text
        InitideptName = InitideptName.substring(0, InitideptName.lastIndexOf("("))
        InitideptName = InitideptName.replace("&", "%26")
        InitideptName = InitideptName.replace("#", "%23")
        InitideptName = InitideptName.replace("+", "%2B")

    }

    var pageURL = "../IssueLogin/WorkAllUserGroup.aspx?BaseID=" + BaseId + "&CtrlId=" + CtrlID + "&IsuLogid=" + IsuLogid + "&IsuTypeId=" + IsuTypeId + "&CusValFunId=" + CusValFunId + "&DeptName=" + InitideptName + "&ResGrpIdList=" + IHODSelDepts


    if (BaseId == 'FLD_19')  // Change Control
    {
        IHodId = 'FLD_16' + '_' + CtrlID
        var IHODSelDept = document.getElementById(IHodId).value
        if (IHODSelDept != '') {
            var IHODSelDeptArr = new Array()
            IHODSelDeptArr = IHODSelDept.split("#*#")
            IHODSelDepts = IHODSelDeptArr[1]
        }

        pageURL = "../IssueLogin/WorkAllUserGroup.aspx?BaseID=" + BaseId + "&CtrlId=" + CtrlID + "&IsuLogid=" + IsuLogid + "&IsuTypeId=" + IsuTypeId + "&CusValFunId=" + CusValFunId + "&DeptName=" + InitideptName + "&ResGrpIdList=" + IHODSelDepts
    }


    pageURL = pageURL + "&Caption=" + Caption //for sending the caption to work allocation user group pasge

    //SetPopDimensions()
    CusValFunId = 1

    var PWidth = 470
    var PHeight = 390
    var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
    var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

    var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft
    SpWinObj = window.open(pageURL, 'SpecCodes', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}

function AssignUserGrp(BaseId, CtrlID, KfLableValArr, UserGrpLst) {
    if (KfLableValArr != "") {
        document.getElementById("Value_" + BaseId + "_" + CtrlID).innerHTML = KfLableValArr
        document.getElementById(BaseId + "_" + CtrlID).value = KfLableValArr + '#*#' + UserGrpLst
    }
    else {
        document.getElementById("Value_" + BaseId + "_" + CtrlID).innerHTML = ""
        document.getElementById(BaseId + "_" + CtrlID).value = ""
    }
}

function ReadAssignUserGrp(BaseId, CtrlID) {

    return (document.getElementById(BaseId + "_" + CtrlID).value)

}



//*** Muti Object PrefIssueRef ****

function funRedRefIsuewList1(ObjectType, ObjectCode, ObjectID, IsuBaseID) {
    var pageURL = "../IssueLogin/MultiIsuRefPopup.aspx?ObjectType=" + ObjectType + "&ObjectCode=" + ObjectCode + "&ObjectID=" + ObjectID + "&IsuBaseID=" + IsuBaseID
    var features = "height=500,width=700,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=250,left=150"
    SpWinObj = window.open(pageURL, 'STDReason', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}


// **** DMS File popup ********//

function CallDMSPopup(RepositoyTypeId, SourceTypeId, SourceId, PlantID, FixedType, IsuTransCode, UParam) {
    var PWidth = 800
    var PHeight = 600
    var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
    var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

    var pageURL = "../DMSManagement/DMSFilesSelPopUp.aspx?RType=" + RepositoyTypeId + "&FixedType=" + FixedType + "&SourceTypeId=" + SourceTypeId + "&DocSourceId=" + SourceId + "&PlantID=" + PlantID + "&UParam=" + UParam + "&IsuTransCode=" + IsuTransCode;
    var SpWinObj = window.open(pageURL, 'DMSPopUp', "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}

function OpenDMSPopUp(BaseId, CtrlID, FromType, PlantID, IsuTransCode) {
    var UParam = BaseId + "_" + CtrlID;
    var RepositoyTypeId = 3;   // Repository Type

    var PrsType = FromType
    var SourceTypeId
    switch (parseInt(PrsType)) {
        case 1: SourceTypeId = 5; //CC
            break;
        case 2: SourceTypeId = 4; //DI
            break;
        case 3: SourceTypeId = 6; //MC
            break;
        case 6: SourceTypeId = 7; //AF
            break;
        case 4: SourceTypeId = 21; //CAPA
            break;
        case 5: SourceTypeId = 26; //CCT
            break;
        case 0: SourceTypeId = 999; //CCT
            break;

    }

    var SourceId = 0;   // Source Id
    var PlantID = PlantID //"<%=%>";
    var FixedType = 0; // 1: for loading documents of current type. 0: for selection based searching

    CallDMSPopup(RepositoyTypeId, SourceTypeId, SourceId, PlantID, FixedType, IsuTransCode, UParam);
}

function Ret_OpenDMSPopUp(DocId, DocCode, DocDesc, UParam) {
    if (DocId != "") {
        document.getElementById(UParam).value = DocId + '#*#' + DocDesc;
        var DocNameArr = new Array()
        DocNameArr = DocDesc.split("$@$")
        document.getElementById("File_" + UParam).innerHTML = DocNameArr.join("; "); //DocDesc.replace("$@$","; ") ;
    }
    else {
        document.getElementById(UParam).value = "";
        document.getElementById("File_" + UParam).innerHTML = ""; //DocDesc.replace("$@$","; ") ;
    }

}

function OkRet_OpenDMSPopUp(UParam) { }



// ****Editable DMS File popup ********//

function CalEditableDMSPopup(RepositoyTypeId, SourceTypeId, SourceId, PlantID, FixedType, IsuTransCode, UParam) {
    var pageURL = "../CAPAWORKS/AttachEditableDocsPopup.aspx?RType=" + RepositoyTypeId + "&FixedType=" + FixedType + "&SourceTypeId=" + SourceTypeId + "&DocSourceId=" + SourceId + "&PlantID=" + PlantID + "&IsuTransCode=" + IsuTransCode + "&UParam=" + UParam;
    var winHeight = 450 //(screen.availHeight/100)*80; //80% of the screen height
    var winWidth = (screen.availWidth / 100) * 60;   //60% of the screen width

    var SpWinObj = window.open(pageURL, 'DMSPopUp', "height=" + winHeight + ",width=" + winWidth + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}

function OpenEditableDMSPopup(BaseId, CtrlID, FromType, PlantID, IsuTransCode) {
    var UParam = BaseId + "_" + CtrlID;
    var RepositoyTypeId = 3;   // Repository Type

    var PrsType = FromType
    var SourceTypeId
    switch (parseInt(PrsType)) {
        case 1: SourceTypeId = 5; //CC
            break;
        case 2: SourceTypeId = 4; //DI
            break;
        case 3: SourceTypeId = 6; //MC
            break;
        case 6: SourceTypeId = 7; //AF
            break;
        case 4: SourceTypeId = 21; //CAPA
            break
        case 5: SourceTypeId = 26; //CCT
            break
        case 0: SourceTypeId = 999; //CCT
            break;
    }

    var SourceId = 1;   // Source Id
    var PlantID = PlantID //"<%=%>";
    var FixedType = 0; // 1: for loading documents of current type. 0: for selection based searching

    CalEditableDMSPopup(RepositoyTypeId, SourceTypeId, SourceId, PlantID, FixedType, IsuTransCode, UParam);
}

function Ret_SetEditableDMSPopUp(DocId, DocCode, UParam) {
    if (DocId != "") {
        document.getElementById(UParam).value = DocId + '#*#' + DocCode;
        var DocNameArr = new Array()
        DocNameArr = DocCode.split("$@$")
        document.getElementById("File_" + UParam).innerHTML = DocNameArr.join("; "); //DocDesc.replace("$@$","; ") ;
    }
    else {
        document.getElementById(UParam).value = "";
        document.getElementById("File_" + UParam).innerHTML = ""
    }
}

function OkRet_OpenDMSPopUp(UParam) { }

// Function For Document Editable 

function FnopenAEDApp(DocID) {

    var pageURL = "../CAPAWORKS/AttachEditableDocReg.aspx?Flag=" + 2 + "&DocID=" + DocID
    var yval = screen.availHeight; var xval = screen.availWidth;
    var features = 'height=' + yval + ',width=' + xval + ',toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=0,left=0';
    var SpWinObj = window.open(pageURL, 'DMSPreview', features);
    if (SpWinObj.opener == null)
        SpWinObj.opener = self;
    SpWinObj.focus();

}

function CALL_AEDApp(DocID) {


}

function Dmspreview(DocId) {
    var pageURL = "../DMSManagement/ViewOfficeDocument.aspx?DocId=" + DocId
    SpWinObj = window.open(pageURL, 'TemplatePreview', "height=600,width=900,toolbar=no,resizable=true,menubar=no,status=no,scrollbars=yes,top=90,left=100");
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}

function FnEdiatbelFileAttach(IsuTransCode) {
    var pageURL = "../CAPAWORKS/UploadDocList.aspx?IsuTransCode=" + IsuTransCode

    var PWidth = 700
    var PHeight = 370
    var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
    var ScreenTop = parseInt(window.screen.height - PHeight) / 2;
    SpWinObj = window.open(pageURL, 'SpecCodes', "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=true,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft);
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}



//***** Function For  Check box Poppu

var FunctId
function chklistPopup(BaseId, CtrlID, FunctionId) {
    FunctId = FunctionId
    //SetPopDimensions()
    var PWidth = 470
    var PHeight = 390
    var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
    var ScreenTop = parseInt(window.screen.height - PHeight) / 2;
    var pageURL = "../IssueLogin/ChkListPopup.aspx?BaseID=" + BaseId + "&CtrlId=" + CtrlID
    var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft
    SpWinObj = window.open(pageURL, 'SpecCodes', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}

function fnSetVal_Chklist(KfLableVal, Saveid, BaseID, CtrlId) {
    var FldValue = KfLableVal.split("#*#")
    document.getElementById("Value_" + BaseID + "_" + CtrlId).innerHTML = FldValue[0]
    if (Saveid == 1)
        document.getElementById(BaseID + "_" + CtrlId).value = KfLableVal
    else
        document.getElementById(BaseID + "_" + CtrlId).value = FldValue[0]

    //if (FunctId !=0) QAMS_SpecialValidations(FunctId,BaseID,CtrlId,document.getElementById("IssueID").value)
}

function fnCrformSubmitDoc(BaseID, CtrlId) {
    //if (FunctId !=0) QAMS_SpecialValidations(FunctId,BaseID,CtrlId,document.getElementById("IssueLogIdTXt").value)
}



//**** Function For Re-InitiAudit 

function funReInitiHistory(BaseID, AuditType, HisIDList) {
    var pageURL = "../IssueLogin/AuditHisList.aspx?BaseID=" + BaseID + "&AuditType=" + AuditType + "&HisIDList=" + HisIDList
    var features = "height=390,width=470,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=250,left=150"
    SpWinObj = window.open(pageURL, 'SpecCodes', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}

function AuditDetails(HisID, BaseID, AuditType, NextHisId) {
    var pageURL = "../IssueLogin/AuditDetails.aspx?BaseID=" + BaseID + "&AuditType=" + AuditType + "&HisID=" + HisID + "&NextHisId=" + NextHisId
    var features = "height=700,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=250,left=150"
    SpWinObj = window.open(pageURL, 'TemplatePreview', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}

//For Work items Reinititation
function funReInitiHistoryforWrk(BaseID, AuditType, HisIDList) {
    var pageURL = "../IssueLogin/AuditHisList.aspx?BaseID=" + BaseID + "&AuditType=" + AuditType + "&HisIDList=" + HisIDList
    var features = "height=390,width=470,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=250,left=150"
    SpWinObj = window.open(pageURL, 'SpecCodes', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}


// ***********End Of  Common Controls  Callig  An d Value Set Functions ************//




// //---------------- pop Up code----------------

//function contextMenu(){

//if(event.srcElement.type=='text'||event.srcElement.type=='textarea'){

//var obj=event.srcElement

//var Txt=obj.value

//var rowCnt=0

//if(event.srcElement.type=='textarea')

//{Txt=obj.innerText

//var d=0

//for(d=0;d<Txt.length;d++){

//if(Txt.charAt(d)=='\n')

//rowCnt= rowCnt+ 1

//}

//}

//if(Txt!=''){

//var popWidth

//var popHeight

//var oPopup = window.createPopup();

//var oPopupBody = oPopup.document.body;

//oPopupBody.style.backgroundColor = "lightyellow";

//oPopupBody.style.border = "solid black 1px";

//oPopupBody.style.fontFamily="arial"

//oPopupBody.style.fontSize=14

//oPopupBody.style.marginLeft=5

//var TxtSize=Txt.length

//oPopupBody.innerText =Txt

//var popleft = obj.clientLeft;

//var poptop =obj.clientTop;

//popWidth= obj.clientWidth + 20

//popHeight=obj.clientHeight

//poptop=poptop + popHeight

//if(popWidth<300){popWidth=300}

//var lineCnt

//lineCnt=parseInt((TxtSize*6)/obj.clientWidth)

//if(rowCnt>lineCnt){lineCnt=rowCnt}

//popHeight=24

//if(lineCnt>0){ popHeight=(lineCnt*22) + 10 }

//oPopup.show(popleft, poptop, popWidth, popHeight , obj);

//}

//}else{

//return false;

//}

//}

////contextMenu


////Disable right click

//var message="";

///////////////////////////////////////

//function clickIE() {

//if (document.all) {

//(message);return false;

//}

//}

//// 

//function clickNS(e) {

//if(document.layers||(document.getElementById&&!document.all)) {

//if (e.which==2||e.which==3) {

//(message);return false;}

//}

//}

// 

//if (document.layers){

//document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;

//}else{

//document.onmouseup=clickNS;document.oncontextmenu=clickIE;

//document.oncontextmenu=new Function("return false")

//document.body.oncontextmenu= contextMenu

//document.body.onselectstart=DisableCopy

//}

// 

//function DisableCopy(){

//if(!(event.srcElement.type=='text'|| event.srcElement.type=='textarea'))

//return false;

//}



//Incharge group Details

function fnInchargePoup(UserGroupId) {
    var PWidth = 500
    var PHeight = 300
    var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
    var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

    var pageURL = "../WorkFlow/UserGroupDetails.aspx?UserGroupId=" + UserGroupId + "&AT=G"
    var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=" + ScreenTop + ",left=" + ScreenLeft
    SpWinObj = window.open(pageURL, 'TemplatePreview', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}

//function to calculate duration between issue closure date and current date    
function AjaxCheckDuration(IsuLogId, BtnId, RetrunFun, ReturnParams) {

    var recary = new Array();
    var xmlhttp;
    try {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    catch (ex) {
        try {
            xmlhttp = new ActiveXObject("MSxml2.XMLHTTP");
        }
        catch (ex) {
            try {
                xmlhttp = new XmlHttpRequest();
            }
            catch (ex) {
                alert("please update the webbrowser");
            }
        }
    }

    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readystate == 4) {
            var RtnStr = "abc"
            var ReturnArr = new Array()
            RtnStr = xmlhttp.ResponseText
            if (IsuLogId == 0) { RtnStr = 2 }
            CheckVal(RtnStr, BtnId, RetrunFun, ReturnParams)

        }
    }
    var url = "../PrsWorkFlow/AjaxCalIsuTrgDateDuration.aspx?IsuLogId=" + IsuLogId
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);
}


function CheckVal(ReturnVal, BtnId, RetrunFun, ReturnParams) {
    if (ReturnVal == 1) {
        document.getElementById(BtnId).setAttribute("disabled", "disabled")
        alert("Submission date should not be less than 3 days to issue closure date")
    }
    else if (ReturnVal == 3) {
        document.getElementById(BtnId).setAttribute("disabled", "disabled")
        alert("Submission Date Is Crossed The Plan Target date")
    }
    else if (ReturnVal == 4) {
        document.getElementById(BtnId).setAttribute("disabled", "disabled")
        alert("Submission Date Is Crossed The Plan Target date And not be less than 3 days to issue closure date")
    }
    else if (ReturnVal == 0) {
        document.getElementById(BtnId).removeAttribute("disabled")

    }
    if (RetrunFun != undefined) {
        setTimeout(RetrunFun + "(" + ReturnVal + "," + ReturnParams + ")", 0)
    }

}

function fnModReqDetails(ModReqId) {
    var PWidth = 800
    var PHeight = 500
    var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
    var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

    var pageURL = "../ModificationRequest/ChangeRequestAudit.aspx?CReqid=" + ModReqId
    var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft
    winObj = window.open(pageURL, 'STDReason', features)
    if (winObj.opener == null) winObj.opener = self;
    winObj.focus();


}




//Related to Batch Status 

function Fun_SelBatches(BaseId, CtrlId, Type, IsuBaseID, ReqType, WorkItemId) {
    var PWidth = 1000
    var PHeight = 600
    var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
    var ScreenTop = parseInt(window.screen.height - PHeight) / 2;
    //ReqType=3
    //        if(ReqType==1)
    //                var pageURL = "../PrsWorkFlow/BatchStsReg.aspx?IssuLogId="+ IsuBaseID + "&Type=" + Type + "&BaseID="+ BaseId + "&CtrlId=" + CtrlId + "&WorkItemId=" + WorkItemId
    //        else if (ReqType==2 || ReqType==3)
    var pageURL = "../PrsWorkFlow/BatchStatusApp.aspx?IssuLogId=" + IsuBaseID + "&Type=" + Type + "&BaseID=" + BaseId + "&CtrlId=" + CtrlId + "&WorkItemId=" + WorkItemId + "&ReqType=" + ReqType

    var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft
    SpWinObj = window.open(pageURL, 'SpecCodes', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}


function Fun_BatchSelPreview(BaseId, CtrlId, Type, IsuBaseID, ReqType, WorkItemId, FldValue, ReInitFlag) {
    var PWidth = 800
    var PHeight = 600
    var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
    var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

    if (WorkItemId == '' || WorkItemId == undefined) { WorkItemId = 0 }

    var pageURL = "../PrsWorkFlow/BatchStatusPreview.aspx?IssuLogId=" + IsuBaseID + "&Type=" + Type + "&BaseID=" + BaseId + "&CtrlId=" + CtrlId + "&ReqType=" + ReqType + "&WorkItemId=" + WorkItemId + "&FldValue=" + FldValue + "&ReInitFlag=" + ReInitFlag
    var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft
    SpWinObj = window.open(pageURL, 'SpecCodes', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();

}
function Fun_BatchSel(BaseId, CtrlId, Type, IsuBaseID, WorkItemId) {
    var PWidth = 800
    var PHeight = 600
    var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
    var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

    var pageURL = "../IssueLogin/BatchSelectPopup.aspx?IssuLogId=" + IsuBaseID + "&Type=" + Type + "&BaseID=" + BaseId + "&CtrlId=" + CtrlId + "&WorkItemId=" + WorkItemId

    var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft
    SpWinObj = window.open(pageURL, 'SpecCodes', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();

}

function Fun_AllSelBatches(BaseId, CtrlId, IsuBaseID) {
    var PWidth = 800
    var PHeight = 400
    var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
    var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

    var pageURL = "../IssueClosure/BatchStatusFinalApp.aspx?IssuLogId=" + IsuBaseID + "&BaseID=" + BaseId + "&CtrlId=" + CtrlId

    var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft
    SpWinObj = window.open(pageURL, 'SpecCodes', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();

}



//For Export to Excel Functionality


/*-----------Export To Excel -------------*/

function write_to_excel(ExcelType1) {
    var mytable = document.getElementById("ActionPlanTAb");
    var rowCount = mytable.rows.length;
    if (rowCount <= 201) {
        ShowMask();
        setTimeout("write_to_excel1(" + ExcelType1 + ")", 400);
    }
    else
        alert("Records Per Page Should Not Greater Than 200");
}	
        
        
        
 