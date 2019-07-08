<%@ Page Language="vb" AutoEventWireup="false" Codebehind="EFormApp.aspx.vb" Inherits="TestEFormExecution.EFormApp" MaintainScrollPositionOnPostback="true" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>App</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <link href="../TRIMS.css" rel="stylesheet">
    <script language="javascript" src="../JScript/jquery.min.js"></script>
    <script language="javascript" src="../JScript/Common2.js"></script>
         <script language="javascript" src="../JScript/CustomValidationFuns.js"></script>
         
    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />
    
    <script language="javascript">
<!--
 RequestPrefix='<%=me.ClientID%>'

 	function fnSetToReasons(argValue)
	{  
   		//document.Form1.RemarksTxt.value = argValue
   		document.getElementById("RemarksTxt").value=argValue
	}

//-->
 window.history.forward();
        function noBack() { 
                window.history.forward(); }
    </script>
    
    <script  language="javascript">
        function fnOpenPopUp(BaseId,CtrlID)
        {
            //SetPopDimensions()
            var pageURL = "../IssueLogin/PopupPage.aspx?BaseID="+ BaseId + "&CtrlId="+CtrlID
            var features = "height=390,width=470,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=250,left=150"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }

        function fnCrSetToCode(BaseId,CtrlID,FldVAlArr)
        {
            document.getElementById(BaseId+"_"+CtrlID).value=FldVAlArr[0]
            document.getElementById("Value_"+BaseId+"_"+CtrlID).innerHTML=FldVAlArr[1] 
        }

        function fnCrformSubmit(){}

        
    var FunctId 
    var OldValue=''
    var FunctinVlaType=0
    
//    function chklistPopup(FieldId,CtrlID,FunctionId)
//    {
//      FunctinVlaType=0
//      
//       document.getElementById( "Lbl_" + FieldId + "_" + CtrlID).className="HideRow";
//       OldValue=document.getElementById("Value_" + FieldId+"_" + CtrlID).innerHTML
//       
//       
//       FunctId=FunctionId
//        //SetPopDimensions()
//         var FldValue=document.getElementById(FieldId + "_" + CtrlID).value
//        var pageURL = "../IssueLogin/ChkListPopup.aspx?BaseID="+ FieldId + "&CtrlId="+CtrlID + "&DeptName=" + $("#DepartmentNameTxt").val() + "&FldValue=" + FldValue ;
//        var features = "height=390,width=470,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=250,left=150"
//        SpWinObj = window.open(pageURL,'SpecCodes',features)
//        if(SpWinObj.opener == null) SpWinObj.opener=self;
//        SpWinObj.focus();
//    }
//    
//    
//    function fnSetVal_Chklist(KfLableVal,Saveid,FieldId,CtrlId)
//    { 
//        var FldValue=KfLableVal.split("#*#")
//        document.getElementById("Value_" + FieldId+"_" + CtrlId).innerHTML=FldValue[0]
//        
//        if (Saveid ==1){ document.getElementById(FieldId + "_" + CtrlId).value=KfLableVal  }
//        else  { document.getElementById(FieldId + "_" + CtrlId).value=FldValue[0]  }
//        
//    }
//    
//    function fnCrformSubmitDoc(BaseID,CtrlId)
//    {
//       if (FunctinVlaType==1)
//       {
//         document.getElementById( "Lbl_" + BaseID + "_" + CtrlId).className="MainTD";        
//        }

