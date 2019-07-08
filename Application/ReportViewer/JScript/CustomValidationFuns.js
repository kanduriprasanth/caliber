
var TransType=0;
var  BatchStatus=0;

// JScript File
var ExpMessageArr = new Array()
var ExpMsgIdArr = new Array()
var EXpControlId = new Array()
var WrkAllExpMsg = ""
var LogFldPrefix = 'FLD_'
var DeptFldID = 'FLD_4_11'
var Ucodelevel1 = "Ucodelevel1"
var Ucodelevel0 = "Ucodelevel0"

//Market ID
var MarketID = 'FLD_7_12'
var MarketIDArr = new Array()
MarketIDArr = MarketID.split('_')
//End of Market ID
// Closure Date
var CloserDateFldId = 'FLD_86_1' // 86
var CloserDateFldIdAry = new Array()
CloserDateFldIdAry = CloserDateFldId.split('_')
// End of Closure Date

// Initation Department ID
var InitDepartFldId = 'FLD_4_11'
// End of Init Deparment ID

// SOP Radio Btn  
var SOPObjRadioBtnID = 'FLD_22_7'
var SOPObjRadioBtnIDAry = new Array()
SOPObjRadioBtnIDAry = SOPObjRadioBtnID.split('_')
//End SOP

// SOP Editable File Attachment
var SOPEditFileID = 'FLD_23_6';
var SOPEditFileIDAry = new Array();
SOPEditFileIDAry = SOPEditFileID.split('_');
//End SOP Editable File Attachment


// Reference Radio Btn
var ReferenceBtnID = 'FLD_1_7'
var ReferenceObjRadioBtnIDAry = new Array()
ReferenceObjRadioBtnIDAry = ReferenceBtnID.split('_')
//End Reference Radio Btn

// Referred Issue(s)
var ReferredIssueID = 'FLD_2_26';
var ReferredIssueIDAry = new Array();
ReferredIssueIDAry = ReferredIssueID.split('_');
//End Referred Issue(s)


// Change Related To
var ChangeRelatedToFldId = 'FLD_9_14';
var ChangeRelatedToFldIdAry = new Array();
ChangeRelatedToFldIdAry = ChangeRelatedToFldId.split('_');
// End Change Related To


// Product
var ProductFldId = 'FLD_10_27';
var ProductFldIdAry = new Array();
ProductFldIdAry = ProductFldId.split('_');
// End Product


// Material
var MaterialFldId = 'FLD_11_28';
var MaterialFldIdAry = new Array();
MaterialFldIdAry = MaterialFldId.split('_');
// End Material


// Equipment
var EquipmentFldId = 'FLD_12_31';
var EquipmentFldIdAry = new Array();
EquipmentFldIdAry = EquipmentFldId.split('_');
// End Equipment


// Document
var DocumentFldId = 'FLD_13_32';
var DocumentFldIdAry = new Array();
DocumentFldIdAry = DocumentFldId.split('_');
// End Document


// Facility
var FacilityFldId = 'FLD_14_33';
var FacilityFldIdAry = new Array();
FacilityFldIdAry = FacilityFldId.split('_');
// End Facility


// Others
var OthersFldId = 'FLD_15_5';
var OthersFldIdAry = new Array();
OthersFldIdAry = OthersFldId.split('_');
// End Others



//Action Plan Proposal(s) Required -- Change Control Login

var ActionPlanPropRadioBtnId = 'FLD_25_7'
var ActionPlanPropRadioBtnIdArr = new Array()
ActionPlanPropRadioBtnIdArr = ActionPlanPropRadioBtnId.split('_')
// End Proposed Action Plan(s) -- Change Control Login


// Proposed Action Plan(s) -- Change Control Login
var ActionPlanPropId = 'FLD_26_15'
var ActionPlanPropIdAry = new Array()
ActionPlanPropIdAry = ActionPlanPropId.split('_')
// End Proposed Action Plan(s) -- Change Control Login

//Investigation and Root Cause Finding  -- CPA Login
var InvandRootCauseRadioBtnId = 'FLD_47_43'
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
var RefCapORCCNo = 'FLD_88_26'
var RefCapORCCNoArr = new Array()
RefCapORCCNoArr = RefCapORCCNo.split('_')


              
              // CAPA Market

// Origin of CAPA
var OriginofCAPAID = 'FLD_43_42'
var OriginofCAPARR = new Array()
OriginofCAPARR = OriginofCAPAID.split('_')

//Dev 
var ProbableReasonID='FLD_66_49'
var ProbableReasonIDArr = new Array()
ProbableReasonIDArr = ProbableReasonID.split('_')

//Dev Probable Reason / Root Cause - Others
var ProbableReasonothID='FLD_67_5'
var ProbableReasonothIDArr = new Array()
ProbableReasonothIDArr = ProbableReasonothID.split('_')

//Dev 
var CAPPlanProRemarksID='FLD_99_5'
var CAPPlanProRemarksIDArr = new Array()
CAPPlanProRemarksIDArr = CAPPlanProRemarksID.split('_')

//Dev Probable Reason / Root Cause - Others
var CAPPlanProID='FLD_50_9'
var CAPPlanProIDArr = new Array()
CAPPlanProIDArr = CAPPlanProID.split('_')


var PAPlanProRemarksID='FLD_100_5'
var PAPlanProRemarksIDArr = new Array()
PAPlanProRemarksIDArr = PAPlanProRemarksID.split('_')


var PAPlanProID='FLD_52_20'
var PAPlanProIDArr = new Array()
PAPlanProIDArr = PAPlanProID.split('_')

// **** Special Validations ******//

     // This FUnction Will Call at final submition of  The Form  

        function QAMS_SpecialValidations(functionid,BaseId,CtrlId,IssueID)
        {
           switch (parseInt(functionid))
           {
                
             case 1 :FUN_DI_DEPT_VALIDATION(BaseId,CtrlId)
             break;
                case 2 :FUN_DI_EVENT_VALIDATION(BaseId,CtrlId)
                break;
//                case 6 :FUN_DI_PROB_REASON_VALIDATION(BaseId,CtrlId)
//                break;
                case 9: FUN_ISU_CA_ACTION_PLAN_DECISION(BaseId, CtrlId)
                break;
                case 10: FUN_ISU_PA_ACTION_PLAN_DECISION(BaseId, CtrlId)
                break;
//              case 8 :FUN_DI_ACT_PLAN_DECISION(BaseId,CtrlId)
//                break;
                case 19 : FUN_CC_RA_DECISION (BaseId,CtrlId)
                    break;
                case 20: FUN_CC_QA_DECISION(BaseId, CtrlId)
                    break;
             case 21: FUN_CC_CHANGERELATEDTO(BaseId, CtrlId)
                break;
//                
//                case 7: FUN_DEV_CAPA_DEPENDENCY(BaseId,CtrlId)
//                    break;
//                case 8: FUN_DEV_BATCH_RELEASE(BaseId, CtrlId, IssueID)
//                    break;
                case  26 : FUN_CAPA_QA_DECISION(BaseId,CtrlId)
                break;

                case 11: FUN_EFORM_CA_ACTION_PLAN_DECISION(BaseId, CtrlId)
                break;
                case 12: FUN_EFORM_PA_ACTION_PLAN_DECISION(BaseId, CtrlId)
                break;
                case 13 :FUN_DEV_INV_ACTION_PLAN_DECISION(BaseId,CtrlId)
                    break;
                case 14: FUN_CC_ISU_ACTION_PLAN_DECISION(BaseId, CtrlId)
                    break;
                case 15: FUN_DEV_QRM_ACTION_PLAN_DECISION(BaseId, CtrlId)
                    break;
                case 16: FUN_CC_QRM_ACTION_PLAN_DECISION(BaseId, CtrlId)
                    break;
                case 17: FUN_CC_RA_ACTION_PLAN_DECISION(BaseId, CtrlId)
                    break;
                case 18: FUN_CC_QA_ACTION_PLAN_DECISION(BaseId, CtrlId)
                    break;
                case 22: FUN_CAPA_QRM_ACTION_PLAN_DECISION(BaseId, CtrlId)
                    break;
                case 24: FUN_CC_REGULARIZATION(BaseId, CtrlId)
                    break;
                case 27: FUN_CAPA_ORIGINOFCAPA(BaseId, CtrlId)
                    break;
                case 28: FUN_CAPA_INV_ROOTCAUSE(BaseId, CtrlId)
                    break;
                case 31: FUN_ISU_EDITATT_DECISION(BaseId, CtrlId)
                    break;
                case 32: FUN_EFORM_OA_ACTION_PLAN_DECISION(BaseId, CtrlId)
                    break;
                case 33: FUN_ISU_OA_ACTION_PLAN_DECISION(BaseId, CtrlId)
                    break;
                case 34: FUN_ISU_REFERENCE_DECISION(BaseId, CtrlId) 
                    break;

//                case 35: FUN_CCPT_DEPT_SELECTION(BaseId, CtrlId) 
//                    break;
                case 36: FUN_ISU_SECTION_SELECTION(BaseId, CtrlId) 
                    break;  
                    
               case 37: FUN_DEV_EFORM_OA_ACTION_PLAN_DECISION(BaseId, CtrlId)
                break;
                
                // case 45 :FUN_CCP_REFERENCE_CC_NO(BaseId, CtrlId)
//                break;

                case 49 : FUN_ISU_DEV_PROBREASON_DECISION(BaseId, CtrlId)
                break;
                
                case 50 : FUN_ISU_DEV_CA_ACTION_PLAN_DECISION(BaseId, CtrlId)
                break;
               
                case 51 : FUN_ISU_DEV_PA_ACTION_PLAN_DECISION(BaseId, CtrlId)
                break;
               
                
        }
           }




    
          
       //case 1:

      // Commen Function For Any process
      // To set  Uniqcode department fld and Form Department values  as equal.
      function FUN_DI_DEPT_VALIDATION(BaseId,CtrlId)
       {
           var obj = document.getElementById(Ucodelevel1)
           var obj1 = document.getElementById(DeptFldID)
           var flag =0
           if (obj != null && obj1 != null) 
            {
               var selIndex = obj1.selectedIndex
               var deptname = obj1.options(selIndex).text
               for (i=1;i<obj.options.length;i++)
               {
                 if (obj.options(i).text==deptname)
                 {
                  obj.selectedIndex=i;
                  flag=1;
                  funSetCode();
                 }
               }
             if(flag==1)         
             obj.disabled = true;
             else
             obj.disabled = false;
          }
      }

      /*--------------Change Control Login Functions ------------------*/
      function FUN_CC_CHANGERELATEDTO(BaseId, CtrlId) {
          UcodeDeptCheck()

          AddCutomValidator("Select Value For: Market", MarketIDArr[1], MarketIDArr[2]) // Market ID: FLD_7_12
          AddCutomValidator("Select Value For: Change Related To", ChangeRelatedToFldIdAry[1], ChangeRelatedToFldIdAry[2]) // Change Related To ID: FLD_9_14

          var ChangeRelatedToValue = document.getElementById(ChangeRelatedToFldId).value    
          var ChangeRelatedToAry = new Array()
          ChangeRelatedToAry = ChangeRelatedToValue.split(";")
          //Product; Material; Equipment; Document; Facility; Others

          // Defualt Settings of Change Related  Flds' Validation Rules as Not Applicable
          document.getElementById("FLDLBL_" + ProductFldIdAry[1] + "_" + ProductFldIdAry[2]).className = "HideRow"
          AddCutomValidator("", ProductFldIdAry[1], ProductFldIdAry[2])


          document.getElementById("FLDLBL_" + MaterialFldIdAry[1] + "_" + MaterialFldIdAry[2]).className = "HideRow"
          AddCutomValidator("", MaterialFldIdAry[1], MaterialFldIdAry[2])

          document.getElementById("FLDLBL_" + EquipmentFldIdAry[1] + "_" + EquipmentFldIdAry[2]).className = "HideRow"
          AddCutomValidator("", EquipmentFldIdAry[1], EquipmentFldIdAry[2])

          document.getElementById("FLDLBL_" + FacilityFldIdAry[1] + "_" + FacilityFldIdAry[2]).className = "HideRow"
          AddCutomValidator("", FacilityFldIdAry[1], FacilityFldIdAry[2])


          document.getElementById("FLDLBL_" + DocumentFldIdAry[1] + "_" + DocumentFldIdAry[2]).className = "HideRow"
          AddCutomValidator("", DocumentFldIdAry[1], DocumentFldIdAry[2])

          document.getElementById("FLDLBL_" + OthersFldIdAry[1] + "_" + OthersFldIdAry[2]).className = "HideRow"
          AddCutomValidator("", OthersFldIdAry[1], OthersFldIdAry[2])
           
          for (i = 0; i < ChangeRelatedToAry.length; i++) {
              ChangeRelatedToAry[i]=trim(ChangeRelatedToAry[i])
              if (ChangeRelatedToAry[i] == "Product") {
                  AddCutomValidator("Select Value For: Product", ProductFldIdAry[1], ProductFldIdAry[2])
                  document.getElementById("FLDLBL_" + ProductFldIdAry[1] + "_" + ProductFldIdAry[2]).className = "MainTD" 
              }
              if (ChangeRelatedToAry[i] == "Material") {
                  AddCutomValidator("Select Value For: Material", MaterialFldIdAry[1], MaterialFldIdAry[2])
                  document.getElementById("FLDLBL_" + MaterialFldIdAry[1] + "_" + MaterialFldIdAry[2]).className = "MainTd"

              }
              if (ChangeRelatedToAry[i] == "Equipment") {
                  AddCutomValidator("Select Value For: Equipment", EquipmentFldIdAry[1], EquipmentFldIdAry[2])
                  document.getElementById("FLDLBL_" + EquipmentFldIdAry[1] + "_" + EquipmentFldIdAry[2]).className = "MainTd"

              }
              if (ChangeRelatedToAry[i] == "Document") {
                  AddCutomValidator("Enter Value For: Document", DocumentFldIdAry[1], DocumentFldIdAry[2])
                  document.getElementById("FLDLBL_" + DocumentFldIdAry[1] + "_" + DocumentFldIdAry[2]).className = "MainTd"

              }
              if (ChangeRelatedToAry[i] == "Facility") {
                  AddCutomValidator("Enter Value For: Facility", FacilityFldIdAry[1], FacilityFldIdAry[2])
                  document.getElementById("FLDLBL_" + FacilityFldIdAry[1] + "_" + FacilityFldIdAry[2]).className = "MainTd"

              }
              if (ChangeRelatedToAry[i] == "Others") {
                  AddCutomValidator("Enter Value For: Others", OthersFldIdAry[1], OthersFldIdAry[2])
                  document.getElementById("FLDLBL_" + OthersFldIdAry[1] + "_" + OthersFldIdAry[2]).className = "MainTd"

              }
          }


        
      }

