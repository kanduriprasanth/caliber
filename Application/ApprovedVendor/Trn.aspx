<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="ApprovedVendor.Trn" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<%@ Register TagPrefix="uc2" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript" src="../JScript/jquery.min.js"></script>
    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'

	//-->
	 function fnOpenCustPopUp()
	 {
		SetPopDimensions()
    	var pageURL = "CustomerPopUp.aspx"
    	
	    var features = "height=390,width=" + PopUpWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + PopUpLeftTopY + ",left=" + PopUpLeftTopX
	    SpWinObj = window.open(pageURL,'SpecCodes',features)
	    if(SpWinObj.opener == null) SpWinObj.opener=self;
	    SpWinObj.focus();
    }
    
    //Added by P Suresh to display message if we select different Items That are not mapped in selected Audit reference link 
    function VenQuaAdtValid()
    {
    	if (!Page_ClientValidate())
	    {
            Page_BlockSubmit = false;
            Page_IsValid =true;
            return;
        }
        if (document.getElementById("ItemsFlagTxt").value=="2")
        {
            if (document.getElementById("AdtPrfmRbl_0").checked == true)
            {
                var Flag=AlertMsgBox();
                if (Flag==6)
                {                      
                    document.getElementById("btnConfirm").click();  
                }
            }
            else
            {
                document.getElementById("btnConfirm").click();
            }
        }
        else
        {
            document.getElementById("btnConfirm").click();  
        }
    }
    
    function ValRefPopup(src,args)
    {
        args.IsValid=true;
        Page_IsValid=true;

        if(document.getElementById("AdtPrfmRbl_0").checked == true && (document.getElementById("DescnRbl_0").checked == true || document.getElementById("DescnRbl_1").checked == true || document.getElementById("DescnRbl_2").checked == true || document.getElementById("DescnRbl_3").checked == true))
        {
            if (document.getElementById("AdtCodeTxt").value == "")
            {
                args.IsValid=false;
                Page_IsValid=false;
            }
        }
    }
    
    function ValDateCC(src,args)
    {
        args.IsValid=true;
        Page_IsValid=true;

        if((document.getElementById("AdtPrfmRbl_1").checked == true) && (document.getElementById("DescnRbl_0").checked == true || document.getElementById("DescnRbl_1").checked == true || document.getElementById("DescnRbl_2").checked == true || document.getElementById("DescnRbl_3").checked == true))
        {
            if (document.getElementById("ValDate_CalDateDisplay").value == "")
            {
                args.IsValid=false;
                Page_IsValid=false;
            }
        }
    }
    
//Validtion for Valid Up to Date field
//    function ValUptoDateCV(src,args)
//    {
//        args.IsValid=true;
//        Page_IsValid=true;