//       if (FunctId !=0) QAMS_SpecialValidations(FunctId,BaseID,CtrlId,document.getElementById("IssueLogIdTXt").value)
//    }


 function EfectedDocpoup(BaseId,CtrlId)
 {
   
    var pageURL = "../TestEFormExecution/EffectedDocpoup.aspx?BaseId="+ BaseId + "&IssueId=" + document.getElementById("IssueLogIdTXt").value +  "&CtrlId=" + CtrlId   + "&ListType=2" + "&DeptName=" + $("#DepartmentNameTxt").val();  
    var features = "height=390,width=470,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=250,left=150"
    SpWinObj = window.open(pageURL,'SpecCodes4',features)
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
 }
 
 function SetDocumentValue(BaseId,CtrlId,XmlString)
{
    FunctinVlaType=1
    document.getElementById( "DocData_"+ BaseId + "_" + CtrlId).value=XmlString
    if(XmlString!= '')
        document.getElementById( "Lbl_" + BaseId + "_" + CtrlId).className="MainTD"
    else
        document.getElementById( "Lbl_" + BaseId + "_" + CtrlId).className="HideRow"
}

function fnDocumentPreview(BaseId,CtrlId)
{
    var pageURL= "../TestEFormExecution/EffectedDocpoup.aspx?BaseId="+ BaseId + "&IssueId=" + document.getElementById("IssueLogIdTXt").value + "&CtrlId=" + CtrlId  + "&StatusFlag=2&ListType=2"
    var features = "height=450,width=600,toolbar=no,menubar=no,status=no,scrollbars=yes,top=250,left=350"
    SpWinObj = window.open(pageURL,'EffectedDocpoup',features)
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
}

    </script>
    
    
    <script language=javascript >
    
       
        function fnFileupload(BaseId,CtrlID)
        {
            //SetPopDimensions()
            var pageURL = "../IssueLogin/DocumentPopup.aspx?BaseID="+ BaseId + "&CtrlId="+CtrlID
            var features = "height=550,width=700,toolbar=no,menubar=no,status=no,scrollbars=no,top=250,left=300";
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }

        function fnCrSetToCode1(BaseId,CtrlID,DocIdLst,DocNameLst)
        {
            document.getElementById(BaseId+"_"+CtrlID).value=DocIdLst + '#*#' + DocNameLst;
            document.getElementById("File_"+BaseId+"_"+CtrlID).innerHTML=DocNameLst
        }

    </script>
    

    <script language=javascript>
    
    var NFieldId
    var NWorkTempID
    
    function AssignWorkItems(FieldId,WorkTempID)
    {
        NFieldId=FieldId
        NWorkTempID=WorkTempID
        
        var IssueId=document.getElementById("IssueLogIdTXt").value
        var IssAulID=document.getElementById("IsuLogAulIdTXt").value
        
          var IssueTypeId=document.getElementById("IsueTypeIDTxt").value
        var IssueCatId=document.getElementById("IssueCatIdTxt").value
        
        var WorkItemId=document.getElementById("WorkItemIdTxt").value
        var FieldId1 =FieldId + "_"  + WorkTempID
        var FissID=document.getElementById("FissIDTXt").value
        var Department = document.getElementById("DepartmentNameTxt").value;
        
        ShowMask("../IssueLogin/WorkItemPopup.aspx?WorkTempID="+ WorkTempID + "&IssueId=" + IssueId + "&IssAulID=" + IssAulID + "&IsuTypeID=" + IssueTypeId + "&IsuCategory="+ IssueCatId  + "&WorkItemId="  + WorkItemId + "&FieldId=" + FieldId1 + "&Type=0&FissID=" + FissID + "&Department=" + Department + "&IssueCode=" + document.getElementById("IsuLogUcodeTxt").value)
        

    }
	
    function CloseFunctionality()
    {
        HideMask()
    }
    
    function SetWorkItems(WrkCodeStr,WrkIdStr)
     {
        if(WrkIdStr != "")
        {
           var CodeStr=''
           document.getElementById(NFieldId+"_"+NWorkTempID).value=WrkIdStr;
           WrkCodeArr=WrkCodeStr.split(";")
         
           for(var i=0;i<=WrkCodeArr.length-1;i++)
            {
               CodeStr=CodeStr +WrkCodeArr[i] + ";" + "</br>"
            }
           document.getElementById("Value_"+NFieldId+"_"+NWorkTempID).innerHTML=CodeStr
             
           document.getElementById("BTN_" +NFieldId ).setAttribute("disabled",true,1);
           document.getElementById("Approve_1").checked=false;
           document.getElementById("Approve_0").checked=true;
           document.getElementById("RemarksTxt").value="--"
            
           document.getElementById("Approve_1").setAttribute("disabled",true,1);
        
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
           
           ChangCss()
        }
     }
    </script>
    
    <script language=javascript>
 
     function fnBatchpopup(BaseId,CtrlId)
     {
         
         var pageURL
            if(CtrlId==23)
             pageURL = "../IssueLogin/MultiBatchList.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId   + "&StatusFlag=1&BatchType=2"
            else 
            pageURL = "../IssueLogin/MultiBatchList_DI.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId   + "&StatusFlag=1&BatchType=2"
            
	     var features = "height=450,width=700,toolbar=no,menubar=no,status=no,scrollbars=yes,top=250,left=350"
	     SpWinObj = window.open(pageURL,'SpecCodes',features)
	     if(SpWinObj.opener == null) SpWinObj.opener=self;
	     SpWinObj.focus();
     }
     
    function SetBatchValue(BaseId,CtrlId,XmlString)
    {
        if(XmlString!= '')
        { 
            document.getElementById(BaseId + "_" + CtrlId).value=XmlString
            document.getElementById("Lbl_" +  BaseId + "_" + CtrlId).className="MainTD"
        }
        else
        {
            document.getElementById(BaseId + "_" + CtrlId).value=""
            document.getElementById("Lbl_" +  BaseId + "_" + CtrlId).className="HideRow"
        }
    }

    function fnBatchPreview(BaseId,CtrlId)
    {
         
         var pageURL
            if(CtrlId==23)
             pageURL = "../IssueLogin/MultiBatchList.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId   + "&StatusFlag=2&BatchType=2"
            else 
            pageURL = "../IssueLogin/MultiBatchList_DI.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId   + "&StatusFlag=2&BatchType=2"
            
	     var features = "height=450,width=600,toolbar=no,menubar=no,status=no,scrollbars=yes,top=250,left=350"
	     SpWinObj = window.open(pageURL,'SpecCodes',features)
	     if(SpWinObj.opener == null) SpWinObj.opener=self;
	     SpWinObj.focus();
    }
         
    </script>
 

