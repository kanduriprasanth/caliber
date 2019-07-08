// JScript File

  var ExpMessageArr=new  Array()
  var ExpMsgIdArr=new Array()
  var EXpControlId =new Array()
  var WrkAllExpMsg =""

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
//                case 18 :FUN_DI_ACT_PLAN_DECISION(BaseId,CtrlId)
//                break;
                case 19 : FUN_CC_RA_DECISION (BaseId,CtrlId)
                break;
                case 7: FUN_DEV_CAPA_DEPENDENCY(BaseId,CtrlId)
                break;
                case  26 : FUN_CAPA_QA_DECISION(BaseId,CtrlId)
                break;
              }
          }   
          
       //case 1:
      
      // Commen Function For Any process
      function FUN_DI_DEPT_VALIDATION(BaseId,CtrlId)
       {}    
           
    //  ************** Lupin -Deviation Process   Custom Field Validation   ******************
            
        /*   Case 2:  EventRelated To  Validation At Issue Login 
        If Fields Are change Then chage ter ids and controlids and revlevent exep message , for new fields also same 
        Fields Type 1 - For Product / Material  Event Type , 3- For Document Type , 4 - For Equipment Related Type ,5- other Details 
        */

        function FUN_DI_EVENT_VALIDATION(BaseId,CtrlId)
        {
        
        
          var ExpMessage=""
            var ExpCtrlID=""

            var obj=document.getElementById("Ucodelevel1")
            var obj1=document.getElementById("FLD_14_30")
            if(obj!=null && obj1 !=null)
            {

                var selIndex=obj.selectedIndex
                var deptname=obj.options(selIndex).text
                selIndex=obj1.selectedIndex
                var Initdeptname=obj1.options(selIndex).text
                if (Initdeptname!=deptname)
                {
                   // alert("Initiation Department and Ucode-Department Name Should Be Equal")
                   ExpMessage="Initiation Department Name Should be Equal to Unique Item Value:Department Name"
              
                
                }
                    ExpCtrlID="Ucodelevel1"
                    var idStr="Ucodelevel1"
                    setExpMessage(ExpMessage,ExpCtrlID,idStr)
            }       
                
                                         
            var EventRelTo =document.getElementById("FLD_" + BaseId + "_" + CtrlId).value
            var ExpMessage=""
            var ExpCtrlID=""
            var PoupIdArr =new Array()

                var FldBaseIdList='2,17,3,18,92,80,19'//'21,4,22,23,24'//'111,115,116,112,113,97,98,92,95,26' 
                var FldCtrlIdList='1,11,2,11,73,53,11'//'23,11,11,11,11'//'1,23,54,1,47,11,11,38,11,11'
                var FldTypeLst ='Product,Product,Material,Material,System,Equipment,Others'//'Product,Product,System,Utility,Others'//'1,1,2,3,4'//'1,1,2,2,2,3,3,4,4,5'  
                var FldDataTypeLst='1,6,1,6,6,6,6'//'1,6,6,6,6'//'1,13,4,1,13,1,11,11,1,11,11,'
                var FldExpMessage="Select Value For: Product #*# Enter Value For: Batch No.(s) #*# Select Value For: Material #*# Enter Value For: Lot No.(s) #*# Enter Value For: System #*#Enter Value For: Equipment #*#Enter Value For: Other Details "//"Select Product #*# Select Batch(s) Details  #*#Select Type of Material #*# Select Material #*# Select Lot(s) Details #*# Enter Document - Name  #*# Enter Document - Number #*# Select Equipment / Facility #*#Enter Equipment / Facility - Area Located #*# Enter Other Details"  //#*# Select product type

                var FldBaseIdArr=new Array()
                var FldCtrlIdArr=new Array()
                var FldExpMsgArr=new Array()
                var FldTypeArr=new Array()
                var FldDataTyepArr=new Array()

                FldBaseIdArr=FldBaseIdList.split(",")
                FldCtrlIdArr=FldCtrlIdList.split(",")
                FldExpMsgArr=FldExpMessage.split("#*#")
                FldTypeArr=FldTypeLst.split(",")
                FldDataTyepArr=FldDataTypeLst.split(",")

                
                for(var k=0;k<=FldBaseIdArr.length-1;k++)
                {

                    if (FldCtrlIdArr[k] !=12 )
                    var obj=document.getElementById("FLD_" + FldBaseIdArr[k] + "_" + FldCtrlIdArr[k])
                    else
                    var obj=document.getElementById("FLD_" + FldBaseIdArr[k] + "_" + FldCtrlIdArr[k] + ":CalDateVal")

                    if(obj!=null)
                    { 
                        if (FldTypeArr[k] == EventRelTo) 
                        
                        { 
                            if(FldDataTyepArr[k]==4)
                            {
                              var CheckFld=false
                              var ItemsLen=obj.cells.length 
                              for( var i=0;i<ItemsLen;i++)
                                 {
                                   if ((obj.id + "_" + i).checked == true)CheckFld=true
                                 }
                              if(CheckFld!=true){  ExpMessage= ExpMessage + FldExpMsgArr[k] + '#*#' ; ExpCtrlID=ExpCtrlID + obj.id + '#*#' }
                            }
                            else
                            {
                             if(obj.value=="")  {  ExpMessage= ExpMessage + FldExpMsgArr[k] + '#*#' ; ExpCtrlID=ExpCtrlID + obj.id + '#*#' }
                            }
                            document.getElementById("FLDLBL_" + FldBaseIdArr[k] + "_" + FldCtrlIdArr[k]).className="MainTD" 
                        } 
                        else document.getElementById("FLDLBL_" + FldBaseIdArr[k] + "_" + FldCtrlIdArr[k]).className="HideRow" 
                    }
                }
             var idStr=BaseId + '_' + CtrlId
        setExpMessage(ExpMessage,ExpCtrlID,idStr)
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
        function FUN_CC_RA_DECISION(BaseId,CtrlId)
        {
          var ExpMessage=""
          var ExpCtrlID=""
          var DetailsFldId=BaseId.substring(6,BaseId.length)
          DetailsFldId = parseInt(DetailsFldId) + 1  
          
            if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked==true)
            {
                if (document.getElementById(BaseId.substring(0,6) + DetailsFldId + "_11").value=="")
                {  ExpMessage= ExpMessage + "Enter  Details If Not Approved" + '#*#' ;
                   ExpCtrlID=ExpCtrlID + (BaseId.substring(0,6) + DetailsFldId + "_11") + '#*#'; 
                }
            }   
            
            var idStr=BaseId + '_' + CtrlId
            setExpMessage(ExpMessage,ExpCtrlID,idStr)
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
        function FUN_DEV_CAPA_DEPENDENCY(BaseId,CtrlId)
        {    
        }
        
        // Function To chage Issue Status At Deviation QA Comments 
        function FUN_DEV_CAPA_DEPENDENCY_ON_SUBMIT(BaseId,CtrlId,IssueID)
        {
            AjaxChangeIssueStatus(IssueID,0,4)  // For Diplay Of Plan Acceptance List 
            
           var QADeptDDL = document.getElementById(BaseId + "_" + CtrlId);
           var QADecision= QADeptDDL.options(QADeptDDL.selectedIndex).text
           if (QADecision == 'Closure is not mandatory'  || QADecision== 'Not Applicable')
           {
             AjaxChangeIssueStatus(IssueID,0,2)
           }
        } 
        
        // function to chnage Issue Status At CAPA  Decison
        function FUN_CAPA_QA_DECISION_ON_SUBMIT(BaseId,CtrlId,IssueID)
        {
          if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked==true)
          {
            AjaxChangeIssueStatus(IssueID,0,2)
          }
        }
        
        
        // function to chnage Issue Status At CAPA  On Clisk
        function FUN_CAPA_QA_DECISION(BaseId,CtrlId,IssueID)
        {
            var ExpMessage=""
          var ExpCtrlID=""
          var NextFldId=BaseId.substring(6,BaseId.length)
          NextFldId = parseInt(NextFldId) + 1  
          
            if (document.getElementById(BaseId + "_" + CtrlId + "_1").checked==true)
            {
                if (document.getElementById(BaseId.substring(0,6) + NextFldId + "_").value=="")
                {  ExpMessage= ExpMessage + "Enter  Details If Not Approved" + '#*#' ;
                   ExpCtrlID=ExpCtrlID + (BaseId.substring(0,6) + NextFldId + "_") + '#*#';
                }
            }   
            
            var idStr=BaseId + '_' + CtrlId
            setExpMessage(ExpMessage,ExpCtrlID,idStr)
           
          
        }


     // *********End of Lupin  Change  Control Process *************//
  
                
       //*********  Common  Function To Set Validation  Messages  ***********
           
        
        function setExpMessage(ExpMesage,ExpCtrlID,Idstr)
        {
             var Count=0;
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
                    for(var i=0;i<=ExpMsgIdArr.length-1;i++)
                    {
                       if (ExpMsgIdArr[i] == Idstr )
                       {
                           Count=1;
                           ExpMessageArr[i]=ExpMesage
                           EXpControlId[i]=ExpCtrlID
                        }   
                    }
                    
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
                            var Time="abc"
                            Time=xmlhttp.ResponseText
                            xmlhttp =null;
                        }
                    }
                    
                    //@Isustatus =2  Issue Root to Issue Closure
                    //@Isustatus= 1 Isseu Root To CAPA
                    //@Isustatus =4  Diplay At Plan  Accaptance List
                     var url="../TestEFormExecution/ChangeIsuStatus.aspx.aspx?IssueId=" +  IssueId + "&WrkAulId=" + WrkAulId + "&Isustatus=" + Isustatus
                    xmlhttp.open("POST",url,true);
                    xmlhttp.send(null);
                }
                
             
             
          // **** Custom Field Validations for EForm at OnSubmit******//
             
             
             function Fnsubmit(TransType)
            {
                if (!Page_ClientValidate())
                {
                    return;
                }
                var ExcpMsg=CustValidations();
                if(ExcpMsg!="")
                {
                    alert(ExcpMsg.substring(0,ExcpMsg.length-1));
                    return;
                }
                else
                {
                    if(typeof(fnCallESign) != "undefined")
                    {
                        if(IsValidFlag ==false)
                        {
                            fnCallESign(TransType)
                            return;
                        }
                    }
                    document.getElementById ("btnConfirm").click();
                } 

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
                    CusValFldId=CusValFldIdArr[i].split(",")

                    switch (parseInt(CusValFunIdArr[i]))
                    {
                      
                        case 19:  FUN_CC_RA_DECISION_ON_SUBMIT(CusValFldId[0],CusValFldId[1],IsuLogId)    
                                 break;
                                 
                        case 7 :FUN_DEV_CAPA_DEPENDENCY_ON_SUBMIT(CusValFldId[0],CusValFldId[1],IsuLogId)   
                            break;
                    }
                }  

            }

            function CustValidations()
            {
                    var ExpMsg=""

                    var CusValFunIdLst =document.getElementById("CustomValidFunTxt").value.substring(1)
                    var CusValFldIdLst =document.getElementById("CunstomValIdsTxt").value.substring(3)
                    var CusValFunIdArr =new Array()
                    var CusValFldIdArr =new Array()

                    CusValFunIdArr=CusValFunIdLst.split(",")
                    CusValFldIdArr=CusValFldIdLst.split("#*#")

                    for(var i=0;i<=CusValFunIdArr.length-1;i++)
                    {
                        var CusValFldId=new Array()
                        CusValFldId=CusValFldIdArr[i].split(",")
                    }

                    return ExpMsg;
            }  	       
            
                 // Function Check AT Final Submition To Diaply Validation 
                function FinalValidationCheck(src,args)
                {
                    args.IsValid=true;
                    Page_IsValid=true;
                    var ErrerString=""
                    
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
                            if (CtrlIDArr[j] != "")
                            {
                               var obj= document.getElementById("DT_" + CtrlIDArr[j])
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
                                    if (document.getElementById(CtrlIDArr[j]).value =="")
                                    ErrerString= ErrerString + ExpMsgArr[j] + "\n -" 
                               }  
                            } 
                          }
                        }
                    }
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
        
  
       