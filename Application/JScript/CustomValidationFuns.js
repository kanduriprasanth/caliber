
//JSCRIPT OF JBCPL 
var TransType = 0;
var BatchStatus = 0;

var ExpMessageArr = new Array()
var ExpMsgIdArr = new Array()
var EXpControlId = new Array()
var WrkAllExpMsg = ""
var LogFldPrefix = 'FLD_'
var DeptFldID = 'FLD_2_40'
var Ucodelevel1 = "Ucodelevel1"
var Ucodelevel0 = "Ucodelevel0"

//Market ID
var MarketID = 'FLD_185_550'
var MarketIDArr = new Array()
MarketIDArr = MarketID.split('_')
//End of Market ID
// Closure Date
var CloserDateFldId = 'FLD_15_1'
var CloserDateFldIdAry = new Array()
CloserDateFldIdAry = CloserDateFldId.split('_')
// End of Closure Date

// Initation Department ID
var InitDepartFldId = 'FLD_2_40'
// End of Init Deparment ID

// SOP Radio Btn  
var SOPObjRadioBtnID = 'FLD_246_546'
var SOPObjRadioBtnIDAry = new Array()
SOPObjRadioBtnIDAry = SOPObjRadioBtnID.split('_')
//End SOP

// SOP Editable File Attachment
var SOPEditFileID = 'FLD_247_304';
var SOPEditFileIDAry = new Array();
SOPEditFileIDAry = SOPEditFileID.split('_');
//End SOP Editable File Attachment


// Reference Radio Btn
var ReferenceBtnID = 'FLD_180_546'
var ReferenceObjRadioBtnIDAry = new Array()
ReferenceObjRadioBtnIDAry = ReferenceBtnID.split('_')
//End Reference Radio Btn

// Referred Issue(s)
var ReferredIssueID = 'FLD_181_547';
var ReferredIssueIDAry = new Array();
ReferredIssueIDAry = ReferredIssueID.split('_');
//End Referred Issue(s)


// Referred Issue(s) for audit mgmt
var ReferredIssueID1 = 'FLD_174_547';
var ReferredIssueIDAry1 = new Array();
ReferredIssueIDAry1 = ReferredIssueID1.split('_');
//End Referred Issue(s)

// Referred Issue(s) for audit mgmt
var ClsReferredIssueID1 = 'FLD_22_7';
var ClsReferredIssueIDAry1 = new Array();
ClsReferredIssueIDAry1 = ClsReferredIssueID1.split('_');
//End Referred Issue(s)


// Identification of Change
var IdentificationFldId = 'FLD_4_18';
var IdentificationFldIdFldIdAry = new Array();
IdentificationFldIdFldIdAry = IdentificationFldId.split('_');
// End Identification of Change

// Others
var OthersFldId = 'FLD_5_5';
var OthersFldIdAry = new Array();
OthersFldIdAry = OthersFldId.split('_');
// End Others


//Approval From Regulatory
var EformAppRegBaseFLDID = 'E1_COL0217008006'
var EformAppRegCtrlFLDID = '55'

//Approval From Customer
var EformAPPCustBaseFLDID = 'E1_COL0217008008'
var EformAPPCustCtrlFLDID = '56'

//Proposed Training Action Plan(s)
var EformTrainingACTBaseFLDID = 'E1_COL0217008010'
var EformTrainingACTCtrlFLDID = '43'

//Proposed Risk Assessment Plan(s)
var EformRiskAssACTBaseFLDID = 'E1_COL0217008012'
var EformRiskAssACTCtrlFLDID = '44'

//Proposed Validation Plan(s)
var EformValidationACTBaseFLDID = 'E1_COL0217008014'
var EformValidationACTCtrlFLDID = '50'

//Proposed Stability Plan(s)
var EformStabilityACTBaseFLDID = 'E1_COL0217008016'
var EformStabilityACTCtrlFLDID = '51'

//Proposed Qualification Plan(s)
var EformQualificationACTBaseFLDID = 'E1_COL0217008018'
var EformQualificationACTCtrlFLDID = '52'

//Proposed Other Action Plan(s)
var EformOtherACTBaseFLDID = 'E1_COL0217008020'
var EformOtherACTCtrlFLDID = '53'




//Action Plan Proposal(s) Required -- Change Control Login

var ActionPlanPropRadioBtnId = 'FLD_248_546'
var ActionPlanPropRadioBtnIdArr = new Array()
ActionPlanPropRadioBtnIdArr = ActionPlanPropRadioBtnId.split('_')
// End Proposed Action Plan(s) -- Change Control Login


// Proposed Action Plan(s) -- Change Control Login
var ActionPlanPropId = 'FLD_236_596'
var ActionPlanPropIdAry = new Array()
ActionPlanPropIdAry = ActionPlanPropId.split('_')
// End Proposed Action Plan(s) -- Change Control Login

//Investigation and Root Cause Finding  -- CPA Login
var InvandRootCauseRadioBtnId = 'FLD_206_546'
var InvandRootCauseRadioBtnIdArr = new Array()
InvandRootCauseRadioBtnIdArr = InvandRootCauseRadioBtnId.split('_')


//Details  -- CPA Login
var DetailsTxtId = 'FLD_48_5'
var DetailsTxtIdArr = new Array()
DetailsTxtIdArr = DetailsTxtId.split('_')

//Section  Field 
var SectionDDlID = 'FLD_85_10'
var SectionDDlIDArr = new Array()
SectionDDlIDArr = SectionDDlID.split('_')


//Reference CAPA / Change Control No. (if any) 
var RefCapORCCNo = 'FLD_223_547'
var RefCapORCCNoArr = new Array()
RefCapORCCNoArr = RefCapORCCNo.split('_')



// CAPA Market

// Origin of CAPA
var OriginofCAPAID = 'FLD_43_42'
var OriginofCAPARR = new Array()
OriginofCAPARR = OriginofCAPAID.split('_')

//Dev 
var ProbableReasonID = 'FLD_204_555'
var ProbableReasonIDArr = new Array()
ProbableReasonIDArr = ProbableReasonID.split('_')

//Dev Probable Reason / Root Cause - Others
var ProbableReasonothID = 'FLD_205_5'
var ProbableReasonothIDArr = new Array()
ProbableReasonothIDArr = ProbableReasonothID.split('_')

//Dev CA Remark
var CAPPlanProRemarksID = 'FLD_209_5'
var CAPPlanProRemarksIDArr = new Array()
CAPPlanProRemarksIDArr = CAPPlanProRemarksID.split('_')

//Dev CA Propsal
var CAPPlanProID = 'FLD_210_598'
var CAPPlanProIDArr = new Array()
CAPPlanProIDArr = CAPPlanProID.split('_')

//Dev PA Remark
var PAPlanProRemarksID = 'FLD_212_5'
var PAPlanProRemarksIDArr = new Array()
PAPlanProRemarksIDArr = PAPlanProRemarksID.split('_')

//Dev PA Propsal
var PAPlanProID = 'FLD_213_599'
var PAPlanProIDArr = new Array()
PAPlanProIDArr = PAPlanProID.split('_')

// **** Special Validations ******//

// This FUnction Will Call at final submition of  The Form  

function QAMS_SpecialValidations(functionid, BaseId, CtrlId, IssueID) {

    switch (parseInt(functionid)) {

        case 12: FUN_ISU_DEPT_VALIDATION(BaseId, CtrlId)
            break;
        case 13: FUN_CC_ISU_IDENTIFICATION_OF_CHANGE(BaseId, CtrlId)
            break;
        case 1: FUN_CC_EFORM_RA_REGAPPRVL(BaseId, CtrlId)
            break;
        case 2: FUN_CC_EFORM_RA_CUSAPPRVL(BaseId, CtrlId)
            break;
        case 3: FUN_CC_EFORM_TP_PLAN_REQ(BaseId, CtrlId)
            break;
        case 4: FUN_CC_EFORM_RP_PLAN_REQ(BaseId, CtrlId)
            break;
        case 5: FUN_CC_EFORM_VA_PLAN_REQ(BaseId, CtrlId)
            break;
        case 6: FUN_CC_EFORM_SA_PLAN_REQ(BaseId, CtrlId)
            break;
        case 7: FUN_CC_EFORM_QA_PLAN_REQ(BaseId, CtrlId)
            break;
        case 8: FUN_CC_EFORM_OA_PLAN_REQ(BaseId, CtrlId)
            break;
        case 9: FUN_CC_EFORM_QA_DECISION(BaseId, CtrlId)
            break;
        case 10: FUN_CC_EFORM_CQA_DECISION(BaseId, CtrlId)
            break;
        case 15: FUN_ISU_CC_DEV_OCCURED(BaseId, CtrlId)
            break;



    }
}