</head>
<body ms_positioning="GridLayout" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="noBack">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="Table3" runat="server" CellPadding="0" CellSpacing="0" BorderWidth="3"
            HorizontalAlign="center" CssClass="MainTable" EnableViewState="False" Width="98%">
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
                       <%-- <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="AduitTD" ColumnSpan="2">
                                <asp:Table ID="Atab" CssClass="MainTD" runat="server" Width="100%" CellPadding="0"
                                    CellSpacing="0" HorizontalAlign="center" Style="padding-right: 0px; padding-left: 0px;
                                    padding-bottom: 0px; padding-top: 0px">       --%>                             
                                    <asp:TableRow>
                                        <asp:TableCell ColumnSpan="2">
                                            <asp:Table ID="DataTab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow> 
                                    <asp:TableRow ID="EditableFileListtr">
                                        <asp:TableCell ID="EditableFileListtd" Style="font-weight: bold;" CssClass="MainTD"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan ="1">
                                            <input type="button" onclick="FnEdiatbelFileAttach1()" class='RsnPUP' tabindex="5" >
                                        </asp:TableCell>
                                    </asp:TableRow>                                       
                                   
                                                                    
                                   <%-- <asp:TableRow ID="DataTab2Tr" runat="server" CssClass="MainTD">--%>
                                    <asp:TableRow>
                                        <asp:TableCell ColumnSpan="2">
                                            <asp:Table ID="DataTab2" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell ColumnSpan="2">
                                            <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell ColumnSpan="2">
                                            <asp:Table ID="AppStsTab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                         
                                        </asp:TableCell>
                                    </asp:TableRow>
                                                                      
                                    
                               <%-- </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>--%>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DecisionTd" runat="server" Width="154px" Style="font-weight: bold;">
                                <asp:Literal runat="server" ID="DecisionLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="Approve" runat="server" RepeatDirection="Horizontal" CellPadding="0"
                                    class="RBList" CellSpacing="0" Height="18px" onclick="ChangCss()">
                                 </asp:RadioButtonList>
                                                               
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                          <asp:TableRow ID="ReasonsTr" CssClass="HideRow">
                          
                          <asp:TableCell CssClass="MainTD" ID="ReasonsTd" Style="font-weight: bold;"></asp:TableCell>
                          <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="Reasonstxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" 
                                    MaxLength="250" Width="300px" AccessKey="D" ></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="RemarksTd" runat="server" Style="font-weight: bold;">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                                <asp:TextBox ID="testid" runat="server" CssClass="hiderow"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R" onkeypress="taLimit()" onkeyup="taCount()" ></asp:TextBox>
                                <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc1:EsignObj id="EsignObj1" runat="server" visible="true">
                                </uc1:EsignObj>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                            
                                   <input id ="SubmitBtn" type="button" onmouseover="this.className='ButOCls'" class='ButCls' accesskey="C"
                                    onmouseout="this.className='ButCls'" width="70px" value="Submit" onclick="Fnsubmit(<%=TransType%>,'20')" />
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70" CssClass ="HideRow" OnClientClick="EFormFinalSubmit()">
                                                                  
                                </asp:Button>
                                   </asp:TableCell>
                                 <asp:TableCell CssClass="HideRow" runat="server" HorizontalAlign="Right">
                                  <asp:Label runat="server" Text="" ID="TempStsLbl" CssClass="HideRow"></asp:Label>
                              <asp:Button ID="PreviewBtn" runat="server" onMouseOver="this.className='ButCls'" CssClass="ButCls"
                                onMouseOut="this.className='ButCls'" Width="80px" Text="" Enabled='True'></asp:Button>
                               
                            </asp:TableCell>
                         
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="HideRow" Height="20px" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" AccessKey="V"></asp:HyperLink>
                                    
                                      <input type =button  id="Button1" onMouseOver="this.className='ButexCls'"
                                    Class='<%=StatsuCss %>' AccessKey="C" onMouseOut="this.className='ButexOCls'" value="Status report"  onclick="OpenIsueReport()"/> 
                                    
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" ID="ValidatorsTd" runat="server">
                            
                                <asp:ValidationSummary ID="ValidationSummary1" Style="z-index: 101; left: 232px;
                                    position: absolute; top: 344px" runat="server" ShowMessageBox="True" ShowSummary="False">
                                </asp:ValidationSummary>
                                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="return"
                                ControlToValidate="RemarksTxt" ErrorMessage="Enter Value For:Remark(s) / Reason(s)"></asp:RequiredFieldValidator>

                             <%--   <asp:ValidationSummary ID="ValidationSummary2" Style="z-index: 101; left: 232px;
                                position: absolute; top: 344px" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="return">
                                </asp:ValidationSummary>--%>
                                
                                 <asp:TextBox runat="server" CssClass="HideRow" ID="ValdString"></asp:TextBox>
                                <asp:TextBox ID="ChkBoxIdTXtx" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="WorkItemIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="UserStatusTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="WofStatusTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                 <asp:TextBox ID="IssueLogIdTXt" runat=server CssClass="HideRow"></asp:TextBox>
                                 <asp:TextBox ID="IsuLogAulIdTXt" runat="server" CssClass="HideRow"></asp:TextBox>
                                 <asp:TextBox ID="IsueTypeIDTxt" runat=server CssClass="HideRow"></asp:TextBox>
                                 <asp:TextBox ID="IssueCatIdTxt" runat=server CssClass="HideRow"></asp:TextBox>
                                 <asp:TextBox ID="IsuLogUcodeTxt" runat=server CssClass="HideRow"></asp:TextBox>
                                 
                                 
                                 <asp:TextBox ID="CtrlIdTxt" runat=server CssClass="HideRow"></asp:TextBox>
                                 <asp:TextBox ID="DataTypeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                 <asp:TextBox ID="ControlIdTXt" runat=server CssClass="HideRow"></asp:TextBox>
                                 <asp:TextBox ID="FldEnableTxt" runat=server CssClass="HideRow"></asp:TextBox>
                                 <asp:TextBox ID="CustomValidFunTxt" runat="server" > </asp:TextBox>
                                 <asp:TextBox ID="CunstomValIdsTxt" runat="server" > </asp:TextBox>
                                 <asp:TextBox ID="FissIDTXt" runat="server"> </asp:TextBox>
                                 <asp:TextBox ID="DepartmentNameTxt" runat="server"></asp:TextBox>
                                 <asp:TextBox ID="WorkInitDate" runat="server"> </asp:TextBox>
                                  <asp:TextBox ID="WrkItemIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                  <asp:TextBox ID="AppDescTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                   <asp:TextBox ID="IsuTypeId" runat="server"> </asp:TextBox>
                                    <asp:TextBox ID="EditabledocIDTxt" runat="server"> </asp:TextBox>
                                  
                                    <asp:TextBox ID="ValidNotRqCtrlsTxt" runat="server"> </asp:TextBox>
                             </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
    
    <script  language="javascript">
    
    function FnEdiatbelFileAttach1()
	   {
	     FnEdiatbelFileAttach("<%=IsuTransCode %>")
	   }
    
    
    var taMaxLength1 = 250

    function taLimit() 
	{
		var taObj=window.event.srcElement;
		if (taObj.value.length==taMaxLength1*1) return false;
	}

	function taCount()
	{
		var taObj=window.event.srcElement;			
		if (taObj.value.length>taMaxLength1*1){
			taObj.value=taObj.value.substring(0,taMaxLength1*1);
			alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength1 +" Characters")
		}
	}	
	
    function ChangCss()
    {
    
      var TotalApprovals= <%=TotalApprovals %>
      var ApprovalCompleted=<%=ApprovalCompleted %>  
      if (document.getElementById("Approve_0").checked== true) document.getElementById("RemarksTxt").value="--"
      else document.getElementById("RemarksTxt").value=""
      if (  ((TotalApprovals-ApprovalCompleted) <=1)  && (document.getElementById("Approve_0").checked== true) )  //&&  (<%=Request.QueryString("DateFlag") %> != "3")
        { document.getElementById("ReasonsTr").className="HideRow"; } //"MainTD"
      else { document.getElementById("ReasonsTr").className="HideRow"; }
      
      var btn = document.getElementById("<%=btnConfirm.ClientID%>"); 

     if (document.getElementById("Approve_0").checked== true) 
        {
          //document.getElementById("btnConfirm").setAttribute("CausesValidation",true,1)
          document.getElementById("AppDescTxt").value="2"
          disableEnableValidations(true);
          //EFormFinalSubmit();
        }
      if (document.getElementById("Approve_1").checked== true) 
       {
         //document.getElementById("btnConfirm").removeAttribute("CausesValidation") 
         document.getElementById("AppDescTxt").value="3"
         disableEnableValidations(false);
       } 
   }  
    
    
    
    
    //Funtion to enable or disable validations based on Approver desicion
   function disableEnableValidations(state)
   {
        var sel="span[controltovalidate], span[clientvalidationfunction]"
        $(sel).each(function (index) {
            ValidatorEnable(this, state);
        });
        var EnableSelector ="span[controltovalidate='RemarksTxt']"
        $(EnableSelector).each(function (index) {
            ValidatorEnable(this, true);
        });
        
        
        
        var ValiNotReqFids = document.getElementById("ValidNotRqCtrlsTxt").value
         if  (ValiNotReqFids != "")
         {
           var ValiNotReqFidsArr=new Array()
           ValiNotReqFidsArr=ValiNotReqFids.split("#*#") 
           for (var i=0;i<ValiNotReqFidsArr.length;i++)
           {
               //var EnableSelector ="span[controltovalidate='" + ValiNotReqFidsArr[i] +"_CalDateDisplay']"
               var EnableSelector ="span[controltovalidate='" + ValiNotReqFidsArr[i] + "']"
                $(EnableSelector).each(function (index) {
                ValidatorEnable(this, false);
                });
           }
         }
   
   function disableEnableValidations(state)
   {
        var sel="span[controltovalidate], span[clientvalidationfunction]"
        $(sel).each(function (index) {
            ValidatorEnable(this, state);
        });
        var EnableSelector ="span[controltovalidate='RemarksTxt']"
        $(EnableSelector).each(function (index) {
            ValidatorEnable(this, true);
        });
        
        
        
        var ValiNotReqFids = document.getElementById("ValidNotRqCtrlsTxt").value
         if  (ValiNotReqFids != "")
         {
           var ValiNotReqFidsArr=new Array()
           ValiNotReqFidsArr=ValiNotReqFids.split("#*#") 
           for (var i=0;i<ValiNotReqFidsArr.length;i++)
           {
               var EnableSelector ="span[controltovalidate='" + ValiNotReqFidsArr[i] +"_CalDateDisplay']"
                $(EnableSelector).each(function (index) {
                ValidatorEnable(this, false);
                });
           }
         }
   
   
   }
   }
   

