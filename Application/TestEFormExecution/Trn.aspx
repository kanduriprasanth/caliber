<%@ Page Language="vb" AutoEventWireup="false" ValidateRequest="false" Codebehind="Trn.aspx.vb"
    Inherits="TestEFormExecution.Trn" MaintainScrollPositionOnPostback="true" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1" />
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    <link rel="stylesheet" href="../TRIMS.css" />

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript" src="../JScript/jquery.min.js"></script>

    <script language="javascript" src="../JScript/CustomValidationFuns.js"></script>

    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>

    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />
    <script language="javascript">
<!--

 RequestPrefix='<%=me.ClientID%>'
 
 	function fnSetToReasons(argValue)
	{  
   		document.getElementById("RemarksTxt").value=argValue
	}

//-->
 window.history.forward();
        function noBack() { 
                window.history.forward(); }
    </script>

</head>
<body ms_positioning="GridLayout" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="noBack">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow Height="20px" runat="server">
                <asp:TableCell CssClass="MainHead" runat="server">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="Center" ID="Table1">
                        <asp:TableRow CssClass="HideRow" Height="0px" runat="server">
                            <asp:TableCell runat="server"></asp:TableCell>
                            <asp:TableCell runat="server"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow runat="server">
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2" runat="server">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="CodeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="1" ReadOnly="true"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DescTd" Style="font-weight: bold;" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" Text="cc"
                                    MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID= "HeaderTR">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="HeaderFormTab" Style="padding-right: 0px; padding-left: 0px;
                                    padding-bottom: 0px; padding-top: 0px">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="EditableFileListtr">
                           <asp:TableCell ID="EditableFileListtd" Style="font-weight: bold;" CssClass="MainTD"></asp:TableCell>
                           <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="FnEdiatbelFileAttach1()" class='RsnPUP' tabindex="5" >
                           </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="BodyFormTab" Style="padding-right: 0px; padding-left: 0px;
                                    padding-bottom: 0px; padding-top: 0px">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ReasonsTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="ReasonsTd" Style="font-weight: bold;"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="Reasonstxt" runat="server" CssClass="TxtCls" TextMode="MultiLine"
                                    MaxLength="250" Width="300px" AccessKey="D"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RtnTotr" CssClass="HideRoW">
                            <asp:TableCell ID="RtnToTd" runat="server" CssClass="MainTD" Style="font-weight: bold;"
                                Width="154px" Text="Return To"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="RtntoDDL" runat="server">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;">
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
                                <uc1:EsignObj id="EsignObj1" runat="server" visible="false">
                                </uc1:EsignObj>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="IARow" runat="server" CssClass="HideRow">
                <asp:TableCell runat="server">
                    <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                        CellSpacing="1" HorizontalAlign="Center">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" CssClass="MainFoot">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="Center" ID="Table2" BorderWidth="0px">
                        <asp:TableRow CssClass="HideRow" Height="0px" runat="server">
                            <asp:TableCell runat="server"></asp:TableCell>
                            <asp:TableCell runat="server"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="SubmitTypeTr" runat="server" CssClass="HideRow">
                            <asp:TableCell runat="server">
                                <asp:RadioButtonList ID="SubmitTypeRbtn" runat="server" RepeatDirection="Horizontal"
                                    CssClass="RBList">
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TableRow1" runat="server">
                            <asp:TableCell ID="TableCell1" HorizontalAlign="Center" ColumnSpan="3" CssClass="MainFoot" runat="server">
                                <input id ="Button2" type ="button" onMouseOver="this.className='ButOCls'" class='<%=MISStatsuCss %>' AccessKey="C" onMouseOut="this.className='ButCls'"
                                    Width="70px" value ="Save" onclick="SaveFormData()"/>                                    
                                     <input id ="Button3" type ="button" onMouseOver="this.className='ButOCls'" class='<%=MISStatsuCss %>' AccessKey="C" onMouseOut="this.className='ButCls'"
                                    Width="70px" value ="Load" onclick="LoadFormData()"/>
                            
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow runat="server">
                            <asp:TableCell CssClass="MainFoot" runat="server" HorizontalAlign="Left">
                            
                                 <input id ="SubmitBtn" type ="button" onMouseOver="this.className='ButOCls'" Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'"
                                    Width="70px" value ="Submit" onclick="Fnsubmit(<%=TransType%>,'20')"/>                                  
                                    
                                    
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Width="70px" OnClientClick ="EFormFinalSubmit()" CssClass ="HideRow"></asp:Button>
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="MainFoot" runat="server" HorizontalAlign="Center">
                                <asp:Button ID="PreviewBtn" runat="server" onMouseOver="this.className='ButOCls'"
                                    CssClass="HideRow" AccessKey="C" onMouseOut="this.className='ButCls'" Width="80px"
                                    Text="" Enabled="true"></asp:Button>
                                <asp:Label runat="server" Text="" ID="TempStsLbl" CssClass="HideRow" ForeColor=red Font-Size=12></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign="Right" runat="server">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="HideRow" Height="20px" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" AccessKey="V" Font-Underline="False" Visible=false></asp:HyperLink>
                                <input type="button" id="Button1" onmouseover="this.className='ButexOCls'" class='<%=StatsuCss %>'
                                    accesskey="C" onmouseout="this.className='ButexCls'" value="Status Report" onclick="OpenIsueReport()" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0px" runat="server">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd" runat="server">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox runat="server" CssClass="HideRow" ID="ValdString"></asp:TextBox>
                    <asp:TextBox ID="ChkBoxIdTXtx" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="IssueLogIdTXt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="IsuLogAulIdTXt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="IsueTypeIDTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="IssueCatIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="CtrlIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="DataTypeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="ControlIdTXt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="FldEnableTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="CustomValidFunTxt" runat="server"> </asp:TextBox>
                    <asp:TextBox ID="CunstomValIdsTxt" runat="server"> </asp:TextBox>
                    <asp:TextBox ID="WorkInitDate" runat="server"> </asp:TextBox>
                    <asp:TextBox ID="Department" runat="server"> </asp:TextBox>
                    <asp:TextBox ID="IsuLogUcodeTxt" runat="server"> </asp:TextBox>
                      <asp:TextBox ID="IsuTypeId" runat="server"> </asp:TextBox>
                       <asp:TextBox ID="EditabledocIDTxt" runat="server"> </asp:TextBox>
                      <asp:TextBox ID="BatchStatusIdTxt" runat="server"> </asp:TextBox>
                    <asp:TextBox ID="BatchFldIdTxt" runat="server"> </asp:TextBox>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow">
                <asp:TableCell>
                    <asp:TextBox ID="WorkItemIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ProjectAulIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FissIDTXt" runat="server"> </asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
	
	   function FnEdiatbelFileAttach1()
	   {
	     FnEdiatbelFileAttach("<%=IsuTransCode %>")
	   }
        

        function fnCrSetToCode(BaseId,CtrlID,FldVAlArr)
        {
           if(FldVAlArr!=""){
            document.getElementById(BaseId+"_"+CtrlID).value=FldVAlArr[0] //FldVAlArr[0]+ "/" + FldVAlArr[1];
            document.getElementById("Value_"+BaseId+"_"+CtrlID).innerHTML=FldVAlArr[1] //FldVAlArr[2]+ "/" + FldVAlArr[3];
           } 
           else{
           document.getElementById(BaseId+"_"+CtrlID).value=''; //FldVAlArr[0]+ "/" + FldVAlArr[1];
            document.getElementById("Value_"+BaseId+"_"+CtrlID).innerHTML='';
           }
        }

        function fnCrformSubmit()   
        {  //document.Form1.submit() 
        }