// Commen Function To Set  Propoerties To Funciton 
function SetPropertiedToControlsAtPageLoad(ScrType) {
    var CusValFunIdLst = document.getElementById("CustomValidFunTxt").value.substring(1)
    var CusValFldIdLst = document.getElementById("CunstomValIdsTxt").value.substring(3)
    var CusValFunIdArr = new Array()
    var CusValFldIdArr = new Array()

    CusValFunIdArr = CusValFunIdLst.split(",")
    CusValFldIdArr = CusValFldIdLst.split("#*#")

    //var IsuLogId=document.getElementById("IssueLogIdTXt").value

    Fun_Check_BatchSelection(ScrType)

    for (var i = 0; i <= CusValFunIdArr.length - 1; i++) {
        var CusValFldId = new Array()
        CusValFldId = CusValFldIdArr[i].split(",")

        switch (parseInt(CusValFunIdArr[i])) {
            case 1: FUN_CC_EFORM_RA_REGAPPRVL(CusValFldId[0], CusValFldId[1])
                break;
            case 2: FUN_CC_EFORM_RA_CUSAPPRVL(CusValFldId[0], CusValFldId[1])
                break;
            case 3: FUN_CC_EFORM_TP_PLAN_REQ(CusValFldId[0], CusValFldId[1])
                break;
            case 4: FUN_CC_EFORM_RP_PLAN_REQ(CusValFldId[0], CusValFldId[1])
                break;
            case 5: FUN_CC_EFORM_VA_PLAN_REQ(CusValFldId[0], CusValFldId[1])
                break;
            case 6: FUN_CC_EFORM_SA_PLAN_REQ(CusValFldId[0], CusValFldId[1])
                break;
            case 7: FUN_CC_EFORM_QA_PLAN_REQ(CusValFldId[0], CusValFldId[1])
                break;
            case 8: FUN_CC_EFORM_OA_PLAN_REQ(CusValFldId[0], CusValFldId[1])
                break;
            case 9: FUN_CC_EFORM_QA_DECISION(CusValFldId[0], CusValFldId[1])
                break;
            case 15: FUN_ISU_CC_DEV_OCCURED("FLD_" + CusValFldId[0], CusValFldId[1])
                break;

        }

    }
}


//*********  Common  Function To Set Validation  Messages  ***********

function EformAddCutomValidator(ExpMsg, BaseId, CtrlID) {
    var FldID = BaseId + "_" + CtrlID


    var ExpCtrlID = ""
    var ExpMessage = ""
    if (trim(document.getElementById(FldID).value) == "") {
        ExpMessage = ExpMessage + ExpMsg + '#*#';
        ExpCtrlID = FldID + '#*#'
    }

    //  alert(ExpMessage)
    setExpMessage(ExpMessage, ExpCtrlID, FldID)
}
//-------------------------------------------END----------------------------------



//case 1:

// Commen Function For Any process
// To set  Uniqcode department fld and Form Department values  as equal.
function FUN_ISU_DEPT_VALIDATION(BaseId, CtrlId) {
    var obj = document.getElementById(Ucodelevel1)
    var obj1 = document.getElementById(DeptFldID)
    var flag = 0
    var UCdoeValue = ''


    if (obj != null && obj1 != null) {
        var selIndex = obj1.selectedIndex
        var deptname = obj1.options(selIndex).text
        for (i = 1; i < obj.options.length; i++) {
            UCdoeValue = ''
            UCdoeValue = obj.options(i).text + '(' + obj.options(i).value + ')'
            if (UCdoeValue == deptname) {
                obj.selectedIndex = i;
                flag = 1;
                funSetCode();
            }
        }
        if (flag == 1)
            obj.disabled = true;
        else
            obj.disabled = false;
    }
}

/*--------------Change Control Login Functions ------------------*/
function FUN_CC_ISU_IDENTIFICATION_OF_CHANGE(BaseId, CtrlId) {

    if (TransType < 3) {
        // UcodeDeptCheck()
        AddCutomValidator("Select Value For: Identification of Change", IdentificationFldIdFldIdAry[1], IdentificationFldIdFldIdAry[2]) // Change Related To ID: FLD_9_14

        var ChangeRelatedToValue = document.getElementById(IdentificationFldId).value
        var ChangeRelatedToAry = new Array()
        ChangeRelatedToAry = ChangeRelatedToValue.split(";")



        document.getElementById("FLDLBL_" + OthersFldIdAry[1] + "_" + OthersFldIdAry[2]).className = "HideRow"
        AddCutomValidator("", OthersFldIdAry[1], OthersFldIdAry[2])

        for (i = 0; i < ChangeRelatedToAry.length; i++) {
            ChangeRelatedToAry[i] = trim(ChangeRelatedToAry[i])
            if (ChangeRelatedToAry[i] == "Other(s)") {
                AddCutomValidator("Enter Value For: Other(s)", OthersFldIdAry[1], OthersFldIdAry[2])
                document.getElementById("FLDLBL_" + OthersFldIdAry[1] + "_" + OthersFldIdAry[2]).className = "MainTd"

            }
        }

    }

}

/*   Case 2:  EventRelated To  Validation At Issue Login 
If Fields Are change Then chage ter ids and controlids and revlevent exep message , for new fields also same 
Fields Type 1 - For Product / Material  Event Type , 3- For Document Type , 4 - For Equipment Related Type ,5- other Details 
*/

function UcodeDeptCheck() {
    debugger
    var ExpMessage = ""
    var ExpCtrlID = ""

    var obj = document.getElementById("Ucodelevel1")
    var obj1 = document.getElementById("FLD_2_40")
    if (obj != null && obj1 != null) {

        var selIndex = obj.selectedIndex
        var deptname = obj.options(selIndex).text + '(' + obj.options(selIndex).value + ')'
        selIndex = obj1.selectedIndex
        var Initdeptname = obj1.options(selIndex).text
        if (Initdeptname != deptname) {
            // alert("Initiation Department and Ucode-Department Name Should Be Equal")
            ExpMessage = "Unique Item Value: Department Name should be equal to Initiating Department"


        }
        ExpCtrlID = "Ucodelevel1"
        var idStr = "Ucodelevel1"
        setExpMessage(ExpMessage, ExpCtrlID, idStr)
    }
}

// *****  Work Allocation Validatios *********

function QAMS_WRK_ALL_SpecialValidations(functionid, IssueID, Rowcount) {
    switch (parseInt(functionid)) {
        case 4: FUN_WRKALLOC_USERAUTHENTICATION(IssueID, Rowcount)
            break;
    }
}

//Case 4: Work Allocation Incharge Check Validation  -At efrom preparation ******
function FUN_WRKALLOC_USERAUTHENTICATION(IssueID, Rowcount) {
    QAMS_ReadDepartMent(IssueID, Rowcount)
}


function trim(str) {
    return str.replace(/^\s+|\s+$/g, "");
}

function AddCutomValidator(ExpMsg, BaseId, CtrlID) {
    var FldID = LogFldPrefix + BaseId + "_" + CtrlID
    var ExpCtrlID = ""
    var ExpMessage = ""
    if (trim(document.getElementById(FldID).value) == "") {
        ExpMessage = ExpMessage + ExpMsg + '#*#';
        ExpCtrlID = FldID + '#*#'
    }

    //  alert(ExpMessage)
    setExpMessage(ExpMessage, ExpCtrlID, FldID)
}





function setExpMessage(ExpMesage, ExpCtrlID, Idstr) {
    var Count = 0;
    // if (ExpMesage == "")
    //  alert("ExpMesage =" + ExpMesage + "   ExpCtrlID=" + ExpCtrlID + "    Idstr=  " + Idstr + "  ExpMsgIdArr=" + ExpMsgIdArr.join("XX"))
    if (ExpMesage == "") {
        for (var i = 0; i <= ExpMsgIdArr.length - 1; i++) {
            if (ExpMsgIdArr[i] == Idstr)
                ExpMessageArr[i] = ExpMesage
            EXpControlId[i] = ExpCtrlID
        }
    }
    else {
        for (var i = 0; i <= ExpMsgIdArr.length - 1; i++) {
            //  alert((ExpMsgIdArr[i] == Idstr) + "      " + Idstr)
            if (ExpMsgIdArr[i] == Idstr) {
                Count = 1;
                ExpMessageArr[i] = ExpMesage
                EXpControlId[i] = ExpCtrlID
            }
        }
        // alert(Count)
        if (Count == 0) {
            ExpMsgIdArr.push(Idstr)
            ExpMessageArr.push(ExpMesage)
            EXpControlId.push(ExpCtrlID)
        }
    }
}


//*********  Common  Function To Set Validation  Messages  ***********



function AjaxCheckUserExisInGrp(Groupname, Rowcnt) {
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
            var Time = "abc"
            Time = xmlhttp.ResponseText
            UserStatusvalue(Time, Rowcnt)
            xmlhttp = null;
        }
    }
    var url = "../IssueLogin/CheckuserExisInGroup.aspx?Groupname=" + Groupname
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);
}




//Read Department


function QAMS_ReadDepartMent2(IssueLogId, Rowcnt) {
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
            SetInchargegroup(RtnStr, Rowcnt)

        }
    }
    var url = "../PrsWorkFlow/ReadIssueDepartment_Ajax.aspx?IsuLoginID=" + IssueLogId + "&FldName=Department"
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);
}

//function to check user existance in group at issuelogin approval
function AjaxCheckUserExisInGroup(IssueLogId, RowCnt, DeptName) {
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
            var Time = "abc"
            Time = xmlhttp.ResponseText
            UserStatusvalue(Time, RowCnt)

            xmlhttp = null;
        }
    }
    var url = "../PrsWorkFlow/CheckuserExisInGroup.aspx?IsuLoginID=" + IssueLogId + "&FldName=" + DeptName
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);

}

// Function to Check user Authenticaton At CAPA Work Allocation 