function IsDigit(e)  ///Function To check Numeric values
    {
       var KeyIdentifierMap =
      {
        End            : 35,
        Home        : 36,
        Left        : 37,
        Right        : 39,
        'U+00007F'    : 46        // Delete
      }
        if ( !e )
            e = event ;
       
        if(e.shift==true)
            return false

      var iCode = ( e.keyCode || e.charCode );

      if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
            iCode = KeyIdentifierMap[ e.keyIdentifier ] ;

      return (
            ( iCode >= 48 && iCode <= 57 )        // Numbers
            || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
            || iCode == 8                        // Backspace
            || iCode == 46                        // Delete
            || iCode == 9                        // Tab.
            )
    }

  function IsDigit1(e)  ///Function To check Numeric values
    {
       var KeyIdentifierMap =
      {
        End            : 35,
        Home        : 36,
        Left        : 37,
        Right        : 39,
        'U+00007F'    : 46        // Delete
      }
        if ( !e )
            e = event ;
       
        if(e.shift==true)
            return false

      var iCode = ( e.keyCode || e.charCode );

      if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
            iCode = KeyIdentifierMap[ e.keyIdentifier ] ;

      return (
            ( iCode >= 48 && iCode <= 57 )        // Numbers
            || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
            || iCode == 8                        // Backspace
            || iCode == 9                        // Tab.
            )
    }
    
    function DisableRadioButton()
    {   
        if ( (<%=TransType%> ==1 ) && (document.getElementById("WrkItemIdTxt").value != "") )
        {
              document.getElementById("Approve_1").checked=false
              document.getElementById("Approve_1").setAttribute("disabled",true,1);
        }
    }
    
    
    if ("<%=Page.IsPostBack %>" == "False")
     {
        setTimeout("DisableRadioButton()",10)
     }
  
  
  

    </script>

