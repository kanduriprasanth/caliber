// JScript File

  var ExpMessageArr=new  Array()
  var ExpMsgIdArr=new Array()
  var EXpControlId =new Array()
  var WrkAllExpMsg =""
  var LogFldPrefix='FLD_'

// **** Special Validations ******//


        function QAMS_SpecialValidations(functionid,BaseId,CtrlId,IssueID)
        {
            switch (parseInt(functionid))
            {
                
                case 1 :FUN_DI_DEPT_VALIDATION(BaseId,CtrlId)
                break;
                case 2 :FUN_DI_EVENT_VALIDATION(BaseId,CtrlId)
                break;
                case 6 :FUN_DI_PROB_REASON_VALIDATION(BaseId,CtrlId)
                break;
                case 9: FUN_ISU_CA_ACTION_PLAN_DECISION(BaseId, CtrlId)
                break;
                case 10: FUN_ISU_PA_ACTION_PLAN_DECISION(BaseId, CtrlId)
                break;
//              case 18 :FUN_DI_ACT_PLAN_DECISION(BaseId,CtrlId)
//                break;
                case 19 : FUN_CC_RA_DECISION (BaseId,CtrlId)
                    break;
                case 20: FUN_CC_QA_DECISION(BaseId, CtrlId)
                    break;
                case 21: FUN_CC_CHANGERELATEDTO(BaseId, CtrlId)
                    break;
                
                case 7: FUN_DEV_CAPA_DEPENDENCY(BaseId,CtrlId)
                    break;
                case 8: FUN_DEV_BATCH_RELEASE(BaseId, CtrlId, IssueID)
                    break;
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

              }
          }   
          
       //case 1:
      
      // Commen Function For Any process
      function FUN_DI_DEPT_VALIDATION(BaseId,CtrlId)
       {
           var obj = document.getElementById("Ucodelevel1")
           var obj1 = document.getElementById("FLD_14_30")
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
           
    //  ************** Lupin -Deviation Process   Custom Field Validation   ******************
            
        /*   Case 2:  EventRelated To  Validation At Issue Login 
        If Fields Are change Then chage ter ids and controlids and revlevent exep message , for new fields also same 
        Fields Type 1 - For Product / Material  Event Type , 3- For Document Type , 4 - For Equipment Related Type ,5- other Details 
        */

       function UcodeDeptCheck() {
           var ExpMessage = ""
           var ExpCtrlID = ""

           var obj = document.getElementById("Ucodelevel1")
           var obj1 = document.getElementById("FLD_14_30")
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

        function FUN_DI_EVENT_VALIDATION(BaseId,CtrlId)
        {
            UcodeDeptCheck()
            AddCutomValidator("Select Value For: Market", 127, 89) 
        
           var EventRelTo = document.getElementById(BaseId + "_" + CtrlId).value
            
          document.getElementById("FLDLBL_" + 137 + "_" + 94).className = "HideRow"  //Prodcut
          document.getElementById("FLDLBL_" + 138 + "_" + 100).className = "HideRow"  //Batch
          document.getElementById("FLDLBL_" + 139 + "_" + 95).className = "HideRow"  //Material
          document.getElementById("FLDLBL_" + 140 + "_" + 101).className = "HideRow"  //Lot
          document.getElementById("FLDLBL_" + 92 + "_" + 73).className = "HideRow"  //System
          document.getElementById("FLDLBL_" + 141 + "_" + 99).className = "HideRow"  // Equipment
              document.getElementById("FLDLBL_" + 19 + "_" + 11).className = "HideRow"  // Others
              AddCutomValidator("", 137, 94)
              AddCutomValidator("", 138, 100)
              AddCutomValidator("", 139, 95)
              AddCutomValidator("", 140, 101)
              AddCutomValidator("", 92, 73)
              AddCutomValidator("", 141, 99)
              AddCutomValidator("", 19, 11)
              
              if (EventRelTo == "Product") {
                  AddCutomValidator("Select Value For: Product", 137, 94)
                  document.getElementById("FLDLBL_" + 137 + "_" + 94).className = "MainTD"
                  AddCutomValidator("Enter Value For: Batch No(s)", 138, 100)
                  document.getElementById("FLDLBL_" + 138 + "_" + 100).className = "MainTD"
              }
              if (EventRelTo == "Material") {
                  AddCutomValidator("Select Value For: Material", 139, 95)
                  document.getElementById("FLDLBL_" + 139 + "_" + 95).className = "MainTD"
                  AddCutomValidator("Enter Value For: Lot No(s)", 140, 101)
                  document.getElementById("FLDLBL_" + 140 + "_" + 101).className = "MainTD"
              }
              if (EventRelTo == "System") {
                  AddCutomValidator("Enter Value For: System", 92, 73)
                  document.getElementById("FLDLBL_" + 92 + "_" + 73).className = "MainTD"


              }
              if (EventRelTo == "Equipment") {
                  AddCutomValidator("Enter Value For: Equipment", 141, 99)
                  document.getElementById("FLDLBL_" + 141 + "_" + 99).className = "MainTD"

              }
              if (EventRelTo == "Others") {
                  AddCutomValidator("Enter Value For: Other Details", 19, 11)
                  document.getElementById("FLDLBL_" + 19 + "_" + 11).className = "MainTD"

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
          var DetailsFldId = BaseId.substring(6, BaseId.length)
         // alert(DetailsFldId)
          DetailsFldId = parseInt(DetailsFldId) + 1  
         // alert(BaseId + "_" + CtrlId + "_1")
            if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked==true)
            {
                if (document.getElementById(BaseId.substring(0,6) + DetailsFldId + "_11").value=="")
                {  ExpMessage= ExpMessage + "Enter  Details If Not Approved" + '#*#' ;
                   ExpCtrlID=ExpCtrlID + (BaseId.substring(0,6) + DetailsFldId + "_11") + '#*#' 
                }
            }   
            
            var idStr=BaseId + '_' + CtrlId
            setExpMessage(ExpMessage,ExpCtrlID,idStr)
        }

        function FUN_CC_QA_DECISION(BaseId, CtrlId) {
            var ExpMessage = ""
            var ExpCtrlID = ""
            var DetailsFldId = BaseId.substring(6, BaseId.length)
            // alert(DetailsFldId)
            DetailsFldId = parseInt(DetailsFldId) + 1
             if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) {
                if (document.getElementById(BaseId.substring(0, 6) + DetailsFldId + "_11").value == "") {
                    ExpMessage = ExpMessage + "Enter  Details If Not Approved" + '#*#';
                    ExpCtrlID = ExpCtrlID + (BaseId.substring(0, 6) + DetailsFldId + "_11") + '#*#'
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

           //var CA_Text = dcument.getElementById("1_COL0213008005_70").value
           //alert(CA_Text)
           //alert(QADecision)
           if (QADecision == 'Not Mandatory/Not Applicable') 
           {   AjaxChangeIssueStatus(IssueID,0,5)
            //  AjaxChangeIssueStatus(IssueID, 0, 2)
                
           }
          // if (QADecision== 'Not Applicable')
           //{   
             //  AjaxChangeIssueStatus(IssueID, 0, 2)

           //}
           if (QADecision == 'Mandatory') {
               AjaxChangeIssueStatus(IssueID, 0, 4)
               var RM_Text = document.getElementById("1_COL0213008003_88").value
               var CA_Text = document.getElementById("1_COL0213008005_70").value
               var PA_Text = document.getElementById("1_COL0213008007_71").value
               var OA_Text = document.getElementById("1_COL0213008013_104").value
               if (RM_Text == '' && CA_Text == '' && PA_Text == '' && OA_Text == '') {
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
         
            //AjaxChangeIssueStatus(IssueID, 0, 4)
            if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) {
                AjaxChangeIssueStatus(IssueID, 0, 2)
            } else {
            AjaxChangeIssueStatus(IssueID, 0, 4)
            var RM_Text = document.getElementById("1_COL0213013003_88").value
            var CA_Text = document.getElementById("1_COL0213013005_70").value
            var PA_Text = document.getElementById("1_COL0213013007_71").value
            var OA_Text = document.getElementById("1_COL0213013012_104").value
            if (RM_Text == '' && CA_Text == '' && PA_Text == '' && OA_Text == '') {
                AjaxChangeIssueStatus(IssueID, 0, 6)
            }  
            }
      }
      function FUN_CC_QA_DECISION_ON_SUBMIT(BaseId, CtrlId, IssueID) {
          if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) {
              AjaxChangeIssueStatus(IssueID, 0, 2)
              
          } else {
          AjaxChangeIssueStatus(IssueID, 0, 4)
          var RM_Text = document.getElementById("1_COL0213011003_88").value
          var OA_Text = document.getElementById("1_COL0213011005_77").value
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
          if (document.getElementById(FldID).value == "") {
              ExpMessage = ExpMessage + ExpMsg + '#*#';
              ExpCtrlID = FldID + '#*#'
          }

      //  alert(ExpMessage)
          setExpMessage(ExpMessage, ExpCtrlID, FldID)
      }

      function FUN_CC_CHANGERELATEDTO(BaseId, CtrlId) {
          UcodeDeptCheck()
          AddCutomValidator("Select Value For: Market", 127, 89)
          AddCutomValidator("Select Value For: Change Related To", 7, 8)
                           
          var ChangeRelatedToValue = document.getElementById(LogFldPrefix + 7 + "_" + 8).value
          var ChangeRelatedToAry = new Array()
          ChangeRelatedToAry = ChangeRelatedToValue.split(";")
          //Product; Material; Equipment; Document; Facility; Others

          document.getElementById("FLDLBL_" + 137 + "_" + 94).className = "HideRow"

          document.getElementById("FLDLBL_" + 139 + "_" + 95).className = "HideRow"
          document.getElementById("FLDLBL_" + 141 + "_" + 99).className = "HideRow"
          document.getElementById("FLDLBL_" + 5 + "_" + 5).className = "HideRow"
          document.getElementById("FLDLBL_" + 128 + "_" + 91).className = "HideRow"
          document.getElementById("FLDLBL_" + 81 + "_" + 11).className = "HideRow"

          AddCutomValidator("", 137, 94)
          AddCutomValidator("", 139,95)
          AddCutomValidator("", 141, 99)
          AddCutomValidator("", 5, 5)
          AddCutomValidator("", 128, 91)
          AddCutomValidator("", 81, 11)
           
          for (i = 0; i < ChangeRelatedToAry.length; i++) {
              ChangeRelatedToAry[i]=trim(ChangeRelatedToAry[i])
              if (ChangeRelatedToAry[i] == "Product") {
                  AddCutomValidator("Select Value For: Product", 137, 94)
                  document.getElementById("FLDLBL_" + 137 + "_" + 94).className = "MainTD" 
              }
              if (ChangeRelatedToAry[i] == "Material") {
                  AddCutomValidator("Select Value For: Material", 139, 95)
                  document.getElementById("FLDLBL_" + 139 + "_" + 95).className = "MainTd"

              }
              if (ChangeRelatedToAry[i] == "Equipment") {
                  AddCutomValidator("Select Value For: Equipment", 141, 99)
                  document.getElementById("FLDLBL_" + 141 + "_" + 99).className = "MainTd"

              }
              if (ChangeRelatedToAry[i] == "Document") {
                  AddCutomValidator("Enter Value For: Document", 5, 5)
                  document.getElementById("FLDLBL_" + 5 + "_" + 5).className = "MainTd"

              }
              if (ChangeRelatedToAry[i] == "Facility") {
                  AddCutomValidator("Enter Value For: Facility", 128, 91)
                  document.getElementById("FLDLBL_" + 128 + "_" + 91).className = "MainTd"

              }
              if (ChangeRelatedToAry[i] == "Others") {
                  AddCutomValidator("Enter Value For: Others", 81, 11)
                  document.getElementById("FLDLBL_" + 81 + "_" + 11).className = "MainTd"

              }
          }
          AddCutomValidator("Select Value For: Market", 127, 89)

        /*  var MarketID = "FLD_127_89"
          var MarketCtrlId = 89
          var MarketExpMessage = ""
          var MarketExpCtrlID = ""
          if (document.getElementById(MarketID).value == "") {
              MarketExpMessage = "Select Value For: Market" + '#*#';
              MarketExpCtrlID = MarketID + '#*#'
          }


          var MarketidStr = MarketID// MarketID + '_' + CtrlId

          setExpMessage(MarketExpMessage, MarketExpCtrlID, MarketidStr)
          */
      }
      
      // Issue Login related Corrective Action Plan(s) Proposal

      function FUN_ISU_CA_ACTION_PLAN_DECISION_ONLOAD(BaseId, CtrlId) {
         //document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_0").checked = true
         //FUN_ISU_CA_ACTION_PLAN_DECISION(LogFldPrefix + BaseId, CtrlId)
      }


      function FUN_ISU_CA_ACTION_PLAN_DECISION(BaseId, CtrlId) {

         // alert('FUN_ISU_CA_ACTION_PLAN_DECISION')
          var ExpMessage = ""
          var ExpCtrlID = ""

          var NextFldBaseId = '85' // Hear Give Next Fld base Id 
          var NextFldCtrlId = '70' // Hear Give Next Fld Ctrl Id 
          var ExpMsg = 'Select Value For: Proposed Corrective Action plan(s)'   // Hear Give Next Fld Exp Messahe 

          if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
              document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).removeAttribute("disabled")
              if (document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                  ExpMessage = ExpMessage + ExpMsg + '#*#';
                  ExpCtrlID = (LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
              }
          }
          else// if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true)
           {
              document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).setAttribute("disabled", "disabled")
              document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
              document.getElementById("Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

          }

          var idStr = BaseId + '_' + CtrlId
          setExpMessage(ExpMessage, ExpCtrlID, idStr)
      }

            
           
      
      //Closed


      // Issue Login related Preventive Action Plan(s) Proposal

      function FUN_ISU_PA_ACTION_PLAN_DECISION_ONLOAD(BaseId, CtrlId) {
          //document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_0").checked = true
          //FUN_ISU_PA_ACTION_PLAN_DECISION(LogFldPrefix + BaseId, CtrlId)
      }



      function FUN_ISU_PA_ACTION_PLAN_DECISION(BaseId, CtrlId) {
        //  alert('FUN_ISU_PA_ACTION_PLAN_DECISION')
          var ExpMessage = ""
          var ExpCtrlID = ""

          var NextFldBaseId = '86' // Hear Give Next Fld base Id 
          var NextFldCtrlId = '71' // Hear Give Next Fld Ctrl Id 
          var ExpMsg = 'Select Value For: Proposed Preventive Action plan(s)'   // Hear Give Next Fld Exp Messahe 

          if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
              document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).removeAttribute("disabled")
              if (document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                  ExpMessage = ExpMessage + ExpMsg + '#*#';
                  ExpCtrlID = (LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
              }
          }
          else// if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true)
           {
              document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).setAttribute("disabled", "disabled")
              document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
              document.getElementById("Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

          }

          var idStr = BaseId + '_' + CtrlId
          setExpMessage(ExpMessage, ExpCtrlID, idStr)
      }


      //Closed


      // Issue Login - CC Action Plan(s) Proposal

      function FUN_CC_ISU_ACTION_PLAN_DECISION_ONLOAD(BaseId, CtrlId) {
         // document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_0").checked = true
      }



      function FUN_CC_ISU_ACTION_PLAN_DECISION(BaseId, CtrlId) {
          var ExpMessage = ""
          var ExpCtrlID = ""

          var NextFldBaseId = '100' // Hear Give Next Fld base Id 
          var NextFldCtrlId = '62' // Hear Give Next Fld Ctrl Id 
          var ExpMsg = 'Select Value For: Proposed Action plan(s)'   // Hear Give Next Fld Exp Messahe 

          if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
              document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).removeAttribute("disabled")
              if (document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                  ExpMessage = ExpMessage + ExpMsg + '#*#';
                  ExpCtrlID = (LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
              }
          }
          else if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) {
              document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).setAttribute("disabled", "disabled")
              document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
              document.getElementById("Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

          }

          var idStr = BaseId + '_' + CtrlId
          setExpMessage(ExpMessage, ExpCtrlID, idStr)
      }


      //Closed


      // Issue Login related Investigation Action Plan Related Function         
         
          
      
        
         function FUN_DEV_INV_ACTION_PLAN_DECISION_ONLOAD(BaseId,CtrlId)
         {
            // document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_0").checked = true
             //FUN_DEV_INV_ACTION_PLAN_DECISION(LogFldPrefix + BaseId, CtrlId)
         }
         
          
           function FUN_DEV_INV_ACTION_PLAN_DECISION(BaseId,CtrlId) {
             //  alert('FUN_DEV_INV_ACTION_PLAN_DECISION')
           
                var ExpMessage=""
                var ExpCtrlID=""
                
                var NextFldBaseId= 122 // Hear Give Next Fld base Id 
                var NextFldCtrlId=85  // Hear Give Next Fld Ctrl Id 
                var ExpMsg= 'Select Value For: Investigation'  // Hear Give Next Fld Exp Messahe 
              ///  alert(document.getElementById(BaseId + "_" + CtrlId + "_0").checked)
                if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked==true)
                {
                   document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId ).removeAttribute("disabled")
                   
                   if (document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).value=="")
                    {  ExpMessage=  ExpMessage + ExpMsg + '#*#' ;
                       ExpCtrlID= (LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId ) + '#*#' 
                    }
                } 
                else  //if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked==true)
                {
                  document.getElementById( "BTN_" + LogFldPrefix + NextFldBaseId ).setAttribute("disabled","disabled") 
                  document.getElementById( LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId ).setAttribute("value","")
                   document.getElementById( "Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId ).setAttribute("className","HideRow")
                }

                var idStr=BaseId + '_' + CtrlId
                setExpMessage(ExpMessage,ExpCtrlID,idStr)
             
           }

           // Closed



           // eFORM Related Functions for Action Plan Proposal(s)

           // eFORM Related Corrective Action Plan Proposal Function
          
           function FUN_EFORM_CA_ACTION_PLAN_DECISION_ONLOAD(BaseId, CtrlId) {
               //document.getElementById(BaseId + "_" + CtrlId + "_0").checked = true
           }

           function FUN_EFORM_CA_ACTION_PLAN_DECISION(BaseId, CtrlId) {
               var ExpMessage = ""
               var ExpCtrlID = ""

               var NextFldBaseId = BaseId.substring(6, BaseId.length)   // No need of chnage hear
               NextFldBaseId = parseInt(NextFldBaseId) + 1
               NextFldBaseId = BaseId.substring(0, 6) + NextFldBaseId

               var NextFldCtrlId = '70' // Hear Give Next Fld Ctrl Id
               var ExpMsg = 'Select Value For: Proposed Corrective Action plan(s)'   // Hear Give Next Fld Exp Messahe

               if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
                   document.getElementById("BTN_" + NextFldBaseId).removeAttribute("disabled")
                   if (document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                       ExpMessage = ExpMessage + ExpMsg + '#*#';
                       ExpCtrlID = (NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
                   }
               }
               else if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) {
                   document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")
                   document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
                   document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

               }

               var idStr = BaseId + '_' + CtrlId
               setExpMessage(ExpMessage, ExpCtrlID, idStr)
           }

           // Closed



           // eFORM Related Preventive Action Plan Proposal Function

           function FUN_EFORM_PA_ACTION_PLAN_DECISION_ONLOAD(BaseId, CtrlId) {
               //document.getElementById(BaseId + "_" + CtrlId + "_0").checked = true
           }

           function FUN_EFORM_PA_ACTION_PLAN_DECISION(BaseId, CtrlId) {
               var ExpMessage = ""
               var ExpCtrlID = ""

               var NextFldBaseId = BaseId.substring(6, BaseId.length)   // No need of chnage hear
               NextFldBaseId = parseInt(NextFldBaseId) + 1
               NextFldBaseId = BaseId.substring(0, 6) + NextFldBaseId

               var NextFldCtrlId = '71' // Hear Give Next Fld Ctrl Id
               var ExpMsg = 'Select Value For: Proposed Preventive Action plan(s)'   // Hear Give Next Fld Exp Messahe

               if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
                   document.getElementById("BTN_" + NextFldBaseId).removeAttribute("disabled")
                   if (document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                       ExpMessage = ExpMessage + ExpMsg + '#*#';
                       ExpCtrlID = (NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
                   }
               }
               else if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) {
                   document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")
                   document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
                   document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

               }

               var idStr = BaseId + '_' + CtrlId
               setExpMessage(ExpMessage, ExpCtrlID, idStr)
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
               
               //NextFldBaseId='1_COL0213008003'
               var NextFldCtrlId = '88' // Hear Give Next Fld Ctrl Id
               var ExpMsg = 'Select Value For: Quality Risk Management'   // Hear Give Next Fld Exp Messahe
               
               if (document.getElementById(BaseId + "_" + CtrlId).value== 'Major') {
               //document.getElementById("BTN_" + NextFldBaseId).removeAttribute("disabled")
                   if (document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                   ExpMessage = ExpMessage + ExpMsg + '#*#';
                   ExpCtrlID = (NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
                   }
                }  
               /*else if (document.getElementById(BaseId + "_" + CtrlId).value == 'Minor')
                {
                    document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")
               document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
               document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

               }*/

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
               var NextFldCtrlId = '88' // Hear Give Next Fld Ctrl Id
               var ExpMsg = 'Select Value For: Quality Risk Management'   // Hear Give Next Fld Exp Messahe


               if (document.getElementById(BaseId + "_" + CtrlId).value == 'Critical') {
                   //document.getElementById("BTN_" + NextFldBaseId).removeAttribute("disabled")
                   if (document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                       ExpMessage = ExpMessage + ExpMsg + '#*#';
                       ExpCtrlID = (NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
                   }
               }
               if (document.getElementById(BaseId + "_" + CtrlId).value == 'Major') {
                   //document.getElementById("BTN_" + NextFldBaseId).removeAttribute("disabled")
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
               var ExpMessage = ""
               var ExpCtrlID = ""

               var NextFldBaseId = BaseId.substring(6, BaseId.length)   // No need of chnage hear
               NextFldBaseId = parseInt(NextFldBaseId) + 1
               NextFldBaseId = BaseId.substring(0, 6) + NextFldBaseId

               var NextFldCtrlId = '76' // Hear Give Next Fld Ctrl Id
               var ExpMsg = 'Select Value For: Proposed Action Plan(s)'   // Hear Give Next Fld Exp Messahe

               if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
                   document.getElementById("BTN_" + NextFldBaseId).removeAttribute("disabled")
                   if (document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                       ExpMessage = ExpMessage + ExpMsg + '#*#';
                       ExpCtrlID = (NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
                   }
               }
               else if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) {
                   document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")
                   document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
                   document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

               }

               var idStr = BaseId + '_' + CtrlId
               setExpMessage(ExpMessage, ExpCtrlID, idStr)
           }

           // Closed


           // eFORM Related QA - Action Plan Proposal Function

           function FUN_CC_QA_ACTION_PLAN_DECISION_ONLOAD(BaseId, CtrlId) {
               //document.getElementById(BaseId + "_" + CtrlId + "_0").checked = true
           }

           function FUN_CC_QA_ACTION_PLAN_DECISION(BaseId, CtrlId) {
               var ExpMessage = ""
               var ExpCtrlID = ""

               var NextFldBaseId = BaseId.substring(6, BaseId.length)   // No need of chnage hear
               NextFldBaseId = parseInt(NextFldBaseId) + 1
               NextFldBaseId = BaseId.substring(0, 6) + NextFldBaseId

               var NextFldCtrlId = '77' // Hear Give Next Fld Ctrl Id
               var ExpMsg = 'Select Value For: Proposed Action Plan(s)'   // Hear Give Next Fld Exp Messahe

               if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
                   document.getElementById("BTN_" + NextFldBaseId).removeAttribute("disabled")
                   if (document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                       ExpMessage = ExpMessage + ExpMsg + '#*#';
                       ExpCtrlID = (NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
                   }
               }
               else if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) {
                   document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")
                   document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
                   document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

               }

               var idStr = BaseId + '_' + CtrlId
               setExpMessage(ExpMessage, ExpCtrlID, idStr)
           }

           // Closed

           // eForm related CAPA-QRM Decision

           function FUN_CAPA_QRM_ACTION_PLAN_DECISION_ONLOAD(BaseId, CtrlId) {
               //document.getElementById(BaseId + "_" + CtrlId + "_0").checked = true
           }

           function FUN_CAPA_QRM_ACTION_PLAN_DECISION(BaseId, CtrlId) {
               var ExpMessage = ""
               var ExpCtrlID = ""

               var NextFldBaseId = BaseId.substring(6, BaseId.length)   // No need of chnage hear
               NextFldBaseId = parseInt(NextFldBaseId) + 1
               NextFldBaseId = BaseId.substring(0, 6) + NextFldBaseId

               var NextFldCtrlId = '88' // Hear Give Next Fld Ctrl Id
               var ExpMsg = 'Select Value For: Quality Risk Management'   // Hear Give Next Fld Exp Messahe
//alert(BaseId + "_" + CtrlId + "_0")
               if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
                   document.getElementById("BTN_" + NextFldBaseId).removeAttribute("disabled")
                   if (document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                       ExpMessage = ExpMessage + ExpMsg + '#*#';
                       ExpCtrlID = (NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
                   }
               }
               else if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) {
                   document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")
                   document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
                   document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

               }

               var idStr = BaseId + '_' + CtrlId
               setExpMessage(ExpMessage, ExpCtrlID, idStr)
           }

           // Closed


           //case 27:
           //function to mandatory the field 'other' when 'Origin of CAPA' is selected as 'others' at CAPA Login form

           function FUN_CAPA_ORIGINOFCAPA(BaseId, CtrlId) {
               UcodeDeptCheck()
               AddCutomValidator("Select Value For: Market", 127, 89)
               AddCutomValidator("Select Value For: Origin of CAPA", 111, 81)

               var CAPAOrignVal = document.getElementById("FLD_" + 111 + "_" + 81).value
               var CAPAOrignValAry = new Array()
          CAPAOrignValAry = CAPAOrignVal.split(";")
          var isOthers=0
          
          for (i = 0; i < CAPAOrignValAry.length; i++) {
              CAPAOrignValAry[i] = trim(CAPAOrignValAry[i])
              if (CAPAOrignValAry[i] == "Others") {
                  isOthers =1
                  AddCutomValidator("Select Value For: Others", 81, 11)
                  document.getElementById("FLDLBL_" + 81 + "_" + 11).className = "MainTd";
              }
          } 
              if(isOthers==0)
               {
               document.getElementById("FLDLBL_" + 81 + "_" + 11).className = "HideRow";
               }
               
            /*   var ExpMessage = ""
               var ExpCtrlID = ""
               var obj = document.getElementById("FLD_" + 111 + "_" + 81).value;
               if (obj == "Others") {
                   if (document.getElementById("FLD_" + 81 + "_" + 11).value == "") {
                       ExpMessage = ExpMessage + "Enter Value For: Others" + '#*#';
                       ExpCtrlID = ExpCtrlID + ("FLD_" + 81 + "_" + 11) + '#*#';
                       document.getElementById("FLDLBL_" + 81 + "_" + 11).className = "MainTD";
                   }
               }
               else
               { document.getElementById("FLDLBL_" + 81 + "_" + 11).className = "HideRow"; }

               var idStr = BaseId + '_' + CtrlId
               setExpMessage(ExpMessage, ExpCtrlID, idStr)
               */

           }

           //case 28:
           //function to mandatory the field 'Details' when 'Investigation and root cause finding' is selected as 'Yes' at CAPA Login form
           function FUN_CAPA_INV_ROOTCAUSE(BaseId, CtrlId) {
               var ExpMessage = ""
               var ExpCtrlID = ""

               if (document.getElementById("FLD_" + 115 + "_" + 84 + "_" + 0).checked == true) {

                   if (document.getElementById("FLD_" + 116 + "_" + 11).value == "") {
                       ExpMessage = ExpMessage + "Enter Value For: Details" + '#*#';
                       ExpCtrlID = ExpCtrlID + ("FLD_" + 116 + "_" + 11) + '#*#';
                       document.getElementById("FLDLBL_" + 116 + "_" + 11).className = "MainTD";
                   }

               }
               if (document.getElementById("FLD_" + 115 + "_" + 84 + "_" + 1).checked == true) {
                   document.getElementById("FLDLBL_" + 116 + "_" + 11).className = "HideRow";
               }
               var idStr = BaseId + '_' + CtrlId
               setExpMessage(ExpMessage, ExpCtrlID, idStr)
           }
                       
           
           // Closure of the functions
      
           // Commen Function To Set  Propoerties To Funciton 
            function SetPropertiedToControlsAtPageLoad()
             {//
               var CusValFunIdLst =document.getElementById("CustomValidFunTxt").value.substring(1)
               var CusValFldIdLst =document.getElementById("CunstomValIdsTxt").value.substring(3)
               var CusValFunIdArr =new Array()
               var CusValFldIdArr =new Array()

               CusValFunIdArr=CusValFunIdLst.split(",")
               CusValFldIdArr=CusValFldIdLst.split("#*#")
              
               //var IsuLogId=document.getElementById("IssueLogIdTXt").value
               
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
                      case 9: FUN_ISU_CA_ACTION_PLAN_DECISION_ONLOAD(CusValFldId[0], CusValFldId[1])
                            break;
                      case 10: FUN_ISU_PA_ACTION_PLAN_DECISION_ONLOAD(CusValFldId[0], CusValFldId[1])
                            break;
                        case 11: FUN_EFORM_CA_ACTION_PLAN_DECISION_ONLOAD(CusValFldId[0], CusValFldId[1])
                            break;
                        case 12: FUN_EFORM_PA_ACTION_PLAN_DECISION_ONLOAD(CusValFldId[0], CusValFldId[1])
                            break;
                      case 13 :FUN_DEV_INV_ACTION_PLAN_DECISION_ONLOAD(CusValFldId[0],CusValFldId[1])
                            break;
                      case 14: FUN_CC_ISU_ACTION_PLAN_DECISION_ONLOAD(CusValFldId[0], CusValFldId[1])
                          break;
                      case 17: FUN_CC_RA_ACTION_PLAN_DECISION_ONLOAD(CusValFldId[0], CusValFldId[1])
                          break;
                      case 18: FUN_CC_QA_ACTION_PLAN_DECISION_ONLOAD(CusValFldId[0], CusValFldId[1])
                          break;
                      case 22: FUN_CAPA_QRM_ACTION_PLAN_DECISION_ONLOAD(CusValFldId[0], CusValFldId[1])
                          break;
                      case 31: FUN_ISU_EDITATT_DECISION_ONLOAD(CusValFldId[0], CusValFldId[1])
                          break;
                      case 32: FUN_EFORM_OA_ACTION_PLAN_DECISION_ONLOAD(CusValFldId[0], CusValFldId[1])
                          break;
                      case 33: FUN_ISU_OA_ACTION_PLAN_DECISION_ONLOAD(CusValFldId[0], CusValFldId[1])
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
          
            if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked==true)
            {
                if (document.getElementById(BaseId.substring(0,6) + NextFldId + "_11").value=="")
                {  ExpMessage= ExpMessage + "Enter  Details If Not Approved" + '#*#' ;
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
                    var BaseId=14 
                    var ControlId=30             
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
        //alert(CusValFunIdArr[i])

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
                {//
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


            var SelectedVal = document.getElementById(BaseId + "_" + CtrlId).value


            // document.getElementById("FLDLBL_" + 17 + "_" + 11).className = "HideRow"  //Batch
            //  AddCutomValidator("", 2, 1)

            if (SelectedVal == "Regularized") {
                AddCutomValidator("Enter Value For: Reference Permanent Change Control", 104, 11)
                document.getElementById("FLDLBL_" + 104 + "_" + 11).className = "MainTD"
                document.getElementById(LogFldPrefix + 104 + "_" + 11).removeAttribute("disabled");

            }

            if (SelectedVal == "Partially Regularized") {
                AddCutomValidator("Enter Value For: Reference Permanent Change Control", 104, 11)
                document.getElementById("FLDLBL_" + 104 + "_" + 11).className = "MainTD"
                document.getElementById(LogFldPrefix + 104 + "_" + 11).removeAttribute("disabled");


            }
            if (SelectedVal == "Not Regularized") {
                AddCutomValidator("", 104, 11)
                document.getElementById("FLDLBL_" + 104 + "_" + 11).className = "HideRow"
                document.getElementById(LogFldPrefix + 104 + "_" + 11).setAttribute('disabled', 'disabled');
            }


        }


        // Case 31 : Editable Attachment Decision

        function FUN_ISU_EDITATT_DECISION_ONLOAD(BaseId, CtrlId) {
            //document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_0").checked = true
            //FUN_ISU_CA_ACTION_PLAN_DECISION(LogFldPrefix + BaseId, CtrlId)
        }


        function FUN_ISU_EDITATT_DECISION(BaseId, CtrlId) {

            var ExpMessage = ""
            var ExpCtrlID = ""

            var NextFldBaseId = '143' // Hear Give Next Fld base Id 
            var NextFldCtrlId = '93' // Hear Give Next Fld Ctrl Id 
            var ExpMsg = 'Select Value For: Attachment(s)'   // Hear Give Next Fld Exp Messahe

           document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).setAttribute("disabled", "disabled") 
            if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
                document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).removeAttribute("disabled")
                if (document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                    ExpMessage = ExpMessage + ExpMsg + '#*#';
                    ExpCtrlID = (LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
                }
            }
            else// if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true)
            { //alert(
                document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).setAttribute("disabled", "disabled")  
                document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
                //document.getElementById("Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

            }

            var idStr = BaseId + '_' + CtrlId
            setExpMessage(ExpMessage, ExpCtrlID, idStr)
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
            var baseID = 130;  //TargetDate Ids
            var controlID = 12; //TargetDate Ids

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
            var input_date_cls = document.getElementById("FLD_" + 130 + "_" + 12 + "_CalDateVal");
            input_date_cls.nextSibling.style.display = 'none'
            //document.getElementById("FLD_" + baseID + "_" + controlID + "_CalDateBtn").style.display = "none";
            //$("#FLD_" + baseID + "_" + controlID + "_CalDateBtn").css('display','none');
            var DepUqObj = document.getElementById("Ucodelevel1")
            if (DepUqObj != null) {

                var InitDeptObj = document.getElementById("FLD_14_30");
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

            var SOPObj = document.getElementById("FLD_142_33")
            if (SOPObj != null) {
                // SOPObj.attachEvent('onclick', FUN_ISU_EDITATT_DECISION)
                SOPObj.onclick = function() { FUN_ISU_EDITATT_DECISION('FLD_142', 33); };
                FUN_ISU_EDITATT_DECISION('FLD_142', 33)
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
            var ExpMessage = ""
            var ExpCtrlID = ""

            var NextFldBaseId = BaseId.substring(6, BaseId.length)   // No need of chnage hear
            NextFldBaseId = parseInt(NextFldBaseId) + 1
            NextFldBaseId = BaseId.substring(0, 6) + NextFldBaseId

            var NextFldCtrlId = '104' // Hear Give Next Fld Ctrl Id
            var ExpMsg = 'Select Value For: Proposed Other Action plan(s)'   // Hear Give Next Fld Exp Messahe

            if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
                document.getElementById("BTN_" + NextFldBaseId).removeAttribute("disabled")
                if (document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                    ExpMessage = ExpMessage + ExpMsg + '#*#';
                    ExpCtrlID = (NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
                }
            }
            else if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true) {
                document.getElementById("BTN_" + NextFldBaseId).setAttribute("disabled", "disabled")
                document.getElementById(NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
                document.getElementById("Value_" + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

            }

            var idStr = BaseId + '_' + CtrlId
            setExpMessage(ExpMessage, ExpCtrlID, idStr)
        }

        // Closed
        
        
        

        // Issue Login related Other Action Plan(s) Proposal

        function FUN_ISU_OA_ACTION_PLAN_DECISION_ONLOAD(BaseId, CtrlId) {
            //document.getElementById(LogFldPrefix + BaseId + "_" + CtrlId + "_0").checked = true
            //FUN_ISU_CA_ACTION_PLAN_DECISION(LogFldPrefix + BaseId, CtrlId)
        }


        function FUN_ISU_OA_ACTION_PLAN_DECISION(BaseId, CtrlId) {

            // alert('FUN_ISU_CA_ACTION_PLAN_DECISION')
            var ExpMessage = ""
            var ExpCtrlID = ""

            var NextFldBaseId = '146' // Hear Give Next Fld base Id 
            var NextFldCtrlId = '104' // Hear Give Next Fld Ctrl Id 
            var ExpMsg = 'Select Value For: Proposed Other Action Plan(s)'   // Hear Give Next Fld Exp Messahe 

            if (document.getElementById(BaseId + "_" + CtrlId + "_0").checked == true) {
                document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).removeAttribute("disabled")
                if (document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).value == "") {
                    ExpMessage = ExpMessage + ExpMsg + '#*#';
                    ExpCtrlID = (LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId) + '#*#'
                }
            }
            else// if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked == true)
            {
                document.getElementById("BTN_" + LogFldPrefix + NextFldBaseId).setAttribute("disabled", "disabled")
                document.getElementById(LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("value", "")
                document.getElementById("Value_" + LogFldPrefix + NextFldBaseId + "_" + NextFldCtrlId).setAttribute("className", "HideRow")

            }

            var idStr = BaseId + '_' + CtrlId
            setExpMessage(ExpMessage, ExpCtrlID, idStr)
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
                var url="../PrsWorkFlow/AjaxReadPlanStatus.aspx?PlanId=" + ActionPlanId 
                xmlhttp.open("POST", url, true);
                xmlhttp.send(null);
        }
            
         //To Update Print Log
                     
            function AjaxUpdatePrintLog(IsuLogId,PrintRelTo)
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
                var url="../CAPAWORKS/AjaxUpadtePrintLog.aspx?IsuLogId=" + IsuLogId +  "&PrintRelTo=" + PrintRelTo
                xmlhttp.open("POST", url, true);
                xmlhttp.send(null);
        }            
          
        
      