function QAMS_checkuserAuthoentication(IssueFormId, ActionPlanId, RowCnt) {
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
            RaiseWrkItems(RtnStr, RowCnt)

        }
    }
    var url = "../PrsWorkFlow/CheckPlanWrkInitUserAuth_Ajax.aspx?IssueFormId=" + IssueFormId + "&ActionPlanId=" + ActionPlanId
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);
}

//Read Isu Login Department

function QAMS_ReadDepartMent(IssueLogId, Rowcnt) {
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
            SetInchargegroup(RtnStr, Rowcnt)

        }
    }
    var url = "../PrsWorkFlow/ReadIssueDepartment_Ajax.aspx?IsuLoginID=" + IssueLogId + "&FldName=Department"
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);
}


//to change the status of issue
//             if Isustatus=1 CAPA Initiation
//             Isustatus=2 Issue Closure

function AjaxChangeIssueStatus(IssueId, WrkAulId, Isustatus) {
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
            var Time = "abc"

            Time = xmlhttp.ResponseText
            //alert(Time)
            xmlhttp = null;
        }
    }

    //@Isustatus =2  Issue Root to Issue Closure
    //@Isustatus= 1 Isseu Root To CAPA
    //@Isustatus =4  Diplay At Plan  Accaptance List
    var url = "../TestEFormExecution/ChangeIsuStatus.aspx?IssueId=" + IssueId + "&WrkAulId=" + WrkAulId + "&Isustatus=" + Isustatus

    //alert(url)
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);
}



// **** Custom Field Validations for EForm at OnSubmit******//


function Fnsubmit1(TransType, SrcType) {
    //To check the Initiating Department Value at Issue Login Modification and Re-initiation
    if ((TransType == 2 || TransType == 3 || TransType == 4) && SrcType == 1) {
        var IsulogId = document.getElementById("IsuLogIdTxt").value;

        AjaxReadInitDeptValue(IsulogId, TransType, SrcType);

    }
    //To restrict the issue closure initiation if Effectiveness/Monitoring Plans schedule is pending for any plans
    else if (TransType == 1 && SrcType == 2) {
        var IssueLogId = document.getElementById("IssLogId").value;
        AjaxReadEMPlanScheduleSts(IssueLogId, TransType, SrcType)

    }
    else {
        Fnsubmit(TransType, SrcType);
    }
}

function SetDeptVal(DeptVal, TransType, SrcType) {

    if (document.getElementById(DeptFldID)) {
        var obj1 = document.getElementById(DeptFldID).value;

        if (obj1 != DeptVal && DeptVal != 0) {
            alert("Initiating Department Value Should Not Be Changed");
            document.getElementById("FLD_" + BaseId + "_" + ControlId).value = DeptVal;
        }
    }
    Fnsubmit(TransType, SrcType);
}

function SetEFMStatus(Status, TransType, SrcType) {
    if (Status == 1) {
        alert("Effectiveness / Monitoring Plans Schedule Is Pending")
    }
    else {
        Fnsubmit(TransType, SrcType);
    }

}


function Fnsubmit(TransType, SrcType) { ///
    // alert("Fnsubmit")

    CustValidations(SrcType)
    // var ExcpMsg = CustValidations();
    if (!Page_ClientValidate()) {
        return;
    }
    // alert('abcd')
    // if(ExcpMsg!="")
    // {
    //     alert(ExcpMsg.substring(0,ExcpMsg.length-1));
    //     return;
    //  }
    // else {

    if (typeof (fnCallESign) != "undefined") {
        if (IsValidFlag == false) {
            fnCallESign(TransType)
            return;
        }
    }
    document.getElementById("btnConfirm").click();
    // }

}
// Function To Change DB level Flag At Final Submition OF  Form based  on decision 
function IssueFinalSubmit() {

    var CusValFunIdLst = document.getElementById("CustomValidFunTxt").value.substring(1)
    var CusValFldIdLst = document.getElementById("CunstomValIdsTxt").value.substring(3)
    var CusValFunIdArr = new Array()
    var CusValFldIdArr = new Array()
    var IsuLogId = 0

    CusValFunIdArr = CusValFunIdLst.split(",")
    CusValFldIdArr = CusValFldIdLst.split("#*#")

    if (document.getElementById("WorkItemIdTxt") != null) {
        var IsuLogId = document.getElementById("WorkItemIdTxt").value
    }

    for (var i = 0; i <= CusValFunIdArr.length - 1; i++) {
        var CusValFldId = new Array()
        CusValFldId = CusValFldIdArr[i].split(",")

        // QAMS_SpecialValidations(CusValFunIdArr[i], CusValFldId[0], CusValFldId[1], IsuLogId
        switch (parseInt(CusValFunIdArr[i])) {


        }
    }

}

// Function To Change DB level Flad At Final Submition OF  Form based  on decision          
function EFormFinalSubmit() {
    var CusValFunIdLst = document.getElementById("CustomValidFunTxt").value.substring(1)
    var CusValFldIdLst = document.getElementById("CunstomValIdsTxt").value.substring(3)
    var CusValFunIdArr = new Array()
    var CusValFldIdArr = new Array()

    CusValFunIdArr = CusValFunIdLst.split(",")
    CusValFldIdArr = CusValFldIdLst.split("#*#")

    var IsuLogId = document.getElementById("IssueLogIdTXt").value
    for (var i = 0; i <= CusValFunIdArr.length - 1; i++) {
        var CusValFldId = new Array()
        CusValFldId = CusValFldIdArr[i].split(",")

        // QAMS_SpecialValidations(CusValFunIdArr[i], CusValFldId[0], CusValFldId[1], IsuLogId
        switch (parseInt(CusValFunIdArr[i])) {
            case 9: FUN_CC_EFORM_QA_DECISION_ONSUBMIT(CusValFldId[0], CusValFldId[1], IsuLogId)
                break;
            case 10: FUN_CC_EFORM_CQA_DECISION_ONSUBMIT(CusValFldId[0], CusValFldId[1], IsuLogId)
                break;


        }
    }

}

function CustValidations(SrcType) {
    var ExpMsg = ""

    Fun_Check_BatchSelection_SUBMIT(SrcType)
    var CusValFunIdLst = document.getElementById("CustomValidFunTxt").value.substring(1)
    var CusValFldIdLst = document.getElementById("CunstomValIdsTxt").value.substring(3)
    var CusValFunIdArr = new Array()
    var CusValFldIdArr = new Array()

    CusValFunIdArr = CusValFunIdLst.split(",")
    CusValFldIdArr = CusValFldIdLst.split("#*#")

    var CtrlPrefix = LogFldPrefix
    if (SrcType == '20') { CtrlPrefix = '' }

    for (var i = 0; i <= CusValFunIdArr.length - 1; i++) {
        var CusValFldId = new Array()
        CusValFldId = CusValFldIdArr[i].split(",")
        //alert(CusValFunIdArr[i] + ' ' + LogFldPrefix + CusValFldId[0] + ' ' + CusValFldId[1])
        QAMS_SpecialValidations(CusValFunIdArr[i], CtrlPrefix + CusValFldId[0], CusValFldId[1], 0)
    }

    // return ExpMsg;
}

// Function Check AT Final Submition To Diaply Validation 
function FinalValidationCheck(src, args) {
    args.IsValid = true;
    Page_IsValid = true;
    var ErrerString = ""

    //   alert("EXpControlId=" + EXpControlId.join("AAA") + "   EXpControlId=" + EXpControlId.join("BBB") + "   ExpMessageArr=" + ExpMessageArr.join("CCCC")) 
    for (var i = 0; i <= EXpControlId.length - 1; i++) //ExpMessageArr
    {
        if (ExpMessageArr[i] != "") {
            var CtrlIDArr = new Array()
            var ExpMsgArr = new Array()

            CtrlIDArr = EXpControlId[i].split("#*#")
            ExpMsgArr = ExpMessageArr[i].split("#*#")

            for (var j = 0; j <= CtrlIDArr.length - 1; j++) {
                //if (CtrlIDArr[j] != "")
                if (ExpMsgArr[j] != "") ErrerString = ErrerString + ExpMsgArr[j] + "\n -"


            }
        }
    }
    //  alert(ErrerString)
    //  alert(ErrerString)
    if (ErrerString != "") {
        src.errormessage = ErrerString.substring(0, ErrerString.length - 3)
        args.IsValid = false;
        Page_IsValid = false;
    }
}



// ****End Of Custom Field Validations for EForm at OnSubmit******//



// Custom Validation Function For Plan Proposal

function Plan_Proposal() {

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
            SetInchargegroup(RtnStr, Rowcnt)

        }
    }

    // These two field values are Mandatory  for any Request Type , bcz for work item plan we are saving issue reference 
    var IssuedId = 0
    var IssuAulId = 0

    // This field values are mandatry at RequestType=2
    var FissId = 0
    var FissAulId = 0

    // RequestType =1  Only Issue Login Plan Proposals
    // RequestType =2  Only Work Items Plan Proposals
    // RequestType =3   Both Issue And Work Item Plan proposals
    var RequestType = 0

    var url = "../AutoWorkAllocation/WorkAllocationAndMailCFG.aspx?IssuedId=" + IssuedId + "&IssuAulId=" + IssuAulId + "&FissId=" + FissId + "&FissAulId=" + FissAulId
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);

}

//calculation of Issue closure date at Issuelogin Registration Initiation