<script language="javascript">
  function ValidateCheckBox(src,args) 
        {
            
             args.IsValid=true;
  	         Page_IsValid=true;
  	         
  	        if(document.getElementById("ChkBoxIdTXtx").value!="") 
  	       { 
      	    
               var ErrerStr=""
               var counter = 0;
               var checkCnt=0;
               
               var CtrlIdStr=document.getElementById("ChkBoxIdTXtx").value.substring(3)
               var CtrlIdarr =new Array()
               var CtrlvalArr =new Array()
               
               CtrlIdarr=CtrlIdStr.split("$*$")
               
               for(var i=0;i<CtrlIdarr.length;i++)
               {
                  CtrlvalArr=CtrlIdarr[i].split("#*#")
                  
                  
                  switch (parseInt(CtrlvalArr[2]))
                  {
                     case 7:
                          checkCnt=0
                          if(document.getElementById(CtrlvalArr[0])!=null)
                            {
                                if(document.getElementById(CtrlvalArr[0]).checked==true)
                                {
                                    checkCnt++
                                }
                            }  
                            break;
                     case 8:
                          checkCnt=0
                          counter=0
                          while(document.getElementById(CtrlvalArr[0]+"_"+counter)!=null)
                            {
                                if(document.getElementById(CtrlvalArr[0]+"_"+counter).checked==true)
                                {
                                    checkCnt++
                                }
                                counter++
                            }
                     break;
                  }
                  
                  if (checkCnt==0)
                  {
                    ErrerStr = ErrerStr + CtrlvalArr[1]  + "\n -"
                  }
               }
               
                  if (ErrerStr != "") 
                  {
                    src.errormessage=ErrerStr.substring(0,ErrerStr.length-3)
	                args.IsValid=false;
                    Page_IsValid=false;
                  }
                  
             }
       }
