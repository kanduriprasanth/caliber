
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AuditCloser.aspx.vb" Inherits="AuditResponse.AuditCloser" %>

<%@ Register TagPrefix="uc2" TagName="EsignObj" Src="EsignObj1.ascx" %>
<%@ Register TagPrefix="uc2" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<%@ Register TagPrefix="uc3" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/jquery.min.js"></script> <%--Added by P Suresh--%>
    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
    
    function OpenDocument(DocId) 
    {
	    var yval = parseInt(screen.availHeight) - 250
	    var xval = screen.availWidth-500

	    var pageURL = "../DMSManagement/ViewDocument.aspx?DocId=" + DocId;
	    SpWinObj = window.open(pageURL, 'RepPopUp', "height=" + yval + ",width=" + xval + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=no,top=1,left=1");
	    if (SpWinObj.opener == null) SpWinObj.opener = self;
	    SpWinObj.focus();
    }

    function ShowHide(BdyId,i)
    {
        if(document.getElementById("RBList_" + BdyId + "_" + i + "_1").checked==true)
        {
            document.getElementById("RsnTr_" + BdyId + "_" + i).className=""
        }
        else
        {
            document.getElementById("RsnTr_" + BdyId + "_" + i).className="HideRow"
            document.getElementById("RsnTxt_" + BdyId + "_" + i).value="";
            document.getElementById("RsnTxt_" + BdyId + "_" + i).readOnly=false;
        }
    }
    
    function fnCallESignCls(i,j,NcId)
    {  var ObsRecTyp = "<%=ObsRecTyp%>";
      if(document.getElementById("RBList_" + i + "_" + j + "_0").checked==true)
        {
            Value=document.getElementById("RBList_" + i + "_" + j + "_0").value;
        }
        else if(document.getElementById("RBList_" + i + "_" + j + "_1").checked==true)
        {
            Value=document.getElementById("RBList_" + i + "_" + j + "_1").value;
           
             var obj = document.getElementById("RsnTxt_" + i + "_" + j);
             obj.value = obj.value.replace(/^\s+|\s+$/g, "");
             var feild = obj.value
    
            if (feild.length == 0) {
            alert('Enter Value For Remark(s)/Reason(s) : Audit Finding No.- ' + j)
            return false;}
        }
        else
        {
          if(ObsRecTyp==1)
          {
            alert('Select Audit Finding Closure Decision for : Audit Finding(s)')
            return(false);
          }
          else
          {
            alert('Select Audit Finding Closure Decision for : Audit Finding No.- ' + j)
            return(false);
          }
        }
     fnCallESign(2,i,j,NcId,0)
    }
     function fnCallAjax(i,j,NcId)
    {
        var Value=""
       
        if(document.getElementById("RBList_" + i + "_" + j + "_0").checked==true)
        {
            Value=document.getElementById("RBList_" + i + "_" + j + "_0").value;
        }
        else if(document.getElementById("RBList_" + i + "_" + j + "_1").checked==true)
        {
            Value=document.getElementById("RBList_" + i + "_" + j + "_1").value;
           
        }
                    
        
        
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
                    //IE5+
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
                    if(s=="4")
                    {
                   
                       alert('Approved')
//                       document.getElementById("RbTd_" + i + "_" + j).innerHTML="Approved";
//                       document.getElementById("RBList_" + i + "_" + j + "_0").className="HideRow";    
//                       document.getElementById("RBList_" + i + "_" + j + "_1").className="HideRow"; 
//                       document.getElementById("CnfBtn_" + i + "_" + j).className="HideRow";
                       document.getElementById("TempBtn").click();
                       document.getElementById("EsignRow").className="Main";
//                       document.forms(0).detachEvent('onsubmit',fnCallESign);   
//                       Form1.submit();                    
                    }
                    else if(s=="5")
                    {
                       document.getElementById("RBList_" + i + "_" + j + "_0").disabled=true;
                       document.getElementById("RBList_" + i + "_" + j + "_1").disabled=true;
                       document.getElementById("CnfBtn_" + i + "_" + j).disabled=true;
                       document.getElementById("RsnTxt_" + i + "_" + j).disabled=true;
                       document.getElementById("EsignRow").className="HideRow";
//                       document.forms(0).detachEvent('onsubmit',fnCallESign);  
                       alert('Returned')
                    }
                    else if(s=="2")
                    {
                       
                       document.getElementById("EsignRow").className="HideRow";
//                       document.forms(0).detachEvent('onsubmit',fnCallESign);  
                       alert('Already Approved')
                    }
                    else if(s=="3")
                    {
                       
                       document.getElementById("EsignRow").className="HideRow";
//                       document.forms(0).detachEvent('onsubmit',fnCallESign);  
                       alert('Already Returned')
                    }
                    else
                    {
                       alert('Failed')
                    }
                    
                }
                   
            }
        }                 
        //Code to replace single quotes and double quotes that are typed in word document, copied form there and pasted here
        var pattern = document.getElementById("RsnTxt_" + i + "_" + j).value
        pattern = pattern.replace(/\&/g, '*%$#$%*');        
        var ResnStr1 = pattern.replace(/”/g,"\"")
        var ResnStr2 = ResnStr1.replace(/“/g,"\"")
        var ResnStr3 = ResnStr2.replace(/’/g,"\'")
        var ResnStr4 = ResnStr3.replace(/‘/g,"\'")
        var ResnStr = ResnStr4.replace(/…/g,"\...")
        //-----End
        
        var url="AdtClsrAjax.aspx?NcId=" + NcId + "&Value=" + Value + "&FileIds=" + document.getElementById("FUpLpadIdTxt" + i + "_" + j).value + "&FileCods=" + document.getElementById("FUpLpadTxt" + i + "_" + j).value + "&Resn=" + ResnStr + "&RspSts=" + document.getElementById("RBList_" + i + "_" + j + "_0").value;
        xmlHttp.open("GET",url,true);
        xmlHttp.send(null);

    }
    
	var PrefixId = ""
	