function FN_SET_ISSUE_TARGET_DATE_ONLOAD() {


    if (LoginTransType == '1') {

        AjaxSetTargetDate(FormTypeid, 0, 20, "LoadingClsDate")
    }
    else if ((LoginTransType == '2') || (LoginTransType == '3')) {
        AjaxSetTargetDate(LoginAulid, 0, 25, "LoadingClsDate")
    }


}

function LoadingClsDate(duration) {
    var baseID = CloserDateFldIdAry[1];  //TargetDate Ids
    var controlID = CloserDateFldIdAry[2]; //TargetDate Ids

    //alert(duration)
    var dat = new Date();
    var display_date_cls = document.getElementById("FLD_" + baseID + "_" + controlID + "_CalDateDisplay");  //$("#FLD_" + baseID + "_" + controlID + "_CalDateDisplay")[0]
    if (document.getElementById("FLD_" + baseID + "_" + controlID + "_CalDateVal")) {
        var input_date_cls = document.getElementById("FLD_" + baseID + "_" + controlID + "_CalDateVal");
        //                input_date_cls.nextSibling.style.display = 'none'
    }
    // alert(duration)
    dat = dat.addDays(duration);

    // alert(dat)
    //alert(dat.addDays(duration));
    var m = dat.getMonth() + 1;

    input_date_cls.value = GetLocalizedDate(m, dat.getDate(), dat.getFullYear(), display_date_cls);
    LoadLoginSettings()
}

Date.prototype.addDays = function (days) {
    var dat = new Date(this.valueOf());
    dat.setDate(dat.getDate() + days);
    return dat;
}

function LoadLoginSettings() {
    var input_date_cls = document.getElementById("FLD_" + CloserDateFldIdAry[1] + "_" + CloserDateFldIdAry[2] + "_CalDateVal");
    //            input_date_cls.nextSibling.style.display = 'none'
    //document.getElementById("FLD_" + baseID + "_" + controlID + "_CalDateBtn").style.display = "none";
    //$("#FLD_" + baseID + "_" + controlID + "_CalDateBtn").css('display','none');
    var DepUqObj = document.getElementById(Ucodelevel1)

    if (DepUqObj != null) {

        var InitDeptObj = document.getElementById(InitDepartFldId);
        var myindex = InitDeptObj.selectedIndex;
        var InitDeptName = InitDeptObj.options[myindex].text;
        var DeptCount = parseInt(DepUqObj.options.length)
        var InitDeptValue = InitDeptObj.options[myindex].value;
        for (j = 0; j <= DeptCount - 1; j++) {
            if (InitDeptValue != '') {
                var UCdoeValue = ''
                UCdoeValue = DepUqObj.options[j].text + '(' + DepUqObj.options[j].value + ')'
                if (InitDeptName == UCdoeValue) {
                    DepUqObj.selectedIndex = j;
                    //alert(DepUqObj.options[d].selected);
                    DepUqObj.disabled = true;
                    funSetCode();

                } // if
            } // if
        } //for

    }

    var SOPObj = document.getElementById(SOPObjRadioBtnID)
    if (SOPObj != null) {
        // SOPObj.attachEvent('onclick', FUN_ISU_EDITATT_DECISION)  'FLD_CTLID,BASE ID  as arguments
        SOPObj.onclick = function () { FUN_ISU_EDITATT_DECISION(SOPObjRadioBtnIDAry[0] + '_' + SOPObjRadioBtnIDAry[1], SOPObjRadioBtnIDAry[2]); };
        FUN_ISU_EDITATT_DECISION(SOPObjRadioBtnIDAry[0] + '_' + SOPObjRadioBtnIDAry[1], SOPObjRadioBtnIDAry[2])
    }


    // validatiopn For  Reference Filed at Page  Load 

    var RefObj = document.getElementById(ReferenceBtnID)
    if (RefObj != null) {
        // RefObj.attachEvent('onclick', FUN_ISU_REFERENCE_DECISION)  'FLD_CTLID,BASE ID  as arguments
        RefObj.onclick = function () { FUN_ISU_REFERENCE_DECISION(ReferenceObjRadioBtnIDAry[0] + '_' + ReferenceObjRadioBtnIDAry[1], ReferenceObjRadioBtnIDAry[2]); };
        FUN_ISU_REFERENCE_DECISION(ReferenceObjRadioBtnIDAry[0] + '_' + ReferenceObjRadioBtnIDAry[1], ReferenceObjRadioBtnIDAry[2])
    }

}


function FUN_ISU_SECTION_SELECTION(BaseId, CtrlId) {
    var Locationobj = document.getElementById(Ucodelevel0)
    var Sectionobj = document.getElementById(SectionDDlID)

    var AvilabelSections = ''
    var ExpMessage = ""
    var ExpCtrlID = ""
    var AvilableSections = ''
    var Flag = 0
    var LocationName = ''

    var Ucode = document.getElementById("CodeTxt").value
    Ucode = Ucode.replace('PROV-', '')
    var UcodeArr = new Array()
    UcodeArr = Ucode.split('-')

    if (Sectionobj != null) {
        //var selIndexosLoc = Locationobj.selectedIndex
        //var LocationCode = Locationobj.options(selIndexosLoc).value
        //var LocationName = Locationobj.options(selIndexosLoc).text

        var LocationCode = UcodeArr[1]
        var selIndexosSec = Sectionobj.selectedIndex
        var Section = Sectionobj.options(selIndexosSec).value
        if (Section != "") {

            if (LocationCode == 'AN') { AvilableSections = 'API'; LocationName = 'Ankleshwer' }
            if (LocationCode == 'AU') { AvilableSections = 'Formulation'; LocationName = 'Aurangabad' }
            if (LocationCode == 'DA') { AvilableSections = 'API'; LocationName = 'Dabhasa' }
            if (LocationCode == 'GO') { AvilableSections = 'Formulation'; LocationName = 'Goa' }
            if (LocationCode == 'IN') { AvilableSections = 'API#*#Formulation#*#API & Formulation'; LocationName = 'Indore' }
            if (LocationCode == 'JA') { AvilableSections = 'Formulation'; LocationName = 'Jammu' }
            if (LocationCode == 'MA') { AvilableSections = 'API#*#Formulation#*#API & Formulation'; LocationName = 'Mandideep' }
            if (LocationCode == 'NA') { AvilableSections = 'Formulation'; LocationName = 'Nagpur' }
            if (LocationCode == 'PU') { AvilableSections = 'API#*#Formulation#*#API & Formulation'; LocationName = 'Pune' }
            if (LocationCode == 'TA') { AvilableSections = 'API'; LocationName = 'Tarapur' }
            if (LocationCode == 'HO') { AvilableSections = 'API#*#Formulation#*#API & Formulation'; LocationName = 'HO' }



            var ExpMsg = 'Selected Division Does Not Exist In ' + LocationName + ' Location'



            // If More Plants Are there Add those Plants Hear 
            //if (LocationCode='XXXX') { AvilableSections='XXX#*#YYYY' }


            var AvilableSectionsArr = new Array();
            AvilableSectionsArr = AvilableSections.split('#*#');
            for (var i = 0; i < AvilableSectionsArr.length; i++) {
                if (AvilableSectionsArr[i] == Section) { Flag = 1; }
            }

            if (Flag == 0) {
                ExpMessage = ExpMessage + ExpMsg + '#*#';
                ExpCtrlID = (LogFldPrefix + BaseId + "_" + CtrlId) + '#*#'
            }
        }


        var idStr = SectionDDlID
        setExpMessage(ExpMessage, ExpCtrlID, idStr)
    }

}



//Ajax function

function AjaxSetTargetDate(IssueId, PlanID, Isustatus, fnLoadingClsDateName) {
    var recary = new Array();
    var Time = "abc"


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
            // 

            Time = xmlhttp.ResponseText
            //alert(Time) 
            xmlhttp = null;
            setTimeout(fnLoadingClsDateName + "(" + Time + ")", 0)
            //                            return Time;

        }
    }

    //@Isustatus =2  Issue Root to Issue Closure
    //@Isustatus= 1 Isseu Root To CAPA
    //@Isustatus =4  Diplay At Plan  Accaptance List
    var url = "../TestEFormExecution/ChangeIsuStatus.aspx?IssueId=" + IssueId + "&WrkAulId=" + 0 + "&Isustatus=" + Isustatus + "&PlanID=" + PlanID

    //alert(url)
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);
}

function AjaxReadPlanStatus(IssueId, IssuLogId, PlanID, Isustatus, returnfunction) {

    var recary = new Array();
    var Time = "abc"


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
            // 

            Time = xmlhttp.ResponseText
            //alert(Time) 
            xmlhttp = null;
            setTimeout(returnfunction + "(" + Time + ")", 0)
            //                            return Time;

        }
    }
    //@Isustatus =2  Issue Root to Issue Closure
    //@Isustatus= 1 Isseu Root To CAPA
    //@Isustatus =4  Diplay At Plan  Accaptance List
    var url = "../TestEFormExecution/ChangeIsuStatus.aspx?IssueId=" + IssueId + "&WrkAulId=" + 0 + "&Isustatus=" + Isustatus + "&PlanID=" + PlanID + "&IssuLogId=" + IssuLogId

    //alert(url)
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);
}