</script>

 <script language="javascript">
 
    var ErrerString =""
     function DateCtrlValidation(src,args)
    {
        ErrerString=""
        args.IsValid=true;
  	    Page_IsValid=true;
  	    
        var FnValues = document.getElementById("ValdString").value
        if(FnValues != "")
        {
           var ValidationStr=FnValues.substring(3)
           var ValidationStrArr =new Array()
           ValidationStrArr=ValidationStr.split("#*#")
           
           for(var i=0;i<=ValidationStrArr.length-1;i++)
           {
            //setTimeout(ValidationStrArr[i]+"",0)
            eval(ValidationStrArr[i]+ ";")
           }
        }
       if(ErrerString!="")
        {
            src.errormessage=ErrerString.substring(0,ErrerString.length-3)
		    args.IsValid=false;
  	        Page_IsValid=false;
  	    }
    }
    

    
    function DateValidation(CtrlID,CtrlType,CompareCtrlID,CtrlToCompareId,ChckOper,ErrerMessage)
     {
            
      var CompareCtrl
      var CtrlToCompare
     
      var CompareCtrlAyy  = new Array()
      var CtrlToCompareAyy =new Array()
      
      var CompareCtrlVal
      var CtrlToCompareVal 
      var DDgap=0
      
      if(CtrlType==1)
      {
        ThisMonth = <%=ThisMonth%>
	    ThisYear = <%=ThisYear%>
	    ThisDay = <%=ThisDay%>
	    
	    CtrlToCompareVal=DateSerialValue(ThisYear,ThisMonth,ThisDay)
	    
	    CompareCtrl=document.getElementById(CompareCtrlID + "_" + CtrlID + "_CalDateVal").value
	    if(CompareCtrl =="")
	    {
	        return;
	    }
	    CompareCtrlAyy=CompareCtrl.split("/")
	    CompareCtrlVal=DateSerialValue(CompareCtrlAyy[2],CompareCtrlAyy[0],CompareCtrlAyy[1])
	    
      }
      else
      {
        CtrlToCompare=document.getElementById( CtrlToCompareId + "_" + CtrlID + "_CalDateVal").value
        if(CtrlToCompare =="")
	    {
	        return;
	    }
        CompareCtrl=document.getElementById( CompareCtrlID  + "_" + CtrlID + "_CalDateVal").value
        if(CompareCtrl =="")
	    {
	        return;
	    }
        CompareCtrlAyy=CompareCtrl.split("/")
	    CtrlToCompareAyy=CtrlToCompare.split("/")
	    
	   CompareCtrlVal=DateSerialValue(CompareCtrlAyy[2],CompareCtrlAyy[0],CompareCtrlAyy[1])
	    CtrlToCompareVal=DateSerialValue(CtrlToCompareAyy[2],CtrlToCompareAyy[0],CtrlToCompareAyy[1])
	  }
	    
       DDgap=DateDiffFun(CompareCtrlVal,CtrlToCompareVal)
       var ValidationSts = true
                                 
       switch(parseInt(ChckOper))
       {
            case 1 :
                 if(DDgap<=0)
                {
                    ValidationSts =false;
                }
                break;
                
            case 2:
                 if(DDgap>=0)
                {
                    ValidationSts =false;
                }
                break;
            case 3:
                if(DDgap<0)
                {
                    ValidationSts =false;
                }
                break;
            case 4:
                      if(DDgap>0)
                {
                    ValidationSts =false;
                }
                break;
            case 5:
                  if(DDgap!=0)
                {
                    ValidationSts =false;
                }
                break;
            
       
       }
       if(ValidationSts == false)
       {
            //Concatinate the error for the Global string.
            ErrerString = ErrerString + ErrerMessage  + "\n -"
       }
       
    }
  
   
    
    </script>