//	   function fnFileupload(BaseId,CtrlID)
//            {
//                var UParam = BaseId + "_" + CtrlID;
//                var RType =1;   // Source Type
//                var PlantID =<%=Session("PlantID")%>;   // Source Type
//                var pageURL;
//                pageURL ="../DMSManagement/DMSFilesPopUp.aspx?RType=" + RType + "&PlantID=" + PlantID + "&UParam=" + UParam;
//                var SpWinObj;
//                SpWinObj = window.open(pageURL,'DMSPopUp',"height=500,width=600,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
//                if(SpWinObj.opener == null) SpWinObj.opener=self;
//                SpWinObj.focus();
//            }
            
    function CallDMSPopup(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,UParam)
    {
        var Transcode=$("#TranscodeTxt").val(); //Added by P Suresh
        var pageURL = "../DMSManagement/DMSFilesSelPopUp.aspx?RType=" + RepositoyTypeId + "&FixedType=" + FixedType + "&SourceTypeId=" + SourceTypeId + "&DocSourceId=" + SourceId + "&PlantID=" + PlantID + "&UParam=" + UParam + "&IsuTransCode=" +Transcode;
        var SpWinObj = window.open(pageURL,'DMSPopUp',"height=600,width=800,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    
    function fnFileupload(BaseId,CtrlID)
    { 
        var UParam =  BaseId + "_" + CtrlID;
        var RepositoyTypeId =3;   // Repository Type.
        var SourceTypeId =7;   // SourceType Id
        var SourceId =0;   // Source Id
        var PlantID ="<%=Session("PlantID")%>";
        var FixedType = 0;// 1: for loading documents of current type. 0: for selection based searching

        CallDMSPopup(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,UParam);

    }
           
            function Ret_OpenDMSPopUp(DocId,DocCode,DocDesc,UParam)
            { 
                document.all("FUpLpadIdTxt" + UParam).value=DocId ;
                var DocDescArr = new Array();
                DocDescArr = DocDesc.split("$@$");
                DocDesc = DocDescArr.join ('; ');
                document.all("FUpLpadLbl" + UParam).innerHTML=document.all("FUpLpadTxt" + UParam).value=DocDesc ;
            }
           
	
	
//	function fnFileupload(BaseId,CtrlID)
//	{
//        PrefixId = BaseId + "_" + CtrlID;
//        SetPopDimensions()    
//        var features = "height="+ 570 + ",width=" + PopUpWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + PopUpLeftTopY +  ",left=" + PopUpLeftTopX
//        var pageURL = "../AuditObservation/DocumentPopup.aspx" 
//        SpWinObj = window.open(pageURL,'SpecCodes',features)
//        if(SpWinObj.opener == null) SpWinObj.opener=self;
//        SpWinObj.focus();
//	}
//	
//    function fnCrSetToCode1(DocID,DocName)
//    {
//        document.getElementById("FUpLpadIdTxt" + PrefixId).value  = DocID
//        document.getElementById("FUpLpadTxt" + PrefixId).value  = DocName
//        document.getElementById("FUpLpadLbl" + PrefixId).innerText  = DocName
//        PrefixId = ""
//    }
	function fnCrformSubmit()
	{
	
	}
//	function fnFileupload1(BaseId,CtrlID)
//    {
//        //PrefixId = BaseId + "_" + CtrlID
//        //CtrlID = 11
//        //SetPopDimensions()
//        var pageURL = "../IssueLogin/DocumentPopup.aspx?BaseID="+ BaseId + "&CtrlId="+CtrlID
//        var features = "height=550,width=700,toolbar=no,menubar=no,status=no,scrollbars=no,top=250,left=300"
//        SpWinObj = window.open(pageURL,'SpecCodes',features)
//        if(SpWinObj.opener == null) SpWinObj.opener=self;
//        SpWinObj.focus();
//    }

//    function fnCrSetToCode1(BaseId,CtrlID,DocIdLst,DocNameLst)
//    {
//        PrefixId = BaseId + "_" + CtrlID
//        document.getElementById("FUpLpadIdTxt" + PrefixId).value  = DocIdLst
//        document.getElementById("FUpLpadTxt" + PrefixId).value  = DocNameLst
//        document.getElementById("FUpLpadLbl" + PrefixId).innerText  = DocNameLst
//        PrefixId = ""
//    }

function FnOpenRpt(NCID,BdyId,IsuTypeId,IsuLogID)
{
  
    SetPopDimensions()
    var pageURL = "../CAPAWORKS/WordFormatReport.aspx?Type=1&IsuLogID=" + IsuLogID + "&IsuTypeId=" + IsuTypeId  + "&PrsType=2" ;
    var features = "height=600,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
    SpWinObj = window.open(pageURL,'SpecCodes',features)
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
    
}
	
	RequestPrefix='<%=me.ClientID%>'
function FnOpenIssuePopUp(NCID,BdyId,Type,cnt)
{
  
    SetPopDimensions()
    var pageURL = "../IssueLogin/IssueTypeLst.aspx?NCID=" + NCID + "&Type=" + Type + "&BdyId=" + BdyId +"&cnt=" +cnt
    var features = "height= 450,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
    var SpWinObj = window.open(pageURL,'SpecCodes',features)
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
    
}

function fnClsOpenPopUp(){
	    SetPopDimensions()
    	var pageURL = "CloseByPopUp.aspx"
        var features = "height= 400,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=250,left=150" 
       //var features = "height=390,width=470,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=250,left=150"
		var SpWinObj = window.open(pageURL,'SpecCodes1',features)
		if(SpWinObj.opener == null) 
		SpWinObj.opener=self;
		SpWinObj.focus();
	}
	
function fnCrSetToCode(KdIdVal,KfLableVal)
{
     
    document.all("CloseByLbl").innerHTML=KfLableVal
   	document.all("CloseByIdTxt").value=KdIdVal
    document.all("CloseByTxt").value=KfLableVal
  	
}

	 function fnOpenDocPopUp(){
	    var BID = "<%=BIDStr%>"
        var pageURL = "DocPopUP.aspx?BID="+BID+"&AvrId="   //var pageURL = "DocPopUP.aspx?BID="+BID
	    var features = "height=500,width=700,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=100,left=100, right=100, bottom=100"
	    SpWinObj = window.open(pageURL,'SpecCodes',features)
	    if(SpWinObj.opener == null) SpWinObj.opener=self;
	    SpWinObj.focus();
    }


function CloseWindow(WorkItem)
{
//  document.getElementById("TTd"+Count).innerHTML=WorkItem
Form1.submit();
}
	//-->
	
	function FnSubmitDec()
	{
	
	    if(($.trim(document.getElementById("Commxt").value)==""))
	    {
	        alert('Enter Value For: Comments');
	        return false;
	    }
	     fnCallESign(8,1,1,1,1);
        
      
	}
	
	function Submit()
	{
	    document.getElementById("btnConfirm").click();
	}
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="100%" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server">Audit Closure</asp:Literal>
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
                                <asp:Literal ID="SubTitleLtrl" runat="server">Registration Initiation</asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="HeaderCodeRw" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="HeaderCodeTd">Header Code</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
									<%--<asp:Label id="HeaderCodeLbl" runat="server"></asp:Label>--%>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="AdtTempRw" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="AdtTempTd">Audit Format No.</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Label ID="AdtTempLbl" runat="server"></asp:Label>
                                <asp:TextBox ID="BodyidTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="HdrCodeRw" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="HdrCodeTd">Header Code</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                <asp:Label ID="HeaderCodeLbl" runat="server"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="SubHeadTd" ID="RspTempTd" ColumnSpan="2"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="LotInfo1Tr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="LotInfo1Tab" runat="server" CssClass="SubTable" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd">Audit Code</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="CodeDTD">
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow >
								<asp:TableCell CssClass="MainTD" ID="ATyeTd">Audit Type</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="AtypeValTd">
								</asp:TableCell>
							</asp:TableRow>
							
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DescTd">Audit Description</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="DescDTD">
                            </asp:TableCell>
                        </asp:TableRow>
                        
						<%--Audit Scope ---START--%>							
						<asp:TableRow ID="ScopeTr" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="ScopeTd" Width = "40%"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="ScopeValTd">
								</asp:TableCell>
						</asp:TableRow>
							
						<asp:TableRow ID="ScopeMETr" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="ScopeMETd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="ScopeMEValTd">
								</asp:TableCell>
						</asp:TableRow>
						<%--Audit Scope ---End--%>      
						
					    <asp:TableRow ID="RegRw" CssClass="HideRow">
                            <asp:TableCell ID="RegTd" CssClass="MainTD" Width = "40%">Audit Agency / Customer</asp:TableCell>
                            <asp:TableCell ID="RegNameTd" CssClass="MainTD"></asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow id="TableRow1">
								<asp:TableCell CssClass="MainTD" ID="DeptTd">Department/Site</asp:TableCell>
								<asp:TableCell CssClass="MainTd" ID="DeptValTd">
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow id="TableRow2">
								<asp:TableCell CssClass="MainTD" ID="PrcsTd">Audit Area</asp:TableCell>
								<asp:TableCell CssClass="MainTd" ID="PrcsValTd">
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow id="VendRw" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="VendTd">Vendor</asp:TableCell>
								<asp:TableCell CssClass="MainTd" ID="VendValTd">
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow id="ItemRw" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="ItemTd">Item(s)</asp:TableCell>
								<asp:TableCell CssClass="MainTd" ID="ItemValTd">
								</asp:TableCell>
							</asp:TableRow>
							
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="SubHeadTd" ID="ObsTempTd" ColumnSpan="2">Audit Header Template Proposal</asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="LotInfoTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="LotInfoTab" runat="server" CssClass="SubTable" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="StDateTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="StDTD">
								   
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="EtDateTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="EndTD">
								  
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="AccStDateTd">Actual Start Date</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="AccStDateText">

                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="AccEtDateTd">Actual End Date</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="AccEtDateText">
                            </asp:TableCell>
                        </asp:TableRow>
                               <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ObsRecTypTd">Observation Recording Type</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="ObsRecTypValTd">
                              <asp:Label runat="server" ID="ObsRecTypLbl" CssClass="MainTd"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="AdtDocsTd">Audit Related Documents</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="AdtDocsValTd">
                                <asp:HyperLink ID="AdtDocsHL" runat="server" onclick="fnOpenDocPopUp()" onmouseover="this.style.cursor='hand'" ForeColor="blue">Click here to View Documents</asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="TableCell1">Investigation Required</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TableCell2">
                                <asp:RadioButtonList ID="InvRadio" CssClass="RBList" RepeatDirection="Horizontal"
                                    runat="server" AutoPostBack="true">
                                    <asp:ListItem Value="0">Yes</asp:ListItem>
                                    <asp:ListItem Value="1">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="OtherDetRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="DetailsTab" runat="server" CssClass="SubTable" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ClosByRw" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="TableCell5">Close By</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TableCell6">
                                <input type="button" onclick="fnClsOpenPopUp()" title="Click Here" class='RsnPUP'
                                    style="height: 20px" tabindex="12">
                                <asp:Label runat="server" ID="CloseByLbl" CssClass="MainTd"></asp:Label>
                                <asp:TextBox runat="server" ID="CloseByIdTxt" CssClass="hiderow" Text="0"></asp:TextBox>
                                <asp:TextBox runat="server" ID="CloseByTxt" CssClass="hiderow" Text="0"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="CloseOnRw" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="TableCell7">Close On</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TableCell8">
                               <%-- <uc2:calibercalender id="CloseOn" runat="server">
                                  </uc2:calibercalender>--%>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ComRw" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="MainCommets">Comments</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TableCell4">
                                <asp:TextBox ID="Commxt" runat="server" CssClass="TxtCls" onkeypress="taLimit()" onkeyup="taCount()" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--	<asp:TableRow id="LotInfo2Tr">								
								<asp:TableCell CssClass="MainTD" columnspan=2>
									<asp:Table id="LotInfo2Tab" runat="server" cssclass="SubTable" width="100%"></asp:table>
								</asp:TableCell>
							</asp:TableRow>
							--%>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                                <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc2:EsignObj ID="EsignObj1" runat="server" Visible="false"></uc2:EsignObj>
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
                            <asp:TableCell ID="BtnTd">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Close"
                                    Width="70"></asp:Button>
                                    
                            </asp:TableCell>
                            <asp:TableCell CssClass="HideRow" HorizontalAlign="Right">
								
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
									
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:TextBox ID="TranscodeTxt" runat="server"></asp:TextBox>   <%--Added by P Suresh--%>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                        <asp:RequiredFieldValidator ID="rfld1" runat="server" ControlToValidate="tempValid" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="DeptTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="ProcessTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="CheckLstTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="AudtitorTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="AuditeeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="DateTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="TimeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="tempValid" runat="server" Text="1"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" CssClass="HideRow" />
                    <asp:Button ID="TempBtn" runat="server" />
                    <%--<asp:TextBox ID="TimeTxt" runat="server" CssClass="HideRow"></asp:TextBox>--%>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
	 	function ExpiryDateValid(src,args){
//	 	   var Flag= VbExpiryDateValid() ;
//   if(Flag==false){
//		args.IsValid=false;
//  	    Page_IsValid=false;
//  	    }
 }
 
// function FnShowHide()
// {
//    if (!Page_ClientValidate())
//    {
//        return;
//    }
//    document.getElementById("EsignRow").className=""
//    fnCallESign(1,'Audit Closure');    
// }
 var taMaxLength1 = 250

		function taLimit() {

			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		}

		function taCount() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength1*1){
				taObj.value=taObj.value.substring(0,taMaxLength1*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength1 +" Characters")
			}
			}	
			
 function GetDateFrn(Deptar)
 {
//    for (var i=0 ;i<Deptar;i++)
//    {
//        document.getElementById("DateTxt").value += "#*#" + document.getElementById("Cal" & i & "$CalDateVal").value 
//    }
 }
 
 	function DateValid(src,args){
 	var Cnt = <%=Cnt%>
 	for(var j =0 ; j<Cnt; j++)
 	{
 	     var Flag= VbDateValid(j) ;
   if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    }
//  	    else
//  	    {
//  	        document.getElementById("DateTxt").value += "#*#" + document.getElementById("Cal" & j & "$CalDateVal").value 
//  	    }
 	}
	 	  
 }
    function FnCheckListPopUp(Deptvar)
    {	   	
    SetPopDimensions()
    var pageURL = "ChckListPopUp.aspx?Deptvar=" + Deptvar
    var features = "height= 450,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
    var SpWinObj = window.open(pageURL,'BRMPopup',features)
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
    }
    
    function fnGetCheckListVal(KdIdVal,KdCodeVal,KfLableVal,CheckListRowCnt)
    {
        document.getElementById("CheckListLbl" + CheckListRowCnt).innerText=KfLableVal
        var Cnt = <%=Cnt%>
//        if(document.getElementById("CheckLstTxt").value==""  && CheckListRowCnt == 0)
//        {
//            if(Cnt==CheckListRowCnt)
//            {
//                 document.getElementById("CheckLstTxt").value += "," + KdIdVal
//            }
//        }
            
//                document.getElementById("CheckLstTxt").value =  KdIdVal
            document.getElementById("CheckListTxt" + CheckListRowCnt).value =  KdIdVal
            
//            for(var i=0;i<Cnt;i++)
//            { 
//             var a =new array();
//             a.push(KdIdVal);
//                if ( Cnt==CheckListRowCnt && CheckListRowCnt!=0)
//                {
//                    document.getElementById("CheckLstTxt").value +="#*#" + KdIdVal
//                }
//                else
//                {
//                    document.getElementById("CheckLstTxt").value =  KdIdVal
//                }
            }