////////////////////////////////////////////////Read  QRM  Investigation  status////////////////////////////////
function AjaxReadQRMPlanStatus(IssueId, PlanID, Isustatus, returnfunction, returnParams) {
    var recary = new Array();
    var Time = "abc";


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


            Time = xmlhttp.ResponseText
            xmlhttp = null;

            // "returnParams" is an optional parameter 

            if (returnParams == undefined) {
                setTimeout(returnfunction + "(" + Time + ")", 0)

            }
            else
            { setTimeout(returnfunction + "(" + Time + "," + "'" + returnParams + "')", 0) }


        }
    }

    //@Isustatus =2  Issue Root to Issue Closure
    //@Isustatus= 1 Isseu Root To CAPA
    //@Isustatus =4  Diplay At Plan  Accaptance List
    var url = "../TestEFormExecution/ChangeIsuStatus.aspx?IssueId=" + IssueId + "&WrkAulId=" + 0 + "&Isustatus=" + Isustatus + "&PlanID=" + PlanID

    //alert(url)
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);
}

//////////////////////////////////////////





//Batch release criteria at QA Decision
function FUN_DEV_BATCH_RELEASE(BaseId, CtrlId, IssueID) {

    var BatRelVal = document.getElementById(BaseId + "_" + CtrlId).value
    IssueID = document.getElementById("IssueLogIdTXt").value
    if (BatRelVal == 'Closure of deviation is mandatory') {
        AjaxUpdateBatch(IssueID, 1)
    }
    else if (BatRelVal == 'Closure of deviation is not mandatory') {
        AjaxUpdateBatch(IssueID, 2)
    }
    else if (BatRelVal == 'Not Applicable') {
        AjaxUpdateBatch(IssueID, 3)
    }

}

//Closed

//function to update batch release criteria value at issue login aul

function AjaxUpdateBatch(IsuLogId, BatRelSts) {

    /* BatRelSts =1 Closure is mandatory
    BatRelSts =2 Closure is not mandatory
    BatRelSts=3 NotApplicable
    */
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
            var Time = "abc"
            Time = xmlhttp.ResponseText
            xmlhttp = null;
        }
    }

    var url = "../TestEFormExecution/UpdateBatchStatus.aspx?IssueId=" + IsuLogId + "&BatRelSts=" + BatRelSts

    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);
}



// Function to raise effective ness plans at login intiation
function Ajax_EffectnessMonitoring() {
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
            //document.Form1.submit ()

        }
    }
    var url = "../AutoWorkAllocation/WorkAllocationAndMailCFG.aspx?RequestType=4"
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);
}


//To get the initiating department value
function AjaxReadInitDeptValue(IsuLogID, TransType, SrcType) {
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
            SetDeptVal(RtnStr, TransType, SrcType)
        }
    }
    var url = "../IssueLogin/AjaxInitDeptValue.aspx?IsuLogId=" + IsuLogID
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);


}

//To check the Effectiveness/Monitoring Plans Schedule status
function AjaxReadEMPlanScheduleSts(IsuLogId, TransType, SrcType) {
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
            SetEFMStatus(RtnStr, TransType, SrcType)
        }
    }
    var url = "../IssueClosure/AjaxEFMScheduleStatus.aspx?IsuLogId=" + IsuLogId
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);

}

//To check the Effectiveness/Monitoring Plans status

function AjaxReadEMPlanStatus(ActionPlanId, returnfunction, returnParams) {
    var recary = new Array();
    var Time = "abc"
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
            Time = xmlhttp.ResponseText
            xmlhttp = null;
            setTimeout(returnfunction + "(" + "'" + Time + "'" + "," + "'" + returnParams + "')", 0)
        }
    }

    var url = "../PrsWorkFlow/AjaxReadPlanStatus.aspx?PlanId=" + ActionPlanId + '&Type=1'
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);
}



function Fn_XMLTableRow(ColName, ColValue, TableName) {
    TableName = TableName ? TableName : "DataTable"
    return "<" + TableName + "><ColumnName>" + ColName + "</ColumnName><ColumnValue>" + ColValue + "</ColumnValue></" + TableName + ">";
}




function AjaxUpdatePrintLog(IsuLogId, PrintRelTo, PrinterName, DriverName) {

    var Values = '<XmlDS>';
    Values += Fn_XMLTableRow("IsuLogId", "<![CDATA[" + IsuLogId + "]]>")
    Values += Fn_XMLTableRow("PrintRelTo", "<![CDATA[" + PrintRelTo + "]]>")
    Values += Fn_XMLTableRow("PrinterName", "<![CDATA[" + PrinterName + "]]>")
    Values += Fn_XMLTableRow("DriverName", "<![CDATA[" + DriverName + "]]>")

    Values += "</XmlDS>";

    var url = "../CAPAWORKS/AjaxUpadtePrintLog.aspx"
    if (window.XMLHttpRequest) {
        reqXML = new XMLHttpRequest();
    }
    else if (window.ActiveXObject) {
        reqXML = new ActiveXObject("Microsoft.XMLHTTP");
    }
    if (reqXML) {
        reqXML.open("POST", url, true);
        reqXML.setRequestHeader("Content-Type", "text/xml");
        reqXML.send("<?xml version='1.0' encoding='UTF-8'?>" + Values);
        reqXML.onreadystatechange = function () {
            if (reqXML.readyState == 4) {
                Time = reqXML.ResponseText
                xmlhttp = null;
            }
        }
    }
    else {
        alert("Your browser does not support Ajax");
    }
}






// New Functions 


// Fun_Check_BatchSelection

function Fun_Check_BatchSelection(SrcType) {

    var BatchAutID = ''
    var BatchAutIDArr = new Array()
    var BatchSelID = ''
    var BatchAutvalArr = new Array()
    var BatchSelvalArr = new Array()

    var ExpCtrlID = ''
    var idStr = ''
    var ExpMessage = ''


    if (SrcType == 20) // At WorkItemApproval
    {
        BatchAutID = 'E1_COL0215051014_625'
        var BatchAuthObj = document.getElementById(BatchAutID)
        if (BatchAuthObj != null) {
            Ajax_CheckACPProsalStatus(document.getElementById("IssueLogIdTXt").value, BatchAutID, SrcType);
        }


        //Added for new Capa  work Item

        var BatchAut1ID = 'E1_COL0714001009_52'
        BatchAuthObj = document.getElementById(BatchAut1ID)
        if (BatchAuthObj != null) {
            if (document.getElementById('BTN_E1_COL0714001009').disabled == false) {
                Ajax_CheckACPProsalStatus(document.getElementById("IssueLogIdTXt").value, BatchAut1ID, 20);
            }
        }

        var BatchAut2ID = 'E1_COL0714001012_56'
        BatchAuthObj = document.getElementById(BatchAut2ID)
        if (BatchAuthObj != null) {
            if (document.getElementById('BTN_E1_COL0714001012').disabled == false) {
                Ajax_CheckACPProsalStatus(document.getElementById("IssueLogIdTXt").value, BatchAut2ID, 2);
            }
        }
        //End Added for new Capa  work Item 


    } // SrcType ==20


    if (SrcType == 2) // At Issue LCosure
    {
        //BatchAutID='FLD_80_61'
        BatchAutID = 'FLD_104_56'
        var BatchAuthObj = document.getElementById(BatchAutID)
        if (BatchAuthObj != null) {
            if (document.getElementById("BTN_FLD_104").disabled == false) {
                Ajax_CheckACPProsalStatus(document.getElementById("IssLogId").value, BatchAutID, SrcType);
            }

        }
    }


} // end of  Function