</script>

<script language="javascript">
        
            
            function fnFileupload(BaseId,CtrlID)
            {
                //SetPopDimensions() 
                var pageURL = "../IssueLogin/DocumentPopup.aspx?BaseID="+ BaseId + "&CtrlId="+CtrlID 
                var features = "height=550,width=700,toolbar=no,menubar=no,status=no,scrollbars=no,top=250,left=300"
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

<script language="javascript">
    
       
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
        
        ShowMask("../IssueLogin/WorkItemPopup.aspx?WorkTempID="+ WorkTempID + "&IssueId=" + IssueId + "&IssAulID=" + IssAulID + "&IsuTypeID=" + IssueTypeId + "&IsuCategory="+ IssueCatId  + "&WorkItemId="  + WorkItemId + "&FieldId=" + FieldId1 +  "&Type=0&FissID=" + WorkItemId)
                
        
    }
	
    function CloseFunctionality()
    {
        HideMask()
    }
    
    function SetWorkItems(WrkCodeStr,WrkIdStr)
     {
        if(WrkIdStr != "")
        {
          var CodeStr =''
         document.getElementById(NFieldId+"_"+NWorkTempID).value=WrkIdStr;
         WrkCodeArr=WrkCodeStr.split(";")
         
           for(var i=0;i<=WrkCodeArr.length-1;i++)
            {
               CodeStr=CodeStr +WrkCodeArr[i] + ";" + "</br>"
            }
          document.getElementById("Value_"+NFieldId+"_"+NWorkTempID).innerHTML=CodeStr
         document.getElementById("BTN_" +NFieldId ).setAttribute("disabled",true,1);
        }
     }
</script>