//        else
//        {
//            document.getElementById("CheckLstTxt").value +="#*#" + KdIdVal
//        }
//    }
    
    function FnAuditorPopUp(Deptvar)
    {	   	
    SetPopDimensions()
    var pageURL = "AuditorPopUp.aspx?Deptvar=" + Deptvar
    var features = "height= 450,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
    var SpWinObj = window.open(pageURL,'BRMPopup',features)
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
    }
    
    function fnGetAuditorVal(KdIdVal,KdCodeVal,KfLableVal,CheckListRowCnt)
    {
        document.getElementById("AuditorLbl" + CheckListRowCnt).innerText=KfLableVal
        if(document.getElementById("AudtitorTxt").value=="")
        {
            document.getElementById("AudtitorTxt").value =KdIdVal
        }
        else
        {
            document.getElementById("AudtitorTxt").value +="#*#" + KdIdVal
        }
        
    }
    
    function FnAuditeePopUp(Deptvar)
    {	   	
    SetPopDimensions()
    var pageURL = "AuditeePopUp.aspx?Deptvar=" + Deptvar
    var features = "height= 450,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
    var SpWinObj = window.open(pageURL,'BRMPopup',features)
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
    }
    
    function fnGetAuditeeVal(KdIdVal,KdCodeVal,KfLableVal,CheckListRowCnt)
    {
        document.getElementById("AuditeeLbl" + CheckListRowCnt).innerText=KfLableVal
        if(document.getElementById("AuditeeTxt").value=="")
        {
            document.getElementById("AuditeeTxt").value=KdIdVal
        }
        else
        {
            document.getElementById("AuditeeTxt").value +="#*#" + KdIdVal
        }
        
    }
    
  function fnOpenCrPopUpAudit(UsgID,RowCount)
    {	   	
    SetPopDimensions()
    var pageURL = "../InstUsage/Particulars.aspx?BId=" + UsgID 
    var features = "height= 450,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
    var SpWinObj = window.open(pageURL,'BRMPopup',features)
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
    }
    
    