function Fun_Check_BatchSelection_SUBMIT(SrcType) {


    var ApproveBtnObj = document.getElementById("Approve")
    var ValidateFlag = 0
    if (ApproveBtnObj != null) {
        if (document.getElementById("Approve_1").checked == true) {
            ValidateFlag = 1;
        }
    }

    if (ValidateFlag == 0) {

        var BatchAutID = ''
        var BatchAutIDArr = new Array()
        var BatchSelID = ''
        var LotSelID = ''
        var BatchAutvalArr = new Array()
        var BatchSelvalArr = new Array()

        var ExpCtrlID = ''
        var idStr = ''
        var ExpMessage = ''
        var BAtchValidtion = 0

        if (SrcType == 1) // At  issue Login Approval Cycle
        {

            BatchAutID = 'FLD_220_625'
            BatchSelID = 'FLD_189_614'
            LotSelID = 'FLD_191_615'

            // Lot id Should be aDDED 
            BatchAutIDArr = BatchAutID.split('_');
            LotSelvalArr = LotSelID.split('_');


            var BatchSelObj = document.getElementById(BatchSelID)
            var BatchAuthObj = document.getElementById(BatchAutID)
            var LotSelObj = document.getElementById(LotSelID)

            var BAtchSelCnt = 0

            if (BatchSelObj != null) {
                if (BatchSelObj.value != '') { BAtchSelCnt = 1; BatchSelvalArr = BatchSelObj.value.split(',') }
            }

            if (LotSelObj != null) {
                if (LotSelObj.value != '') { BAtchSelCnt = 1; BatchSelvalArr = LotSelObj.value.split(',') }

            }


            if (BAtchSelCnt == 1 && BatchAuthObj != null) {
                ExpCtrlID = BatchAutID
                idStr = BatchAutID

                if ((BatchAuthObj.value == '') && (document.getElementById("BTN_" + BatchAutIDArr[0] + '_' + BatchAutIDArr[1]).disabled == false)) {
                    var r = confirm("Decision On Selected Batch(s) Is Pending  \n Still To Continue Click Ok ");
                    if (r != true) { ExpMessage = "Select Value For: Batch Release Control " };

                }

                else if ((BatchAuthObj.value != '') && (document.getElementById("BTN_" + BatchAutIDArr[0] + '_' + BatchAutIDArr[1]).disabled == false)) {
                    BatchAutvalArr = BatchAuthObj.value.split(',')
                    if (BatchSelvalArr.length != BatchAutvalArr.length) {
                        var r = confirm("Decision On Selected Batch(s) Is Pending  \n Still To Continue Click Ok ");
                        if (r != true) { BAtchValidtion = 1; ExpMessage = "Select Value For: Batch Release Control " };
                    }

                }


            }


        } // SrcType ==1


        var ValueArr = new Array()


        if (SrcType == 20)  // At WorkItemApproval
        {

            BatchAutID = 'E1_COL0215051014_625' //'E1_COL1113009012_54'
            var BatchAuthObj = document.getElementById(BatchAutID)

            if (BatchAuthObj != null) {
                if (document.getElementById("BTN_E1_COL0215051014").disabled == false) {
                    if (BatchStatus > 0) {
                        ExpCtrlID = BatchAutID
                        idStr = BatchAutID

                        if (BatchAuthObj.value != '') {
                            ValueArr = BatchAuthObj.value.split(',')
                            var CalCnt = ValueArr.length
                            if (BatchStatus != CalCnt)
                                ExpMessage = "Select Value For: Batch Release Control"
                        }
                        else {
                            ExpMessage = "Select Value For: Batch Release Control"
                        }
                    }
                    if (ExpMessage == "") {
                        Ajax_UpdateBatchStatus(document.getElementById("IssueLogIdTXt").value, SrcType)
                    }
                }
            }





            //Code for capa work item-------------------------------------------------

            // Batch First Authentication 

            BatchAutID = 'E1_COL0714001009_52' //'E1_COL1113009012_54'
            var BatchAuthObj = document.getElementById(BatchAutID)

            if (BatchAuthObj != null) {
                if (document.getElementById("BTN_E1_COL0714001009").disabled == false) {
                    if (BatchStatus > 0) {
                        ExpCtrlID = BatchAutID
                        idStr = BatchAutID

                        if (BatchAuthObj.value != '') {
                            ValueArr = BatchAuthObj.value.split(',')
                            var CalCnt = ValueArr.length
                            if (BatchStatus != CalCnt) {
                                var r = confirm("Decision On Selected Batch(s) Is Pending  \n Still To Continue Click Ok ");
                                if (r != true) { ExpMessage = "Select Value For: Batch Release Control " };
                            }
                            else {
                                var r = confirm("Decision On Selected Batch(s) Is Pending  \n Still To Continue Click Ok ");
                                if (r != true) { ExpMessage = "Select Value For: Batch Release Control " };
                            }
                        }
                        if (ExpMessage == "") {
                            Ajax_UpdateBatchStatus(document.getElementById("IssueLogIdTXt").value, SrcType)
                        }
                    }
                }
            }



            // Batch Secoond Authentication 



            BatchAutID = 'E1_COL0714001012_56' //'E1_COL1113009012_54'
            var BatchAuthObj = document.getElementById(BatchAutID)

            if (BatchAuthObj != null) {
                if (document.getElementById("BTN_E1_COL0714001012").disabled == false) {
                    if (BatchStatus > 0) {
                        ExpCtrlID = BatchAutID
                        idStr = BatchAutID

                        if (BatchAuthObj.value != '') {
                            ValueArr = BatchAuthObj.value.split(',')
                            var CalCnt = ValueArr.length
                            if (BatchStatus != CalCnt) {
                                var r = confirm("Decision On Selected Batch(s) Is Pending  \n Still To Continue Click Ok ");
                                if (r != true) { ExpMessage = "Select Value For: Batch Release Control " };
                            }
                            else {
                                var r = confirm("Decision On Selected Batch(s) Is Pending  \n Still To Continue Click Ok ");
                                if (r != true) { ExpMessage = "Select Value For: Batch Release Control " };
                            }
                        }
                        if (ExpMessage == "") {
                            Ajax_UpdateBatchStatus(document.getElementById("IssueLogIdTXt").value, SrcType)
                        }
                    }
                }
            }

            //end Code for capa work item-------------------------------------------




        } // SrcType ==20


        if (SrcType == 2) // At Issue LCosure
        {
            BatchAutID = 'FLD_104_56'
            var BatchAuthObj = document.getElementById(BatchAutID)

            if (BatchAuthObj != null) {

                if (document.getElementById("BTN_FLD_104").disabled == false) {
                    if (BatchStatus > 0) {
                        ExpCtrlID = BatchAutID
                        idStr = BatchAutID

                        if (BatchAuthObj.value != '') {
                            ValueArr = BatchAuthObj.value.split(',')
                            var CalCnt = ValueArr.length
                            if (BatchStatus != CalCnt)
                                ExpMessage = "Selecct Value For: Batch Release Control"
                        }
                        else {
                            ExpMessage = "Selecct Value For: Batch Release Control"
                        }
                    }
                    if (ExpMessage == "") {
                        Ajax_UpdateBatchStatus(document.getElementById("IssLogId").value, SrcType)
                    }
                }
            }

        } // SrcType ==2



        setExpMessage(ExpMessage, ExpCtrlID, idStr)
    }


} // end of  Function





// Ajax Function To Check Action Plan Proposals  At QA Decision 

function Ajax_CheckACPProsalStatus(IssuelogId, FldID, SrcType) {

    var recary = new Array();
    var Time = "abc"
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
            Time = xmlhttp.ResponseText
            xmlhttp = null;
            if (Time == '') { Time = 0 }

            var ExpMessage = '';
            if (Time > 0) {

                BatchStatus = Time
            }
            else { BatchStatus = 0 }
        }
    }
    var url = "../PrsWorkFlow/AjaxReadPlanStatus.aspx?IssuelogId=" + IssuelogId + '&Type=2&SrcType=' + SrcType + '&UpdateFlag=0'
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);
}



function ReadSchRptDoc(BaseID, CtrlID) {
    Ajax_ReadSchRptDoc(0, BaseID, CtrlID)
}

function Ajax_ReadSchRptDoc(FissId, BaseID, CtrlID) {
    var recary = new Array();
    var Time = "abc"
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
            Time = xmlhttp.ResponseText
            xmlhttp = null;
            SetSCHRptDcoVAL(Time)
        }
    }
    var url = "../PrsWorkFlow/AjaxReadPlanStatus.aspx?FissId=" + FissId + '&Type=3'
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);

}


function SetSCHRptDcoVAL(DocValue) {
    if (DocValue != '') {

        var DocValueArr = new Array()
        DocValueArr = DocValue.split("#*#")

        document.getElementById(UParam).value = DocValue;
        document.getElementById("File_" + UParam).innerHTML = DocValue[1] + '; '; //DocDesc.replace("$@$","; ") ;
    }

}


function SAPInterface(RowCnt, BatchId) {

    var recary = new Array();
    var Time = "abc"
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

            RtnStr = xmlhttp.ResponseText


            // "returnParams" is an optional parameter 

            if (RtnStr == 0) { alert("QAMS User ID Not Mapped To SAP User ID"); HideMask(); }
            if (RtnStr == 1) { alert("Batch Is Already In Queue, So This Batch Is In Pending List"); HideMask(); }
            if (RtnStr == 2) {
                Ajax_AppDetailsInsert(RowCnt);

            }
            xmlhttp = null;
        }
    }

    var url = "../PrsWorkFlow/SAPInterface_AJAX.aspx?BatchId=" + BatchId
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);
}


function uploadstatsap(BaseID) {
    var PopUpWidth = 500
    var PopUpHeight = 500
    var PopUpLeftTopY = 0
    var PopUpLeftTopX = 0
    var pageURL = "../SAPBATSTS/Troubleshootpop.aspx?BaseId=" + BaseID
    var features = "height=" + PopUpHeight + ",width=" + PopUpWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + PopUpLeftTopY + ",left=" + PopUpLeftTopX
    window.open(pageURL, 'SamplingUpdation', features)
    //window.close()
}


// Ajax Function To Update the Batch count after  QA Decision and Final Closure

function Ajax_UpdateBatchStatus(IssuelogId, SrcType) {

    var recary = new Array();
    var Time = "abc"
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
            Time = xmlhttp.ResponseText
            xmlhttp = null;
            if (Time == '') { Time = 0 }

            var ExpMessage = '';

        }
    }
    var url = "../PrsWorkFlow/AjaxReadPlanStatus.aspx?IssuelogId=" + IssuelogId + '&Type=2&SrcType=' + SrcType + '&UpdateFlag=1'
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);
}

//To Disable Fields During Modification  

function DisableFields() {
    if (TransType > 2) {


    }
}

//  **************  Muti Object  Ref Deselection Related Functions ********************//

function FUN_EFORM_PRODUCT_DESELECTION(Baseid, CtrlID)  // for product
{
    var objType = 7
    var IsuLogId = document.getElementById("IssueLogIdTXt").value
    AJX_LoadSelObjects(IsuLogId, objType)
}