<script language="vbscript">
  
  function DateSerialValue(Year,Month,Day)
  
  DateSerialValue= dateSerial(Year,Month,Day)
  
  End function
  
   function DateDiffFun(CompareCtrlVal,CtrlToCompareVal)
  
  DateDiffFun= DateDiff("d",CompareCtrlVal,CtrlToCompareVal)
  
  End function
           
</script>

<script language=jscript>
     
     function OpenIsueReport()
     {
       var pageURL = "../CAPAWORKS/WordFormatReport.aspx?Type=1&IsuLogID=" + document.getElementById("IssueLogIdTXt").value + "&IsuTypeId=" + document.getElementById("IsueTypeIDTxt").value + "&PrsType=<%=Request.QueryString("PrsType")%>"
	     var features = "height=600,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
	    SpWinObj = window.open(pageURL,'SpecCodes',features)
	    if(SpWinObj.opener == null) SpWinObj.opener=self;
	    SpWinObj.focus();
     }
</script>

 <script language=javascript>
 
 if ("<%=Page.IsPostBack %>" == "False")
  {
    setTimeout("SetPropertiedToControlsAtPageLoad(20)",50)
  }
  
  function fnopenExtpopup(BaseId,CtrlId)
  {
     var NexActivityID=BaseId.substring(6,BaseId.length)  
     NexActivityID = parseInt(NexActivityID) - 1
                
    if (document.getElementById(BaseId.substring(0,6) + NexActivityID + "_42").value!="")
    {
    
        var pageURL = "Orgnazationpopup.aspx?BaseID="+ BaseId + "&CtrlId="+CtrlId + "&OrgType=" + document.getElementById(BaseId.substring(0,6) + NexActivityID + "_42").value
        var features = "height=390,width=470,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=250,left=150"
        SpWinObj = window.open(pageURL,'SpecCodes',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    
    else
      alert("Select : External Organization Type ")
  }
  
  function fnSetorgname(BaseId,CtrlID,Orgname)
  {
     document.getElementById(BaseId+"_"+CtrlID).value=Orgname
  }
    
    </script>
 <script language ="javascript" >
 
 function SetGlobalIssueID()
	{
	 GlobalIssueID= document.getElementById("IssueLogIdTXt").value
	}
	
	setTimeout("SetGlobalIssueID()",20);
	
	
	TransType=<%=TransType %>;
	
	      
    function AjaxCheckDuration1(IsuLogId,PlanId,BtnId,RetrunFun,ReturnParams)
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
                if (IsuLogId==0) {RtnStr=2}
                CheckVal(RtnStr, BtnId, RetrunFun, ReturnParams)
               
            }
        }  
        var url="../PrsWorkFlow/AjaxCalIsuTrgDateDuration.aspx?IsuLogId=" + IsuLogId + "&PlanId=" + PlanId
        xmlhttp.open("POST",url,true);
        xmlhttp.send(null);
    }

    
AjaxCheckDuration1(document.getElementById("IssueLogIdTXt").value,<%=Request.QueryString("PLanID") %>,"SubmitBtn")
TransType=<%=TransType %>;



 setTimeout("DisableFields()",100)
</script>

</body>


</html>