//////////////////// Editable DOucment Attachment Popup Icon Enable and Disable Function///////////////////

      function FUN_ISU_EDITATT_DECISION(BaseId, CtrlId) {

          var ExpMessage = ""
          var ExpCtrlID = ""


          var NextFldBaseId = SOPEditFileIDAry[1] // Hear Give Next Fld base Id
          var NextFldCtrlId = SOPEditFileIDAry[2] // Hear Give Next Fld Ctrl Id 
          var ExpMsg = 'Select Value For: Attachment(s)'   // Hear Give Next Fld Exp Messahe

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
              document.getElementById("File_"+LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).innerHTML="";
              //document.getElementById("Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

          }

          var idStr = NextFldBaseId + '_' + NextFldCtrlId
          setExpMessage(ExpMessage, ExpCtrlID, idStr)
      }
/////////////////////////// End of Function////////////////////////////////////


//////////////////// Reference  Issue(s)  Popup Icon Enable and Disable Function///////////////////

      function FUN_ISU_REFERENCE_DECISION(BaseId, CtrlId) {
        if(TransType<3){
          var ExpMessage = ""
          var ExpCtrlID = ""


          var NextFldBaseId = ReferredIssueIDAry[1] // Hear Give Next Fld base Id
          var NextFldCtrlId = ReferredIssueIDAry[2] // Hear Give Next Fld Ctrl Id 
          
          var ExpMsg = 'Select Value For: Referred Issue(s)'   // Hear Give Next Fld Exp Messahe

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
              document.getElementById( "Value_"+ LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")
              //document.getElementById("Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

          }

          var idStr = BaseId + '_' + CtrlId
          setExpMessage(ExpMessage, ExpCtrlID, idStr)
       }
      }