function FUN_EFORM_EQUIPMENT_DESELECTION(Baseid, CtrlID)  // for product
{
    var IsuLogId = document.getElementById("IssueLogIdTXt").value
    var objType = 8
    AJX_LoadSelObjects(IsuLogId, objType)
}


function AJX_LoadSelObjects(IsuLogId, ObjectType) {
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
            var Time = "abc"
            Time = xmlhttp.ResponseText

            if (ObjectType == 7)
                SelprdorMatLst = Time
            else if (ObjectType == 8)
                SelEquipmentLst = Time

            xmlhttp = null;
        }
    }
    var url = "../AutoWorkAllocation/MutiOBJRef_Deactive_AJAX.aspx?Type=1&IsuLogID=" + IsuLogId + "&ObjType=" + ObjectType
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);
}



function FUN_EFORM_PRODUCT_DESELECTION_VALUE(BaseId, CtrlId, IsuLogId)  // for product
{
    var objType = 7

    var ExpMessage = ""
    var ExpCtrlID = ""
    var valueExist = 0
    var SelprdorMatValArr = new Array()
    var SelValue = document.getElementById(BaseId + "_" + CtrlId).value

    if (SelprdorMatLst != "") {

        if (SelprdorMatLst.substring(0, 1) == ',') {
            SelprdorMatLst = SelprdorMatLst.substring(1)
        }
        SelprdorMatValArr = SelprdorMatLst.split(",")
        for (var i = 0; i <= SelprdorMatValArr.length - 1; i++) {
            if (SelprdorMatValArr[i] == SelValue)
            { valueExist = 1; }
        }

        //           if (valueExist==0)
        //           {
        //            ExpMessage= ExpMessage + "Selected Product/Material Is Not Exist In This Issue Cycle" + '#*#' ;
        //            ExpCtrlID=ExpCtrlID + (BaseId + CtrlId) + '#*#' 
        //           }
    }

    if (SelValue != '' && valueExist == 0) {
        ExpMessage = ExpMessage + "Selected Product/Material Is Not Exist In This Issue Cycle" + '#*#';
        ExpCtrlID = ExpCtrlID + (BaseId + CtrlId) + '#*#'
    }

    var idStr = BaseId + '_' + CtrlId
    setExpMessage(ExpMessage, ExpCtrlID, idStr)

}



function FUN_EFORM_EQUIPMENT_DESELECTION_VALUE(BaseId, CtrlId, IsuLogId)  // for product
{
    var objType = 8
    var ExpMessage = ""
    var ExpCtrlID = ""
    var valueExist = 0
    var SelEquipmentValArr = new Array()
    var SelValue = document.getElementById(BaseId + "_" + CtrlId).value

    if (SelEquipmentLst != "") {

        if (SelEquipmentLst.substring(0, 1) == ',') {
            SelEquipmentLst = SelEquipmentLst.substring(1)
        }
        SelEquipmentValArr = SelEquipmentLst.split(",")
        for (var i = 0; i <= SelEquipmentValArr.length - 1; i++) {
            if (SelEquipmentValArr[i] == SelValue)
            { valueExist = 1; }
        }
        //           if (valueExist==0)
        //           {
        //            ExpMessage= ExpMessage + "Selected Equipment Is Not Exist In This Issue Cycle" + '#*#' ;
        //            ExpCtrlID=ExpCtrlID + (BaseId + CtrlId) + '#*#' 
        //           }
    }

    if (SelValue != '' && valueExist == 0) {
        ExpMessage = ExpMessage + "Selected Equipment Is Not Exist In This Issue Cycle" + '#*#';
        ExpCtrlID = ExpCtrlID + (BaseId + CtrlId) + '#*#'
    }


    var idStr = BaseId + '_' + CtrlId
    setExpMessage(ExpMessage, ExpCtrlID, idStr)
}



function FUN_EFORM_PRODUCT_DESELECTION_SUBMIT(BaseId, CtrlId, IsuLogId)  // for product
{
    var objType = 7
    var SelValue = document.getElementById(BaseId + "_" + CtrlId).value
    var FissID = document.getElementById("FissIDTXt").value
    AJX_UDATESelObjects(IsuLogId, objType, SelValue, FissID)
}


function FUN_EFORM_EQUIPMENT_DESELECTION_SUBMIT(BaseId, CtrlId, IsuLogId)  // for product
{
    var objType = 8
    var SelValue = document.getElementById(BaseId + "_" + CtrlId).value
    var FissID = document.getElementById("FissIDTXt").value
    AJX_UDATESelObjects(IsuLogId, objType, SelValue, FissID)
}



function AJX_UDATESelObjects(IsuLogId, ObjectType, ObjectID, FissID) {
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
            var Time = "abc"
            Time = xmlhttp.ResponseText
            xmlhttp = null;
        }
    }
    var url = "../AutoWorkAllocation/MutiOBJRef_Deactive_AJAX.aspx?Type=2&IsuLogID=" + IsuLogId + "&ObjType=" + ObjectType + "&ObjID=" + ObjectID + "&WitID=" + FissID
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);
}

//*************To enable and disable EFM Row based on the plan type*****************//

//case-1
// var PlanTypeArr = new Array("Regulatory Related"); //provide the plan types for partail diabling the EFM row

//case-2
var PlanTypeArr = new Array()//keep the array empty for disabling the EFM row for all plans

function makeFieldsEditable(cnt, PlanType, TT) {

    //case-3
    //Start comment the function body for enabling the EFM row for all plans
    if (TT != 3 && TT != 4) {
        flag = 0
        for (j = 0; j < PlanTypeArr.length; j++) {
            if (PlanType == PlanTypeArr[j]) {
                flag = 1;
                break;
            }


        }
        if (flag == 1 || PlanTypeArr.length == 0) {
            for (i = 0; i < cnt; i++) {
                document.getElementById("DurationTxt_" + i).setAttribute("readOnly", "readOnly");
                document.getElementById("MonitiringDays_" + i).setAttribute("readOnly", "readOnly");

            }
            ExpDateButtonDisable()
        }
    }
    //End comment the function body for enabling the EFM row for all plans

}
function ExpDateButtonDisable() {

    obj = EftPlnTab.getElementsByTagName("input")

    for (i = 0; i < obj.length; i++) {

        if (obj[i].title == 'Click to pick date' && obj[i].type == 'button') {

            obj[i].className = "HideRow"

        }

    }

}

//*************To enable and disable EFM Row based on the plan type*****************//
//-------------------------------CUSTOMVALIDATIONFUNS FOR Change control ----------------------------
function FUN_CC_EFORM_RA_REGAPPRVL(BaseId, CtrlId) {
    if (TransType < 3) {
        var ExpMessage = ""
        var ExpCtrlID = ""
        var ExpMsg = 'Select Value For: Approval From Regulatory'   // Hear Give Next Fld Exp Messahe

        var NextFldBaseId = EformAppRegBaseFLDID
        var NextFldCtrlId = EformAppRegCtrlFLDID   // Hear Give Next Fld Ctrl Id  1_COL0815006003_22


        document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")
        document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "HideRow";


        if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
            document.getElementById("BTN_" + NextFldBaseId).removeAttribute("disabled")
            document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "MainTD";

            if (document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                ExpMessage = ExpMessage + ExpMsg + '#*#';
                ExpCtrlID = (NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
            }
        }
        else if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) {

            document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")
            document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
            document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).innerHTML = "";

        }

        var idStr = BaseId + '_' + CtrlId
        setExpMessage(ExpMessage, ExpCtrlID, idStr)
    }
}
//-----------------------------------------------END-------------------------------------------------------
function FUN_CC_EFORM_RA_CUSAPPRVL(BaseId, CtrlId) {
    if (TransType < 3) {
        var ExpMessage = ""
        var ExpCtrlID = ""
        var ExpMsg = 'Select Value For: Approval From Customer'   // Hear Give Next Fld Exp Messahe

        var NextFldBaseId = EformAPPCustBaseFLDID
        var NextFldCtrlId = EformAPPCustCtrlFLDID   // Hear Give Next Fld Ctrl Id  1_COL0815006003_22


        document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")
        document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "HideRow";


        if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
            document.getElementById("BTN_" + NextFldBaseId).removeAttribute("disabled")
            document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "MainTD";

            if (document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                ExpMessage = ExpMessage + ExpMsg + '#*#';
                ExpCtrlID = (NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
            }
        }
        else if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) {

            document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")
            document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
            document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).innerHTML = "";

        }

        var idStr = BaseId + '_' + CtrlId
        setExpMessage(ExpMessage, ExpCtrlID, idStr)
    }
}
//-----------------------------------------------END-------------------------------------------------------

function FUN_CC_EFORM_TP_PLAN_REQ(BaseId, CtrlId) {
    if (TransType < 3) {
        var ExpMessage = ""
        var ExpCtrlID = ""
        var ExpMsg = ''


        var NextFldBaseId = EformTrainingACTBaseFLDID   // Hear Give Next Fld base Id
        var NextFldCtrlId = EformTrainingACTCtrlFLDID    // Hear Give Next Fld Ctrl Id 

        var ExpMsg = 'Select Value For: Proposed Training Action Plan(s)'   // Hear Give Next Fld Exp Messahe

        document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "HideRow";

        document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")

        if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
            document.getElementById("BTN_" + NextFldBaseId).removeAttribute("disabled")
            document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "MainTD";
            if (document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                ExpMessage = ExpMessage + ExpMsg + '#*#';
                ExpCtrlID = (NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
            }
        }
        else if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) { //alert(
            document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")
            document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
            document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")
            //document.getElementById("Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")
        }
        var idStr = BaseId + '_' + CtrlId
        setExpMessage(ExpMessage, ExpCtrlID, idStr)

    }
}
//--------------------------------------------------------------------------------------------------------------