<script language="javascript">
 
     function fnBatchpopup(BaseId,CtrlId)
     {
         
         var pageURL
            if(CtrlId==23)
             pageURL = "../IssueLogin/MultiBatchList.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId   + "&StatusFlag=1&BatchType=2"
            else 
            pageURL = "../IssueLogin/MultiBatchList_DI.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId   + "&StatusFlag=1&BatchType=2"
            
            
	     var features = "height=450,width=850,toolbar=no,menubar=no,status=no,scrollbars=yes,top=250,left=350"
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
         pageURL = "../IssueLogin/MultiBatchList.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId + "&StatusFlag=2&BatchType=2"
        else 
        pageURL = "../IssueLogin/MultiBatchList_DI.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId   + "&StatusFlag=2&BatchType=2"
                   
	     var features = "height=450,width=600,toolbar=no,menubar=no,status=no,scrollbars=yes,top=250,left=350"
	     SpWinObj = window.open(pageURL,'SpecCodes',features)
	     if(SpWinObj.opener == null) SpWinObj.opener=self;
	     SpWinObj.focus();
    }
         
//     var FunctId    
//    function chklistPopup(FieldId,CtrlID,FunctionId)
//    {
//        FunctId=FunctionId
//        //SetPopDimensions()
//        var pageURL = "../IssueLogin/ChkListPopup.aspx?BaseID="+ FieldId + "&CtrlId="+CtrlID
//        var features = "height=390,width=470,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=250,left=150"
//        SpWinObj = window.open(pageURL,'SpecCodes',features)
//        if(SpWinObj.opener == null) SpWinObj.opener=self;
//        SpWinObj.focus();
//    }