/////////////////////////// End of Function////////////////////////////////////


      function FUN_CC_ISU_ACTION_PLAN_DECISION(BaseId, CtrlId) {
         
       if(TransType<3){ //Added for Modification Purpose
              var ExpMessage = ""
              var ExpCtrlID = ""
            
              var NextFldBaseId = ActionPlanPropIdAry[1] // Hear Give Next Fld base Id
              var NextFldCtrlId = ActionPlanPropIdAry[2] // Hear Give Next Fld Ctrl Id 
              var ExpMsg = 'Select Value For: Proposed Action plan(s)'   // Hear Give Next Fld Exp Messahe 
              
                document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).setAttribute("disabled", "disabled")
                document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "HideRow";
                  
                  BaseId= BaseId.replace('FLD_' ,'')
                
              if (document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_0").checked == true) {
                  document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).removeAttribute("disabled");
                  document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "MainTD";
                  
                  if (document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                      ExpMessage = ExpMessage + ExpMsg + '#*#';
                      ExpCtrlID = (LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
                  }
              }
              else //if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true)
               {
                  document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).setAttribute("disabled", "disabled")
                  document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
                  document.getElementById("Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

              }

              var idStr = BaseId + '_' + CtrlId
              setExpMessage(ExpMessage, ExpCtrlID, idStr)
         } //End for modification
      }


      //Closed
   
      /*----------------- End of Change Control Login Functions------------*/
       
       
           
      
      
      /*   Case 2:  EventRelated To  Validation At Issue Login 
      If Fields Are change Then chage ter ids and controlids and revlevent exep message , for new fields also same 
      Fields Type 1 - For Product / Material  Event Type , 3- For Document Type , 4 - For Equipment Related Type ,5- other Details 
      */

       function UcodeDeptCheck() {
           var ExpMessage = ""
           var ExpCtrlID = ""

           var obj = document.getElementById("Ucodelevel1")
           var obj1 = document.getElementById("FLD_4_11")
           if (obj != null && obj1 != null) {

               var selIndex = obj.selectedIndex
               var deptname = obj.options(selIndex).text
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



        

function FUN_ISU_DEV_CA_ACTION_PLAN_DECISION(BaseId, CtrlId)
{

 if(TransType<3){
 
        AddCutomValidator("", CAPPlanProRemarksIDArr[1], CAPPlanProRemarksIDArr[2])
        document.getElementById(LogFldPrefix + CAPPlanProRemarksIDArr[1] + '_' + CAPPlanProRemarksIDArr[2]).setAttribute("disabled", "disabled")
        document.getElementById("FLDLBL_" + CAPPlanProRemarksIDArr[1] + "_" + CAPPlanProRemarksIDArr[2]).className = "HideRow" 

        AddCutomValidator("", CAPPlanProIDArr[1],CAPPlanProIDArr[2])
        document.getElementById('BTN_' + LogFldPrefix + CAPPlanProIDArr[1] ).setAttribute("disabled", "disabled")
        document.getElementById("FLDLBL_" + CAPPlanProIDArr[1] + "_" + CAPPlanProIDArr[2]).className = "HideRow"
        document.getElementById("Value_" + LogFldPrefix + CAPPlanProIDArr[1] + '_' + CAPPlanProIDArr[2]).className = "HideRow"
                    
                    BaseId= BaseId.replace('FLD_' ,'')
                    
        if (document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_0").checked ==true)
          {

              document.getElementById('BTN_' + LogFldPrefix + CAPPlanProIDArr[1] ).removeAttribute("disabled")
              document.getElementById("FLDLBL_" + CAPPlanProIDArr[1] + "_" + CAPPlanProIDArr[2]).className = "MainTD" 
              
              if (document.getElementById(LogFldPrefix + CAPPlanProIDArr[1] + "_" + CAPPlanProIDArr[2]).value == "") {
                      AddCutomValidator("Select Value For: Proposed Corrective Action Plan(s)", CAPPlanProIDArr[1], CAPPlanProIDArr[2])
                }
                else
                {
                  document.getElementById("Value_" + LogFldPrefix + CAPPlanProIDArr[1] + '_' + CAPPlanProIDArr[2]).className = "MainTD"
                }
             
              document.getElementById(LogFldPrefix + CAPPlanProRemarksIDArr[1] + '_' + CAPPlanProRemarksIDArr[2]).value=""
             
              
          }
          
      else if (document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_1").checked ==true)
      {
      
      
        AddCutomValidator("Enter Value For: Remark(s) / Reason(s) - If CA Plan(s) Not Required", CAPPlanProRemarksIDArr[1], CAPPlanProRemarksIDArr[2])
        document.getElementById(LogFldPrefix + CAPPlanProRemarksIDArr[1] + '_' + CAPPlanProRemarksIDArr[2]).removeAttribute("disabled")
        document.getElementById("FLDLBL_" + CAPPlanProRemarksIDArr[1] + "_" + CAPPlanProRemarksIDArr[2]).className = "MainTD" 

        document.getElementById(LogFldPrefix + CAPPlanProIDArr[1] + '_' + CAPPlanProIDArr[2]).value=""        
            
      }

 }
 
}

function FUN_ISU_DEV_PA_ACTION_PLAN_DECISION(BaseId, CtrlId)
{



 if(TransType<3){
 
        AddCutomValidator("", PAPlanProRemarksIDArr[1], PAPlanProRemarksIDArr[2])
        document.getElementById(LogFldPrefix + PAPlanProRemarksIDArr[1] + '_' + PAPlanProRemarksIDArr[2]).setAttribute("disabled", "disabled")
        document.getElementById("FLDLBL_" + PAPlanProRemarksIDArr[1] + "_" + PAPlanProRemarksIDArr[2]).className = "HideRow" 

        AddCutomValidator("", PAPlanProIDArr[1],PAPlanProIDArr[2])
        document.getElementById('BTN_' + LogFldPrefix + PAPlanProIDArr[1] ).setAttribute("disabled", "disabled")
        document.getElementById("FLDLBL_" + PAPlanProIDArr[1] + "_" + PAPlanProIDArr[2]).className = "HideRow"
        document.getElementById("Value_" + LogFldPrefix + PAPlanProIDArr[1] + '_' + PAPlanProIDArr[2]).className = "HideRow"
                    
                    BaseId= BaseId.replace('FLD_' ,'')
                    
        if (document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_0").checked ==true)
          {

              document.getElementById('BTN_' + LogFldPrefix + PAPlanProIDArr[1] ).removeAttribute("disabled")
              document.getElementById("FLDLBL_" + PAPlanProIDArr[1] + "_" + PAPlanProIDArr[2]).className = "MainTD" 

                if (document.getElementById(LogFldPrefix + PAPlanProIDArr[1] + "_" + PAPlanProIDArr[2]).value == "") {
                      AddCutomValidator("Select Value For: Proposed Preventive Action Plan(s)", PAPlanProIDArr[1], PAPlanProIDArr[2])
                }
                else
                {
                  document.getElementById("Value_" + LogFldPrefix + PAPlanProIDArr[1] + '_' + PAPlanProIDArr[2]).className = "MainTD"
                }
                
              document.getElementById(LogFldPrefix + PAPlanProRemarksIDArr[1] + '_' + PAPlanProRemarksIDArr[2]).value=""
             
              
          }
          
      else if (document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_1").checked ==true)
      {
      
      
        AddCutomValidator("Enter Value For: Remark(s) / Reason(s) - If PA Plan(s) Not Required", PAPlanProRemarksIDArr[1], PAPlanProRemarksIDArr[2])
        document.getElementById(LogFldPrefix + PAPlanProRemarksIDArr[1] + '_' + PAPlanProRemarksIDArr[2]).removeAttribute("disabled")
        document.getElementById("FLDLBL_" + PAPlanProRemarksIDArr[1] + "_" + PAPlanProRemarksIDArr[2]).className = "MainTD" 

        document.getElementById(LogFldPrefix + PAPlanProIDArr[1] + '_' + PAPlanProIDArr[2]).value=""        
            
      }

 }
 
}


        function FUN_ISU_DEV_PROBREASON_DECISION(BaseId, CtrlId)
        {

            if(TransType<3){
           
            
                AddCutomValidator("", ProbableReasonIDArr[1], ProbableReasonIDArr[2])
                document.getElementById(LogFldPrefix + ProbableReasonIDArr[1] + '_' + ProbableReasonIDArr[2]).setAttribute("disabled", "disabled")
                document.getElementById("FLDLBL_" + ProbableReasonIDArr[1] + "_" + ProbableReasonIDArr[2]).className = "HideRow" 

                AddCutomValidator("", ProbableReasonothIDArr[1],ProbableReasonothIDArr[2])
                document.getElementById(LogFldPrefix + ProbableReasonothIDArr[1] + '_' + ProbableReasonothIDArr[2]).setAttribute("disabled", "disabled")
                document.getElementById("FLDLBL_" + ProbableReasonothIDArr[1] + "_" + ProbableReasonothIDArr[2]).className = "HideRow"
                    
                    BaseId= BaseId.replace('FLD_' ,'')


              if (document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_0").checked ==true)
              {

                  document.getElementById(LogFldPrefix + ProbableReasonIDArr[1] + '_' + ProbableReasonIDArr[2]).removeAttribute("disabled")
                  document.getElementById("FLDLBL_" + ProbableReasonIDArr[1] + "_" + ProbableReasonIDArr[2]).className = "MainTD" 
                  AddCutomValidator("Select Value For: Probable Reason / Root Cause", ProbableReasonIDArr[1], ProbableReasonIDArr[2])
                 
                  document.getElementById(LogFldPrefix + ProbableReasonothIDArr[1] + '_' + ProbableReasonothIDArr[2]).removeAttribute("disabled")
                  document.getElementById("FLDLBL_" + ProbableReasonothIDArr[1] + "_" + ProbableReasonothIDArr[2]).className = "MainTD"
                  AddCutomValidator("Enter Value For: Probable Reason / Root Cause - Others", ProbableReasonothIDArr[1],ProbableReasonothIDArr[2])
              }
              
              else
              {
                document.getElementById(LogFldPrefix + ProbableReasonIDArr[1] + "_" + ProbableReasonIDArr[2]).value=""
                document.getElementById(LogFldPrefix + ProbableReasonothIDArr[1] + "_" + ProbableReasonothIDArr[2]).value=""
                
              }

            }

        }
        
        
        function FUN_DI_EVENT_VALIDATION(BaseId,CtrlId)
        {
            UcodeDeptCheck()
           // AddCutomValidator("Select Value For: Market", 7,12) 
           AddCutomValidator("Select Value For: Market", MarketIDArr[1], MarketIDArr[2]) // Market ID: FLD_7_12
           var EventRelTo = document.getElementById(BaseId + "_" + CtrlId).value
            
            // Product
            var DevProductFldId = 'FLD_10_27';
            var DevProductFldIdAry = new Array();
            DevProductFldIdAry = DevProductFldId.split('_');
            
             document.getElementById("FLDLBL_" + DevProductFldIdAry[1] + "_" + DevProductFldIdAry[2]).className = "HideRow"
            AddCutomValidator("", DevProductFldIdAry[1], DevProductFldIdAry[2])

            // End Product
            
            //Batch
            var DevBatchFldId = 'FLD_60_29';
            var DevBatchFldIdAry = new Array();
            DevBatchFldIdAry = DevBatchFldId.split('_');
            
             document.getElementById("FLDLBL_" + DevBatchFldIdAry[1] + "_" + DevBatchFldIdAry[2]).className = "HideRow"
            AddCutomValidator("", DevBatchFldIdAry[1], DevBatchFldIdAry[2])

            
            // Material
            var DevMaterialFldId = 'FLD_11_28';
            var DevMaterialFldIdAry = new Array();
            DevMaterialFldIdAry = DevMaterialFldId.split('_');
            
            document.getElementById("FLDLBL_" + DevMaterialFldIdAry[1] + "_" + DevMaterialFldIdAry[2]).className = "HideRow"
            AddCutomValidator("", DevMaterialFldIdAry[1], DevMaterialFldIdAry[2])
            
            // End Material
            
            //Lot
             var DevLotFldId = 'FLD_61_30';
            var DevLotFldIdAry = new Array();
            DevLotFldIdAry = DevLotFldId.split('_');
            
            document.getElementById("FLDLBL_" + DevLotFldIdAry[1] + "_" + DevLotFldIdAry[2]).className = "HideRow"
            AddCutomValidator("", DevLotFldIdAry[1], DevLotFldIdAry[2])
            
            //Equipment
            var DevEquipmentFldId='FLD_12_31'
            var DevEquipmentFldIdAry = new Array()
            DevEquipmentFldIdAry=DevEquipmentFldId.split('_');
            
            document.getElementById("FLDLBL_" + DevEquipmentFldIdAry[1] + "_" + DevEquipmentFldIdAry[2]).className = "HideRow"
            AddCutomValidator("", DevEquipmentFldIdAry[1], DevEquipmentFldIdAry[2])
            
            //ENd Equipment
            
            //System
            //var DevSystemFldId='FLD_62_57'
            var DevSystemFldId='FLD_62_48'
            var DevSystemFldIdAry= new Array()
            DevSystemFldIdAry=DevSystemFldId.split('_');
            
            document.getElementById("FLDLBL_" + DevSystemFldIdAry[1] + "_" + DevSystemFldIdAry[2]).className = "HideRow"
            AddCutomValidator("", DevSystemFldIdAry[1], DevSystemFldIdAry[2])
            
             //END System
      
              //Others
            var DevOthersFldId='FLD_63_5'
            var DevOthersFldIdAry= new Array()
            DevOthersFldIdAry=DevOthersFldId.split('_');
            
             document.getElementById("FLDLBL_" + DevOthersFldIdAry[1] + "_" + DevOthersFldIdAry[2]).className = "HideRow"
            AddCutomValidator("", DevOthersFldIdAry[1], DevOthersFldIdAry[2])
             //END Others
            
                                       
                              
              
              if (EventRelTo == "Product") {
                  AddCutomValidator("Select Value For: Product", DevProductFldIdAry[1], DevProductFldIdAry[2])
                  document.getElementById("FLDLBL_" + DevProductFldIdAry[1] + "_" + DevProductFldIdAry[2]).className = "MainTD" 
                  
                  AddCutomValidator("Select Value For: Batch No(s)", DevBatchFldIdAry[1],DevBatchFldIdAry[2])
                  document.getElementById("FLDLBL_" + DevBatchFldIdAry[1] + "_" + DevBatchFldIdAry[2]).className = "MainTD"
              }
              
              if (EventRelTo == "Material") {
                  AddCutomValidator("Select Value For: Material", DevMaterialFldIdAry[1],DevMaterialFldIdAry[2])
                  document.getElementById("FLDLBL_" + DevMaterialFldIdAry[1] + "_" + DevMaterialFldIdAry[2]).className = "MainTD"
                                   
                  AddCutomValidator("Select Value For: Lot No(s)", DevLotFldIdAry[1],DevLotFldIdAry[2])
                  document.getElementById("FLDLBL_" + DevLotFldIdAry[1] + "_" + DevLotFldIdAry[2]).className = "MainTD"
              }
              
              if (EventRelTo == "System") {
                  AddCutomValidator("Enter Value For: System", DevSystemFldIdAry[1],DevSystemFldIdAry[2])
                  document.getElementById("FLDLBL_" + DevSystemFldIdAry[1] + "_" + DevSystemFldIdAry[2]).className = "MainTD"
              }
              
              if (EventRelTo == "Equipment") {
                  AddCutomValidator("Select Value For: Equipment", DevEquipmentFldIdAry[1],DevEquipmentFldIdAry[2])
                  document.getElementById("FLDLBL_" + DevEquipmentFldIdAry[1] + "_" + DevEquipmentFldIdAry[2]).className = "MainTD"
              }
              
              if (EventRelTo == "Others") {
                  AddCutomValidator("Enter Value For: Other Details", DevOthersFldIdAry[1],DevOthersFldIdAry[2])
                  document.getElementById("FLDLBL_" + DevOthersFldIdAry[1] + "_" + DevOthersFldIdAry[2]).className = "MainTD"
              }
            
            
      } 


        /* case 6:Probable reason / Root Cause Validation At Deviation Issue Login 
        If "Probable reason/Root cause" is selected as "Others" then "Probable reason – Others (Specify)" field will become mandatory. */
       
       function FUN_DI_PROB_REASON_VALIDATION(BaseId,CtrlId)
       {
            var ProbReason=document.getElementById("FLD_" + BaseId + "_" + CtrlId).value
            var ExpMessage=""
            var ExpCtrlID=""
            if (ProbReason=="Others")
            {
                // Hear Also We menction Hard Code Base id value 
                
                var obj=document.getElementById("FLD_" + 35 + "_" + 11)
                if (obj.value=="")
                {ExpMessage= "Enter Value For: Probable reason – Others (Specify)" ; ExpCtrlID="FLD_" + 35 + "_" + 11}
                 document.getElementById("FLDLBL_" + 35 + "_" + 11).className="MainTD" 
            }
            else
            {document.getElementById("FLDLBL_" + 35 + "_" + 11).className="HideRow" }
            var idStr=BaseId + '_' + CtrlId
            setExpMessage(ExpMessage,ExpCtrlID,idStr)

       
       }   
       
      
     /*  case 18: function to enable/disable "Proposed Corrective Action Plan(s)" field based on selection of "Corrective Action Plan(s) Proposal Required" yes/no 
     at Registration Approval screen of DI Issue Login */
     
     function FUN_DI_ACT_PLAN_DECISION(BaseId,CtrlId) 
     {
         /* For Issue Login custom validations  we are getting Current field ID 
             base din current field we cont get  next field id  bcz id is formed based on fiield and control id 
             
             In efroms  Flied id is formed in continued format , so from current id to next id we can get by increment the base value 
             this kind of  functionality is  not working in issue login forms  
             For issue forms we  need to write individual quary for each field validation by hard coded id's 
        */

         var NexActivityID=BaseId.substring(4,BaseId.length)  
         NexActivityID = parseInt(NexActivityID) - 4  
        
        var PopupBtn = document.getElementById("BTN_"+ BaseId.substring(0,4)+ + NexActivityID)
        var TxtCtlId = $(PopupBtn).attr("id"); //$(PopupBtn).data("txtfldid");
        var ValCtrl = $("span[controltovalidate='"+ TxtCtlId +"']")
        if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked==true)
        {
            PopupBtn.removeAttribute("disabled")
            if(ValCtrl.length >0)
            {
                ValidatorEnable($(ValCtrl)[0], true);
            }
        }
        else if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked==true)
        {
            PopupBtn.setAttribute('disabled', 'disabled');
            if(ValCtrl.length >0)
            {
                ValidatorEnable($(ValCtrl)[0], false);
            }
        }
           
     }
         
        
      //  ************** End Lupin -Deviation Process   Custom Field Validation   ******************
      
 
 
    // *****  Work Allocation Validatios *********

        function QAMS_WRK_ALL_SpecialValidations(functionid,IssueID,Rowcount)
        {
            switch (parseInt(functionid))
            {  
                case 4 : FUN_WRKALLOC_USERAUTHENTICATION(IssueID,Rowcount)
                break;
            }
        }
                
       //Case 4: Work Allocation Incharge Check Validation  -At efrom preparation ******
        function FUN_WRKALLOC_USERAUTHENTICATION(IssueID,Rowcount)
        { 
            QAMS_ReadDepartMent(IssueID,Rowcount)
        } 
 
 
        // ********* Lupin  Change  Control Process *************//
        
        // Function Call At On Click   (No Functionality At On Click )
        function FUN_CC_RA_DECISION (BaseId,CtrlId)
        {
          var ExpMessage=""
          var ExpCtrlID=""
          var RemarksID = BaseId.substring(6, BaseId.length)
          RemarksID = parseInt(RemarksID) + 1  
        
          document.getElementById("FLDLBL_" + BaseId.substring(0,6) + RemarksID + "_11").className = "HideRow";
          
            if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked==true)
            {
               document.getElementById("FLDLBL_" + BaseId.substring(0,6) + RemarksID + "_11").className = "MainTD";
                if (document.getElementById(BaseId.substring(0,6) + RemarksID + "_11").value=="")
                {  ExpMessage= ExpMessage + "Enter  Remark(s) / Reason(s) If Not Approved" + '#*#' ;
                   ExpCtrlID=ExpCtrlID + (BaseId.substring(0,6) + RemarksID + "_11") + '#*#' 
                }
            }   
            
            var idStr=BaseId + '_' + CtrlId
            setExpMessage(ExpMessage,ExpCtrlID,idStr)
        }
        
        

        function FUN_CC_QA_DECISION(BaseId, CtrlId) {
            var ExpMessage = ""
            var ExpCtrlID = ""
            
            var RemarksID = BaseId.substring(6, BaseId.length)
            RemarksID = parseInt(RemarksID) + 1
              
              document.getElementById("FLDLBL_" + BaseId.substring(0, 6) + RemarksID + "_11").className = "HideRow";
                          
             if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) {
                document.getElementById("FLDLBL_" + BaseId.substring(0, 6) + RemarksID + "_11").className = "MainTD";
                if (document.getElementById(BaseId.substring(0, 6) + RemarksID + "_11").value == "") {
                    ExpMessage = ExpMessage + "Enter  Remark(s) / Reason(s) If Not Approved" + '#*#';
                    ExpCtrlID = ExpCtrlID + (BaseId.substring(0, 6) + RemarksID + "_11") + '#*#'
                }
            }

            var idStr = BaseId + '_' + CtrlId
             
            setExpMessage(ExpMessage, ExpCtrlID, idStr)
        }
        
        
        // Function Call At On submit   (No Functionality At On Click )
        function FUN_CC_RA_DECISION_ON_SUBMIT(BaseId,CtrlId,IssueID)
        {
           if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked==true)
                {
                    AjaxChangeIssueStatus(IssueID,0,2)
                }
        }
        
        
        
        
        // Function  Call At Onchage Of drop down 
        function FUN_DEV_CAPA_DEPENDENCY(BaseId,CtrlId) {
            
        }
        
        // Function To chage Issue Status At Deviation QA Comments 
        function FUN_DEV_CAPA_DEPENDENCY_ON_SUBMIT(BaseId,CtrlId,IssueID) {    //alert('....Calling Status Change-01')
        
       // alert(IssueID)
              // For Diplay Of Plan Acceptance List 
            
           var QADeptDDL = document.getElementById(BaseId + "_" + CtrlId);
           var QADecision = QADeptDDL.options(QADeptDDL.selectedIndex).text

         
           if (QADecision == 'Not Mandatory/Not Applicable') 
           {  
              var QRM_Text = document.getElementById("1_COL1213004005_21").value
              if(QRM_Text == '')
              {
                AjaxChangeIssueStatus(IssueID,0,5)
              } 
              else
              {
                AjaxChangeIssueStatus(IssueID, 0, 4)
              }
           }
        
           if (QADecision == 'Mandatory') {
               AjaxChangeIssueStatus(IssueID, 0, 4)
               var RM_Text = document.getElementById("1_COL1213004005_21").value
               var CA_Text = document.getElementById("1_COL1213004007_9").value
               var PA_Text = document.getElementById("1_COL1213004009_20").value
               var OA_Text = document.getElementById("1_COL1213004011_60").value
               if ( CA_Text == '' && PA_Text == '' && OA_Text == '') {
                   AjaxChangeIssueStatus(IssueID, 0, 6)
               }  

           }
           
          // alert('....Calling Status Change-03')
        }

        //dUMMY
//        function FUN_CC_QA_DECISION_ON_SUBMIT(BaseId, CtrlId, IssueID) {
//            if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) {
//                AjaxChangeIssueStatus(IssueID, 0, 2)
//            } else {
//                AjaxChangeIssueStatus(IssueID, 0, 4)
//            }

//        }
        //DUMMY
        
        // function to chnage Issue Status At CAPA  Decison
        function FUN_CAPA_QA_DECISION_ON_SUBMIT(BaseId, CtrlId, IssueID) {
         
            if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) {
                AjaxChangeIssueStatus(IssueID, 0, 2)
            } else {
            AjaxChangeIssueStatus(IssueID, 0, 4)
            //var RM_Text = document.getElementById("1_COL1113007003_21").value
            
            var CA_Text = document.getElementById("1_COL1113007005_9").value
            var PA_Text = document.getElementById("1_COL1113007007_20").value
            var OA_Text = document.getElementById("1_COL1113007009_24").value
            if ( CA_Text == '' && PA_Text == '' && OA_Text == '') {  //RM_Text == '' &&
                AjaxChangeIssueStatus(IssueID, 0, 6)
              }  
            }
      }
      function FUN_CC_QA_DECISION_ON_SUBMIT(BaseId, CtrlId, IssueID) {
          if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) {
              AjaxChangeIssueStatus(IssueID, 0, 2)
              
          } else {
          AjaxChangeIssueStatus(IssueID, 0, 4)
          var RM_Text = document.getElementById("1_COL1113004003_21").value
          var OA_Text = document.getElementById("1_COL1113004005_39").value
          if (RM_Text == '' && OA_Text == ''){
              AjaxChangeIssueStatus(IssueID, 0, 6)
          }  
          }

      }


     



      function FUN_DI_EVENT_VALIDATION_ONLOAD(BaseId, CtrlId) {
      /*    var MarketID = "FLD_127_89"
          CtrlId=89
          var ExpMessage = ""
          var ExpCtrlID = ""
             ExpMessage =   "Select Value For: Market" + '#*#';
             ExpCtrlID = MarketID + '#*#'

             var idStr = MarketID//BaseId + '_' + CtrlId

          setExpMessage(ExpMessage, ExpCtrlID, idStr)
          */
      }

      function FUN_CC_CHANGERELATEDTO_ONLOAD(BaseId, CtrlId) {
         

                     
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

      
      
      // Issue Login related Corrective Action Plan(s) Proposal

      function FUN_ISU_CA_ACTION_PLAN_DECISION_ONLOAD(BaseId, CtrlId) {
         //document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_0").checked = true
         //FUN_ISU_CA_ACTION_PLAN_DECISION(LogFldPrefix + BaseId, CtrlId)
      }


      function FUN_ISU_CA_ACTION_PLAN_DECISION(BaseId, CtrlId) {

       if(TransType<3){

         // alert('FUN_ISU_CA_ACTION_PLAN_DECISION')
          var ExpMessage = ""
          var ExpCtrlID = ""

          var NextFldBaseId = '50' // Hear Give Next Fld base Id 
          var NextFldCtrlId = '9' // Hear Give Next Fld Ctrl Id 
          var ExpMsg = 'Select Value For: Proposed Corrective Action plan(s)'   // Hear Give Next Fld Exp Messahe 


            document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).setAttribute("disabled", "disabled")
            document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "HideRow";
            BaseId= BaseId.replace('FLD_' ,'')

          if (document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_0").checked == true) {
              
              document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).removeAttribute("disabled")
              document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "MainTd";
                
              if (document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                  ExpMessage = ExpMessage + ExpMsg + '#*#';
                  ExpCtrlID = (LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
              }
          }
          else// if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true)
           {
              
              document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
              document.getElementById("Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

          }

          var idStr = BaseId + '_' + CtrlId
          setExpMessage(ExpMessage, ExpCtrlID, idStr)
         } 
      }

            
           
      
      //Closed


      // Issue Login related Preventive Action Plan(s) Proposal

      function FUN_ISU_PA_ACTION_PLAN_DECISION_ONLOAD(BaseId, CtrlId) {
          //document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_0").checked = true
          //FUN_ISU_PA_ACTION_PLAN_DECISION(LogFldPrefix + BaseId, CtrlId)
      }



      function FUN_ISU_PA_ACTION_PLAN_DECISION(BaseId, CtrlId) {
        //  alert('FUN_ISU_PA_ACTION_PLAN_DECISION')
        
       if(TransType<3){
        
          var ExpMessage = ""
          var ExpCtrlID = ""

          var NextFldBaseId = '52' // Hear Give Next Fld base Id 
          var NextFldCtrlId = '20' // Hear Give Next Fld Ctrl Id 
          var ExpMsg = 'Select Value For: Proposed Preventive Action Plan(s)'   // Hear Give Next Fld Exp Messahe 

            document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).setAttribute("disabled", "disabled")
              document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "HideRow";

BaseId= BaseId.replace('FLD_' ,'')
          if (document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_0").checked == true) {
              document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).removeAttribute("disabled")
                document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "MainTD";
                
              if (document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                  ExpMessage = ExpMessage + ExpMsg + '#*#';
                  ExpCtrlID = (LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
              }
          }
          else// if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true)
           {
              document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
              document.getElementById("Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")
          }

          var idStr = BaseId + '_' + CtrlId
          setExpMessage(ExpMessage, ExpCtrlID, idStr)
         } //End of transtype
      }


      //Closed


      // Issue Login - CC Action Plan(s) Proposal

      function FUN_CC_ISU_ACTION_PLAN_DECISION_ONLOAD(BaseId, CtrlId) {
         // document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_0").checked = true
      }



     

      // Issue Login related Investigation Action Plan Related Function         
         
          
      
        
         function FUN_DEV_INV_ACTION_PLAN_DECISION_ONLOAD(BaseId,CtrlId)
         {
            // document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_0").checked = true
             //FUN_DEV_INV_ACTION_PLAN_DECISION(LogFldPrefix + BaseId, CtrlId)
         }
         
        
        
         
          
           function FUN_DEV_INV_ACTION_PLAN_DECISION(BaseId,CtrlId) {
             
             if(TransType<3){
                var ExpMessage=""
                var ExpCtrlID=""
                
                var NextFldBaseId= 71 // Hear Give Next Fld base Id 
                var NextFldCtrlId=22  // Hear Give Next Fld Ctrl Id 
                var ExpMsg= 'Select Value For: Investigation'  // Hear Give Next Fld Exp Messahe 
              
                document.getElementById( "BTN_" + LogFldPrefix + NextFldBaseId ).setAttribute("disabled","disabled") 
                document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "HideRow";
                BaseId= BaseId.replace('FLD_','')
              
                if (document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_0").checked==true)
                {
                   document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId ).removeAttribute("disabled")
                   document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "MainTD";   
                   
                   if (document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).value=="")
                    {  ExpMessage=  ExpMessage + ExpMsg + '#*#' ;
                       ExpCtrlID= (LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId ) + '#*#' 
                    }
                } 
                else  //if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked==true)
                {
                  
                   document.getElementById( LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId ).setAttribute("value","")
                   document.getElementById( "Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId ).setAttribute("className","HideRow")
                }

                var idStr=BaseId + '_' + CtrlId
                setExpMessage(ExpMessage,ExpCtrlID,idStr)
             
              }
           }

         


           // eFORM Related Functions for Action Plan Proposal(s)

           // eFORM Related Corrective Action Plan Proposal Function
          
           function FUN_EFORM_CA_ACTION_PLAN_DECISION_ONLOAD(BaseId, CtrlId) {
               //document.getElementById(BaseId + "_" + CtrlId + "_0").checked = true
           }

           function FUN_EFORM_CA_ACTION_PLAN_DECISION(BaseId, CtrlId) {
           
           if(TransType<3){
               var ExpMessage = ""
               var ExpCtrlID = ""

               var NextFldBaseId = BaseId.substring(6, BaseId.length)   // No need of chnage hear
               NextFldBaseId = parseInt(NextFldBaseId) + 1
               NextFldBaseId = BaseId.substring(0, 6) + NextFldBaseId

               var NextFldCtrlId = '9' // Hear Give Next Fld Ctrl Id
               var ExpMsg = 'Select Value For: Proposed Corrective Action plan(s)'   // Hear Give Next Fld Exp Messahe

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
               else //if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) 
               {
                   document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
                   document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")
               }

               var idStr = BaseId + '_' + CtrlId
               setExpMessage(ExpMessage, ExpCtrlID, idStr)
            }
           }

           // Closed



           // eFORM Related Preventive Action Plan Proposal Function

           function FUN_EFORM_PA_ACTION_PLAN_DECISION_ONLOAD(BaseId, CtrlId) {
               //document.getElementById(BaseId + "_" + CtrlId + "_0").checked = true
           }

           function FUN_EFORM_PA_ACTION_PLAN_DECISION(BaseId, CtrlId) {
           if(TransType<3){
               var ExpMessage = ""
               var ExpCtrlID = ""

               var NextFldBaseId = BaseId.substring(6, BaseId.length)   // No need of chnage hear
               NextFldBaseId = parseInt(NextFldBaseId) + 1
               NextFldBaseId = BaseId.substring(0, 6) + NextFldBaseId

               var NextFldCtrlId = '20' // Hear Give Next Fld Ctrl Id
               var ExpMsg = 'Select Value For: Proposed Preventive Action plan(s)'   // Hear Give Next Fld Exp Messahe

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
               else //if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) 
               {
                   document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
                   document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")
               }

               var idStr = BaseId + '_' + CtrlId
               setExpMessage(ExpMessage, ExpCtrlID, idStr)
              }
           }

           // Closed


           // Category of Deviation - QRM

               function FUN_DEV_QRM_ACTION_PLAN_DECISION(BaseId, CtrlId)
                {
               var ExpMessage = ""
               var ExpCtrlID = ""

               var NextFldBaseId = BaseId.substring(6, BaseId.length)   // No need of chnage hear
               
               NextFldBaseId = parseInt(NextFldBaseId) + 1
               NextFldBaseId = BaseId.substring(0, 6) + NextFldBaseId
               
               
               var NextFldCtrlId = '21' 
               var ExpMsg = 'Select Value For: Quality Risk Management'   
               document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId ).className = "HideRow";
               
               if (document.getElementById(BaseId + "_" + CtrlId).value== 'Major') {
               
                   if (document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                   document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId ).className = "MainTD";
                   ExpMessage = ExpMessage + ExpMsg + '#*#';
                   ExpCtrlID = (NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
                   }
                }  
                else if (document.getElementById(BaseId + "_" + CtrlId).value== 'Minor') 
                {
                  document.getElementById( NextFldBaseId + "_" + NextFldCtrlId ).value = "";
                  document.getElementById( 'Value_' + NextFldBaseId + "_" + NextFldCtrlId ).className = "HideRow";
                }
               var idStr = BaseId + '_' + CtrlId
               setExpMessage(ExpMessage, ExpCtrlID, idStr)
              
           }