</script>

<script language="vbscript">
 function VbExpiryDateValid 
       ExpDate=document.getElementById("TxtCal$CalDateVal").value
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
		VbExpiryDateValid=false
	 end if
 'msgbox( Today &"   " &  MfgDateVal &"    "  &DDgap)
 End function
 
  function VbDateValid(j)
       AccStDate=document.getElementById("AccStDate$CalDateVal").value
       AccEdDate=document.getElementById("AccEtDate$CalDateVal").value
     
  VbDateValid=true
  if AccStDate="" and AccEdDate="" then exit function
  
	  ThisMonth = <%=ThisMonth%>
	  ThisYear = <%=ThisYear%>
	  ThisDay = <%=ThisDay%>
	  Today=document.getElementById("Cal" & j & "$CalDateVal").value 'dateSerial(ThisYear,ThisMonth,ThisDay)
	  if Today="" then exit function
	  AccStDateAry=split(AccStDate,"/")
	  AccStDateVal=dateSerial(AccStDateAry(2),AccStDateAry(0),AccStDateAry(1))
	  
	  AccEdDateAry=split(AccEdDate,"/")
	  AccEdDateVal=dateSerial(AccEdDateAry(2),AccEdDateAry(0),AccEdDateAry(1))
	  
	DDgap1=DateDiff("d",Today,AccEdDateVal)
	DDgap=DateDiff("d",Today,AccStDateVal)
	if DDgap>0 then
		VbDateValid=false
	 end if
	 
	 if DDgap1<0 then
		VbDateValid=false
	 end if
	 
 'msgbox( Today &"   " &  MfgDateVal &"    "  &DDgap)
 End function
 
</script>

<script language="javascript">
<!-- 
 function SDateValid(src,args){
   var Flag= VbSDateValid() ;
   if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    }
 }
 
//-->
</script>

<script language="vbscript">
function VbSDateValid 
		SDate=document.getElementById("TxtCal2$CalDateVal").value
		VbSDateValid=true
		if SDate="" then exit function
			ThisMonth = <%=ThisMonth%>
			ThisYear = <%=ThisYear%>
			ThisDay = <%=ThisDay%>
			Today=dateSerial(ThisYear,ThisMonth,ThisDay)

			SDateAry=split(SDate,"/")
			SDateVal=dateSerial(SDateAry(2),SDateAry(0),SDateAry(1))

		DDgap=DateDiff("d",Today,SDateVal)
			if DDgap>0 then
			VbSDateValid=false
			end if 
End function
 
</script>

<script language="javascript">
	function fnSetToReasons(argValue)//For Remarks
          {   
               document.getElementById('RemarksTxt').value = argValue
          }		
<!--

//-->
</script>

</html>