//        if((document.getElementById("DescnRbl_0").checked == true || document.getElementById("DescnRbl_3").checked == true))
//        {
//            if (document.getElementById("CalDateTdCal_CalDateDisplay").value == "")
//            {
//                args.IsValid=false;
//                Page_IsValid=false;
//            }
//        }
//    }
    //-----
    
    function fnCrCustSetToCode(CustId,CustName,CustCode,Category,BsaId,VendCode,VenItemIds,VenAddDetId,VenItemStsId)
    {
        document.getElementById("AdtPrfmRbl_0").checked = true
        document.getElementById("AdtPrfmRbl_1").checked = false
        document.getElementById("tmp").value=""
        
        document.getElementById("DescnRbl_0").checked=false;
        document.getElementById("DescnRbl_1").checked=false;
        document.getElementById("DescnRbl_2").checked=false;
        document.getElementById("DescnRbl_3").checked=false;      
                    
        document.getElementById("AuditPopUpTr").className="HideRow";
        document.getElementById("QuaCriTr").className="HideRow";
        document.getElementById("QuaVldFrmTr1").className="HideRow";
        document.getElementById("QuaVldFrmTr2").className="HideRow";
        document.getElementById("ValDateTr").className="HideRow"; 
        //-----
        document.getElementById("MatAddDetTr").className="HideRow"; 
                
        //-----
        document.getElementById("AdtCodeLbl").innerHTML="";
        document.getElementById("AdtDispCodeLbl").innerHTML="";
   	    document.getElementById("AdtIdTxt").value="";
   	    document.getElementById("AdtCodeTxt").value="";
   	    document.getElementById("DOfQalValTd1").innerHTML="";
   	    document.getElementById("DOfQalValTxt").value="";
   	    document.getElementById("AcEDateTxt").value="";
   	    document.getElementById("RgsAulIdTxt").value="";
   	    document.getElementById("AdtItemsTxt").value="";
        //-----
 
        document.getElementById("QuaCriTxt").value="";
        document.getElementById("DOfQalValTd1").innerHTML="";
        //document.getElementById("CalDateTd").innerHTML="";
        //document.getElementById("TolCalDateTd").innerHTML="";
        document.getElementById("CalDateTdCal_CalDateDisplay").value="";
        document.getElementById("TolCalDateTdCal_CalDateDisplay").value="";
        document.getElementById("ValDate_CalDateDisplay").value = "";
        
        document.getElementById("ItemIdsTxt").value = "";
        document.getElementById("ItemIdsTxtOri").value = "";
        
        if(document.getElementById("BsaIdTxt").value!=BsaId)
        {
            document.getElementById("PrdNameLbl").innerHTML="";
   	        document.getElementById("PrdIdTxt").value="";
   	        document.getElementById("PrdNameTxt").value="";
   	        document.getElementById("PrdNameTxt2").value="";
   	        document.getElementById("ItemIdsTxt").value="";
   	        document.getElementById("ItemIdsTxtOri").value="";
   	        document.getElementById("ReqalPrd").value="";
   	        document.getElementById("ReqalFreq").value="";
   	        document.getElementById("TolPrdTxt").value="";      
   	        document.getElementById("TolFreqTxt").value="";
   	        document.getElementById("DescnRbl").value="";
   	        document.getElementById("DescnRbl_0").checked=false;
            document.getElementById("DescnRbl_1").checked=false;
            document.getElementById("QuaCriTr").className="HideRow";
            document.getElementById("AdtCodeLbl").innerHTML=""
            document.getElementById("AdtIdTxt").value=""
            document.getElementById("AdtCodeTxt").value=""
            document.getElementById("DOfQalValTd1").innerHTML=""
            document.getElementById("DOfQalValTxt").value=""
            document.getElementById("ValDateTr").className="HideRow";
        }

        document.getElementById("BsaIdTxt").value=BsaId
        document.getElementById("BusnsId").value=BsaId
        document.getElementById("CustIdTxt").value=CustId
        
        document.getElementById("VenItemIdsTxt").value=VenItemIds
        document.getElementById("VenAddDetTxt").value=VenAddDetId
        document.getElementById("VenItemStsTxt").value=VenItemStsId
        
        document.getElementById("VendCodeTxt").value=VendCode
        document.getElementById("AdtCodeTxt").value=""
        document.getElementById("QuaCriTr").className="HideRow";
        //-----
        
        
        if(CustName!="")
        {
            document.getElementById("BsaLbl").innerHTML=CustName + '(' + CustCode + ')'
            document.getElementById("BsaTxt").value=CustName + '(' + CustCode + ')'
        }
        else
        {
            document.getElementById("BsaLbl").innerHTML="";
            document.getElementById("BsaTxt").value="";
        }
        
        document.getElementById("BsaCodeTxt").value=CustCode
        document.getElementById("DescTxt").value=CustName
        document.getElementById("CategoryTxt").value=Category
        if(parseInt(Category)==1)
        {
            document.getElementById("TypeRBL_0").checked=true;
        }
        else
        {
            document.getElementById("TypeRBL_1").checked=true;
        }
        
        if(document.getElementById("BsaIdTxt").value=="")
        {
            document.getElementById("TypeRBL_0").checked=false;
            document.getElementById("TypeRBL_1").checked=false;
        }
    }

    function FnOpenPrdPopup()
    {
        if(document.getElementById("BsaIdTxt").value=="")
        {
            alert('Select Vendor');
            return false;
        }
	    SetPopDimensions()
    	var pageURL = "../Vndor/ProductMaterialPopUp.aspx?Flag=3&VendId=" + document.getElementById("BsaIdTxt").value + "&MatIds=" + document.getElementById("ItemIdsTxt").value + "&CustId=" + document.getElementById("CustIdTxt").value
    	PopUpWidth=600
    	PopUpHeight=400
        var features = "height="+ PopUpHeight + ",width=" + PopUpWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=NO,top=" + PopUpLeftTopY +  ",left=" + PopUpLeftTopX
        SpWinObj = window.open(pageURL,'SpecCodes1',features)
		if(SpWinObj.opener == null) SpWinObj.opener=self;
		SpWinObj.focus();
	}
	
    function fnPrdCrSetToCode(KdIdVal,KfLableVal,KfLableVal2,KfCodeVal,ReqalPrd,ReqalFreq,TolPrdTxt,TolFreqTxt)
    {
    
        document.getElementById("AdtPrfmRbl_0").checked = false
        document.getElementById("AdtPrfmRbl_1").checked = false
        document.getElementById("tmp").value=""
        
        document.getElementById("DescnRbl_0").checked=false;
        document.getElementById("DescnRbl_1").checked=false;
        document.getElementById("DescnRbl_2").checked=false;
        document.getElementById("DescnRbl_3").checked=false;
        
        document.getElementById("AuditPopUpTr").className="HideRow";
        document.getElementById("QuaCriTr").className="HideRow";
        document.getElementById("QuaVldFrmTr1").className="HideRow";
        document.getElementById("QuaVldFrmTr2").className="HideRow";
        document.getElementById("ValDateTr").className="HideRow"; 
                
        //-----
        document.getElementById("AdtCodeLbl").innerHTML="";
        document.getElementById("AdtDispCodeLbl").innerHTML="";
   	    document.getElementById("AdtIdTxt").value="";
   	    document.getElementById("AdtCodeTxt").value="";
   	    document.getElementById("DOfQalValTd1").innerHTML="";
   	    document.getElementById("DOfQalValTxt").value="";
   	    document.getElementById("AcEDateTxt").value="";
   	    document.getElementById("RgsAulIdTxt").value="";
   	    document.getElementById("AdtItemsTxt").value="";
        //-----
 
        document.getElementById("QuaCriTxt").value="";
        document.getElementById("DOfQalValTd1").innerHTML="";
//        document.getElementById("CalDateTd").innerHTML="";
//        document.getElementById("TolCalDateTd").innerHTML="";
        document.getElementById("CalDateTdCal_CalDateDisplay").value="";
        document.getElementById("TolCalDateTdCal_CalDateDisplay").value="";
        document.getElementById("ValDate_CalDateDisplay").value = "";     
                
        if(KfCodeVal!="")
        {
            document.getElementById("PrdNameLbl").innerHTML=KfLableVal 
            document.getElementById("PrdNameTxt").value=KfLableVal
            document.getElementById("PrdNameTxt2").value=KfLableVal2
        }
        else
        {
            document.getElementById("PrdNameLbl").innerHTML=""
            document.getElementById("PrdNameTxt").value=""
            document.getElementById("PrdNameTxt2").value=""
        }
        if (document.getElementById("PrdIdTxt").value!=KdIdVal)
        {
            document.getElementById("DescnRbl_0").checked=false;
            document.getElementById("DescnRbl_1").checked=false;
            document.getElementById("AdtCodeLbl").innerHTML=""
            document.getElementById("AdtIdTxt").value=""
            document.getElementById("AdtCodeTxt").value=""
            document.getElementById("DOfQalValTd1").innerHTML=""
            document.getElementById("DOfQalValTxt").value=""
            //document.getElementById("ValDateTr").className="HideRow";
        }
   	    document.getElementById("PrdIdTxt").value=KdIdVal
   	    document.getElementById("ItemIdsTxt").value=KdIdVal
   	    document.getElementById("ItemIdsTxtOri").value=KdIdVal
   	    document.getElementById("ReqalPrd").value=ReqalPrd
   	    document.getElementById("ReqalFreq").value=ReqalFreq
   	    document.getElementById("TolPrdTxt").value=TolPrdTxt
   	    document.getElementById("TolFreqTxt").value=TolFreqTxt
   	    document.getElementById("ItemCodeTxt").value=KfCodeVal
   	  
   	    if (KdIdVal=="")
   	    {
//   	    document.getElementById("CalDateTd").innerText="";
//   	    document.getElementById("TolCalDateTd").innerText="";
            document.getElementById("CalDateTdCal_CalDateDisplay").value="";
            document.getElementById("TolCalDateTdCal_CalDateDisplay").value="";
            Form1.submit();
   	    }
   	    
    }
    
    function SubMitForm2()
    {
        Form1.submit();
    }
    
    function SubMitForm()
    {
        document.getElementById("btnHiddenItem").click();
//        Form1.submit();
    }
    
    function CallDMSPopup(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,UParam)
    {
        var Transcode=$("#TranscodeTxt").val(); //Added by P Suresh
        var pageURL = "../DMSManagement/DMSFilesSelPopUp.aspx?RType=" + RepositoyTypeId + "&FixedType=" + FixedType + "&SourceTypeId=" + SourceTypeId + "&DocSourceId=" + SourceId + "&PlantID=" + PlantID + "&UParam="  + UParam + "&IsuTransCode=" +Transcode;
        var SpWinObj = window.open(pageURL,'DMSPopUp',"height=600,width=800,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    
    function FnDocpopup(cnt)
    {
        var UParam = cnt;
        var RepositoyTypeId =3;   // Repository Type.
        var SourceTypeId =7;   // SourceType Id
        var SourceId =0;   // Source Id
        var PlantID ="<%=Session("PlantID")%>";
        var FixedType = 0;// 1: for loading documents of current type. 0: for selection based searching

        CallDMSPopup(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,UParam);

    }
           
            function Ret_OpenDMSPopUp(DocId,DocCode,DocDesc,UParam)
            {
               
                document.all("DocIdTxt_" + UParam).value=DocId ;
                var DocCodeArr = new Array();
                DocCodeArr = DocDesc.split("$@$");
                DocCode = DocCodeArr.join ('; ');
                document.all("DocNameLbl_" + UParam).innerHTML=document.all("DocNameTxt_" + UParam).value=DocCode;
             
            }
           
            function OkRet_OpenDMSPopUp(UParam)
            {
               
            }
            
            function FnOpenAuditPopup()
            {
////              if(document.getElementById("BusnsId").value=="" && document.getElementById("BusnsId").value=="")
//                if(document.getElementById("BusnsId").value=="" && document.getElementById("PrdIdTxt").value=="")
//                {
//                    alert('Select Vendor and Item(s)');
//                    return false;
//                }
//                else if(document.getElementById("BusnsId").value=="")
//                {
//                    alert('Select Vendor');
//                    return false;
//                }
//                else if(document.getElementById("PrdIdTxt").value=="")
//                {
//                    alert('Select Item(s)');
//                    return false;
//                }
//                else if(document.getElementById("AdtPrfmRbl_0").checked==false && document.getElementById("AdtPrfmRbl_1").checked==false)
//                {
//                    alert('Select Audit Performed');
//                    return false;
//                }
//                else
//                {
                    SetPopDimensions()
    	            var pageURL = "AdtPlanPopUp.aspx?BsaId=" + document.getElementById("BusnsId").value
    	            PopUpWidth=600
    	            PopUpHeight=400
                    var features = "height="+ PopUpHeight + ",width=" + PopUpWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=NO,top=" + PopUpLeftTopY +  ",left=" + PopUpLeftTopX
		            SpWinObj = window.open(pageURL,'SpecCodes1',features)
		            if(SpWinObj.opener == null) SpWinObj.opener=self;
		            SpWinObj.focus();
//		        }
            }
            
            function fnAdtSetToCode(KdIdVal,KfLableVal,KfCodeVal,AEDateVal,AEDate,RgsAulId,ItemIds)
            {
                document.getElementById("AdtCodeLbl").innerHTML=KfCodeVal
                document.getElementById("AdtDispCodeLbl").innerHTML=KfCodeVal
   	            document.getElementById("AdtIdTxt").value=KdIdVal
   	            document.getElementById("AdtCodeTxt").value=KfCodeVal
   	            document.getElementById("DOfQalValTd1").innerHTML=AEDateVal
//   	            document.getElementById("TolCalDateTd").innerHTML=""
//   	            document.getElementById("CalDateTd").innerHTML=""
                document.getElementById("CalDateTdCal_CalDateDisplay").value="";
                document.getElementById("TolCalDateTdCal_CalDateDisplay").value="";
   	            document.getElementById("DOfQalValTxt").value=AEDateVal
   	            document.getElementById("AcEDateTxt").value=AEDate
   	            document.getElementById("RgsAulIdTxt").value=RgsAulId
   	            document.getElementById("AdtItemsTxt").value=ItemIds
   	            document.getElementById("btnChkItems").click();
            }
            function FnShowHide()
            {
//              if(document.getElementById("BusnsId").value=="" && document.getElementById("PrdIdTxt").value=="" && document.getElementById("AdtPrfmTxt").value=="")
                if(document.getElementById("BusnsId").value=="" && document.getElementById("PrdIdTxt").value=="")
                {
                    document.getElementById("DescnRbl_0").checked=false;
                    document.getElementById("DescnRbl_1").checked=false;
                    document.getElementById("DescnRbl_2").checked=false;
                    document.getElementById("DescnRbl_3").checked=false;
                    alert('Select Vendor, Item(s)');
                    return false;
                }
                else if(document.getElementById("PrdIdTxt").value=="" && document.getElementById("AdtPrfmTxt").value=="")
                {
                    document.getElementById("DescnRbl_0").checked=false;
                    document.getElementById("DescnRbl_1").checked=false;
                    document.getElementById("DescnRbl_2").checked=false;
                    document.getElementById("DescnRbl_3").checked=false;
                    alert('Select Item(s) and Audit Performed');
                    return false;
                }
                else if(document.getElementById("BusnsId").value=="")
                {
                    document.getElementById("DescnRbl_0").checked=false;
                    document.getElementById("DescnRbl_1").checked=false;
                    document.getElementById("DescnRbl_2").checked=false;
                    document.getElementById("DescnRbl_3").checked=false;
                    alert('Select Vendor');
                    return false;
                }
                else if(document.getElementById("PrdIdTxt").value=="")
                {
                    document.getElementById("DescnRbl_0").checked=false;
                    document.getElementById("DescnRbl_1").checked=false;
                    document.getElementById("DescnRbl_2").checked=false;
                    document.getElementById("DescnRbl_3").checked=false;
                    alert('Select Item(s)');
                    return false;
                }
                else if(document.getElementById("AdtPrfmRbl_0").checked==false && document.getElementById("AdtPrfmRbl_1").checked==false)
                {
                    document.getElementById("DescnRbl_0").checked=false;
                    document.getElementById("DescnRbl_1").checked=false;
                    document.getElementById("DescnRbl_2").checked=false;
                    document.getElementById("DescnRbl_3").checked=false;
                    alert('Select Audit Performed');
                    return false
                }
                if(document.getElementById("DescnRbl_0").checked==true)
                {
                    if(document.getElementById("AdtPrfmRbl_0").checked==true)
                    {
                        document.getElementById("AuditPopUpTr").className="";
                        document.getElementById("QuaCriTr").className="HideRow";
                        document.getElementById("QuaVldFrmTr1").className="";
                        document.getElementById("QuaVldFrmTr2").className="HideRow";
                        document.getElementById("ValDateTr").className="";
                        
                    }
                    else if(document.getElementById("AdtPrfmRbl_1").checked==true)
                    {
                        document.getElementById("QuaCriTr").className="";
                        document.getElementById("AuditPopUpTr").className="HideRow";
                        document.getElementById("QuaVldFrmTr1").className="HideRow";
                        document.getElementById("QuaVldFrmTr2").className = "";
                        document.getElementById("ValDateTr").className="";                   
                    }
                }
                if(document.getElementById("DescnRbl_1").checked==true)
                {
                    if(document.getElementById("AdtPrfmRbl_0").checked==true)
                    {
                        document.getElementById("AuditPopUpTr").className="";
                        document.getElementById("QuaCriTr").className="HideRow";
                        document.getElementById("QuaVldFrmTr1").className="";
                        document.getElementById("QuaVldFrmTr2").className="HideRow";
                        document.getElementById("ValDateTr").className="HideRow";
                    }
                    else if(document.getElementById("AdtPrfmRbl_1").checked==true)
                    {
                        document.getElementById("QuaCriTr").className="";
                        document.getElementById("AuditPopUpTr").className="HideRow";
                        document.getElementById("QuaVldFrmTr1").className="HideRow";
                        document.getElementById("QuaVldFrmTr2").className="";
                        document.getElementById("ValDateTr").className="HideRow";
                    }
                }
                if(document.getElementById("DescnRbl_2").checked==true)
                {
                    if(document.getElementById("AdtPrfmRbl_0").checked==true)
                    {
                        document.getElementById("AuditPopUpTr").className="";
                        document.getElementById("QuaCriTr").className="HideRow";
                        document.getElementById("QuaVldFrmTr1").className="";
                        document.getElementById("QuaVldFrmTr2").className="HideRow";
                        document.getElementById("ValDateTr").className="HideRow";                    
                    }
                    else if(document.getElementById("AdtPrfmRbl_1").checked==true)
                    {
                        document.getElementById("QuaCriTr").className="";
                        document.getElementById("AuditPopUpTr").className="HideRow";
                        document.getElementById("QuaVldFrmTr1").className="HideRow";
                        document.getElementById("QuaVldFrmTr2").className="";
                        document.getElementById("ValDateTr").className="HideRow";
                    }
                }
                if(document.getElementById("DescnRbl_3").checked==true)
                {
                    if(document.getElementById("AdtPrfmRbl_0").checked==true)
                    {
                        document.getElementById("AuditPopUpTr").className="";
                        document.getElementById("QuaCriTr").className="HideRow";
                        document.getElementById("QuaVldFrmTr1").className="";
                        document.getElementById("QuaVldFrmTr2").className="HideRow";
                        document.getElementById("ValDateTr").className="";
                    }
                    else if(document.getElementById("AdtPrfmRbl_1").checked==true)
                    {
                        document.getElementById("QuaCriTr").className="";
                        document.getElementById("AuditPopUpTr").className="HideRow";
                        document.getElementById("QuaVldFrmTr1").className="HideRow";
                        document.getElementById("QuaVldFrmTr2").className="";
                        document.getElementById("ValDateTr").className="";
                    }
                }
            }
            
            function ReadInfo()
            {

                    if(document.getElementById("AdtPrfmRbl_0").checked==true && document.getElementById("tmp").value!="2")
                    {
                        if(document.getElementById("tmp").value=="" || document.getElementById("tmp").value=="undefined")
                        {
                             document.getElementById("tmp").value="1";
                        }
                        else
                        {
                            return;
                        }                        
                    }
                    else if(document.getElementById("AdtPrfmRbl_1").checked==true && document.getElementById("tmp").value!="1")
                    {
                        if(document.getElementById("tmp").value=="" || document.getElementById("tmp").value=="undefined")
                        {
                             document.getElementById("tmp").value="2";
                        }
                        else
                        {
                            return;
                        }                        
                    }
                    else
                    {
                        if(document.getElementById("AdtPrfmRbl_0").checked==true)
                        {
                            document.getElementById("tmp").value="1";
                        }
                        else if(document.getElementById("AdtPrfmRbl_1").checked==true)
                        {
                            document.getElementById("tmp").value="2";
                        }
                    }
                document.getElementById("DescnRbl_0").checked=false;
                document.getElementById("DescnRbl_1").checked=false;
                document.getElementById("DescnRbl_2").checked=false;
                document.getElementById("DescnRbl_3").checked=false;      
                    
                document.getElementById("AuditPopUpTr").className="HideRow";
                document.getElementById("QuaCriTr").className="HideRow";
                document.getElementById("QuaVldFrmTr1").className="HideRow";
                document.getElementById("QuaVldFrmTr2").className="HideRow";
                document.getElementById("ValDateTr").className="HideRow"; 
                
                //-----
                document.getElementById("AdtCodeLbl").innerHTML="";
                document.getElementById("AdtDispCodeLbl").innerHTML="";
   	            document.getElementById("AdtIdTxt").value="";
   	            document.getElementById("AdtCodeTxt").value="";
   	            document.getElementById("DOfQalValTd1").innerHTML="";
   	            document.getElementById("DOfQalValTxt").value="";
   	            document.getElementById("AcEDateTxt").value="";
   	            document.getElementById("RgsAulIdTxt").value="";
   	            document.getElementById("AdtItemsTxt").value="";   	            
                //-----
 
                document.getElementById("QuaCriTxt").value="";
                document.getElementById("DOfQalValTd1").innerHTML="";
//                document.getElementById("CalDateTd").innerHTML="";
//                document.getElementById("TolCalDateTd").innerHTML="";
                document.getElementById("CalDateTdCal_CalDateDisplay").value="";
                document.getElementById("TolCalDateTdCal_CalDateDisplay").value="";
                document.getElementById("ValDate_CalDateDisplay").value = "";
                                
                if(document.getElementById("AdtPrfmRbl_0").checked==true)
                {
                    document.getElementById("AdtPrfmTxt").value="1";
                }
                
                if(document.getElementById("AdtPrfmRbl_1").checked==true)
                {
                    document.getElementById("AdtPrfmTxt").value="2";
                }
             }
            
             function FnRemarkVaildation1(src,args){                   
                if(document.getElementById("AdtPrfmRbl_1").checked==true)
                {
                    if(document.getElementById("DescnRbl_0").checked==true || document.getElementById("DescnRbl_1").checked==true || document.getElementById("DescnRbl_2").checked==true || document.getElementById("DescnRbl_3").checked==true)
                    {
                        if($.trim(document.getElementById("QuaCriTxt").value)=="")
                        {
                            args.IsValid=false;
                            Page_IsValid=false;
                        }
                    }
                }
             }
             
//            function FnRemarkVaildation2(src,args){
//                    args.IsValid=true;
//                    Page_IsValid=true;
//                    
//                if(document.getElementById("DescnRbl_1").checked==true && document.getElementById("AdtPrfmRbl_1").checked==true)
//                {
//                    if(document.getElementById("RmrkTxt").value=="")
//                    {
//                        args.IsValid=false;
//                        Page_IsValid=false;
//                    }
//                }
//             }
             
//             function FnRemarkVaildation3(src,args){
//             args.IsValid=true;
//                    Page_IsValid=true;
//                    
//                if(document.getElementById("DescnRbl_2").checked==true && document.getElementById("AdtPrfmRbl_1").checked==true)
//                {
//                    if(document.getElementById("DisConCriTxt").value=="")
//                    {
//                        args.IsValid=false;
//                        Page_IsValid=false;
//                    }
//                }
//             }
             
             function DecisionVal(src,args){
             args.IsValid=true;
                    Page_IsValid=true;
                    
                if(document.getElementById("DescnRbl_0").checked==false && document.getElementById("DescnRbl_1").checked==false && document.getElementById("DescnRbl_2").checked==false && document.getElementById("DescnRbl_3").checked==false)
                {
                    args.IsValid=false;
                    Page_IsValid=false;
                }
             }
             
             function DecisionVal2(src,args){
             args.IsValid=true;
                    Page_IsValid=true;
                    
                if(document.getElementById("AdtPrfmRbl_0").checked==false && document.getElementById("AdtPrfmRbl_1").checked==false)
                {
                    args.IsValid=false;
                    Page_IsValid=false;
                }
             }
             
             function ValDateChk(src,args){
                args.IsValid=true;
                Page_IsValid=true;
               
               if((document.getElementById("AdtPrfmRbl_1").checked == true) && (document.getElementById("DescnRbl_0").checked == true || document.getElementById("DescnRbl_1").checked == true || document.getElementById("DescnRbl_2").checked == true || document.getElementById("DescnRbl_3").checked == true))
               {
                   var Flag=ValDateChkVB();
                   if (Flag==false)
                   {
                       args.IsValid=false;
                       Page_IsValid=false;
                   }
               }
             }
             
             function ValUptoDateChk(src,args){
                args.IsValid=true;
                Page_IsValid=true;
               
               if((document.getElementById("DescnRbl_0").checked == true) || (document.getElementById("DescnRbl_3").checked == true))
               {
                   var Flag=ValUptoDateChkVB();
                   if (Flag==false)
                   {
                       args.IsValid=false;
                       Page_IsValid=false;
                   }
               }
             }
             
              function TolDateChk(src,args){
                args.IsValid=true;
                Page_IsValid=true;
               
               if((document.getElementById("DescnRbl_0").checked == true) || (document.getElementById("DescnRbl_3").checked == true))
               {
                   var Flag=TolDateChkVB();
                   if (Flag==false)
                   {
                       args.IsValid=false;
                       Page_IsValid=false;
                   }
               }
             }
             
             
//                }
          	
//          		function DateVaildation(src,args){
// 
//                var Flag= VbExpiryDateValid() ;
//                if(Flag==false){
//	                args.IsValid=false;
//                    Page_IsValid=false;
//                    }
//                }
 
// 	function FnDateVaildation(src,args){
// 
//                var Flag= FnVbExpiryDateValid() ;
//                if(Flag==false){
//	                args.IsValid=false;
//                    Page_IsValid=false;
//                    }
//                }
 
    </script>
    
    <%-- AlertMsgBox added by P Suresh--%>
    <script language="vbscript">
		function AlertMsgBox()
            'ErrStr = "Items Selected for Qualification and Items that are mapped for selected Audit are not same! Would you like to Continue?"
            ErrStr = "Item(s) Selected in Vendor Qualification and Item(s) that are mapped in vendor Audit Process are not same! Would you like to Continue?"
		    ReturnVal=MsgBox(ErrStr,36,"Message From Caliber QAMS")
		    if ReturnVal=6 then
		    AlertMsgBox=6
		    else
		    AlertMsgBox=7
		    end if
	    End function 
    </script>
    
 <script language="vbscript">
 function ValDateChkVB 
      ExpDate=document.getElementById("ValDate_CalDateVal").value
  VbExpiryDateValid=true
  if ExpDate="" then exit function
	  ThisMonth = <%=ThisMonth%>
	  ThisYear = <%=ThisYear%>
	  ThisDay = <%=ThisDay%>
	  Today=dateSerial(ThisYear,ThisMonth,ThisDay)
	  ExpDateAry=split(ExpDate,"/")
	  ExpDateVal=dateSerial(ExpDateAry(2),ExpDateAry(0),ExpDateAry(1))
	  
	DDgap=DateDiff("d",Today,ExpDateVal)
	if DDgap<0 then
		ValDateChkVB=false
	 end if
 End function
 
  function ValUptoDateChkVB 
  
    if document.getElementById("AdtPrfmRbl_1").checked = true then
        ExpDate1=document.getElementById("ValDate_CalDateVal").value
    else
        if document.getElementById("DOfQalValTxt").value <> "" then
            ExpDate1=CDate(document.getElementById("DOfQalValTxt").value)
        end if
    End if
      ExpDate2=document.getElementById("CalDateTdCal_CalDateVal").value
  VbExpiryDateValid=true
  if ExpDate1="" then exit function
    if document.getElementById("AdtPrfmRbl_0").checked = true then
        ExpDateAry1=split(ExpDate1,"-")
        ExpDateVal1=dateSerial(ExpDateAry1(2),ExpDateAry1(1),ExpDateAry1(0))
    else
        ExpDateAry1=split(ExpDate1,"/")
        ExpDateVal1=dateSerial(ExpDateAry1(2),ExpDateAry1(0),ExpDateAry1(1))
    End if
    
	ExpDateAry2=split(ExpDate2,"/")
	ExpDateVal2=dateSerial(ExpDateAry2(2),ExpDateAry2(0),ExpDateAry2(1))
	  
	DDgap=DateDiff("d",ExpDateVal1,ExpDateVal2)
	if DDgap<0 then
		ValUptoDateChkVB=false
    else
        ValUptoDateChkVB=true
	end if
 End function
 
 function TolDateChkVB 
 
    if document.getElementById("AdtPrfmRbl_1").checked = true then
        ExpDate1=document.getElementById("ValDate_CalDateVal").value
    else
        if document.getElementById("DOfQalValTxt").value <> "" then
            ExpDate1=CDate(document.getElementById("DOfQalValTxt").value)
        end if
    End if
    ExpDate2=document.getElementById("TolCalDateTdCal_CalDateVal").value
  VbExpiryDateValid=true
  if ExpDate1="" or ExpDate2="" then exit function

    if document.getElementById("AdtPrfmRbl_0").checked = true then
        ExpDateAry1=split(ExpDate1,"-")
        ExpDateVal1=dateSerial(ExpDateAry1(2),ExpDateAry1(1),ExpDateAry1(0))
    else
        ExpDateAry1=split(ExpDate1,"/")
        ExpDateVal1=dateSerial(ExpDateAry1(2),ExpDateAry1(0),ExpDateAry1(1))
    End if
    ExpDateAry2=split(ExpDate2,"/")
    ExpDateVal2=dateSerial(ExpDateAry2(2),ExpDateAry2(0),ExpDateAry2(1))
	  
	DDgap=DateDiff("d",ExpDateVal1,ExpDateVal2)
	if DDgap<0 then
		TolDateChkVB=false
    else
        TolDateChkVB=true
	end if
 End function
 
  	</script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server">
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
                            <asp:TableCell CssClass="SubHead" ColumnSpan="5">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:TextBox ID="CodeTxt" runat="server" ReadOnly="true" CssClass="UCTxtCls" MaxLength="25" Width="200px"
                                    AccessKey="C" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="BsaTD" Width="310px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <input type="button" id="BsaBtn" class="<%=ClassName%>" onclick="fnOpenCustPopUp()" />
                                <asp:Label ID="BsaLbl" runat="server" CssClass="LblCls"></asp:Label>
                                <asp:TextBox ID="BsaIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="ItemIdsTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="ItemIdsTxtOri" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="BsaTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="BsaCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ProdNameTd" Width="310px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <input type="button" id="PrdBtn" class="RsnPUP" onclick="FnOpenPrdPopup()" />
                                <asp:Label ID="PrdNameLbl" runat="server" CssClass="LblCls"></asp:Label>
                                <asp:TextBox ID="PrdNameTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="PrdNameTxt2" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="PrdIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="Hiderow">
                            <asp:TableCell CssClass="MainTD" ID="DescTd" Width="310px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    AccessKey="D" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" ID="MatAddDetTr">
                            <asp:TableCell ColumnSpan="5">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="MatAddDetTab">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="TypeTd" Width="310px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:RadioButtonList ID="TypeRBL" runat="Server"  Enabled="false" CssClass="RBList" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">New</asp:ListItem>
                                    <asp:ListItem Value="2">Existing</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="QalRefTD" ColumnSpan="5"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="QalRefTab">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="PlnDateTD" Width="310px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <uc2:calibercalender id="PlndDate" runat="server">
                                </uc2:calibercalender>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="ActDateTd" Width="310px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <uc2:CaliberCalender id="ActDate" runat="server">
                                </uc2:CaliberCalender>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="RsnTd" Width="310px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:TextBox ID="RsnTxt" runat="server" Width="200px" MaxLength="250" CssClass="TxtCls"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="AdtPrfmTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:RadioButtonList ID="AdtPrfmRbl" runat="Server" CssClass="RBList" onclick="ReadInfo()" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Through System</asp:ListItem>
                                    <asp:ListItem Value="2">Outside System</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DecissnTd" Width="310px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:RadioButtonList ID="DescnRbl" runat="Server" CssClass="RBList" onclick="FnShowHide()" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Approved</asp:ListItem>
                                    <asp:ListItem Value="2">Disqualified</asp:ListItem>
                                    <asp:ListItem Value="3">Discontinued</asp:ListItem>
                                    <asp:ListItem Value="4">Provisionally Approved</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="AuditPopUpTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="AdtTD" Width="310px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <input type="button" id="AdtBtn" class="RsnPUP" onclick="FnOpenAuditPopup()" />
                                <asp:Label ID="AdtDispCodeLbl" runat="server"></asp:Label>
                                <asp:TextBox ID="RgsAulIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>                        
                        <asp:TableRow ID="QuaCriTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="QuaCriTd" Width="310px">Criteria</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:TextBox ID="QuaCriTxt" runat="server" TextMode="MultiLine" Width="200px" onkeypress="taLimit()" onkeyup="taCount()" CssClass="TxtCls"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
<%--                        <asp:TableRow ID="RmrkTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="RmrkTd" Width="310px">Disqualification Criteria</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RmrkTxt" runat="server" TextMode="MultiLine" Width="200px" onkeypress="taLimit()" onkeyup="taCount()" CssClass="TxtCls"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>--%>
<%--                        <asp:TableRow ID="DisConCriTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DisConCriTd" Width="310px">Discontinuation Criteria</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DisConCriTxt" runat="server" TextMode="MultiLine" Width="200px" onkeypress="taLimit()" onkeyup="taCount()" CssClass="TxtCls"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>--%>
                        <asp:TableRow ID="QuaVldFrmTr1" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DOfQalTd1" Width="310px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="DOfQalValTd1" ColumnSpan="5">
                            </asp:TableCell>
                         </asp:TableRow>
                        <asp:TableRow ID="QuaVldFrmTr2" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DOfQalTd2" Width="310px"></asp:TableCell>
                             <asp:TableCell CssClass="MainTD" ID="DOfQalValTd2" ColumnSpan="5">
                                <uc2:calibercalender ID="ValDate" runat="server"></uc2:calibercalender>
                            </asp:TableCell>
                        </asp:TableRow>                        
                        <asp:TableRow ID="ValDateTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="ValDateTD" Width="310px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="CalDateTd">
                                <uc2:calibercalender ID="CalDateTdCal" AutoPostBack = "false" runat="server"></uc2:calibercalender>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TolPlusminusTd" Width="5%" HorizontalAlign = "Center">     <%--Addded by P Suresh--%>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TolPrdTd" Width="20%" HorizontalAlign = "Center">          <%--Addded by P Suresh--%>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TolCalDateTd">                                             <%--Addded by P Suresh--%>
                                 <uc2:calibercalender ID="TolCalDateTdCal"  AutoPostBack = "false" runat="server"></uc2:calibercalender>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="SuprsTD" Width="310px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:TextBox ID="SuprTxt" runat="server" Width="200px" MaxLength="250" CssClass="TxtCls"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                                <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow id="OthTr">								
								<asp:TableCell CssClass="MainTD" ID="OthTd" columnspan="5">       
								</asp:TableCell>
						</asp:TableRow>
                        <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px" ColumnSpan="5">
                                <uc1:esignobj id="EsignObj1" runat="server" visible="false"></uc1:esignobj>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="IARow" runat="server" CssClass="HideRow">
                <asp:TableCell ColumnSpan="5">
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
                                <input type="button" id="btn1Confirm" value="Submit" onmouseover="this.className='ButOCls'"
                                    class="ButCls" onclick="VenQuaAdtValid()" accesskey="C" causesvalidation="true"
                                    onmouseout="this.className='ButCls'" style="width: 70px;">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButSelCls"  onMouseOver="this.className='ButSelOCls'"
                                    onMouseOut="this.className='ButSelCls'" ForeColor="Black" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="TranscodeTxt" runat="server"></asp:TextBox>   <%--Added by P Suresh--%>
                    <asp:TextBox ID="CustNameFieldKeys" Style="display: none" Width="0" Height="0" runat="server"></asp:TextBox>
                    <asp:TextBox ID="CustNameFieldNames" Style="display: none" Width="0" Height="0" runat="server"></asp:TextBox>
                    <asp:TextBox ID="CustNameFieldbndto" Style="display: none" Width="0" Height="0" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ReqalPrd" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ReqalFreq" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TolPrdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TolFreqTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FreqTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="CategoryTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="tmp" runat="server"></asp:TextBox>
                    <asp:TextBox ID="AcEDateTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="DOfQalValTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="BusnsId" runat="server"></asp:TextBox>
                    <asp:TextBox ID="AdtPrfmTxt" runat="server"></asp:TextBox>
                    <asp:Label ID="AdtCodeLbl" runat="server" CssClass="LblCls"></asp:Label>
                    <asp:TextBox ID="AdtIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="AdtCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="ItemCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="CustIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="VenItemIdsTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="VenAddDetTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="VenItemStsTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="VendCodeTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ChkFlagTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ChkBaFlagTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="AdtItemsTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ItemsFlagTxt" runat="server"></asp:TextBox>  
                    <asp:TextBox ID="ExstVal" runat=server></asp:TextBox>        
                    <asp:TextBox ID="DetTxt" runat=server></asp:TextBox>                    
                    <asp:Button ID="btnHidden" runat="server" Class='ButCls' Text="Hidden" Width="70" CssClass="HideRow" UseSubmitBehavior="false" CausesValidation="false" ></asp:Button>
                    <asp:Button ID="btnChkItems" runat="server" Class='ButCls' Text="Hidden" Width="70" CssClass="HideRow" UseSubmitBehavior="false" CausesValidation="false" ></asp:Button>                    
                    <asp:Button ID="btnHiddenItem" runat="server" Class='ButCls' Text="Hidden" Width="70" CssClass="HideRow" UseSubmitBehavior="false" CausesValidation="false" ></asp:Button>
                </asp:TableCell>
                <asp:TableCell CssClass="MainTD" ID="CalDateTd2">
                    </asp:TableCell>
                <asp:TableCell CssClass="MainTD" ID="TolCalDateTd2">                                             <%--Addded by P Suresh--%>
                    </asp:TableCell>  
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--
    //document.getElementById('DescTxt').focus()
//-->
//Validation for Miscellaneous Remarks
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
			
		function SetMSTFieldsValue(src, dateval) {
		    if (src == "ValDate")
		    {
			    document.getElementById("AcEDateTxt").value = dateval;
			    document.getElementById("btnHidden").click();
			}
		}
		
	function fnSetToReasons(argValue){
   
		document.getElementById('RemarksTxt').value = argValue
	}		
	
	FnShowHide_0nPageRefesh()
    function FnShowHide_0nPageRefesh()
        {
            if(document.getElementById("DescnRbl_0").checked==true)
            {
                if(document.getElementById("AdtPrfmRbl_0").checked==true)
                {
                    document.getElementById("AuditPopUpTr").className="";
                    document.getElementById("QuaCriTr").className="HideRow";
                    document.getElementById("QuaVldFrmTr1").className="";
                    document.getElementById("QuaVldFrmTr2").className="HideRow";
                    document.getElementById("ValDateTr").className="";
                }
                else if(document.getElementById("AdtPrfmRbl_1").checked==true)
                {
                    document.getElementById("QuaCriTr").className="";
                    document.getElementById("AuditPopUpTr").className="HideRow";
                    document.getElementById("QuaVldFrmTr1").className="HideRow";
                    document.getElementById("QuaVldFrmTr2").className = "";
                    document.getElementById("ValDateTr").className="";
                }

            }
            if(document.getElementById("DescnRbl_1").checked==true)
            {
                if(document.getElementById("AdtPrfmRbl_0").checked==true)
                {
                    document.getElementById("AuditPopUpTr").className="";
                    document.getElementById("QuaCriTr").className="HideRow";
                    document.getElementById("QuaVldFrmTr1").className="";
                    document.getElementById("QuaVldFrmTr2").className="HideRow";
                    document.getElementById("ValDateTr").className="HideRow";
                }
                else if(document.getElementById("AdtPrfmRbl_1").checked==true)
                {
                    document.getElementById("QuaCriTr").className="";
                    document.getElementById("AuditPopUpTr").className="HideRow";
                    document.getElementById("QuaVldFrmTr1").className="HideRow";
                    document.getElementById("QuaVldFrmTr2").className="";
                    document.getElementById("ValDateTr").className="HideRow";
                }
            }
            if(document.getElementById("DescnRbl_2").checked==true)
            {
                if(document.getElementById("AdtPrfmRbl_0").checked==true)
                {
                    document.getElementById("AuditPopUpTr").className="";
                    document.getElementById("QuaCriTr").className="HideRow";
                    document.getElementById("QuaVldFrmTr1").className="";
                    document.getElementById("QuaVldFrmTr2").className="HideRow";
                    document.getElementById("ValDateTr").className="HideRow";                    
                }
                else if(document.getElementById("AdtPrfmRbl_1").checked==true)
                {
                    document.getElementById("QuaCriTr").className="";
                    document.getElementById("AuditPopUpTr").className="HideRow";
                    document.getElementById("QuaVldFrmTr1").className="HideRow";
                    document.getElementById("QuaVldFrmTr2").className="";
                    document.getElementById("ValDateTr").className="HideRow";               
                }
            }
            if(document.getElementById("DescnRbl_3").checked==true)
            {
                if(document.getElementById("AdtPrfmRbl_0").checked==true)
                {
                    document.getElementById("AuditPopUpTr").className="";
                    document.getElementById("QuaCriTr").className="HideRow";
                    document.getElementById("QuaVldFrmTr1").className="";
                    document.getElementById("QuaVldFrmTr2").className="HideRow";
                    document.getElementById("ValDateTr").className="";
                }
                else if(document.getElementById("AdtPrfmRbl_1").checked==true)
                {
                    document.getElementById("QuaCriTr").className="";
                    document.getElementById("AuditPopUpTr").className="HideRow";
                    document.getElementById("QuaVldFrmTr1").className="HideRow";
                    document.getElementById("QuaVldFrmTr2").className="";
                    document.getElementById("ValDateTr").className="";
                }

            }
        }
</script>

</html>