//cLOSED


           // Category of Change - QRM Plan Decision
           function FUN_CC_QRM_ACTION_PLAN_DECISION(BaseId, CtrlId) {
               var ExpMessage = ""
               var ExpCtrlID = ""

               var NextFldBaseId = BaseId.substring(6, BaseId.length)   // No need of chnage hear

               NextFldBaseId = parseInt(NextFldBaseId) + 1
               NextFldBaseId = BaseId.substring(0, 6) + NextFldBaseId

               //NextFldBaseId='1_COL0213008003'
               var NextFldCtrlId = '21' // Hear Give Next Fld Ctrl Id
               var ExpMsg = 'Select Value For: Quality Risk Management'   // Hear Give Next Fld Exp Messahe

                document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "HideRow";
  
               if (document.getElementById(BaseId + "_" + CtrlId).value == 'Critical') {
                   //document.getElementById("BTN_" + NextFldBaseId).removeAttribute("disabled")
                   document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "MainTD";
                   if (document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                       ExpMessage = ExpMessage + ExpMsg + '#*#';
                       ExpCtrlID = (NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
                   }
               }
               if (document.getElementById(BaseId + "_" + CtrlId).value == 'Major') {
                   //document.getElementById("BTN_" + NextFldBaseId).removeAttribute("disabled")
                   document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "MainTD";
                   if (document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                       ExpMessage = ExpMessage + ExpMsg + '#*#';
                       ExpCtrlID = (NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
                   }
               } 
               
                /* 
               else if (document.getElementById(BaseId + "_" + CtrlId).value == 'Minor') {
               document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")
               document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
               document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

               } */

               var idStr = BaseId + '_' + CtrlId
               setExpMessage(ExpMessage, ExpCtrlID, idStr)

           }


// Closed


           // eFORM Related RA - Action Plan Proposal Function

           function FUN_CC_RA_ACTION_PLAN_DECISION_ONLOAD(BaseId, CtrlId) {
               //document.getElementById(BaseId + "_" + CtrlId + "_0").checked = true
           }

           function FUN_CC_RA_ACTION_PLAN_DECISION(BaseId, CtrlId) {
           if(TransType<3){
               var ExpMessage = ""
               var ExpCtrlID = ""

               var NextFldBaseId = BaseId.substring(6, BaseId.length)   // No need of chnage hear
               NextFldBaseId = parseInt(NextFldBaseId) + 1
               NextFldBaseId = BaseId.substring(0, 6) + NextFldBaseId

               var NextFldCtrlId = '25' // Hear Give Next Fld Ctrl Id
               var ExpMsg = 'Select Value For: Proposed Action Plan(s)'   // Hear Give Next Fld Exp Messahe

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
               else //if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true)
                {
                  
                   document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
                   document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

               }

               var idStr = BaseId + '_' + CtrlId
               setExpMessage(ExpMessage, ExpCtrlID, idStr)
             }
           }

           // Closed


           // eFORM Related QA - Action Plan Proposal Function

           function FUN_CC_QA_ACTION_PLAN_DECISION_ONLOAD(BaseId, CtrlId) {
               //document.getElementById(BaseId + "_" + CtrlId + "_0").checked = true
           }

           function FUN_CC_QA_ACTION_PLAN_DECISION(BaseId, CtrlId) {
           if(TransType<3){
               var ExpMessage = ""
               var ExpCtrlID = ""

               var NextFldBaseId = BaseId.substring(6, BaseId.length)   // No need of chnage hear
               NextFldBaseId = parseInt(NextFldBaseId) + 1
               NextFldBaseId = BaseId.substring(0, 6) + NextFldBaseId

               var NextFldCtrlId = '39' // Hear Give Next Fld Ctrl Id
               var ExpMsg = 'Select Value For: Proposed Action Plan(s)'   // Hear Give Next Fld Exp Messahe

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
               else //if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true)
                {
                   
                   document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
                   document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

               }

               var idStr = BaseId + '_' + CtrlId
               setExpMessage(ExpMessage, ExpCtrlID, idStr)
             }
           }

           // Closed

           // eForm related CAPA-QRM Decision

           function FUN_CAPA_QRM_ACTION_PLAN_DECISION_ONLOAD(BaseId, CtrlId) {
               //document.getElementById(BaseId + "_" + CtrlId + "_0").checked = true
           }

           function FUN_CAPA_QRM_ACTION_PLAN_DECISION(BaseId, CtrlId) {
           if(TransType<3){
               var ExpMessage = ""
               var ExpCtrlID = ""

               var NextFldBaseId = BaseId.substring(6, BaseId.length)   // No need of chnage hear
               NextFldBaseId = parseInt(NextFldBaseId) + 1
               NextFldBaseId = BaseId.substring(0, 6) + NextFldBaseId

               var NextFldCtrlId = '21' // Hear Give Next Fld Ctrl Id
               var ExpMsg = 'Select Value For: Quality Risk Management'   // Hear Give Next Fld Exp Messahe

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
               else //if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) 
               {
                   document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
                   document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")
               }

               var idStr = BaseId + '_' + CtrlId
               setExpMessage(ExpMessage, ExpCtrlID, idStr)
              } 
           }

           // Closed


           //case 27:
           //function to mandatory the field 'other' when 'Origin of CAPA' is selected as 'others' at CAPA Login form

           function FUN_CAPA_ORIGINOFCAPA(BaseId, CtrlId) {
           
                UcodeDeptCheck()
                AddCutomValidator("Select Value For: Market", MarketIDArr[1], MarketIDArr[2]) // Market ID: FLD_7_12
                AddCutomValidator("Select Value For: Origin of CAPA", OriginofCAPARR[1], OriginofCAPARR[2]) // Change Related To ID: FLD_9_14

                document.getElementById("FLDLBL_" + OthersFldIdAry[1] + "_" + OthersFldIdAry[2]).className = "HideRow"
                 AddCutomValidator("", OthersFldIdAry[1], OthersFldIdAry[2])


               var CAPAOrignVal = document.getElementById( BaseId + "_" + CtrlId).value
               var CAPAOrignValAry = new Array()
               CAPAOrignValAry = CAPAOrignVal.split(";")
               
               var isOthers=0

                  for (i = 0; i < CAPAOrignValAry.length; i++) {
                      CAPAOrignValAry[i] = trim(CAPAOrignValAry[i])
                      
                      if (CAPAOrignValAry[i] == "Others") {
                          isOthers =1
                          document.getElementById("FLDLBL_" + OthersFldIdAry[1] + "_" + OthersFldIdAry[2]).className = "MainTd";
                          AddCutomValidator("Enter Value For: Others", OthersFldIdAry[1],OthersFldIdAry[2])
                      }
                  } 
               
               
            }
            

           //case 28:
           //function to mandatory the field 'Details' when 'Investigation and root cause finding' is selected as 'Yes' at CAPA Login form
           function FUN_CAPA_INV_ROOTCAUSE(BaseId, CtrlId) {
               var ExpMessage = ""
               var ExpCtrlID = ""


                var NextFldBaseId = DetailsTxtIdArr[1] // Hear Give Next Fld base Id
                var NextFldCtrlId = DetailsTxtIdArr[2] // Hear Give Next Fld Ctrl Id 
                var ExpMsg = 'Enter Value For: Details'   // Hear Give Next Fld Exp Messahe 

                document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "HideRow";

                if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
                    document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "MainTD";
                    if (document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                    ExpMessage = ExpMessage + ExpMsg + '#*#';
                    ExpCtrlID = (LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
                    
                    }
                }
          
               var idStr = BaseId + '_' + CtrlId
               setExpMessage(ExpMessage, ExpCtrlID, idStr)
           }
                       
           
           // Closure of the functions
      
           // Commen Function To Set  Propoerties To Funciton 
            function SetPropertiedToControlsAtPageLoad(ScrType)
             {  //
               var CusValFunIdLst =document.getElementById("CustomValidFunTxt").value.substring(1)
               var CusValFldIdLst =document.getElementById("CunstomValIdsTxt").value.substring(3)
               var CusValFunIdArr =new Array()
               var CusValFldIdArr =new Array()

               CusValFunIdArr=CusValFunIdLst.split(",")
               CusValFldIdArr=CusValFldIdLst.split("#*#")
              
               //var IsuLogId=document.getElementById("IssueLogIdTXt").value
              
              Fun_Check_BatchSelection(ScrType)
               
               for(var i=0;i<=CusValFunIdArr.length-1;i++)
               {
                    var CusValFldId=new Array()
                    CusValFldId=CusValFldIdArr[i].split(",")
                    
                    switch (parseInt(CusValFunIdArr[i]))
                    {
                       case 2: FUN_DI_EVENT_VALIDATION_ONLOAD(CusValFldId[0], CusValFldId[1])
                           break;
                       case 21: FUN_CC_CHANGERELATEDTO_ONLOAD(CusValFldId[0], CusValFldId[1])
                           break;
                      case 9: FUN_ISU_CA_ACTION_PLAN_DECISION(CusValFldId[0], CusValFldId[1])
                            break;
                            
                      case 10: FUN_ISU_PA_ACTION_PLAN_DECISION(CusValFldId[0], CusValFldId[1])
                            break;
                        case 11: FUN_EFORM_CA_ACTION_PLAN_DECISION(CusValFldId[0], CusValFldId[1])
                            break;
                        case 12: FUN_EFORM_PA_ACTION_PLAN_DECISION(CusValFldId[0], CusValFldId[1])
                            break;
                      case 13 :FUN_DEV_INV_ACTION_PLAN_DECISION(CusValFldId[0],CusValFldId[1])
                            break;
                    
                     
                     case 14: FUN_CC_ISU_ACTION_PLAN_DECISION(CusValFldId[0], CusValFldId[1])
                        break;
                          
                     case 17: FUN_CC_RA_ACTION_PLAN_DECISION(CusValFldId[0], CusValFldId[1])
                        break;
                                      
                      case 18: FUN_CC_QA_ACTION_PLAN_DECISION(CusValFldId[0], CusValFldId[1])
                            break;
                    
                      case 22: FUN_CAPA_QRM_ACTION_PLAN_DECISION(CusValFldId[0], CusValFldId[1])
                          break;
                      case 31: FUN_ISU_EDITATT_DECISION_ONLOAD(CusValFldId[0], CusValFldId[1])
                          break;
                      case 32: FUN_EFORM_OA_ACTION_PLAN_DECISION(CusValFldId[0], CusValFldId[1])
                          break;
                      case 33: FUN_ISU_OA_ACTION_PLAN_DECISION(CusValFldId[0], CusValFldId[1])
                          break;
                         case 37 : FUN_DEV_EFORM_OA_ACTION_PLAN_DECISION(CusValFldId[0], CusValFldId[1])
                         break;
                         
                    case 49 : FUN_ISU_DEV_PROBREASON_DECISION(CusValFldId[0], CusValFldId[1])
                    break;
                    
                     case 50 : FUN_ISU_DEV_CA_ACTION_PLAN_DECISION(CusValFldId[0], CusValFldId[1])
                    break;
                     case 51 : FUN_ISU_DEV_PA_ACTION_PLAN_DECISION(CusValFldId[0], CusValFldId[1])
                break;
                    
                
                    }
                    
                }
             }
             
             
             
             
             
            
                          
                  
        // function to chnage Issue Status At CAPA  On Clisk
      function FUN_CAPA_QA_DECISION(BaseId, CtrlId) {
      
          var ExpMessage=""
          var ExpCtrlID=""
          var NextFldId=BaseId.substring(6,BaseId.length)
          NextFldId = parseInt(NextFldId) + 1  
          
            document.getElementById("FLDLBL_" + BaseId.substring(0,6) + NextFldId + "_11").className = "HideRow";
  
  
            if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked==true)
            {
               document.getElementById("FLDLBL_" + BaseId.substring(0,6) + NextFldId + "_11").className = "MainTD";
                if (document.getElementById(BaseId.substring(0,6) + NextFldId + "_11").value=="")
                {  ExpMessage= ExpMessage + "Enter  Remark(s) / Reason(s) If Rejected" + '#*#' ;
                   ExpCtrlID=ExpCtrlID + (BaseId.substring(0,6) + NextFldId + "_11") + '#*#' 
                }
            }   
            
            var idStr=BaseId + '_' + CtrlId
            setExpMessage(ExpMessage,ExpCtrlID,idStr)
                     
        }


     // *********End of Lupin  Change  Control Process *************//
  
                
       //*********  Common  Function To Set Validation  Messages  ***********
           
        
        function setExpMessage(ExpMesage,ExpCtrlID,Idstr)
        {
            var Count = 0;
            // if (ExpMesage == "")
          //  alert("ExpMesage =" + ExpMesage + "   ExpCtrlID=" + ExpCtrlID + "    Idstr=  " + Idstr + "  ExpMsgIdArr=" + ExpMsgIdArr.join("XX"))
             if (ExpMesage == "")
                {
                       for(var i=0;i<=ExpMsgIdArr.length-1;i++)
                        {
                           if (ExpMsgIdArr[i] == Idstr )
                               ExpMessageArr[i]=ExpMesage
                               EXpControlId[i]=ExpCtrlID
                        }
                }
            else
            {
                    for(var i=0;i<=ExpMsgIdArr.length-1;i++) {
                      //  alert((ExpMsgIdArr[i] == Idstr) + "      " + Idstr)
                       if (ExpMsgIdArr[i] == Idstr )
                       {
                           Count=1;
                           ExpMessageArr[i]=ExpMesage
                           EXpControlId[i]=ExpCtrlID
                        }   
                    }
                   // alert(Count)
                    if (Count==0)
                    {
                        ExpMsgIdArr.push(Idstr)
                        ExpMessageArr.push(ExpMesage)
                        EXpControlId.push(ExpCtrlID)
                    }
            }
        }
          
          
              //*********  Common  Function To Set Validation  Messages  ***********

 
 
                function AjaxCheckUserExisInGrp(Groupname,Rowcnt)
                   {
                     var recary = new Array(); 
                      
                        var xmlhttp;
                        try
                        { 
                            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                        }
                        catch(ex)
                        {
                            try 
                            {
                                xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
                            }
                            catch(ex)
                            {
                                try
                                {
                                    xmlhttp=new XmlHttpRequest();
                                }
                                catch(ex)
                                {
                                    alert("please update the webbrowser");
                                }
                            }
                        }
                        xmlhttp.onreadystatechange=function()
                        {
                            if(xmlhttp.readystate==4)
                            {
                                var Time="abc"
                                Time=xmlhttp.ResponseText
                                UserStatusvalue(Time,Rowcnt)
//                                if (Time=="0")
//                                  
                                
                                  
                                xmlhttp =null;
                            }
                        }
                         var url="../IssueLogin/CheckuserExisInGroup.aspx?Groupname=" +  Groupname 
                        xmlhttp.open("POST",url,true);
                        xmlhttp.send(null);
                    }
                
                
                  
        
         //Read Department
             
              
             function QAMS_ReadDepartMent2(IssueLogId,Rowcnt)
             {
               var recary = new Array(); 
              
          
                    var xmlhttp;
                    try
                    {
                        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                    }
                    catch(ex)
                    {
                        try 
                        {
                            xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
                        }
                        catch(ex)
                        {
                            try
                            {
                                xmlhttp=new XmlHttpRequest();
                            }
                            catch(ex)
                            {
                                alert("please update the webbrowser");
                            }
                        }
                    }
                    
                    xmlhttp.onreadystatechange=function()
                    {
                        if(xmlhttp.readystate==4)
                        {
                            var RtnStr="abc"
                            var ReturnArr =new Array()
                            RtnStr=xmlhttp.ResponseText
                            SetInchargegroup(RtnStr,Rowcnt)
                            
                        }
                    } 
                    var url="../PrsWorkFlow/ReadIssueDepartment_Ajax.aspx?IsuLoginID=" + IssueLogId + "&FldName=Department"
                    xmlhttp.open("POST",url,true);
                    xmlhttp.send(null);
             }  
             
       //function to check user existance in group at issuelogin approval
        function AjaxCheckUserExisInGroup(IssueLogId,RowCnt,DeptName)
        {
            var recary = new Array(); 
                      
                        var xmlhttp;
                        try
                        { 
                            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                        }
                        catch(ex)
                        {
                            try 
                            {
                                xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
                            }
                            catch(ex)
                            {
                                try
                                {
                                    xmlhttp=new XmlHttpRequest();
                                }
                                catch(ex)
                                {
                                    alert("please update the webbrowser");
                                }
                            }
                        }
                       xmlhttp.onreadystatechange=function()
                        {
                            if(xmlhttp.readystate==4)
                            {
                                var Time="abc"
                                Time=xmlhttp.ResponseText
                                UserStatusvalue(Time,RowCnt)
        
                                xmlhttp =null;
                            }
                        }
                         var url="../PrsWorkFlow/CheckuserExisInGroup.aspx?IsuLoginID=" + IssueLogId + "&FldName=" + DeptName
                        xmlhttp.open("POST",url,true);
                        xmlhttp.send(null);
        
        }     
        
        // Function to Check user Authenticaton At CAPA Work Allocation 
        
         function  QAMS_checkuserAuthoentication(IssueFormId,ActionPlanId,RowCnt)
          {
            var recary = new Array(); 
              
          
                    var xmlhttp;
                    try
                    {
                        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                    }
                    catch(ex)
                    {
                        try 
                        {
                            xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
                        }
                        catch(ex)
                        {
                            try
                            {
                                xmlhttp=new XmlHttpRequest();
                            }
                            catch(ex)
                            {
                                alert("please update the webbrowser");
                            }
                        }
                    }
                    
                    xmlhttp.onreadystatechange=function()
                    {
                        if(xmlhttp.readystate==4)
                        {
                            var RtnStr="abc"
                            var ReturnArr =new Array()
                            RtnStr=xmlhttp.ResponseText
                            RaiseWrkItems(RtnStr,RowCnt)
                            
                        }
                    }  
                    var url="../PrsWorkFlow/CheckPlanWrkInitUserAuth_Ajax.aspx?IssueFormId=" + IssueFormId + "&ActionPlanId=" + ActionPlanId 
                    xmlhttp.open("POST",url,true);
                    xmlhttp.send(null);
          }
          
           //Read Isu Login Department
              
             function QAMS_ReadDepartMent(IssueLogId,Rowcnt)
             {
               var recary = new Array(); 
              
          
                    var xmlhttp;
                    try
                    {
                        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                    }
                    catch(ex)
                    {
                        try 
                        {
                            xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
                        }
                        catch(ex)
                        {
                            try
                            {
                                xmlhttp=new XmlHttpRequest();
                            }
                            catch(ex)
                            {
                                alert("please update the webbrowser");
                            }
                        }
                    }
                    
                    xmlhttp.onreadystatechange=function()
                    {
                        if(xmlhttp.readystate==4)
                        {
                            var RtnStr="abc"
                            var ReturnArr =new Array()
                            RtnStr=xmlhttp.ResponseText
                            SetInchargegroup(RtnStr,Rowcnt)
                            
                        }
                    }  
                    var url="../PrsWorkFlow/ReadIssueDepartment_Ajax.aspx?IsuLoginID=" + IssueLogId + "&FldName=Department"
                    xmlhttp.open("POST",url,true);
                    xmlhttp.send(null);
             }
             
             
             //to change the status of issue
//             if Isustatus=1 CAPA Initiation
//             Isustatus=2 Issue Closure
             
              function AjaxChangeIssueStatus(IssueId,WrkAulId,Isustatus)
               {
                 var recary = new Array(); 
                  
                    var xmlhttp;
                    try
                    { 
                        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                    }
                    catch(ex)
                    {
                        try 
                        {
                            xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
                        }
                        catch(ex)
                        {
                            try
                            {
                                xmlhttp=new XmlHttpRequest();
                            }
                            catch(ex)
                            {
                                alert("please update the webbrowser");
                            }
                        }
                    }
                    xmlhttp.onreadystatechange=function()
                    {
                        if(xmlhttp.readystate==4)
                        {
                            var Time = "abc"

                            Time = xmlhttp.ResponseText
                            //alert(Time)
                            xmlhttp =null;
                        }
                    }
                    
                    //@Isustatus =2  Issue Root to Issue Closure
                    //@Isustatus= 1 Isseu Root To CAPA
                    //@Isustatus =4  Diplay At Plan  Accaptance List
                     var url="../TestEFormExecution/ChangeIsuStatus.aspx?IssueId=" +  IssueId + "&WrkAulId=" + WrkAulId + "&Isustatus=" + Isustatus
                 
                 //alert(url)
                    xmlhttp.open("POST",url,true);
                    xmlhttp.send(null);
                }
                
             
             
          // **** Custom Field Validations for EForm at OnSubmit******//

               
                function Fnsubmit1(TransType,SrcType)
                {
                    //To check the Initiating Department Value at Issue Login Modification and Re-initiation
                    if((TransType==2||TransType==3||TransType==4) && SrcType==1)
                    {
                        var IsulogId=document.getElementById("IsuLogIdTxt").value;
                      
                        AjaxReadInitDeptValue(IsulogId,TransType,SrcType);
                            
                    }                                   
                    //To restrict the issue closure initiation if Effectiveness/Monitoring Plans schedule is pending for any plans
                    else if(TransType==1 && SrcType==2)
                    {
                        var IssueLogId=document.getElementById("IssLogId").value;
                        AjaxReadEMPlanScheduleSts(IssueLogId,TransType,SrcType)                       
                    
                    }
                    else
                    {
                        Fnsubmit(TransType,SrcType);                    
                    }                                   
                }
                
                function SetDeptVal(DeptVal,TransType,SrcType)
                {
                
                    var BaseId=4
                    var ControlId=11
                    var obj1 = document.getElementById("FLD_" + BaseId + "_" + ControlId).value;
                    
                    if (obj1!= DeptVal && DeptVal!=0) 
                    {
                        alert("Initiating Department Value Should Not Be Changed");
                        document.getElementById("FLD_" + BaseId + "_" + ControlId).value=DeptVal;                         
                    }    
                    Fnsubmit(TransType,SrcType);
                }
                
                function SetEFMStatus(Status,TransType,SrcType)
                {
                    if (Status==1)
                    {
                        alert("Effectiveness / Monitoring Plans Schedule Is Pending")
                    }
                    else
                    {
                        Fnsubmit(TransType,SrcType); 
                    }
                
                }
                
                
                function Fnsubmit(TransType,SrcType) { ///
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
                         
                            if(typeof(fnCallESign) != "undefined")
                            {
                                if(IsValidFlag ==false)
                                {
                                    fnCallESign(TransType)
                                    return;
                                }
                            }
                          document.getElementById ("btnConfirm").click();
                       // }
                  
                }
            
            
            // Function To Change DB level Flad At Final Submition OF  Form based  on decision          
            function EFormFinalSubmit()

            {
                var CusValFunIdLst =document.getElementById("CustomValidFunTxt").value.substring(1)
                var CusValFldIdLst =document.getElementById("CunstomValIdsTxt").value.substring(3)
                var CusValFunIdArr =new Array()
                var CusValFldIdArr =new Array()

                CusValFunIdArr=CusValFunIdLst.split(",")
                CusValFldIdArr=CusValFldIdLst.split("#*#")    

                var IsuLogId=document.getElementById("IssueLogIdTXt").value
                for(var i=0;i<=CusValFunIdArr.length-1;i++)
                {
                var CusValFldId=new Array()
                CusValFldId = CusValFldIdArr[i].split(",")
      
               // QAMS_SpecialValidations(CusValFunIdArr[i], CusValFldId[0], CusValFldId[1], IsuLogId
                  switch (parseInt(CusValFunIdArr[i]))
                    {
                      
                        case 19:  FUN_CC_RA_DECISION_ON_SUBMIT(CusValFldId[0],CusValFldId[1],IsuLogId)    
                                 break;
                                 
                        case 7 :FUN_DEV_CAPA_DEPENDENCY_ON_SUBMIT(CusValFldId[0],CusValFldId[1],IsuLogId)
                            break;

                        case 20: FUN_CC_QA_DECISION_ON_SUBMIT(CusValFldId[0], CusValFldId[1], IsuLogId)
                            break;

                        case 26: FUN_CAPA_QA_DECISION_ON_SUBMIT(CusValFldId[0], CusValFldId[1], IsuLogId)
                            break;
                           
                    }
                }  

            }

            function CustValidations(SrcType)
            {
                    var ExpMsg=""

                     Fun_Check_BatchSelection_SUBMIT(SrcType)
                    var CusValFunIdLst =document.getElementById("CustomValidFunTxt").value.substring(1)
                    var CusValFldIdLst =document.getElementById("CunstomValIdsTxt").value.substring(3)
                    var CusValFunIdArr =new Array()
                    var CusValFldIdArr =new Array()

                    CusValFunIdArr=CusValFunIdLst.split(",")
                    CusValFldIdArr = CusValFldIdLst.split("#*#")

                    var CtrlPrefix = LogFldPrefix
                    if (SrcType == '20') { CtrlPrefix='' }

                    for(var i=0;i<=CusValFunIdArr.length-1;i++)
                    {
                        var CusValFldId=new Array()
                        CusValFldId = CusValFldIdArr[i].split(",")
                        //alert(CusValFunIdArr[i] + ' ' + LogFldPrefix + CusValFldId[0] + ' ' + CusValFldId[1])
                        QAMS_SpecialValidations(CusValFunIdArr[i], CtrlPrefix + CusValFldId[0], CusValFldId[1], 0)
                    }

                   // return ExpMsg;
            }  	       
            
                 // Function Check AT Final Submition To Diaply Validation 
                function FinalValidationCheck(src,args)
                {
                    args.IsValid=true;
                    Page_IsValid=true;
                    var ErrerString=""

                 //   alert("EXpControlId=" + EXpControlId.join("AAA") + "   EXpControlId=" + EXpControlId.join("BBB") + "   ExpMessageArr=" + ExpMessageArr.join("CCCC")) 
                    for(var i=0;i<=EXpControlId.length-1;i++) //ExpMessageArr
                    {
                       if ( ExpMessageArr[i]!="") 
                        {
                          var CtrlIDArr=new Array()
                          var ExpMsgArr=new Array()
                          
                          CtrlIDArr=EXpControlId[i].split("#*#")
                          ExpMsgArr=ExpMessageArr[i].split("#*#")
                          
                          for(var j=0;j<=CtrlIDArr.length-1;j++)
                          {
                              //if (CtrlIDArr[j] != "")
                              if (ExpMsgArr[j] != "") ErrerString = ErrerString + ExpMsgArr[j] + "\n -"
                               
                          /*  {
                               var obj= document.getElementById("DT_" + CtrlIDArr[j])
                               if (obj!= null)
                               {
                                       var DataType= obj.value
                                       
                                       if (DataType==4)
                                       {
                                         var ItemsLen=document.getElementById(CtrlIDArr[j]).cells.length 
                                         var CheckFld
                                         for( var k=0;k<ItemsLen;k++)
                                         {
                                           if (document.getElementById(CtrlIDArr[j]+ "_" + k).checked == true)CheckFld=true
                                         }
                                         if(CheckFld!=true)ErrerString= ErrerString + ExpMsgArr[j] + "\n -" 
                                       }
                                       else if (DataType==8)
                                       {
                                         if (document.getElementById(CtrlIDArr[j] + ":CalDateVal").value =="")
                                            ErrerString= ErrerString + ExpMsgArr[j] + "\n -" 
                                       }
                                       else
                                       {
                                           // if (document.getElementById(CtrlIDArr[j]).value =="")
                                           if(ExpMsgArr[j]!="")
                                            ErrerString= ErrerString + ExpMsgArr[j] + "\n -" 
                                       }  
                                  }     
                            } */
                          }
                        }
                    }
                    //  alert(ErrerString)
                //  alert(ErrerString)
                     if(ErrerString!= "")
                     {
                      src.errormessage=ErrerString.substring(0,ErrerString.length-3)
                      args.IsValid=false;
                      Page_IsValid=false;
                     } 
                 }   
                 
             
             
              // ****End Of Custom Field Validations for EForm at OnSubmit******//
              

        
             // Custom Validation Function For Plan Proposal
             
              function Plan_Proposal()
              {
                        
                    var recary = new Array(); 
                    var xmlhttp;
                    
                    try
                    {
                        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                    }
                    catch(ex)
                    {
                        try 
                        {
                            xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
                        }
                        catch(ex)
                        {
                            try
                            {
                                xmlhttp=new XmlHttpRequest();
                            }
                            catch(ex)
                            {
                                alert("please update the webbrowser");
                            }
                        }
                    }
                    
                    xmlhttp.onreadystatechange=function()
                    {
                        if(xmlhttp.readystate==4)
                        {
                            var RtnStr="abc"
                            var ReturnArr =new Array()
                            RtnStr=xmlhttp.ResponseText
                            SetInchargegroup(RtnStr,Rowcnt)
                            
                        }
                    }  
                    
                    // These two field values are Mandatory  for any Request Type , bcz for work item plan we are saving issue reference 
                    var IssuedId =0
                    var IssuAulId=0
                    
                    // This field values are mandatry at RequestType=2
                    var FissId=0
                    var FissAulId=0
                    
                    // RequestType =1  Only Issue Login Plan Proposals
                    // RequestType =2  Only Work Items Plan Proposals
                    // RequestType =3   Both Issue And Work Item Plan proposals
                    var RequestType=0
                    
                    var url="../AutoWorkAllocation/WorkAllocationAndMailCFG.aspx?IssuedId=" + IssuedId +"&IssuAulId=" + IssuAulId +"&FissId="+ FissId +"&FissAulId=" + FissAulId
                    xmlhttp.open("POST",url,true);
                    xmlhttp.send(null);
                    
        }


     /* case 24: function to enable/disable 'Reference Permanent Change Control' field
        based on 'Change Control Regularization' at Temporary Change Control Closure Initiation
        function FUN_CC_REGULARIZATION(BaseId, CtrlId) {

           
            var SelectedVal = document.getElementById(BaseId + "_" + CtrlId).value

           
            // document.getElementById("FLDLBL_" + 17 + "_" + 11).className = "HideRow"  //Batch
            //  AddCutomValidator("", 2, 1)

            if (SelectedVal == "Regularized") {
               AddCutomValidator("Enter Value For: Reference Permanent Change Control", 104, 11)
               document.getElementById("FLDLBL_" + 104 + "_" + 11).className = "MainTD"

            }
            
            if (SelectedVal == "Partially Regularized") {
                AddCutomValidator("Enter Value For: Reference Permanent Change Control", 104, 11)
                document.getElementById("FLDLBL_" + 104 + "_" + 11).className = "MainTD"

            }
            if (SelectedVal == "Not Regularized") {
                // AddCutomValidator("Reference Permanent Change Control", 2, 1)
                document.getElementById("FLDLBL_" + 104 + "_" + 11).className = "HideRow"
                document.getElementById("FLDLBL_" + 104 + "_" + 11).setAttribute('disabled', 'disabled')

            }


        }*/


        /* case 24: function to enable/disable 'Reference Permanent Change Control' field
        based on 'Change Control Regularization' at Temporary Change Control Closure Initiation*/
        
        
        function FUN_CC_REGULARIZATION(BaseId, CtrlId) {

            var ExpMessage = ""
            var ExpCtrlID = ""
            
            var SelectedVal = document.getElementById(BaseId + "_" + CtrlId).value

            
            var NextFldBaseId = RefCapORCCNoArr[1] // Hear Give Next Fld base Id
            var NextFldCtrlId = RefCapORCCNoArr[2] // Hear Give Next Fld Ctrl Id 
            var ExpMsg = 'Select Value For: Reference CAPA / Change Control No. (if any)'   // Hear Give Next Fld Exp Messahe 

            document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).setAttribute("disabled", "disabled")
            document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "HideRow";
            
            if (SelectedVal == "Regularized" || SelectedVal == "Partially Regularized" )
             {
                document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).removeAttribute("disabled");
                document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "MainTD";

                if (document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).value == "")
                 {
                        ExpMessage = ExpMessage + ExpMsg + '#*#';
                        ExpCtrlID = (LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
                }
            }
         else if (SelectedVal == "Not Regularized") {
            document.getElementById("Value_" + LogFldPrefix +  NextFldBaseId + "_" + NextFldCtrlId).className = "HideRow";
            document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).value = ""      

            }
            
            var idStr = BaseId + '_' + CtrlId
            setExpMessage(ExpMessage, ExpCtrlID, idStr)

              
            


        }


        // Case 31 : Editable Attachment Decision

        function FUN_ISU_EDITATT_DECISION_ONLOAD(BaseId, CtrlId) {
            //document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_0").checked = true
            //FUN_ISU_CA_ACTION_PLAN_DECISION(LogFldPrefix + BaseId, CtrlId)
        }


    


        //Closed
        //calculation of Issue closure date at Issuelogin Registration Initiation

        function FN_SET_ISSUE_TARGET_DATE_ONLOAD() {

   
            if (LoginTransType == '1') {

                AjaxSetTargetDate(FormTypeid, 0, 20, "LoadingClsDate")
            }
           else if  ((LoginTransType == '2') ||(LoginTransType == '3')) {
             AjaxSetTargetDate(LoginAulid, 0, 25, "LoadingClsDate")
            }


        }

        function LoadingClsDate(duration) {
            var baseID = CloserDateFldIdAry[1];  //TargetDate Ids
            var controlID = CloserDateFldIdAry[2]; //TargetDate Ids

            //alert(duration)
            var dat = new Date();
            var display_date_cls = document.getElementById("FLD_" + baseID + "_" + controlID + "_CalDateDisplay");  //$("#FLD_" + baseID + "_" + controlID + "_CalDateDisplay")[0]
            var input_date_cls = document.getElementById("FLD_" + baseID + "_" + controlID + "_CalDateVal");
           input_date_cls.nextSibling.style.display='none'
           // alert(duration)
           dat = dat.addDays(duration);
            
           // alert(dat)
            //alert(dat.addDays(duration));
            var m = dat.getMonth() + 1;
 
           input_date_cls.value = GetLocalizedDate(m, dat.getDate(), dat.getFullYear(), display_date_cls);
           LoadLoginSettings() 
        }

        Date.prototype.addDays = function(days) {
            var dat = new Date(this.valueOf());
            dat.setDate(dat.getDate() + days);
            return dat;
        }

        function LoadLoginSettings() {
            var input_date_cls = document.getElementById("FLD_" + CloserDateFldIdAry[1] + "_" + CloserDateFldIdAry[2] + "_CalDateVal");
            input_date_cls.nextSibling.style.display = 'none'
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
                        if (InitDeptName == DepUqObj.options[j].text) {
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
                SOPObj.onclick = function() { FUN_ISU_EDITATT_DECISION(SOPObjRadioBtnIDAry[0] + '_' + SOPObjRadioBtnIDAry[1], SOPObjRadioBtnIDAry[2]); };
                FUN_ISU_EDITATT_DECISION(SOPObjRadioBtnIDAry[0] + '_' + SOPObjRadioBtnIDAry[1],  SOPObjRadioBtnIDAry[2])
            }
            
            
            // validatiopn For  Reference Filed at Page  Load 

            var RefObj = document.getElementById(ReferenceBtnID)
            if (RefObj != null) {
                // RefObj.attachEvent('onclick', FUN_ISU_REFERENCE_DECISION)  'FLD_CTLID,BASE ID  as arguments
                RefObj.onclick = function() { FUN_ISU_REFERENCE_DECISION(ReferenceObjRadioBtnIDAry[0] + '_' + ReferenceObjRadioBtnIDAry[1], ReferenceObjRadioBtnIDAry[2]); };
                FUN_ISU_REFERENCE_DECISION(ReferenceObjRadioBtnIDAry[0] + '_' + ReferenceObjRadioBtnIDAry[1],  ReferenceObjRadioBtnIDAry[2])
            }
            
            
//            // Code For Auto selection Of Location 
//            var LocationDDl=Ucodelevel0
            
            
         

        }
        
        
        function FUN_ISU_SECTION_SELECTION(BaseId, CtrlId)
        {
          var Locationobj = document.getElementById(Ucodelevel0)
          var Sectionobj=document.getElementById(SectionDDlID) 
          
          var  AvilabelSections=''
          var ExpMessage = ""
          var ExpCtrlID = ""
          var AvilableSections=''
          var Flag=0
          var LocationName=''
          
          var Ucode= document.getElementById("CodeTxt").value
          Ucode=Ucode.replace('PROV-','')
                    var UcodeArr= new Array()
          UcodeArr=Ucode.split('-')
          
          if  (Sectionobj != null) 
            {
               //var selIndexosLoc = Locationobj.selectedIndex
               //var LocationCode = Locationobj.options(selIndexosLoc).value
               //var LocationName = Locationobj.options(selIndexosLoc).text
               
               var LocationCode=UcodeArr[1]
               var selIndexosSec = Sectionobj.selectedIndex
               var Section = Sectionobj.options(selIndexosSec).value
               if (Section != "") {

                if (LocationCode=='AN') { AvilableSections='API';LocationName='Ankleshwer' }
                if (LocationCode=='AU') { AvilableSections='Formulation' ;LocationName='Aurangabad' }
                if (LocationCode=='DA') { AvilableSections='API' ;LocationName='Dabhasa' }
                if (LocationCode=='GO') { AvilableSections='Formulation'  ;LocationName='Goa'}
                if (LocationCode=='IN') { AvilableSections='API#*#Formulation#*#API & Formulation'  ;LocationName='Indore'}
                if (LocationCode=='JA') { AvilableSections='Formulation' ;LocationName='Jammu' }
                if (LocationCode=='MA') { AvilableSections='API#*#Formulation#*#API & Formulation' ;LocationName='Mandideep' }
                if (LocationCode=='NA') { AvilableSections='Formulation'  ;LocationName='Nagpur'}
                if (LocationCode=='PU') { AvilableSections='API#*#Formulation#*#API & Formulation' ;LocationName='Pune' }
                if (LocationCode=='TA') { AvilableSections='API'  ;LocationName='Tarapur' }
                if (LocationCode=='HO') { AvilableSections='API#*#Formulation#*#API & Formulation'  ;LocationName='HO'}


               var ExpMsg = 'Selected Division Does Not Exist In ' + LocationName + ' Location'
               
               
               
               // If More Plants Are there Add those Plants Hear 
               //if (LocationCode='XXXX') { AvilableSections='XXX#*#YYYY' }
               
                                           
                var AvilableSectionsArr= new Array();
                AvilableSectionsArr = AvilableSections.split('#*#');
                for (var i=0;i<AvilableSectionsArr.length ;i++)
                 {
                   if (AvilableSectionsArr[i]==Section ) {  Flag=1; } 
                 }
                 
                if (Flag==0)
                 {
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
            xmlhttp.onreadystatechange = function() {
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

        function AjaxReadPlanStatus(IssueId, PlanID, Isustatus, returnfunction) {
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
            xmlhttp.onreadystatechange = function() {
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
            var url = "../TestEFormExecution/ChangeIsuStatus.aspx?IssueId=" + IssueId + "&WrkAulId=" + 0 + "&Isustatus=" + Isustatus + "&PlanID=" + PlanID

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
            xmlhttp.onreadystatechange = function() {
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

        // eFORM Related Other Action Plan Proposal Function

        function FUN_EFORM_OA_ACTION_PLAN_DECISION_ONLOAD(BaseId, CtrlId) {
            //document.getElementById(BaseId + "_" + CtrlId + "_0").checked = true
        }

        function FUN_EFORM_OA_ACTION_PLAN_DECISION(BaseId, CtrlId) {
           if(TransType<3){
            var ExpMessage = ""
            var ExpCtrlID = ""

            var NextFldBaseId = BaseId.substring(6, BaseId.length)   // No need of chnage hear
            NextFldBaseId = parseInt(NextFldBaseId) + 1
            NextFldBaseId = BaseId.substring(0, 6) + NextFldBaseId

            var NextFldCtrlId = '24' // Hear Give Next Fld Ctrl Id
            var ExpMsg = 'Select Value For: Proposed Other Action plan(s)'   // Hear Give Next Fld Exp Messahe

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
            else //if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) 
            {
            
                document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
                document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

            }

            var idStr = BaseId + '_' + CtrlId
            setExpMessage(ExpMessage, ExpCtrlID, idStr)
           }
        }

        // Closed
        
        
       
        
        function FUN_DEV_EFORM_OA_ACTION_PLAN_DECISION(BaseId, CtrlId) {
           if(TransType<3){
            var ExpMessage = ""
            var ExpCtrlID = ""

            var NextFldBaseId = BaseId.substring(6, BaseId.length)   // No need of chnage hear
            NextFldBaseId = parseInt(NextFldBaseId) + 1
            NextFldBaseId = BaseId.substring(0, 6) + NextFldBaseId

            //var NextFldCtrlId = '52' // Hear Give Next Fld Ctrl Id
            var NextFldCtrlId = '60' // Hear Give Next Fld Ctrl Id
            var ExpMsg = 'Select Value For: Proposed Other Action plan(s)'   // Hear Give Next Fld Exp Messahe

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
            else //if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) 
            {
            
                document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
                document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

            }

            var idStr = BaseId + '_' + CtrlId
            setExpMessage(ExpMessage, ExpCtrlID, idStr)
         } //End of transtype
        }

        
        

        // Issue Login related Other Action Plan(s) Proposal

        function FUN_ISU_OA_ACTION_PLAN_DECISION_ONLOAD(BaseId, CtrlId) {
            //document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_0").checked = true
            //FUN_ISU_CA_ACTION_PLAN_DECISION(LogFldPrefix + BaseId, CtrlId)
        }


        function FUN_ISU_OA_ACTION_PLAN_DECISION(BaseId, CtrlId) {

       if(TransType<3){
            
            var ExpMessage = ""
            var ExpCtrlID = ""

            var NextFldBaseId = '54' // Hear Give Next Fld base Id 
            var NextFldCtrlId = '24' // Hear Give Next Fld Ctrl Id 
            var ExpMsg = 'Select Value For: Proposed Other Action Plan(s)'   // Hear Give Next Fld Exp Messahe 

            document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).setAttribute("disabled", "disabled")
            document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "HideRow";
            BaseId= BaseId.replace('FLD_' ,'')
  
            if (document.getElementById(LogFldPrefix +BaseId + "_" + CtrlId + "_0").checked == true) {
                document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).removeAttribute("disabled")
                document.getElementById("FLDLBL_" + NextFldBaseId + "_" + NextFldCtrlId).className = "MainTD";
                if (document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                    ExpMessage = ExpMessage + ExpMsg + '#*#';
                    ExpCtrlID = (LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
                }
            }
            else// if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true)
            {
                document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
                document.getElementById("Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")
            }

            var idStr = BaseId + '_' + CtrlId
            setExpMessage(ExpMessage, ExpCtrlID, idStr)
           }//End of Transtype
        }

        //Closed

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
                
                function AjaxUpdateBatch(IsuLogId,BatRelSts)
                {
                    
                     /* BatRelSts =1 Closure is mandatory
                        BatRelSts =2 Closure is not mandatory
                        BatRelSts=3 NotApplicable
                     */
                        var recary = new Array(); 
                      
                        var xmlhttp;
                        try
                        { 
                            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                        }
                        catch(ex)
                        {
                            try 
                            {
                                xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
                            }
                            catch(ex)
                            {
                                try
                                {
                                    xmlhttp=new XmlHttpRequest();
                                }
                                catch(ex)
                                {
                                    alert("please update the webbrowser");
                                }
                            }
                        }
                        xmlhttp.onreadystatechange=function()
                        {
                            if(xmlhttp.readystate==4)
                            {
                                var Time = "abc"
                                Time = xmlhttp.ResponseText
                                xmlhttp =null;
                            }
                        }
                        
                        var url="../TestEFormExecution/UpdateBatchStatus.aspx?IssueId=" +  IsuLogId + "&BatRelSts=" + BatRelSts 

                        xmlhttp.open("POST",url,true);
                        xmlhttp.send(null);
                  }
                  
                  
                  
                  // Function to raise effective ness plans at login intiation
            function Ajax_EffectnessMonitoring()
             {
               var recary = new Array(); 
              
                    var xmlhttp;
                    try
                    {
                        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                    }
                    catch(ex)
                    {
                        try 
                        {
                            xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
                        }
                        catch(ex)
                        {
                            try
                            {
                                xmlhttp=new XmlHttpRequest();
                            }
                            catch(ex)
                            {
                                alert("please update the webbrowser");
                            }
                        }
                    }
                    
                    xmlhttp.onreadystatechange=function()
                    {
                        if(xmlhttp.readystate==4)
                        {
                            var RtnStr="abc"
                            var ReturnArr =new Array()
                            RtnStr=xmlhttp.ResponseText
                            //document.Form1.submit ()
                                                     
                        }
                    }  
                    var url="../AutoWorkAllocation/WorkAllocationAndMailCFG.aspx?RequestType=4" 
                    xmlhttp.open("POST",url,true);
                    xmlhttp.send(null);
             }

            
        //To get the initiating department value
            function AjaxReadInitDeptValue(IsuLogID,TransType,SrcType)  
            {
                    var recary = new Array(); 
                    var xmlhttp;
                    try
                    {
                         xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                    }
                    catch(ex)
                    {
                        try 
                        {
                            xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
                        }
                        catch(ex)
                        {
                            try
                            {
                                 xmlhttp=new XmlHttpRequest();
                            }
                            catch(ex)
                            {
                                 alert("please update the webbrowser");
                            }
                        }
                    }

                    xmlhttp.onreadystatechange=function()
                    {
                        if(xmlhttp.readystate==4)
                        {
                            var RtnStr="abc"
                            var ReturnArr =new Array()
                            RtnStr=xmlhttp.ResponseText
                            SetDeptVal(RtnStr,TransType,SrcType)                     
                        }
                    }  
                    var url="../IssueLogin/AjaxInitDeptValue.aspx?IsuLogId=" + IsuLogID
                    xmlhttp.open("POST",url,true);
                    xmlhttp.send(null);
                    
                    
            }
            
            //To check the Effectiveness/Monitoring Plans Schedule status
            function AjaxReadEMPlanScheduleSts(IsuLogId,TransType,SrcType)
            {
                 var recary = new Array(); 
                    var xmlhttp;
                    try
                    {
                         xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                    }
                    catch(ex)
                    {
                        try 
                        {
                            xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
                        }
                        catch(ex)
                        {
                            try
                            {
                                 xmlhttp=new XmlHttpRequest();
                            }
                            catch(ex)
                            {
                                 alert("please update the webbrowser");
                            }
                        }
                    }

                    xmlhttp.onreadystatechange=function()
                    {
                        if(xmlhttp.readystate==4)
                        {
                            var RtnStr="abc"
                            var ReturnArr =new Array()
                            RtnStr=xmlhttp.ResponseText
                            SetEFMStatus(RtnStr,TransType,SrcType)                     
                        }
                    }  
                    var url="../IssueClosure/AjaxEFMScheduleStatus.aspx?IsuLogId=" + IsuLogId 
                    xmlhttp.open("POST",url,true);
                    xmlhttp.send(null);           
            
            }
           
            //To check the Effectiveness/Monitoring Plans status
                     
            function AjaxReadEMPlanStatus(ActionPlanId,returnfunction,returnParams)
            {
                var recary = new Array();
                var Time = "abc"
                var xmlhttp;
                try 
                {
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                catch (ex) 
                {
                    try 
                    {
                        xmlhttp = new ActiveXObject("MSxml2.XMLHTTP");
                    }
                    catch (ex)
                    {
                        try
                        {
                            xmlhttp = new XmlHttpRequest();
                        }
                        catch (ex)
                        {
                            alert("please update the webbrowser");
                        }
                    }
                }
                xmlhttp.onreadystatechange = function()
                 {
                    if (xmlhttp.readystate == 4)
                     {
                        Time = xmlhttp.ResponseText
                        xmlhttp = null;                       
                        setTimeout(returnfunction + "(" + "'" + Time  + "'" + "," + "'" + returnParams + "')", 0) 
                     }
                }       
               
                 var url="../PrsWorkFlow/AjaxReadPlanStatus.aspx?PlanId=" + ActionPlanId  + '&Type=1'
                xmlhttp.open("POST", url, true);
                xmlhttp.send(null);
        }
            
         //To Update Print Log
                     
            function AjaxUpdatePrintLog(IsuLogId,PrintRelTo,PrinterName,DriverName)
            {
                var recary = new Array();
                var Time = "abc"
                var xmlhttp;
                try 
                {
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                catch (ex) 
                {
                    try 
                    {
                        xmlhttp = new ActiveXObject("MSxml2.XMLHTTP");
                    }
                    catch (ex)
                    {
                        try
                        {
                            xmlhttp = new XmlHttpRequest();
                        }
                        catch (ex)
                        {
                            alert("please update the webbrowser");
                        }
                    }
                }
                xmlhttp.onreadystatechange = function()
                 {
                    if (xmlhttp.readystate == 4)
                     {
                        Time = xmlhttp.ResponseText
                        xmlhttp = null;                       
                     }
                }       
                var url="../CAPAWORKS/AjaxUpadtePrintLog.aspx?IsuLogId=" + IsuLogId +  "&PrintRelTo=" + PrintRelTo + '&PrinterName=' + PrinterName + '&DriverName=' + DriverName
                xmlhttp.open("POST", url, true);
                xmlhttp.send(null);
        }            
          
        

 
 // New Functions 


         // Fun_Check_BatchSelection
                             
                function Fun_Check_BatchSelection(SrcType)
                {
                  
                    var BatchAutID=''
                    var BatchAutIDArr= new Array()
                    var BatchSelID=''
                    var BatchAutvalArr = new Array()
                    var BatchSelvalArr = new Array()
                   
                    var ExpCtrlID='' 
                    var idStr=''
                    var ExpMessage=''
                   
                             
                     if(SrcType ==20) // At WorkItemApproval
                    {
                          BatchAutID='1_COL1213004014_52' 
                          var BatchAuthObj=document.getElementById(BatchAutID)
                          if (BatchAuthObj != null)
                          {
                              Ajax_CheckACPProsalStatus(document.getElementById("IssueLogIdTXt").value,BatchAutID,SrcType);
                          }
                    
                     } // SrcType ==20
                     
                       
                     if(SrcType ==2) // At Issue LCosure
                    {
                          //BatchAutID='FLD_80_61'
                          BatchAutID='FLD_104_56' 
                          var BatchAuthObj=document.getElementById(BatchAutID)
                          if (BatchAuthObj != null  )
                          {
                             if (document.getElementById("BTN_FLD_104").disabled == false)
                             {
                              Ajax_CheckACPProsalStatus(document.getElementById("IssLogId").value,BatchAutID,SrcType);
                             } 
                              
                          }
                     } 
                     
                  
                }// end of  Function
                
                
                 function Fun_Check_BatchSelection_SUBMIT(SrcType)
                {
                
                   var  ApproveBtnObj =document.getElementById("Approve")
                   var ValidateFlag =0
                   if (ApproveBtnObj != null)
                   {
                     if (document.getElementById("Approve_1").checked== true)
                     {
                       ValidateFlag=1;
                     }
                   }
                   
                   if (ValidateFlag == 0)
                   {
                  
                        var BatchAutID=''
                        var BatchAutIDArr= new Array()
                        var BatchSelID=''
                        var LotSelID=''
                        var BatchAutvalArr = new Array()
                        var BatchSelvalArr = new Array()
                        
                        var ExpCtrlID='' 
                        var idStr=''
                        var ExpMessage=''
                        var BAtchValidtion=0
                             
                        if(SrcType ==1) // At  issue Login Approval Cycle
                        {
                        
                          BatchAutID='FLD_95_52'
                          BatchSelID='FLD_60_29'
                          LotSelID='FLD_61_30'
                          
                          // Lot id Should be aDDED 
                          BatchAutIDArr=BatchAutID.split('_');
                          LotSelvalArr=LotSelID.split('_');
                          
                          
                          var BatchSelObj=document.getElementById(BatchSelID)
                          var BatchAuthObj=document.getElementById(BatchAutID)
                          var LotSelObj=document.getElementById(LotSelID)
                          
                         var BAtchSelCnt=0
                          
                          if (BatchSelObj != null )
                          {
                             if (BatchSelObj.value != '') { BAtchSelCnt=1; BatchSelvalArr.push(BatchSelObj.value.split(',')) }
                          }
                          
                          if (LotSelObj != null )
                          {
                           if (LotSelObj.value != '') { BAtchSelCnt=1; BatchSelvalArr.push(LotSelObj.value.split(',')) }
                          
                          }
                      
                      
                          if (BAtchSelCnt==1 && BatchAuthObj != null)
                          {
                            ExpCtrlID=BatchAutID 
                            idStr=BatchAutID
                            
                            if ( (BatchAuthObj.value == '') && (document.getElementById("BTN_" + BatchAutIDArr[0] + '_' + BatchAutIDArr[1]).disabled == false))
                              {
                                  var r = confirm("Decision On Selected Batch(s) Is Pending  \n Still To Continue Click Ok ");
                                  if (r != true)  {ExpMessage="Select Value For: Batch Release Control " } ;
                                   
                              }
                              
                             else if ( (BatchAuthObj.value != '') && (document.getElementById("BTN_" + BatchAutIDArr[0] + '_'  + BatchAutIDArr[1]).disabled == false))
                                  {
                                        BatchAutvalArr=BatchAuthObj.value.split(',')
                                        if (BatchSelvalArr.length != BatchAutvalArr.length )
                                        {
                                           var r = confirm("Decision On Selected Batch(s) Is Pending  \n Still To Continue Click Ok ");
                                           if (r != true)  { BAtchValidtion=1;ExpMessage="Selecct Value For: Batch Status Authorization " } ;
                                        }
                                       
                                }
                              
                                  
                          }
                      
                      
                         } // SrcType ==1
                     
                     
                             var ValueArr = new Array()
                             
                             
                             if (SrcType ==20)  // At WorkItemApproval
                            {
                            
                                  BatchAutID='1_COL1213004014_52' //'1_COL1113009012_54'
                                  var BatchAuthObj=document.getElementById(BatchAutID)
                                  
                                  if (BatchAuthObj != null)
                                  {
        //                            if (document.getElementById("BTN_1_COL1213004014").disabled == false)
        //                            {
                                     if (BatchStatus >0)
                                     {
                                        ExpCtrlID=BatchAutID 
                                        idStr=BatchAutID
                                        if  (BatchAuthObj.value != '')
                                        {
                                           ValueArr=BatchAuthObj.value.split(',')
                                           var CalCnt =ValueArr.length
                                           if (BatchStatus != CalCnt)
                                             ExpMessage="Select Value For: Batch Status Authorization "
                                        }
                                        else
                                        {
                                          ExpMessage="Select Value For: Batch Release Control"
                                        }
                                     }
                                    //}  
                                  }
                            
                             } // SrcType ==20
                             
                               
                             if(SrcType ==2) // At Issue LCosure
                            {
                                  BatchAutID='FLD_104_56' 
                                  var BatchAuthObj=document.getElementById(BatchAutID)
                                  
                                  if (BatchAuthObj != null)
                                  {
                                  
                                    if (document.getElementById("BTN_FLD_104").disabled == false)
                                    {
                                         if (BatchStatus >0)
                                         {
                                            ExpCtrlID=BatchAutID 
                                            idStr=BatchAutID
                                            if  (BatchAuthObj.value != '')
                                            {
                                              ValueArr=BatchAuthObj.value.split(',')
                                               var CalCnt =ValueArr.length
                                               if (BatchStatus != CalCnt)
                                                 ExpMessage="Select Value For: Batch Release Control"
                                            }
                                            else
                                            {
                                              ExpMessage="Select Value For: Batch Release Control"
                                            }
                                         }
                                    }  
                                  }
                            
                             } // SrcType ==2
                             
                             
                     
                     setExpMessage(ExpMessage, ExpCtrlID, idStr)                     
                    } 
                     
                  
                }// end of  Function
                
                
                
                
                
                  // Ajax Function To Check Action Plan Proposals  At QA Decision 
              
              function Ajax_CheckACPProsalStatus(IssuelogId,FldID,SrcType)
              {
                        
                    var recary = new Array();
                var Time = "abc"
                var xmlhttp;
                try 
                {
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                catch (ex) 
                {
                    try 
                    {
                        xmlhttp = new ActiveXObject("MSxml2.XMLHTTP");
                    }
                    catch (ex)
                    {
                        try
                        {
                            xmlhttp = new XmlHttpRequest();
                        }
                        catch (ex)
                        {
                            alert("please update the webbrowser");
                        }
                    }
                }
                xmlhttp.onreadystatechange = function()
                 {
                    if (xmlhttp.readystate == 4)
                     {
                        Time = xmlhttp.ResponseText
                        xmlhttp = null;   
                        if (Time =='')  { Time=0 }
                        
                        var ExpMessage='';
                        if (Time >0){ BatchStatus=Time }
                        else { BatchStatus=0 }
                     }
                }       
                var url="../PrsWorkFlow/AjaxReadPlanStatus.aspx?IssuelogId=" + IssuelogId  + '&Type=2&SrcType=' + SrcType
                xmlhttp.open("POST", url, true);
                xmlhttp.send(null);
              }      

        
        
        function ReadSchRptDoc(BaseID,CtrlID)
        {
          Ajax_ReadSchRptDoc(0,BaseID,CtrlID)
        }
        
        function Ajax_ReadSchRptDoc(FissId,BaseID,CtrlID)
        {
               var recary = new Array();
                var Time = "abc"
                var xmlhttp;
                try 
                {
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                catch (ex) 
                {
                    try 
                    {
                        xmlhttp = new ActiveXObject("MSxml2.XMLHTTP");
                    }
                    catch (ex)
                    {
                        try
                        {
                            xmlhttp = new XmlHttpRequest();
                        }
                        catch (ex)
                        {
                            alert("please update the webbrowser");
                        }
                    }
                }
                xmlhttp.onreadystatechange = function()
                 {
                    if (xmlhttp.readystate == 4)
                     {
                        Time = xmlhttp.ResponseText
                        xmlhttp = null; 
                        SetSCHRptDcoVAL(Time)  
                     }
                }       
                var url="../PrsWorkFlow/AjaxReadPlanStatus.aspx?FissId=" + FissId  + '&Type=3'
                xmlhttp.open("POST", url, true);
                xmlhttp.send(null);
          
        }
        
        
        function SetSCHRptDcoVAL(DocValue)
        {
          if(DocValue!='') {
          
          var DocValueArr=new Array()
          DocValueArr=DocValue.split("#*#")
          
          document.getElementById(UParam).value=DocValue ;
          document.getElementById("File_"+UParam).innerHTML=DocValue[1] + '; '; //DocDesc.replace("$@$","; ") ;
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
            xmlhttp.onreadystatechange = function() {
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