function FUN_CC_EFORM_RP_PLAN_REQ(BaseId, CtrlId) {
    if (TransType < 3) {
        var ExpMessage = ""
        var ExpCtrlID = ""
        var ExpMsg = ''


        var NextFldBaseId = EformRiskAssACTBaseFLDID   // Hear Give Next Fld base Id
        var NextFldCtrlId = EformRiskAssACTCtrlFLDID    // Hear Give Next Fld Ctrl Id 

        var ExpMsg = 'Select Value For: Proposed Risk Assessment Plan(s)'   // Hear Give Next Fld Exp Messahe

        document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "HideRow";

        document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")

        if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
            document.getElementById("BTN_" + NextFldBaseId).removeAttribute("disabled")
            document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "MainTD";
            if (document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                ExpMessage = ExpMessage + ExpMsg + '#*#';
                ExpCtrlID = (NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
            }
        }
        else if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) { //alert(
            document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")
            document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
            document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")
            //document.getElementById("Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")
        }
        var idStr = BaseId + '_' + CtrlId
        setExpMessage(ExpMessage, ExpCtrlID, idStr)

    }
}
//--------------------------------------------------------------------------------------------------------------




function FUN_CC_EFORM_VA_PLAN_REQ(BaseId, CtrlId) {
    if (TransType < 3) {
        var ExpMessage = ""
        var ExpCtrlID = ""
        var ExpMsg = ''


        var NextFldBaseId = EformValidationACTBaseFLDID   // Hear Give Next Fld base Id
        var NextFldCtrlId = EformValidationACTCtrlFLDID    // Hear Give Next Fld Ctrl Id 

        var ExpMsg = 'Select Value For: Proposed Validation Plan(s)'   // Hear Give Next Fld Exp Messahe

        document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "HideRow";

        document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")

        if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
            document.getElementById("BTN_" + NextFldBaseId).removeAttribute("disabled")
            document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "MainTD";
            if (document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                ExpMessage = ExpMessage + ExpMsg + '#*#';
                ExpCtrlID = (NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
            }
        }
        else if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) { //alert(
            document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")
            document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
            document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")
            //document.getElementById("Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")
        }
        var idStr = BaseId + '_' + CtrlId
        setExpMessage(ExpMessage, ExpCtrlID, idStr)

    }
}
//--------------------------------------------------------------------------------------------------------------




function FUN_CC_EFORM_SA_PLAN_REQ(BaseId, CtrlId) {
    if (TransType < 3) {
        var ExpMessage = ""
        var ExpCtrlID = ""
        var ExpMsg = ''


        var NextFldBaseId = EformStabilityACTBaseFLDID   // Hear Give Next Fld base Id
        var NextFldCtrlId = EformStabilityACTCtrlFLDID    // Hear Give Next Fld Ctrl Id 

        var ExpMsg = 'Select Value For: Proposed Stability Plan(s)'   // Hear Give Next Fld Exp Messahe

        document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "HideRow";

        document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")

        if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
            document.getElementById("BTN_" + NextFldBaseId).removeAttribute("disabled")
            document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "MainTD";
            if (document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                ExpMessage = ExpMessage + ExpMsg + '#*#';
                ExpCtrlID = (NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
            }
        }
        else if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) { //alert(
            document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")
            document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
            document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")
            //document.getElementById("Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")
        }
        var idStr = BaseId + '_' + CtrlId
        setExpMessage(ExpMessage, ExpCtrlID, idStr)

    }
}
//--------------------------------------------------------------------------------------------------------------


function FUN_CC_EFORM_QA_PLAN_REQ(BaseId, CtrlId) {
    if (TransType < 3) {
        var ExpMessage = ""
        var ExpCtrlID = ""
        var ExpMsg = ''

        EformAddCutomValidator('Select Value For : Regulatory Affairs Category', 'E1_COL0217008003', '19')

        var NextFldBaseId = EformQualificationACTBaseFLDID    // Hear Give Next Fld base Id
        var NextFldCtrlId = EformQualificationACTCtrlFLDID     // Hear Give Next Fld Ctrl Id 

        var ExpMsg = 'Select Value For: Proposed Qualification Plan(s)'   // Hear Give Next Fld Exp Messahe

        document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "HideRow";

        document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")

        if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
            document.getElementById("BTN_" + NextFldBaseId).removeAttribute("disabled")
            document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "MainTD";
            if (document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                ExpMessage = ExpMessage + ExpMsg + '#*#';
                ExpCtrlID = (NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
            }
        }
        else if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) { //alert(
            document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")
            document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
            document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")
            //document.getElementById("Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")
        }
        var idStr = BaseId + '_' + CtrlId
        setExpMessage(ExpMessage, ExpCtrlID, idStr)

    }
}
//--------------------------------------------------------------------------------------------------------------
function FUN_CC_EFORM_OA_PLAN_REQ(BaseId, CtrlId) {
    if (TransType < 3) {
        var ExpMessage = ""
        var ExpCtrlID = ""
        var ExpMsg = ''


        var NextFldBaseId = EformOtherACTBaseFLDID    // Hear Give Next Fld base Id
        var NextFldCtrlId = EformOtherACTCtrlFLDID     // Hear Give Next Fld Ctrl Id 

        var ExpMsg = 'Select Value For: Proposed Other Action Plan(s)'   // Hear Give Next Fld Exp Messahe

        document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "HideRow";

        document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")

        if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
            document.getElementById("BTN_" + NextFldBaseId).removeAttribute("disabled")
            document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "MainTD";
            if (document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                ExpMessage = ExpMessage + ExpMsg + '#*#';
                ExpCtrlID = (NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
            }
        }
        else if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) { //alert(
            document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")
            document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
            document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")
            //document.getElementById("Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")
        }
        var idStr = BaseId + '_' + CtrlId
        setExpMessage(ExpMessage, ExpCtrlID, idStr)

    }
}
//--------------------------------------------------------------------------------------------------------------
function FUN_CC_EFORM_QA_DECISION(BaseId, CtrlId) {
    AjaxchckRAWorkItemGen(document.getElementById("IssueLogIdTXt").value, 0, 58)
}
//---------------------------------------------------------------------------------------------------
function FUN_CC_EFORM_QA_DECISION_ONSUBMIT(BaseId, CtrlId, IssueID) {

    if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) {
        AjaxChangeIssueStatus(IssueID, 0, 2)

    }
    else {
        AjaxChangeIssueStatus(IssueID, 0, 4)
        AjaxChangeIssueStatus(IssueID, 0, 6)

    }

}
//------------------------------------------------------------------------------------------------------------
function FUN_CC_EFORM_CQA_DECISION(BaseId, CtrlId) {

}
//---------------------------------------------------------------------------------------------------
function FUN_CC_EFORM_CQA_DECISION_ONSUBMIT(BaseId, CtrlId, IssueID) {

    if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) {
        AjaxChangeIssueStatus(IssueID, 0, 2)

    }
    else {
        AjaxChangeIssueStatus(IssueID, 0, 4)
        AjaxChangeIssueStatus(IssueID, 0, 6)

    }

}
//------------------------------------------------------------------------------------------------------------
function FUN_ISU_CC_DEV_OCCURED(BaseId, CtrlId) {
    if (TransType < 3) {
        var ExpMessage = ""
        var ExpCtrlID = ""
        var ExpMsg = ''

        var NextFldBaseId = ClsReferredIssueIDAry1[1] // Hear Give Next Fld base Id
        var NextFldCtrlId = ClsReferredIssueIDAry1[2] // Hear Give Next Fld Ctrl Id 




        ExpMsg = 'Select Value For: If Yes, Reference No. Deviation'

        document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "HideRow";

        document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).setAttribute("disabled", "disabled")
        if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
            document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).removeAttribute("disabled")
            document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "MainTD";
            if (document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                ExpMessage = ExpMessage + ExpMsg + '#*#';
                ExpCtrlID = (LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
            }
        }
        else// if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true)
        { //alert(
            document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).setAttribute("disabled", "disabled")
            document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
            document.getElementById("Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")
            //document.getElementById("Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

        }

        var idStr = BaseId + '_' + CtrlId
        setExpMessage(ExpMessage, ExpCtrlID, idStr)
    }
}
//------------------------------- End of Function---------------------------------------------------------
function AjaxchckRAWorkItemGen(IssueId, WrkAulId, Isustatus) {
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
            var Additionalinfo = "abc"

            Additionalinfo = xmlhttp.ResponseText

            if (Additionalinfo == 1) {
                alert("Mandatory Work Items Are Pending");
                document.getElementById("SubmitBtn").setAttribute("disabled", "disabled")
            }


            //alert(Time)
            xmlhttp = null;
        }
    }

    var url = "../TestEFormExecution/ChangeIsuStatus.aspx?IssueId=" + IssueId + "&WrkAulId=" + WrkAulId + "&Isustatus=" + Isustatus

    //alert(url)
    xmlhttp.open("POST", url, true);
    xmlhttp.send(null);
}
//-----------------------------------------------------------------------------------------------------------------------------









