<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="SelfInspection.Trn" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<%@ Register TagPrefix="uc2" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<%@ Register TagPrefix="uc3" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <meta http-equiv="Cache-control" content="no-cache">
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript" src="../JScript/jquery.min.js"></script> <%--Added by P Suresh--%>

    <script language="javascript">
 	 RequestPrefix='<%=me.ClientID%>'
function fnSetToReasons(argValue)//For Remarks
          {   
               document.getElementById('RemarksTxt').value = argValue
          }	
	
	 function Detach()
    {
        if(typeof(fnCallESign)!="undefined")
        {
            var formName = document.forms(0).name
            document.forms(0).detachEvent('onsubmit',fnCallESign)
        }
    }
    function GetMnthName(number)
    {
        var monthname=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
        return monthname[number-1];
    }
  
	function ChkValidation(src,args)
	{ 
	    var Str="";
	    var ErrStr="";
	    var i;
	    var j;
	    var MnthName="";
	    var ErrStr1="";
	    args.IsValid=true;
  	    Page_IsValid=true;
  	    if (document.getElementById("AdtTypeDDL").value!="")
  	    {
	    if(document.getElementById("NoOfDepTxt").value!="")
	    {
	        for(i=0;i<document.getElementById("NoOfDepTxt").value;i++)
	        {
	            if(document.getElementById("NoOfSchTxt_" + i).value!="")
	            {
	                for(j=0;j<document.getElementById("NoOfSchTxt_" + i).value;j++)
	                {
	                    var Arr=new Array();
	                    Arr=document.getElementById("SdateCal_" + i + "_" + j + "$CalDateVal").value.split("/")
	                    var CombStr= "#*#" + Arr[0] + "_" + document.getElementById("ProcessTextBx_" + i + "_" + j).value + "_" + document.getElementById("DeptDDL_" + i).value + "#*#" ;
	                    
	                    if (Str.indexOf(CombStr)==-1)
	                    {
	                        Str += CombStr ;
	                    }
	                    else
	                    {
	                        //ErrStr = ErrStr + "Same Department And Inspection Area Can Be Planned Only Once In A Month" + "\n -";
	                    }
	                }
	                
	                if (ErrStr != "")
	                {
	                    ErrStr = ErrStr.errormessage=ErrStr.substring(0,ErrStr.length-3);
	                    src.errormessage=ErrStr
                        args.IsValid=false;
                        Page_IsValid=false;
	                }
	            }
	        }
	    }
	}
	}
	
	function ChkValidationForIssue(src,args)
	{
	    args.IsValid=true;
  	    Page_IsValid=true;
  	    
  	    if(document.getElementById("OtherIsuRefRdl" + "_0").checked==true)
  	    {
  	        if(document.getElementById("RefIsuIdTxt").value=="")
  	        {
  	            args.IsValid=false;
  	            Page_IsValid=false;  	            
  	        }
  	    }
	}
	
	function ChkRsnRmkVal(src,args)
	{
	    args.IsValid=true;
  	    Page_IsValid=true;
  	    
  	    if(document.getElementById("AvrIdTxt").value!="" && document.getElementById("RsnRmkRw").className=="")
  	    {
  	        if(document.getElementById("RsnRmkTxt").value=="")
  	        {
  	            args.IsValid=false;
  	            Page_IsValid=false;  	            
  	        }
  	    }
	}
	
	function ChkDateValidation(src,args)
	{
	    args.IsValid=true;
  	    Page_IsValid=true;
  	    
  	    var icnt=new Array();
  	    var jcnt=new Array();
  	    var SubJcnt=new Array();
  	    var icntStr="<%=icntStr%>";
  	    var jcntStr="<%=SubjcntStr%>";
  	    
  	    if(icntStr!="" && jcntStr!="")
  	    {
  	        if(icntStr.indexOf("#*#")==0)
  	        {
  	            icntStr=icntStr.substring(3)
  	        }
  	        icnt=icntStr.split("#*#")
  	        jcnt=jcntStr.split("#*#")
  	        var ErrMsg="";
      	    
  	        for(var i=0; i<icnt.length; i++)
  	        {
  	            if(jcnt.length>i)
  	            {
  	                SubJcnt=jcnt[i].split("$")
  	                for(var j=0; j<SubJcnt.length; j++)
  	                {
  	                    var Flag=VBDateValidation(i,j)
  	                    if(Flag==1)
  	                    {
  	                        ErrMsg += "Planned Start Date Must Be Greater Than Or Equal To Current Date For - " + (i + 1) + "." + (j + 1) + "\n -"
  	                    }
  	                    if(Flag==2)
  	                    {
  	                        ErrMsg += "Planned End Date Must Be Greater Than Or Equal To Planned Start Date For - " + (i + 1) + "." + (j + 1) + "\n -"
  	                    }
          	            
  	                }
  	            }
  	        }
  	         if(ErrMsg!="")
             {
                ErrMsg = ErrMsg.errormessage=ErrMsg.substring(0,ErrMsg.length-3);
                src.errormessage=ErrMsg;
                args.IsValid=false;
                Page_IsValid=false;
             }
  	    }
  	   
	}
	
	function OpenUgpDetPopUp(UgpId)
	{
	    var pageURL;
        pageURL ="UgpDet.aspx?UgId=" + UgpId;

        SpWinObj = window.open(pageURL,'SpecCodes',"height=400,width=400,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
	}

    function FnInsTeamPopUp(iCnt,jCnt)
    {
        if(document.getElementById("DeptDDL_" + iCnt).value!="")
        {
            var pageURL;
            pageURL ="UsrGrpPopUp.aspx?DeptId=" + document.getElementById("DeptDDL_" + iCnt).value + "&iCnt=" + iCnt + "&jCnt=" + jCnt;

            SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        else
        {
            alert('Select Department(s)/Sites(s) To Be Audited - ' + (iCnt+1));
        }
    }
    
    function fnGetUserrpVal(KdIdVal,KfLableVal,KdDesVal,i,j)
    {
        
        document.getElementById("InsTeamLbl_" + i + "_" + j).innerHTML=KdDesVal
        document.getElementById("InsTeamTextBx_" + i + "_" + j).value=KdIdVal
        document.getElementById("InsTeamName_" + i + "_" + j).value=KdDesVal
        document.getElementById("TeamId").value=KdIdVal
       
    } 
    
	function FnProcessPopUp(iCnt,jCnt)
    {
        if(document.getElementById("DeptDDL_" + iCnt).value!="")
        {
            var pageURL;
            pageURL ="ProcessPopUp.aspx?DeptID=" + document.getElementById("DeptDDL_" + iCnt).value + "&iCnt=" + iCnt + "&jCnt=" + jCnt;

            SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        else
        {
            //alert('Select Department To Be Inspected - ' + (iCnt+1));
             alert('Select Department(s)/Site(s) To Be Audited - ' + (iCnt+1));
        }
    }
    
   
        
    function fnGetFormProcessVal(KdIdVal,KdCodeVal,KfLableVal,KdDes,DeptId,i,j,InsAreIds)
    {
        
        document.getElementById("DeptTxt_" + i).value=DeptId
        document.getElementById("ProcessLbl_" + i + "_" + j).innerHTML=KdDes
        document.getElementById("ProcessTextBx_" + i + "_" + j).value=KdIdVal
        document.getElementById("ProcessNameTextBx_" + i + "_" + j).value=KdDes
        document.getElementById("ProcessId").value=KdIdVal
       
    } 
    
    	function  CheckDeptProcessValidation(Cnt)
		{ 
	 
	    var i;
	    var j;
	   	    
	    if(document.getElementById("NoOfDepTxt").value!="")
	    {
	        for(i=0;i<document.getElementById("NoOfDepTxt").value;i++)
	        {
	            if(i==Cnt)
	            {
	                if(document.getElementById("NoOfSchTxt_" + i).value!="")
	                {
	                    for(j=0;j<document.getElementById("NoOfSchTxt_" + i).value;j++)
	                    {
	                        document.getElementById("ProcessTextBx_" + i + "_" + j).value ="";
	                        document.getElementById("ProcessNameTextBx_" + i + "_" + j).value ="";
	                        document.getElementById("ProcessLbl_" + i + "_" + j).innerHTML ="";
	                        document.getElementById("ProcessId").value="";
	                        document.getElementById("InsTeamLbl_" + i + "_" + j).innerHTML ="";
	                        document.getElementById("InsTeamName_" + i + "_" + j).value ="";
	                        document.getElementById("InsTeamTextBx_" + i + "_" + j).value ="";
	                    }
	                }
	            }
	        }
	    }
	    }
	    
//	    function  oldValAssign()
//		{ 
//	 
//	    var i;
//	    var j;
//	   	if(document.getElementById("NoOfDepTxt")==null)
//	   	{
//	   	    return;
//	   	}
//	    if(document.getElementById("NoOfDepTxt").value!="")
//	    {
//	        for(i=0;i<document.getElementById("NoOfDepTxt").value;i++)
//	        {
//	                if(document.getElementById("NoOfSchTxt_" + i).value!="")
//	                {
//	                    for(j=0;j<document.getElementById("NoOfSchTxt_" + i).value;j++)
//	                    {
//	                        document.getElementById("ProcessLbl_" + i + "_" + j).innerHTML = document.getElementById("ProcessNameTextBx_" + i + "_" + j).value;
//	                        document.getElementById("InsTeamLbl_" + i + "_" + j).innerHTML = document.getElementById("InsTeamName_" + i + "_" + j).value;
//	                                 
//	                    }
//	                }
//	            }
//	        }
//	    }
	 
    function PreLoad()
	{ 
	
	    document.getElementById("RegId").value=""
        document.getElementById("RuleIDTxt").value=""
        document.getElementById("RuleDescTxt").value = ""
        document.getElementById("RuleDescLbl").innerHTML = ""
        document.getElementById("RuleTypeIdTxt").value = ""
        document.getElementById("ScopeMeTxt").value = ""
        document.getElementById("DescTxt").value = ""        
        document.getElementById("ProdIdTxt").value=""
        document.getElementById("VenIdTxt").value=""
	    var Type=<%=Type%>
	    if(Type==0)
	    {
	       document.getElementById("RegPBtn").className="HideRow"
	       document.getElementById("VenPBtn").className="HideRow"
	    }
	    if(document.getElementById("AdtTypeDDL").value=="2")
	    {
	        document.getElementById("OthTr").className= "HideRow"
            document.getElementById("RegTr").className= ""
            document.getElementById("VendorTr").className = "HideRow"
            
       
	    }
	    else if(document.getElementById("AdtTypeDDL").value=="3")
	    {
	        document.getElementById("OthTr").className= ""
	        document.getElementById("VendorTr").className= ""
            document.getElementById("RegTr").className = "HideRow"
	    }
	    else if(document.getElementById("AdtTypeDDL").value=="4")
	    {
             document.getElementById("RegTr").className = "HideRow"
             document.getElementById("VendorTr").className = "HideRow"
             document.getElementById("OthTr").className= "HideRow"
	    }
	    else
	    { if(document.getElementById("AdtTypeDDL").value=="")
	       {
	       document.getElementById("NoOfDepTxt").value=""
	       }
             document.getElementById("RegTr").className = "HideRow"
             document.getElementById("VendorTr").className = "HideRow"
             document.getElementById("OthTr").className= "HideRow"
	    }
       if(document.getElementById("AdtTypeDDL").value==2 || document.getElementById("AdtTypeDDL").value==3)
 	    {
 	        document.getElementById("NoOfDepTxt").className="HideRow"
 	        document.getElementById("NoOfDepTxt").value=1
 	        //Form1.submit();
 	        document.getElementById("Sbmt").click();
 	    }
 	    else
 	    {
 	        //Form1.submit();
 	        document.getElementById("Sbmt").click();
 	    }
 	    document.getElementById("AdtTypeDDL").value = document.getElementById("AdtTypeDDL").value
	}
	
	
//	PreLoad();	
		
		
	function VendorPopUpFn()
    {
        var pageURL;
        pageURL ="../AuditPlanning/VendorLst.aspx";

        SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=650,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
        
    function fnGetVendorVal(KdIdVal,KfLableVal,VenRegId)
    {
        document.getElementById("VenIdTxt").value=KdIdVal
      //  document.getElementById("VenIdRealTxt").value=VenRegId
        
        document.getElementById("VenValTxt").value=KfLableVal
        document.getElementById("VenValLbl").innerText=KfLableVal
//        document.getElementById("AvrIdTxt").value=AvrId
        document.getElementById("VenRegId").value=VenRegId

        if(document.getElementById("PrevVenIdTxt").value!=document.getElementById("VenIdTxt").value || document.getElementById("VenIdTxt").value=="")
        {
            document.getElementById("ProdIdTxt").value=""
            document.getElementById("ProdNameTxt").value="" 
            document.getElementById("ProdNameLbl").innerText=""
            
            document.getElementById("LAdtSDate_CalDateVal").value = ""
            document.getElementById("LAdtSDate$CalDateDisplay").value = ""
            document.getElementById("LAdtEDate_CalDateVal").value = ""
            document.getElementById("LAdtEDate$CalDateDisplay").value = ""
        }
        
        document.getElementById("PrevVenIdTxt").value=KdIdVal
        
        GetValidityDate();
    }
    
    
    
    function OpenRuleTypePopUp()
    {
        var pageURL = "../AuditObservation/RuleTypeListPopup.aspx?IdSuffix=0"
	    var features = "height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50"
	    var winObj = window.open(pageURL,'eNoteBookfields',features)
	    if(winObj.opener ==null)winObj.opener = self;
	    winObj.temp="asdf"
    }

    function Ret_OpenRuleTypePopUp(RuleTypeId,RuleId,RuleTypeDesc,RuleDesc,RuleTypeRuleDesc,IdSuffix)
    {
        document.getElementById("RuleTypeIDTxt").value = RuleTypeId;
        document.getElementById("RuleIDTxt").value = RuleId;
        if(RuleDesc!="")
        {
            //DispVal = RuleTypeDesc + " : " + RuleDesc + "  "
            DispVal = RuleDesc
        }
        else
        {
            DispVal="";
        }
        document.getElementById("RuleDescTxt").value = DispVal;
        document.getElementById("RuleDescLbl").innerHTML = DispVal;
    }
        
    function GetValidityDate()
    {debugger
        if(document.getElementById("VenRegId").value!="")
        {
        var xmlHttp;
        try 
        {    
            //FF, Opera, Safari, Chrome, IE7+
            xmlHttp = new XMLHttpRequest();  
        } 
        catch(e) 
        {    
            try 
            {      
                //IE6+
                xmlHttp  = new ActiveXObject("Microsoft.XMLHTTP");    
            } 
            catch(e) 
            {
                try 
                {
                    xmlHttp  = new ActiveXObject("Msxml2.XMLHTTP");
                } 
                catch(e) 
                {
                    xmlHttp  = null;
                }
            }
        }  

        if (xmlHttp!=null)
        {
            xmlHttp.onreadystatechange=function()
            {
                if(xmlHttp.readyState==4)
                {   var RetSts=[];
                    var Val=[];
                    var PAStrEndD=[];
                    var s = xmlHttp.responseText;
                     if(s!="")
                    {
                    
                       RetSts=s.split("$*$");
                       Val=RetSts[0].split("#*#");
                       PAStrEndD=RetSts[1].split("#*#");
                       var Flag=0
                       if(Val[0]!="")
                       {
                            Flag=VBDateChck(Val[0]);
                       }
                       var PActStDt = (PAStrEndD[0]);
                       var PActEndDt = (PAStrEndD[1]);
                       
                       if (PActStDt != "")
                       {

                       document.getElementById("LAdtSDate_CalDateVal").value = PActStDt; 
                       document.getElementById("LAdtSDate$CalDateDisplay").value = SetDateFormat(PActStDt); 
                       document.getElementById("LAdtEDate_CalDateVal").value = PActEndDt;
                       document.getElementById("LAdtEDate$CalDateDisplay").value = SetDateFormat(PActEndDt);
                       }
                      
                       if(Flag<0)
                       {
                            document.getElementById("RsnRmkRw").className="";
                       }
                       else
                       {
                            document.getElementById("ItemIdTxt").value=Val[1];
                            document.getElementById("AvrIdTxt").value=Val[2];
                            document.getElementById("RsnRmkRw").className="HideRow";
                       }
                    }
                    else
                    {
                         
                                                              
                    }
                    
                }
                    
                
            }
        }            
        var url="GetDate_Ajax.aspx?VenRegId=" + document.getElementById("VenRegId").value;
        xmlHttp.open("POST",url,true);
        xmlHttp.send(null);
        }
        else
        {
            document.getElementById("RsnRmkRw").className="HideRow";
        }
    }
    
    function ProductPopUpFn()
    {
        var pageURL;
        if(document.getElementById("VenIdTxt").value!="")
        {
            pageURL ="ProdPopUp.aspx?VenId=" + document.getElementById("VenIdTxt").value + "&ItmIds=" + document.getElementById("ProdIdTxt").value;

            SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        else
        {
            alert('Select Vendor');
            return false;
        }
    }
      
     function SetDateFormat(CurrentDate)
    {
        var m,d,y,Result;
        var monthname=new Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
        var nDate = new Date(CurrentDate)
        m = nDate.getMonth();
        d = nDate.getDate();
        y = nDate.getFullYear(); 
        
        var Result= d + '-' + monthname[m] + '-' + y  ;
        return Result;
    }
      
    function fnGetProdVal(KdIdVal,KfLableVal,ReqalPeriod,ReqalFreq)
    {   
        document.getElementById("ProdIdTxt").value=KdIdVal
        document.getElementById("ProdNameTxt").value=KfLableVal 
        document.getElementById("ProdNameLbl").innerText=KfLableVal
        document.getElementById("ReqalPeriodTxt").value=ReqalPeriod
        document.getElementById("ReqalFreqTxt").value=ReqalFreq
    }

    function RegPopUpFn()
    {
        var pageURL;
        pageURL ="../AuditPlanning/RegulatoryLst.aspx";

        SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
        
    function fnGetRegVal(KdIdVal,KfLableVal)
    {
        document.getElementById("RegId").value=KdIdVal
        document.getElementById("RegCodeTxt").value=KfLableVal 
        document.getElementById("RegCodeLBL").innerText=KfLableVal
    }       
    
    function ChkRegId(src,args)
    {
         args.IsValid=true;
        Page_IsValid=true;
        
        if (document.getElementById("RegId").value=="")
        {
             args.IsValid=false;
            Page_IsValid=false;  	
            return false;
        }
    }
    
     function ChkVenId(src,args)
    {
         args.IsValid=true;
        Page_IsValid=true;
        
        if (document.getElementById("VenIdTxt").value=="")
        {
             args.IsValid=false;
            Page_IsValid=false;  	
            return false;
        }
    }
    
      function ChkProdId(src,args)
    {
         args.IsValid=true;
        Page_IsValid=true;
        
        if (document.getElementById("ProdIdTxt").value=="")
        {
             args.IsValid=false;
            Page_IsValid=false;  	
            return false;
        }
    }
    
    function ChkRuleType(src,args)
    {
         args.IsValid=true;
        Page_IsValid=true;
        
        if (document.getElementById("RuleIDTxt").value=="")
        {
             args.IsValid=false;
            Page_IsValid=false;  	
            return false;
        }
    }
    
    function CssChange()
    {
        if(document.getElementById("OtherisuRefRdl"+ "_0").checked == true)
        {   document.getElementById("IsuRefTr").className="MainTD"; }
        else if(document.getElementById("OtherisuRefRdl"+ "_1").checked == true)
        { document.getElementById("IsuRefTr").className="HideRow"; }
    }
    
    function FnIsuePopup()
    {
        var pageURL ="../IssueClosure/RefIsuPopup.aspx"
        SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }

    function fnSetRefValue(KfLableVal,KfIdVal)
    {
      document.getElementById("RefIsuIdTxt").value=KfIdVal
      document.getElementById("RefIsuDescTxt").value=KfLableVal
      document.getElementById("RefIsuDescLbl").innerHTML=KfLableVal
    }
	
	
 function noCopyMouse(e) { 
        var isRight = (e.button) ? (e.button == 2) : (e.which == 3);
       
        if(isRight) {
            return false;
        }
      
    }

 function IsDigit2(e,Value)  ///Function To check Numeric values onblur Event if copied and paste Alphabets
    {  
        var AvailableVal = window.event.srcElement.value;   
        Value=''
         if(isNaN(AvailableVal)==true || AvailableVal=='')
         { window.event.srcElement.value=Value; } 
          else
        {
        
        NumValidation()
             document.forms(0).submit()       
        }
    }
   


    function noCopyKey(e) {  
                if (window.event.keyCode == 13) {
                      return(false);
                 }
      
   
        var forbiddenKeys = new Array('c','x','v');
        var keyCode = (e.keyCode) ? e.keyCode : e.which;
        var isCtrl;


        if(window.event)
            isCtrl = e.ctrlKey
        else
            {isCtrl = (window.Event) ? ((e.modifiers & Event.CTRL_MASK) == Event.CTRL_MASK) : false;
           }
   

        if(isCtrl) { 
            for(i = 0; i < forbiddenKeys.length; i++) {
                if(forbiddenKeys[i] == String.fromCharCode(keyCode).toLowerCase()) {
                    return false;
                }
            }
            
            NumValidation()
             document.forms(0).submit()
                      
        }
   
    }
   
   
       function IsDigit1(e)  ///Function To check Numeric values
    { 
        if(e.shiftKey ==true)
        return false;
         
        var KeyIdentifierMap =
        {
           End         : 35,
            Home        : 36,
            Left        : 37,
            Right        : 39,
            'U+00007F'    : 46        // Delete
        }
        
         if ( !e )
        e = event ;

        var AvailableVal = window.event.srcElement.value.indexOf(".")
        var iCode = ( e.keyCode || e.charCode );

        if((iCode == 46) && (AvailableVal != -1))
        return false;
        if((iCode == 46) && (window.event.srcElement.value == ""))
        return false;

        if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
            iCode = KeyIdentifierMap[ e.keyIdentifier ] ;
        if(iCode ==39) return false;
     
        return (
            ( iCode >= 48 && iCode <= 57 )        // Numbers
            || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
            || iCode == 8                        // Backspace
            || iCode == 46                        // Delete
            || iCode == 9                        // Tab
            )
         
    }

	function  NumValidation()
    {  
      
       
	 
	    var val= document.getElementById("NoOfDepTxt").value;
	 
        var ExstValue=<%=ExstVal%>
        if(<%=TType%>==1 || <%=TType%>==2)
        {
        
	        if (document.getElementById("SelDeptTxt").value=="")

	        {

                    if(val!='')
                    {
                        if(isNaN(val))
                        {
                        alert('Enter positive integer value in the range of 1 - 10 for : No. Of Department(s)/Site(s)')
                        document.getElementById("NoOfDepTxt").value =""

                        document.getElementById("NoOfDepTxt").focus()
                        return(false)

                        }


                        if(val=='0' || val=='-0' || val=='00'  || val<0 || val.indexOf(".")!=-1 || val>10) 
                        {

                        alert('Enter positive integer value in the range of 1 - 10 for : No. Of Department(s)/Site(s)')
                        //alert(errMsg)
                        document.getElementById("NoOfDepTxt").value =""
                        document.getElementById("NoOfDepTxt").focus()
                        document.forms(0).submit()
                        return(false)
                        }

                    }

               }

                else

                {

                    if(val!='')
                    {
                        if(isNaN(val))
                        {
                        //			alert('Enter Positive Integer Value Between 1 And 10 For: No. Of Audit(s) - ' +Id)
                        alert('Enter positive integer value in the range of 1 - 10 for : No. Of Department(s)/Site(s)')
                        document.getElementById(src).value =""

                        document.all(src).focus()
                        return(false)

                        }


                        if(parseInt(document.getElementById("ExtDeptTxt").value) > parseInt(val)) 
                        {

                        //							alert('Enter Positive Integer Value Between 1 And 10 For: No. Of Audit(s) - '+Id)
                        alert('No. Of Department(s)/Site(s) value should be greater than current value, since for one of the department Audit Proposal is registered')
                        document.getElementById("NoOfDepTxt").focus()
                        document.getElementById("NoOfDepTxt").value=document.getElementById("ExtDeptTxt").value
                        //							   document.forms(0).submit()
                        return(false)
                        }
                        else
                        {
                        document.forms(0).submit()
                        }

                   }
                  

                 }
             }
             else
             {
                
                  if (document.getElementById("SelDeptTxt").value=="")

	              {

                    if(val!='')
                    {
                        if(isNaN(val))
                        {
                        alert('Enter positive integer value in the range of 1 - 10 for : No. Of Department(s)/Site(s)')
                        document.getElementById("NoOfDepTxt").value =ExstValue

                        document.getElementById("NoOfDepTxt").focus()
                        return(false)

                        }


                        if(val=='0' || val=='-0' ||  val=='00'   || val<0 || val.indexOf(".")!=-1 || val>10) 
                        {

                        alert('Enter positive integer value in the range of 1 - 10 for : No. Of Department(s)/Site(s)')
                        //alert(errMsg)
                        document.getElementById("NoOfDepTxt").value =""
                        document.getElementById("NoOfDepTxt").focus()
                        document.forms(0).submit()
                        return(false)
                        }

                    }
                    else
                    {
                        alert('Enter positive integer value in the range of 1 - 10 for : No. Of Department(s)/Site(s)')
                        document.getElementById("NoOfDepTxt").value =ExstValue

                        document.getElementById("NoOfDepTxt").focus()
                        return(false)
                    } 
                   

               }

                else

                {

                    if(val!='')
                    {
                        if(isNaN(val))
                        {
                        //			alert('Enter Positive Integer Value Between 1 And 10 For: No. Of Audit(s) - ' +Id)
                        alert('Enter positive integer value in the range of 1 - 10 for : No. Of Department(s)/Site(s)')
                        document.getElementById(src).value =ExstValue

                        document.all(src).focus()
                        return(false)

                        }
                        
                        if(val=='0' || val=='-0' ||  val=='00'   || val<0 || val.indexOf(".")!=-1 || val>10) 
                        {

                        alert('Enter positive integer value in the range of 1 - 10 for : No. Of Department(s)/Site(s)')
                        //alert(errMsg)
                        document.getElementById("NoOfDepTxt").value = document.getElementById("NoOfDepTxt1").value //ExstValue
                        document.getElementById("NoOfDepTxt").focus()
                        document.forms(0).submit()
                        return(false)
                        }


                        if(parseInt(document.getElementById("ExtDeptTxt").value) > parseInt(val)) 
                        {

                        //							alert('Enter Positive Integer Value Between 1 And 10 For: No. Of Audit(s) - '+Id)
                        alert('No. Of Department(s)/Site(s) value should be greater than current value, since for one of the department Audit Proposal is registered')
                        document.getElementById("NoOfDepTxt").focus()
                        document.getElementById("NoOfDepTxt").value=document.getElementById("ExtDeptTxt").value
                        //							   document.forms(0).submit()
                        return(false)
                        }
                        else
                        {
                             document.forms(0).submit()
                        }

                   }
                   else
                   {
                          alert('Enter positive integer value in the range of 1 - 10 for : No. Of Department(s)/Site(s)')
                         document.getElementById("NoOfDepTxt").value =ExstValue
                        document.getElementById("NoOfDepTxt").focus()
                        return(false)

                   }

                 }
                    
             }

	 }
	 
	 function NV1IsDigit2(e,ExtVal,src,errMsg)  ///Function To check Numeric values onblur Event if copied and paste Alphabets
    { 
        var AvailableVal = window.event.srcElement.value;   
       var  Value=''
        if(isNaN(AvailableVal)==true || AvailableVal=='')
         { window.event.srcElement.value=Value; } 
          else
        {
          NumValidation1(ExtVal,src,errMsg)
             document.forms(0).submit()
        }
    }
   


    function NV1noCopyKey(e,ExtVal,src,errMsg) {  
    
    if (window.event.keyCode == 13) {
                      return(false);
                 }
                 
        var forbiddenKeys = new Array('c','x','v');
        var keyCode = (e.keyCode) ? e.keyCode : e.which;
        var isCtrl;


        if(window.event)
            isCtrl = e.ctrlKey
        else
            isCtrl = (window.Event) ? ((e.modifiers & Event.CTRL_MASK) == Event.CTRL_MASK) : false;
   

        if(isCtrl) {
            for(i = 0; i < forbiddenKeys.length; i++) {
                if(forbiddenKeys[i] == String.fromCharCode(keyCode).toLowerCase()) {
                    return false;
                }
            }
            
            NumValidation1(ExtVal,src,errMsg)
               document.forms(0).submit()
        }
     
    }
	 	
	 	function  NumValidation1(ExtVal,src,errMsg)
		{   
	 
                var Id=src.substr(7,src.length)
                var val=  document.getElementById(src).value 
                var Val1=document.getElementById(ExtVal).value
                     
if (<%=TType %>==1 || <%=TType %>==2)
{

                if(val!='')
                {
                    if(isNaN(val))
                    {
                        //			alert('Enter Positive Integer Value Between 1 And 10 For: No. Of Audit(s) - ' +Id)
                        alert(errMsg)
                        document.getElementById(src).value =""

                        document.all(src).focus()
                        return(false)

                    }


                    if(val=='0' || val=='-0' ||  val=='00'   || val<0 || val.indexOf(".")!=-1 || val>10) 
                    {

                        //							alert('Enter Positive Integer Value Between 1 And 10 For: No. Of Audit(s) - '+Id)
                        alert(errMsg)
                        document.getElementById(src).value =""
                        document.all(src).focus()
                        document.forms(0).submit()
                        return(false)
                    }

                }
                
  }
  
  else
  {
       if(val!='')
                {
                    if(isNaN(val))
                    {
                        //			alert('Enter Positive Integer Value Between 1 And 10 For: No. Of Audit(s) - ' +Id)
                        alert(errMsg)
                        document.getElementById(src).value =Val1

                        document.all(src).focus()
                        return(false)

                    }


                    if(val=='0' || val=='-0' ||  val=='00'   || val<0 || val.indexOf(".")!=-1 || val>10) 
                    {

                        //							alert('Enter Positive Integer Value Between 1 And 10 For: No. Of Audit(s) - '+Id)
                        alert(errMsg)
                        document.getElementById(src).value =Val1
                        document.all(src).focus()
                        document.forms(0).submit()
                        return(false)
                    }

                }
                else
                {
                     alert(errMsg)
                        document.getElementById(src).value =Val1
                        document.all(src).focus()
                        document.forms(0).submit()
                        return(false)
                }
  }
  
	 	
	 	
	 	}
	 	
	 	function FnCheckAuditType()
	 	{
	 	    if(document.getElementById("AdtTypeDDL").value==2 || document.getElementById("AdtTypeDDL").value==3)
	 	    {
	 	        document.getElementById("NoOfDepTxt").disabled=true;
	 	        document.getElementById("NoOfDepTxt").value=1
	 	    }
	 	}
	 	
 	
           function AjaxDateValid()
       {   
            if((document.getElementById("AdtTypeDDL").value==1 || document.getElementById("AdtTypeDDL").value==3) && <%=TransType%>==1)
            {
        	    if (!Page_ClientValidate())
        	    {
                    return;
                }
                var xmlhttp;
               
                var i;
	            var j;
	            var Dates;
	            var ProcessIds;
	            var DateStr="";
	            var DateStrArr=new Array();
	            var ErrStr="";
	            var ErrStr1="";
    	        
	            Dates="";
	            ProcessIds="";
	            document.getElementById("DateTxt").value="";
	            document.getElementById("PrcsIdsTxt").value="";
	            document.getElementById("DeptIdsTxt").value="";
	             if(document.getElementById("AdtTypeDDL").value==1)
	             {
	                   if(document.getElementById("NoOfDepTxt").value!="")
	                  {  
	                    for(i=0;i<document.getElementById("NoOfDepTxt").value;i++)
	                  {
	                       document.getElementById("DeptIdsTxt").value +="#*#" + document.getElementById("DeptDDL_" + i).value;
	                       if(document.getElementById("NoOfSchTxt_" + i).value!="")
	                          {
	                            for(j=0;j<document.getElementById("NoOfSchTxt_" + i).value;j++)
	                               {
	                                  Dates +="$" + document.getElementById("SdateCal_" + i + "_" + j + "$CalDateVal").value;
	                                  ProcessIds +="$" + document.getElementById("ProcessTextBx_" + i + "_" + j).value;
	                                  if(Dates.indexOf("$")==0)
	                                    {
            	                              Dates=Dates.substring(1);
            	                              ProcessIds=ProcessIds.substring(1);
	                                    }
	                                    var Arr=new Array();
	                                     Arr=document.getElementById("SdateCal_" + i + "_" + j + "$CalDateVal").value.split("/")
	                                     var CombStr= "#*#" + Arr[0] + "_" + document.getElementById("ProcessTextBx_" + i + "_" + j).value + "_" + document.getElementById("DeptDDL_" + i).value + "#*#" ;
        	                             DateStrArr=DateStr.split("/")
	                                     if (Arr[0]==DateStrArr[0])
	                                        {
	                                          MnthName=GetMnthName(Arr[0]);
	                                          ErrStr1 ="More than one Audit is scheduled in " + MnthName + " month, do you want to continue?" + "\n ";
	                                        }
	                                       else
	                                         {
	                                          DateStr=document.getElementById("SdateCal_" + i + "_" + j + "$CalDateVal").value
	                                         }
	                                        }
	                                         document.getElementById("DateTxt").value +="#*#" + Dates;
	                                         document.getElementById("PrcsIdsTxt").value +="#*#" + ProcessIds;
	                    
	                                         if(document.getElementById("DateTxt").value.indexOf("#*#")==0)
                                               {
        	                                     document.getElementById("DateTxt").value=document.getElementById("DateTxt").value.substring(3);
        	                                     document.getElementById("PrcsIdsTxt").value=document.getElementById("PrcsIdsTxt").value.substring(3);
                                               }
	                                   }
	                                   if(document.getElementById("DeptIdsTxt").value.indexOf("#*#")==0)
	                                      {
            	                            document.getElementById("DeptIdsTxt").value=document.getElementById("DeptIdsTxt").value.substring(3);
	                                      }
	                              }
       	                          if(ErrStr1!="")
	                                {
	                                     var Flag=AlertMsgBox(ErrStr,ErrStr1);
	                                }
	                              ErrStr1="";
	                              if (Flag==7)
                                     {                         
                                     }
                                  else
                                    {
                                     if(Dates!="")
                                      {
                                        try {
                                             xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                                            }
                                         catch(ex)
                                               {
                                             try {
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
                                                     alert("Please Update The Web Browser");
                                                   }
                                        }
                      
                                     }     	
                                     xmlhttp.onreadystatechange=function()
                                       { 
                                         if(xmlhttp.readystate==4)
                                           {
                                                var s="";
                                                s=xmlhttp.responseText; 
                                                if(s!="")
                                                 { 
                                                  if(s==1)
                                                  {
                                                     var Flag=AlertMsgBox(ErrStr,ErrStr1);
                                                     if (Flag==7)
                                                      {                      
                                                      }
                                                     else
                                                      {
                                                        document.getElementById("btnConfirm").click();                        
                                                      }
                                                  }
                                                  else
                                                  {
                                                  if(ErrStr1!="")
                                                    {
                                                    var Flag=AlertMsgBox(ErrStr,ErrStr1);
                                                    }
                                                    else
                                                    {
                                                    var Flag="";
                                                    }
                                                  if (Flag==7)
                                                    {                      
                                                    }
                                                  else
                                                    {
                                                      document.getElementById("btnConfirm").click();                        
                                                    }
                                            
                                              }              
                                           }
                                            else
                                           {
                                             if(ErrStr1!="")
                                                {
                                                  var Flag=AlertMsgBox(ErrStr,ErrStr1);
                                                }
                                                else
                                                {
                                                 var Flag="";
                                               }
                                                if (Flag==7)
                                                  {                      
                                                  }
                                                else
                                                  {
                                                  document.getElementById("btnConfirm").click();                        
                                                  }
                        
                                           }
                                   }
                              }
                              var url="Ajax_DateValid.aspx?DeptIds=" + document.getElementById("DeptIdsTxt").value + "&PrcsIds=" + document.getElementById("PrcsIdsTxt").value + "&Dates=" + document.getElementById("DateTxt").value + "&TrnasType=" + <%=TransType%> + "&AdtTyp=1";
                              xmlhttp.open("POST",url,true);
                              xmlhttp.send(null);
                              }

                            }
	                    }
                        else
                        {
                        if (!Page_ClientValidate())
        	             {
                          return;
                          }
                          document.getElementById("btnConfirm").click();    
                       }   
                       }
                       else
                       {
                         if(document.getElementById("AdtTypeDDL").value==3  && <%=TransType%>==1)
                         {
                                var xmlHttp;
                               try 
                               {    
                                   //FF, Opera, Safari, Chrome, IE7+
                                   xmlHttp = new XMLHttpRequest();  
                               } 
                               catch(e) 
                               {    
                                   try 
                                   {      
                                       //IE6+
                                       xmlHttp  = new ActiveXObject("Microsoft.XMLHTTP");    
                                   } 
                                   catch(e) 
                                   {
                                       try 
                                       {
                                          xmlHttp  = new ActiveXObject("Msxml2.XMLHTTP");
                                       } 
                                       catch(e) 
                                       {
                                           xmlHttp  = null;
                                       }
                                   }
                               }  

                               if (xmlHttp!=null)
                               {
                                   xmlHttp.onreadystatechange=function()
                                   {
                                       if(xmlHttp.readyState==4)
                                       {  
                                           var s = xmlHttp.responseText;
                                           if(s=="1")
                                           {
                                                    var Flag=AlertMsgBox1(ErrStr,ErrStr1);
                                                     if (Flag==7)
                                                      {                      
                                                      }
                                                     else
                                                      {
                                                         document.getElementById("btnConfirm").click();                 
                                                      }
                                           }
                                           else if(s=="2")
                                           {
                                               document.getElementById("btnConfirm").click();   
                                           }
                    
                                       }
                   
                                   }
                               } 
                
                              var url="Ajax_DateValid.aspx?AdtTyp=3" + "&VenId=" + document.getElementById("VenRegId").value;
                               xmlHttp.open("POST",url,true);
                               xmlHttp.send(null);
                         }
                       }
	       }
	       else
           {
            document.getElementById("btnConfirm").click();
           }
     }
        
        
  function CallDMSPopup(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,UParam)
    {
        var Transcode=$("#TranscodeTxt").val(); //Added by P Suresh
        var pageURL = "../DMSManagement/DMSFilesSelPopUp.aspx?RType=" + RepositoyTypeId + "&FixedType=" + FixedType + "&SourceTypeId=" + SourceTypeId + "&DocSourceId=" + SourceId + "&PlantID=" + PlantID + "&UParam=" + UParam + "&IsuTransCode=" +Transcode; //Edited by P Suresh
        var SpWinObj = window.open(pageURL,'DMSPopUp',"height=600,width=800,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    
    function FnDocpopup()
    {
        var UParam = "";
        var RepositoyTypeId =3;   // Repository Type.
        var SourceTypeId =7;   // SourceType Id
        var SourceId =0;   // Source Id
        var PlantID ="<%=Session("PlantID")%>";
        var FixedType = 0;// 1: for loading documents of current type. 0: for selection based searching

        CallDMSPopup(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,UParam);

    }
           
            function Ret_OpenDMSPopUp(DocId,DocCode,DocDesc,UParam)
            {
               
                document.all("DocId").value=DocId ;
                var DocDescArr = new Array();
                DocDescArr = DocDesc.split("$@$");
                DocDesc = DocDescArr.join ('; ');
                document.all("DocNameLbl").innerHTML=document.all("DocName").value=DocDesc;
             
            }
           
            function OkRet_OpenDMSPopUp(UParam)
            {
               
            }
            
     
    </script>

    <script language="vbscript">
		
		function AlertMsgBox(ErrStr,ErrStr1)
		stop
		      if ErrStr1 = "" then
                ErrStr = "One of the selected Departments is already scheduled for Audit Next 6 months, do you want to continue?"
                else
                ErrStr=ErrStr1
              end if           
          
		    ReturnVal=MsgBox(ErrStr,36,"Message From Caliber QAMS")
		    if ReturnVal=6 then
		    AlertMsgBox=6
		    else
		    AlertMsgBox=7
		    end if
	    End function 
	    
	    	function AlertMsgBox1(ErrStr,ErrStr1)
		
		      if ErrStr1 = "" then
                ErrStr = "Already Audit is Scheduled for this Vendor. Do you want to Schedule another?"
                else
                ErrStr=ErrStr1
              end if           
          
		    ReturnVal=MsgBox(ErrStr,36,"Message From Caliber QAMS")
		    if ReturnVal=6 then
		    AlertMsgBox1=6
		    else
		    AlertMsgBox1=7
		    end if
	    End function 
	    
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Width="40%"></asp:TableCell>
                            <asp:TableCell ID="CodeTextTd" CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="AuditTypeRow"> <%--Tablerow shifted here by P Suresh--%>
                            <asp:TableCell CssClass="MainTD" ID="AdtTypeTD" Width="40%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="AdtTypeCapTD">
                             <asp:TextBox ID="DropDwnTxt"  runat="server"  AutoPostBack = "true" CssClass="HideRow" MaxLength="250" Width="200px" AccessKey="D" ></asp:TextBox>
                                <asp:DropDownList ID="AdtTypeDDL" Autopostback="true"  runat="server" Width="200px" onchange="PreLoad()">
                                    <asp:ListItem Value="">--Select--</asp:ListItem>
                                    <asp:ListItem Value="1">Self Inspection</asp:ListItem>
                                    <asp:ListItem Value="2">External Audit</asp:ListItem>
                                    <asp:ListItem Value="3">Vendor Audit</asp:ListItem>
                                    <%--<asp:ListItem Value="4">Management Review</asp:ListItem>--%>
                                </asp:DropDownList>
                            </asp:TableCell>
                             <asp:TableCell ID="AdtDdlTxt" runat ="server" CssClass ="HideRow"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DescTd"></asp:TableCell>
                            <asp:TableCell ID="DescTextTd" CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" onkeypress="taLimit()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--Audit Scope ---START--%>
                        <asp:TableRow ID="ScopeTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="ScoprTd" Width="40%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TableCell3">
                                <input type="button" id="ScopeBtn" onclick="OpenRuleTypePopUp()" title="Click Here"
                                    class='<%=RsnPUPCss%>' style="height: 20px">
                                <asp:Label ID="RuleDescLbl" runat="server" CssClass="LblCls"></asp:Label>
                                <asp:TextBox ID="RuleDescTxt" CssClass="HideRow" runat="server" BorderStyle="none"
                                    BorderColor="white" Width="300px"></asp:TextBox>
                                <asp:TextBox ID="RuleTypeIDTxt" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="RuleIDTxt" runat="server" CssClass="hiderow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--Audit Scope ---END--%>
                        <%--Manual Entry Audit Scope ---START--%>
                        <asp:TableRow ID = "ScopeMETr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="ScopeMETd"></asp:TableCell>
                            <asp:TableCell ID="ScopeMETxtTd" CssClass="MainTD">
                                <asp:TextBox ID="ScopeMeTxt" runat="server" CssClass="TxtCls" onkeypress="taLimit()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--Manual Entry Audit Scope ---END--%>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="PlantCodeTD"></asp:TableCell>
                            <asp:TableCell ID="PltCodeTextTd" CssClass="MainTD">
                                <asp:DropDownList ID="PlantCodeDDL" runat="server" Width="200px">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--Commented by P Suresh--%>
<%--                        <asp:TableRow ID="AuditTypeRow">
                            <asp:TableCell CssClass="MainTD" ID="AdtTypeTD" Width="40%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="AdtTypeCapTD">
                                <asp:DropDownList ID="AdtTypeDDL" runat="server" Width="200px" onchange="PreLoad()">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="1">Internal Audit(Self Inspection)</asp:ListItem>
                                    <asp:ListItem Value="2">External Audit</asp:ListItem>
                                    <asp:ListItem Value="3">Vendor Audit</asp:ListItem>--%>
                                    <%--<asp:ListItem Value="4">Management Review</asp:ListItem>--%>
<%--                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>--%>
                        <asp:TableRow ID="Row" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="ValTd" Width="40%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="Val1Td" ColumnSpan="2"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RegTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="RegTD" Width="40%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="RegCapTD">
                                <input type="button" id="RegPBtn" onclick="RegPopUpFn()" title="Click Here" class='RsnPUP'
                                    style="height: 20px">
                                <asp:Label ID="RegCodeLBL" runat="server" CssClass="LblCls"></asp:Label>
                                <asp:TextBox ID="RegCodeTxt" CssClass="HideRow" ReadOnly="true" runat="server" BorderStyle="none" BorderColor="white"
                                    Width="300px"></asp:TextBox>
                                <asp:TextBox ID="RegId" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="TextBox12" runat="server" CssClass="hiderow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="VendorTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="VendorTd" Width="40%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="VenCapTD">
                                <input type="button" id="VenPBtn" onclick="VendorPopUpFn()" title="Click Here" class='RsnPUP'
                                    style="height: 20px">
                                <asp:Label ID="VenValLbl" runat="server" CssClass="LblCls"></asp:Label>
                                <asp:TextBox ID="VenValTxt" ReadOnly="true" CssClass="HideRow" runat="server" BorderStyle="none"
                                    BorderColor="white" Width="300px"></asp:TextBox>
                                <asp:TextBox ID="VenIdTxt" runat="server" CssClass="hiderow"></asp:TextBox>
                                  <asp:TextBox ID="VenIdRealTxt" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="TextBox9" runat="server" CssClass="hiderow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ProdTR" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="ProdTd" Width="40%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TableCell2">
                                <input type="button" id="ProdPopUpBtn" onclick="ProductPopUpFn()" title="Click Here"
                                    class='<%=RsnPUPCss%>' style="height: 20px">
                                <asp:Label ID="ProdNameLbl" runat="server" CssClass="LblCls"></asp:Label>
                                <asp:TextBox ID="ProdNameTxt" ReadOnly="true" CssClass="HideRow" runat="server" BorderStyle="none"
                                    BorderColor="white" Width="300px"></asp:TextBox>
                                <asp:TextBox ID="ProdIdTxt" runat="server" CssClass="hiderow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="LastAuditSRw" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="LastAuditSTd">Date of Last Audit Performed - Start Date</asp:TableCell>
                            <asp:TableCell ID="StDateTd" CssClass="MainTD">
                                <uc2:CaliberCalender id="LAdtSDate" runat="server"></uc2:CaliberCalender>
                            </asp:TableCell>
                            <asp:TableCell ID="StDateTdLb" CssClass="HideRow">
                            </asp:TableCell>
                        </asp:TableRow>
                          <asp:TableRow ID="LastAuditERw" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="LastAuditETd">Date of Last Audit Performed - End Date</asp:TableCell>
                            <asp:TableCell ID="LAdtEDateTd" CssClass="MainTD">
                                <uc2:CaliberCalender id="LAdtEDate" runat="server"></uc2:CaliberCalender>
                            </asp:TableCell>
                             <asp:TableCell ID="LAdtEDateLb" CssClass="HideRow">
                                
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow id="NoOfDeptTr">
                            <asp:TableCell CssClass="MainTD" ID="NoOfDeptTd"></asp:TableCell>
                            <asp:TableCell ID="NoOfDpttxtTd" CssClass="MainTD">
                                <asp:TextBox ID="NoOfDepTxt" runat="server" AutoPostBack="true" onkeypress='return IsDigit1(event)' onblur='IsDigit2(event)'
                                 onmousedown='return noCopyMouse(event)' onkeydown='return noCopyKey(event)' 
                                                                                             
                                    CssClass="TxtCls" MaxLength="2" Width="35px" AccessKey="D" TabIndex="3"></asp:TextBox>
                                 <asp:TextBox ID="NoOfDepTxt1" runat="server" cssclass = "HideRow"></asp:TextBox>
                                <asp:Label ID="NoOfDeptLbl" runat="server" CssClass="HideRow"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="DepTabRw">
                            <asp:TableCell CssClass="MainTD" ID="DeptabTd" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="DeptTable">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="SpclRmrksTD"></asp:TableCell>
                            <asp:TableCell ID="RmrkRsnTxtTd" CssClass="MainTD">
                                <asp:TextBox ID="RmrkRsnTxt" runat="server" TextMode="MultiLine" MaxLength="250"
                                    onkeypress="taLimit()" onkeyup="taCount()" CssClass="TxtCls" Width="200px" AccessKey="D"
                                    TabIndex="3"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ID="AtcHFleTd" CssClass="MainTD">File Attachments(If Any)</asp:TableCell>
                            <asp:TableCell id="FileAttchTD">
                                <input type="button" onclick="FnDocpopup()" title="Click Here" class='<%=RsnPUPCss%>' style="height: 20px">
                                <asp:Label ID="DocNameLbl" runat="server" CssClass="LblCls"></asp:Label>
                                <asp:TextBox ID="DocId" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="DocName" runat="server" CssClass="hiderow"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell id="FileAttchTD1">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1" ID="OterIsuRefTd"></asp:TableCell>
                            <asp:TableCell ID="OtherIsuRef1Td" CssClass="MainTD">
                                <asp:RadioButtonList CssClass="MainTD" ID="OtherIsuRefRdl" RepeatDirection="Horizontal"
                                    runat="server" onclick="CssChange()">
                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="2" Selected="True">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="IsuRefTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1" ID="IsuRefTD" Style="font-weight: bold"
                                Width="30%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="FnIsuePopup()" class='<%=CssClass%>' tabindex="5">
                                <asp:Label ID="RefIsuDescLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="RefIsuIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="RefIsuDescTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RsnRmkRw" CssClass="HideRow">
                            <asp:TableCell ID="RsnTd" ColumnSpan="1" CssClass="MainTD" Style="font-weight: bold"
                                Width="30%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RsnRmkTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine"
                                    onkeypress="taLimit()" onkeyup="taCount()" Width="200px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                                <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow id="OthTr" CssClass="HideRow">								
								<asp:TableCell CssClass="MainTD" ID="OthTd" columnspan=2>       
								</asp:TableCell>
						</asp:TableRow>
                        <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc1:EsignObj id="EsignObj1" runat="server" visible="false">
                                </uc1:EsignObj>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="IARow" runat="server" CssClass="HideRow">
                <asp:TableCell>
                    <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                        CellSpacing="1" HorizontalAlign="Center">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell>
                         <input id="reloadValue" type="hidden" name="reloadValue" value="" />
      </asp:TableCell>
                            <asp:TableCell>
                                <input type="button" id="btn1Confirm" runat="server" value="Submit" onmouseover="this.className='ButOCls'"
                                    class="<%=ButtonCss%>" onclick="AjaxDateValid()" accesskey="C" causesvalidation="true"
                                    onmouseout="this.className='ButCls'" style="width: 70px;">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="HideRow" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButSelCls" onMouseOver="this.className='ButSelOCls'"
                                    onMouseOut="this.className='ButSelCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:TextBox ID="CntTxt" runat="server" Text="0"></asp:TextBox>                 
                    <asp:TextBox ID="TranscodeTxt" runat="server"></asp:TextBox>   <%--Added by P Suresh--%>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="DateTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="DeptIdsTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="PrcsIdsTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="AdtTypeTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="PrevVenIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="AvrIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TeamId" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ProcessId" runat="server"></asp:TextBox>
                    <asp:Button ID="Sbmt" runat="server" CausesValidation="false" />
                    <asp:TextBox ID="ReqalPeriodTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ReqalPrd" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ReqalFreq" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ItemIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ReqalFreqTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Txt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="RwTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="SelRwTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="SelDeptTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ExtDeptTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="VenRegId" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--
    //document.getElementById('CodeTxt').focus()
			
var taMaxLength = 250
		function taLimit() {
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		}

		function taCount() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength*1){
				taObj.value=taObj.value.substring(0,taMaxLength*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Characters")
			}
			}		
			
			
			
function LastEDateChk2(src, args){ 

 var flag =0
 var idate = document.all("LAdtEDate$CalDateVal").value
  var date = document.all("LAdtSDate$CalDateVal").value
var Flag
if (date=="")
{
    Flag= LastEDateChk() ;
}
else
{
    Flag= LastEDateChk1() ;
}

if(Flag==1){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    src.errormessage="Date of Last Audit Performed - End Date must less than or equal to current date";
  	    }
 if(Flag==2){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    src.errormessage="Date of Last Audit Performed - End Date must less than or equal to current date and greater than Start Date";
  	    }

 }
 
 function  LastStDateChk1(src,args){ 
 
 var Flag=LastStDateChk() ;
    if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    src.errormessage="Date of Last Audit Performed - Start Date must less than or equal to current date";
  	    }
 } 
 
 
//-->
</script>

<script language="vbscript">
function VBDateValidation(i,j)

       StDate=document.getElementById("SdateCal_" & i & "_" & j & "$CalDateVal").value
       EdDate=document.getElementById("EdateCal_" & i & "_" & j & "$CalDateVal").value
       
        if StDate="" or EdDate="" then exit function
        StDateAry=split(StDate,"/")
        StDateVal=dateSerial(StDateAry(2),StDateAry(0),StDateAry(1))

        EdDateAry=split(EdDate,"/")
        EdDateVal=dateSerial(EdDateAry(2),EdDateAry(0),EdDateAry(1))
          	  
        ThisMonth = <%=ThisMonth%>
        ThisYear = <%=ThisYear%>
        ThisDay = <%=ThisDay%>
        Today=dateSerial(ThisYear,ThisMonth,ThisDay)

        DDgap1=DateDiff("d",StDateVal,Today)
        DDgap=DateDiff("d",StDateVal,EdDateVal)

        if DDgap<0 then
            VBDateValidation=2
        end if
        if DDgap1>0 then
            VBDateValidation=1
        end if

end function

function VBDateChck(s)
    if document.getElementById("AvrIdTxt").value<>"" then
    ValDate=s
    ThisMonth = <%=ThisMonth%>
    ThisYear = <%=ThisYear%>
    ThisDay = <%=ThisDay%>
    Today=dateSerial(ThisYear,ThisMonth,ThisDay)
    
    ValDateAry=split(ValDate,"/")
    ValDateVal=dateSerial(ValDateAry(2),ValDateAry(0),ValDateAry(1))

    DDgap=DateDiff("d",ValDateVal,Today)
    VBDateChck=DDgap
    end if
end function
    
    function LastStDateChk 
      
    IDate=document.getElementById("LAdtSDate$CalDateVal").value
     
    if IDate="" then exit function

	ThisMonth = <%=ThisMonth%>
	ThisYear = <%=ThisYear%>
	ThisDay = <%=ThisDay%>
	Today=dateSerial(ThisYear,ThisMonth,ThisDay) 
	 
	
	IDateAry=split(IDate,"/")	
    IDateVal=dateSerial(IDateAry(2),IDateAry(0),IDateAry(1))
     
    DDgap=DateDiff("d",Today,IDateVal)
      
	if DDgap>0 then
		LastStDateChk=false
    end if  
  
 End function 
 
 function LastEDateChk 
      
    WDate=document.getElementById("LAdtEDate$CalDateVal").value
    if WDate="" then exit function

	ThisMonth = <%=ThisMonth%>
	ThisYear = <%=ThisYear%>
	ThisDay = <%=ThisDay%>
	Today=dateSerial(ThisYear,ThisMonth,ThisDay) 
	 
	
	WDateAry=split(WDate,"/")	
    WDateVal=dateSerial(WDateAry(2),WDateAry(0),WDateAry(1))
     
    DDgap=DateDiff("d",Today,WDateVal)
      
	if DDgap>0 then
		LastEDateChk=1
    end if  
  
 End function 
 
 function LastEDateChk1 
      
    WDate=document.getElementById("LAdtEDate$CalDateVal").value
    date1=document.all("LAdtSDate$CalDateVal").value
    if WDate="" or date1="" then exit function

	ThisMonth = <%=ThisMonth%>
	ThisYear = <%=ThisYear%>
	ThisDay = <%=ThisDay%>
	Today=dateSerial(ThisYear,ThisMonth,ThisDay) 
	 
	
	WDateAry=split(WDate,"/")	
    WDateVal=dateSerial(WDateAry(2),WDateAry(0),WDateAry(1))
    
    date1Ary=split(date1,"/")
    date1Val=dateSerial(date1Ary(2),date1Ary(0),date1Ary(1))
     
    DDgap=DateDiff("d",Today,WDateVal)
    
    DDgap1=DateDiff("d",date1Val,WDateVal)
      
	if DDgap>0 or DDgap1<0 then
		LastEDateChk1=2
    end if  
  
 End function 
    
    
' if window.history.back(-1)  then
'	val DDChk =	document.getElementById("DropDwnTxt").value
'	val DDAct = document.getElementById("AdtTypeDDL").value
'	alert(DDChk)
'		alert(DDAct)
'	if DDChk <> DDAct then 
'	document.getElementById("AdtTypeDDL").value = DDChk
'	'document.forms(0).submit()
'	end if
'end if

</script>

<script type="text/javascript">
       jQuery(document).ready(function()
        {
                var d = new Date();
                d = d.getTime();
                if (jQuery('#reloadValue').val().length == 0)
                {
                        jQuery('#reloadValue').val(d);
                        jQuery('body').show();
                }
                else
                {
                        jQuery('#reloadValue').val('');
                        location.reload();
                }
        });
   </script>
<%--<script type = "text/javascript" >
  function preventBack(){document.forms(0).submit();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
    
</script>--%>

<script type="text/javascript">


var bajb_backdetect={Version:'1.0.0',Description:'Back Button Detection',Browser:{IE:!!(window.attachEvent&&!window.opera),Safari:navigator.userAgent.indexOf('Apple')>-1,Opera:!!window.opera},FrameLoaded:0,FrameTry:0,FrameTimeout:null,OnBack:function(){alert('Back Button Clicked')},BAJBFrame:function(){var BAJBOnBack=document.getElementById('BAJBOnBack');if(bajb_backdetect.FrameLoaded>1){if(bajb_backdetect.FrameLoaded==2){bajb_backdetect.OnBack();history.back()}}bajb_backdetect.FrameLoaded++;if(bajb_backdetect.FrameLoaded==1){if(bajb_backdetect.Browser.IE){bajb_backdetect.SetupFrames()}else{bajb_backdetect.FrameTimeout=setTimeout("bajb_backdetect.SetupFrames();",700)}}},SetupFrames:function(){clearTimeout(bajb_backdetect.FrameTimeout);var BBiFrame=document.getElementById('BAJBOnBack');var checkVar=BBiFrame.src.substr(-11,11);if(bajb_backdetect.FrameLoaded==1&&checkVar!="HistoryLoad"){BBiFrame.src="blank.html?HistoryLoad"}else{if(bajb_backdetect.FrameTry<2&&checkVar!="HistoryLoad"){bajb_backdetect.FrameTry++;bajb_backdetect.FrameTimeout=setTimeout("bajb_backdetect.SetupFrames();",700)}}},SafariHash:'false',Safari:function(){if(bajb_backdetect.SafariHash=='false'){if(window.location.hash=='#b'){bajb_backdetect.SafariHash='true'}else{window.location.hash='#b'}setTimeout("bajb_backdetect.Safari();",100)}else if(bajb_backdetect.SafariHash=='true'){if(window.location.hash==''){bajb_backdetect.SafariHash='back';bajb_backdetect.OnBack();history.back()}else{setTimeout("bajb_backdetect.Safari();",100)}}},Initialise:function(){if(bajb_backdetect.Browser.Safari){setTimeout("bajb_backdetect.Safari();",600)}else{document.write('<iframe src="blank.html" style="display:none;" id="BAJBOnBack" onunload="alert(\'de\')" onload="bajb_backdetect.BAJBFrame();"></iframe>')}}};bajb_backdetect.Initialise();

bajb_backdetect.OnBack = function()
{

}

</script>

</html>