//    function fnSetVal_Chklist(KfLableVal,Saveid,FieldId,CtrlId)
//    { 
//        var FldValue=KfLableVal.split("#*#")
//       document.getElementById("Value_" + FieldId+"_" + CtrlId).innerHTML=FldValue[0]
//        if (Saveid ==1)
//            document.getElementById(FieldId + "_" + CtrlId).value=KfLableVal 
//        else
//            document.getElementById(FieldId + "_" + CtrlId).value=FldValue[0] 
//            
//       if (FunctId !=0) QAMS_SpecialValidations(FunctId,FieldId,CtrlId,document.getElementById("IssueLogIdTXt").value)
//            
//    }
//    
//    function fnCrformSubmitDoc(BaseID,CtrlId)
//    {
//       //if (FunctId !=0) QAMS_SpecialValidations(FunctId,BaseID,CtrlId,document.getElementById("IssueLogIdTXt").value)
//    }

 
    function OpenIsueReport()
     {
        var pageURL = "../CAPAWORKS/WordFormatReport.aspx?Type=1&IsuLogID=" + document.getElementById("IssueLogIdTXt").value + "&IsuTypeId=" + document.getElementById("IsueTypeIDTxt").value + "&PrsType=<%=Request.QueryString("PrsType")%>"
	    var features = "height=600,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
	    SpWinObj = window.open(pageURL,'SpecCodes',features)
	    if(SpWinObj.opener == null) SpWinObj.opener=self;
	    SpWinObj.focus();
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
      
      if ( !e )e = event ;
      if(e.shift==true)return false
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
      if ( !e ) e = event ;
      if(e.shift==true)return false
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
                        CtrlvalArr=CtrlIdarr[i].substring("#*#")
                        checkCnt=0
                        
                        counter=0
                        while(document.getElementById(CtrlvalArr[0]+"_"+counter)!=null)
                        {
                            if(document.getElementById(CtrlvalArr[0]+"_"+counter).checked==true) checkCnt++
                            counter++
                        }
                        break;
                        
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
    
     function DepartmentChk(src,args)
    {
//        var Deptname = document.getElementById("Department").value
//        var type=<%=Request.QueryString("Type")%>
//        if(Deptname!=""&&type==1)
//       {
//        ErrerString=""
//        args.IsValid=true;
//        Page_IsValid=true;
//        var obj = document.getElementById("1_COL0213007001_30")
//        var selIndex = obj.selectedIndex
//        if(Deptname!=(obj.options(selIndex).text)&&selIndex!=0)
//            {
//                args.IsValid=false;
//                Page_IsValid=false;
//            }
//        }    
     }
    
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
            {  eval(ValidationStrArr[i]+ ";") }
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
	    
	    if(CompareCtrl =="") return;
	   
	    CompareCtrlAyy=CompareCtrl.split("/")
	    CompareCtrlVal=DateSerialValue(CompareCtrlAyy[2],CompareCtrlAyy[0],CompareCtrlAyy[1])
	    
      }
      else
      {
        CtrlToCompare=document.getElementById( CtrlToCompareId + "_" + CtrlID + "_CalDateVal").value
        if(CtrlToCompare =="")return;
	   
        CompareCtrl=document.getElementById( CompareCtrlID  + "_" + CtrlID + "_CalDateVal").value
        if(CompareCtrl =="")return;
	   
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
                 if(DDgap<=0)ValidationSts =false;
                 break;
                
            case 2:
                 if(DDgap>=0) ValidationSts =false;
                 break;
            case 3:
                if(DDgap<0)ValidationSts =false;
                break;
            case 4:
                if(DDgap>0)ValidationSts =false;
                break;
            case 5:
                if(DDgap!=0)ValidationSts =false;
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

<script language="javascript">
 
 if ("<%=Page.IsPostBack %>" == "False")
  {
    setTimeout("SetPropertiedToControlsAtPageLoad(20)",50)
  }
  StatusRptsetClass();
  
  function StatusRptsetClass(){
  
       var Issulogid=document.getElementById("IssueLogIdTXt").value;
        if("<%=TransType%>"==3){
        if(Issulogid!="0")
          document.getElementById("Button1").className="ButexCls";
         else
          document.getElementById("Button1").className="HideRow";
        }
  }
  
  
  
</script>
<script language ="javascript" >

               
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



AjaxCheckDuration1(document.getElementById("IssueLogIdTXt").value,<%=Request.QueryString("PLanID")%>,"SubmitBtn")

function BtnDisable()
{
    var BtnDisable="<%=BtnDisable%>" 
    if(BtnDisable=="True")
    {
        document.getElementById("SubmitBtn").setAttribute("disabled", "disabled")
    }
}
setTimeout("BtnDisable()",50) 


TransType=<%=TransType%>;

function SetGlobalIssueID()
	{
	 GlobalIssueID= document.getElementById("IssueLogIdTXt").value
	 document.getElementById("FissIDTXt").value=document.getElementById("WorkItemIdTxt").value
	}
	
	setTimeout("SetGlobalIssueID()",20);
	 setTimeout("DisableFields()",100)  //For Modification in CustomValid
</script>
	 
	
	
	<script type="text/javascript">
	
	
        function SaveFormData()
        {
            
            var WorkItemId=document.getElementById("WorkItemIdTxt").value
            
            var SaveString = "<Data>"
                $("#BodyFormTab").find("input[type='text'][id], textarea[id], select[id]").each(function (index) {
                
                //                    if(this.id == this.name)
//                    {
                        var ID = this.id;
                        var Val = $(this).val(); // need to handle special charectors
                        SaveString += "<span id='" + ID + "'>" + Val + "</span>";
//                    }
                });
                $("#BodyFormTab").find("input[type='text'][id] ").each(function (index) {
                    if(this.id == this.name)
                    {
                        var ID = this.id;
                        var Val = $(this).val(); // need to handle special charectors
                        SaveString += "<span id='" + ID + "'>" + Val + "</span>";
                    }
                });
                $("#BodyFormTab").find("span[id]:not([controltovalidate]):not([class='RsnPUP'])").each(function (index) {
                    var ID = this.id;
                    var Val = $(this).html(); // need to handle special charectors
                    SaveString += "<span id='" + ID + "'>" + Val + "</span>";
                });

            $("#BodyFormTab").find(":checkbox,:radio").each(function (index) {
                    var ID = this.id;
                    SaveString += "<span id='" + ID + "'>" + (this.checked==true? 1:0) + "</span>";
            });

            SaveString += "</Data>";            
             
                $.post('Partialsave_Ajax.aspx', {SaveString: SaveString, WorkItemId: WorkItemId,ReadFlag:"1" }, function (result) {
                   if(result=="1")
                    alert("Data Saved");
                });
        }

        function LoadFormData()
        {
            var WorkItemId=document.getElementById("WorkItemIdTxt").value
            $.ajax({
                url: 'Partialsave_Ajax.aspx',
                cache: false,                
                data: {"WorkItemId":WorkItemId,"ReadFlag":"2"},
                success: function (data) {
                        var JQSaveString = $(data);
                        $("#BodyFormTab").find("input[type='text'][id], textarea[id], select[id]").each(function (index) {
                            var ID = this.id;
                                $(this).val(JQSaveString.filter("#" + ID).text());
                        });
                        $("#BodyFormTab").find("span[id]:not([controltovalidate]):not([class='RsnPUP'])").each(function (index) {
                            var ID = this.id;
                            $(this).html(JQSaveString.filter("#" + ID).text());
                        });
                         $("#BodyFormTab").find(":checkbox,:radio").each(function (index) {
                                var ID = this.id;
                                this.checked=(JQSaveString.filter("#" + ID).text()=="1")?true:false;
                                
                                if(this.checked==true)
                                  this.click();
                        });

                } ,
                error: function (xhr, errorType) {
                    var Error = xhr.responseText;
                    alert(Error);
                }
            });                   

        }
        
 
        
</script>


</html>
