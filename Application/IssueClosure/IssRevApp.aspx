<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="IssRevApp.aspx.vb" Inherits="IssueClosure.IssRevApp" %>

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
    <script language ="javascript" src ="../JScript/CustomValidationFuns.js"></script>

   <script language="javascript">
	<!--
       RequestPrefix = '<%=me.ClientID%>'
       function fnSetToReasons(argValue) {
           document.getElementById("RemarksTxt").value = argValue
       }

       function IsDigit(e)  ///Function To check Numeric values
       {
           var KeyIdentifierMap =
      {
          End: 35,
          Home: 36,
          Left: 37,
          Right: 39,
          'U+00007F': 46        // Delete
      }
           if (!e)
               e = event;

           if (e.shift == true)
               return false

           var iCode = (e.keyCode || e.charCode);

           if (!iCode && e.keyIdentifier && (e.keyIdentifier in KeyIdentifierMap))
               iCode = KeyIdentifierMap[e.keyIdentifier];

           return (
            (iCode >= 48 && iCode <= 57)        // Numbers
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
          End: 35,
          Home: 36,
          Left: 37,
          Right: 39,
          'U+00007F': 46        // Delete
      }
           if (!e)
               e = event;

           if (e.shift == true)
               return false

           var iCode = (e.keyCode || e.charCode);

           if (!iCode && e.keyIdentifier && (e.keyIdentifier in KeyIdentifierMap))
               iCode = KeyIdentifierMap[e.keyIdentifier];

           return (
            (iCode >= 48 && iCode <= 57)        // Numbers
            || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
            || iCode == 8                        // Backspace
            || iCode == 9                        // Tab.
            )
       }

       function ValidateCheckBox(src, args) {

           args.IsValid = true;
           Page_IsValid = true;

           if (document.getElementById("ChkBoxIdTXtx").value != "") {

               var ErrerStr = ""
               var counter = 0;
               var checkCnt = 0;

               var CtrlIdStr = document.getElementById("ChkBoxIdTXtx").value.substring(3)
               var CtrlIdarr = new Array()
               var CtrlvalArr = new Array()

               CtrlIdarr = CtrlIdStr.split("$*$")

               for (var i = 0; i < CtrlIdarr.length; i++) {
                   CtrlvalArr = CtrlIdarr[i].split("#*#")

                   counter = 0
                   while (document.getElementById(CtrlvalArr[0] + "_" + counter) != null) {
                       if (document.getElementById(CtrlvalArr[0] + "_" + counter).checked == true) checkCnt++
                       counter++
                   }
                   break;

                   if (checkCnt == 0) {
                       ErrerStr = ErrerStr + CtrlvalArr[1] + "\n -"
                   }
               }

               if (ErrerStr != "") {
                   src.errormessage = ErrerStr.substring(0, ErrerStr.length - 3)
                   args.IsValid = false;
                   Page_IsValid = false;
               }

           }
       }

    
      
    //-->
    </script>
    
    <script language="javascript">

        //For back button Issue
        window.history.forward();
        function noBack() { window.history.forward(); }

        function FnAllowNumVal(src, args) {
            args.IsValid = true;
            Page_IsValid = true;

            var e = event.keyCode
            if (event.ctrlLeft == true) { return false }
            if (event.shiftLeft == true) { return false }
            else if ((e == 8) || (e == 46) || (e == 37) || (e == 39) || (e == 9) || (e == 16) || (e >= 96 && e <= 105)) { return true }
            else if (e == 32) { return false }
            else if (isNaN(String.fromCharCode(e))) //Validates for Key Data
            {
                //return false
                args.IsValid = false;
                Page_IsValid = false;
            }
        }


        function fnOpenPopUp(BaseId, CtrlID) {
            //SetPopDimensions()
            var pageURL = "../../IssueLogin/PopupPage.aspx?BaseID=" + BaseId + "&CtrlId=" + CtrlID
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL, 'SpecCodes', features)
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();

        }

        function fnCrSetToCode(BaseId, CtrlID, FldVAlArr) {
            if (FldVAlArr != '') {
                document.getElementById("<%=Fldprefix %>" + BaseId + "_" + CtrlID).value = FldVAlArr[0] //FldVAlArr[0]+ "/" + FldVAlArr[1];
                document.getElementById("Value_" + "<%=Fldprefix %>" + BaseId + "_" + CtrlID).innerHTML = FldVAlArr[1] //FldVAlArr[2]+ "/" + FldVAlArr[3];
            }
            else {
                document.getElementById("<%=Fldprefix %>" + BaseId + "_" + CtrlID).value = ''; //FldVAlArr[0]+ "/" + FldVAlArr[1];
                document.getElementById("Value_" + "<%=Fldprefix %>" + BaseId + "_" + CtrlID).innerHTML = ''; //FldVAlArr[2]+ "/" + FldVAlArr[3];
            }

        }

        function fnCrformSubmit() {
            //document.forms(0).submit()
        }

        //	function chklistPopup(BaseId,CtrlID)
        //	{
        //	  //SetPopDimensions()
        // 	var pageURL = "ChkListPopup.aspx?BaseID="+ BaseId + "&CtrlId="+CtrlID
        //	var features = "height=390,width=470,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=250,left=150"
        //	SpWinObj = window.open(pageURL,'SpecCodes',features)
        //	if(SpWinObj.opener == null) SpWinObj.opener=self;
        //	SpWinObj.focus();
        //	}


        //    function fnSetVal_Chklist(KfLableVal,Saveid,BaseID,CtrlId)
        //    { 
        //        var FldValue=KfLableVal.split("#*#")
        //         document.getElementById("Value_"+"<%=Fldprefix %>"+BaseID+"_"+CtrlId).innerHTML=FldValue[0]
        //        if (Saveid ==1)
        //            document.getElementById("<%=Fldprefix %>"+BaseID+"_"+CtrlId).value=KfLableVal 
        //        else
        //            document.getElementById("<%=Fldprefix %>"+BaseID+"_"+CtrlId).value=FldValue[0] 
        //    }
        //    
        //     function fnCrformSubmitDoc(BaseID,CtrlId)
        //    {
        //       //if (FunctId !=0) QAMS_SpecialValidations(FunctId,BaseID,CtrlId,document.getElementById("IssueLogIdTXt").value)
        //    }

        if ("<%=Page.IsPostBack %>" == "False") {

            setTimeout("SetPropertiedToControlsAtPageLoad(2)", 50)
        }

        function CustomFieldValidations(src, args) {
            args.IsValid = true;
            Page_IsValid = true;
            var ExpMsg = ""
            LoadCustomValidation()
        }

        function LoadCustomValidation() {
            var CusValFunIdLst = document.getElementById("CustomValidFunTxt").value.substring(1)
            var CusValFldIdLst = document.getElementById("CunstomValIdsTxt").value.substring(3)
            var CusValFunIdArr = new Array()
            var CusValFldIdArr = new Array()

            CusValFunIdArr = CusValFunIdLst.split(",")
            CusValFldIdArr = CusValFldIdLst.split("#*#")


            var IsuLogId = document.getElementById("IssLogId").value
            for (var i = 0; i <= CusValFunIdArr.length - 1; i++) {
                var CusValFldId = new Array()
                CusValFldId = CusValFldIdArr[i].split(",")
                //alert(CusValFunIdArr[i])
                QAMS_SpecialValidations(CusValFunIdArr[i], "<%=Fldprefix%>" + CusValFldId[0], CusValFldId[1], 0)
                ///break; 
            }
        }
     
    </script>
    
    
    <script language=javascript >

        function fnFileupload(BaseId, CtrlID) {
            //SetPopDimensions()
            var pageURL = "../../IssueLogin,DocumentPopup.aspx?BaseID=" + BaseId + "&CtrlId=" + CtrlID
            var features = "height=550,width=700,toolbar=no,menubar=no,status=no,scrollbars=no,top=250,left=300"
            SpWinObj = window.open(pageURL, 'SpecCodes', features)
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();

        }

        function fnCrSetToCode1(BaseId, CtrlID, DocIdLst, DocNameLst) {
            document.getElementById("<%=Fldprefix %>" + BaseId + "_" + CtrlID).value = DocIdLst + '#*#' + DocNameLst;
            document.getElementById("File_" + "<%=Fldprefix %>" + BaseId + "_" + CtrlID).innerHTML = DocNameLst;
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
    	    
	        CompareCtrl=document.getElementById("<%=Fldprefix%>" + CompareCtrlID + "_" + CtrlID + ":CalDateVal").value
	        if(CompareCtrl =="")
	        {
	            return;
	        }
	        CompareCtrlAyy=CompareCtrl.split("/")
	        CompareCtrlVal=DateSerialValue(CompareCtrlAyy[2],CompareCtrlAyy[0],CompareCtrlAyy[1])
    	    
          }
          else
          {
            CtrlToCompare=document.getElementById("<%=Fldprefix%>" + CtrlToCompareId + "_" + CtrlID + ":CalDateVal").value
            if(CtrlToCompare =="")
	        {
	            return;
	        }
            CompareCtrl=document.getElementById("<%=Fldprefix%>" + CompareCtrlID  + "_" + CtrlID + ":CalDateVal").value
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
                    if(DDgap<=0)  ValidationSts =false;
                    break;

                case 2:
                    if(DDgap>=0) ValidationSts =false;
                    break;
                    
                case 3:
                    if(DDgap<0) ValidationSts =false;
                    break;
                    
                case 4:
                    if(DDgap>0) ValidationSts =false;
                    break;
                case 5:
                    if(DDgap!=0) ValidationSts =false;
                    break;
            }
            if(ValidationSts == false)
           {
                //Concatinate the error for the Global string.
                ErrerString = ErrerString + ErrerMessage  + "\n -"
           }
       
    }
  
   
    
    </script>
    
    <script language=javascript>

        function fnBatchpopup(BaseId,CtrlId)
        {
        
            var pageURL
            if(CtrlId==23)
             pageURL = "../IssueLogin/MultiBatchList.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId   + "&StatusFlag=1&BatchType=1&prsType=<%=Request.QueryString("PrsType") %>" 
            else 
            pageURL = "../IssueLogin/MultiBatchList_DI.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId   + "&StatusFlag=1&BatchType=1&prsType=<%=Request.QueryString("PrsType") %>" 
            
            var features = "height=450,width=700,toolbar=no,menubar=no,status=no,scrollbars=yes,top=250,left=350"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }

        function SetBatchValue(BaseId,CtrlId,XmlString)
        {
        if(XmlString!= '')
        { 
            document.getElementById( "<%=Fldprefix%>"+ BaseId + "_" + CtrlId).value=XmlString
            document.getElementById( "Lbl_" + "<%=Fldprefix%>" + BaseId + "_" + CtrlId).className="MainTD"
        }
        else
        {
            document.getElementById( "<%=Fldprefix%>"+ BaseId + "_" + CtrlId).value=""
            document.getElementById( "Lbl_" + "<%=Fldprefix%>" + BaseId + "_" + CtrlId).className="HideRow"
        }
        }

        function fnBatchPreview(BaseId,CtrlId)
        {
             var pageURL 
             if(CtrlId==23)
              pageURL= "../IssueLogin/MultiBatchList_DI.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId + "&StatusFlag=2&BatchType=1"
             else 
              pageURL = "../IssueLogin/MultiBatchList_DI.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId   + "&StatusFlag=2&BatchType=1"
            
            var features = "height=450,width=600,toolbar=no,menubar=no,status=no,scrollbars=yes,top=250,left=350"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
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
                     <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DescTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" onkeypress="taLimit()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                            
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="HeaderTAb">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ID="EditableFileListtd" CssClass="MainTD" Style="font-weight: bold;"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="FnEdiatbelFileAttach1()" class='RsnPUP' tabindex="5" >
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow >
                         <asp:TableCell CssClass="MainTD" ColumnSpan=2>
                           <asp:Table ID="ActPlnTab" runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center"></asp:Table>  
                         </asp:TableCell>
                       </asp:TableRow>
                        
                        <asp:TableRow >
                          <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                            <asp:Table ID="ClsrFldTab" runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center"></asp:Table>    
                         </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow  CssClass="HideRow" ID="ChidIsuTr">
                          <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                            <asp:Table ID="ChidIsuTab" runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center"></asp:Table>    
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
                      
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="RemarksTd" runat="server" Style="font-weight: bold;">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                                <asp:TextBox ID="testid" runat="server" CssClass="hiderow"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" onkeypress="taLimit2()"
                                    onkeyup="taCount2()" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
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
                                    onmouseout="this.className='ButCls'" width="70px" value="Submit" onclick="Fnsubmit(<%=TransType%>,'2')" />
                                    
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70" CssClass ="HideRow" >
                                              
                                              
                                </asp:Button>
                                   </asp:TableCell>
                                 <asp:TableCell ID="TableCell1" CssClass="MainFoot" runat="server" HorizontalAlign="Right">
                                  <asp:Label runat="server" Text="" ID="TempStsLbl" CssClass="HideRow"></asp:Label>
                              <asp:Button ID="PreviewBtn" runat="server" onMouseOver="this.className='ButCls'" CssClass="HideRow"
                                onMouseOut="this.className='ButCls'" Width="80px" Text="" Enabled='True'></asp:Button>
                               
                            </asp:TableCell>
                         
                            <asp:TableCell CssClass="HideRow" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButCls" Height="20px" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" AccessKey="V"></asp:HyperLink>
                            </asp:TableCell>
                            
                             <asp:TableCell CssClass="MainFoot" HorizontalAlign=Right>
                              <input type =button  id="Button1" onMouseOver="this.className='ButexOCls'"
                                    Class='ButexCls' AccessKey="C" onMouseOut="this.className='ButexCls'"   value="Status report" style="width:130px" onclick="OpenIsueReport()"/>
                            </asp:TableCell>
                            
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" ID="ValidatorsTd" runat="server">
                                <asp:ValidationSummary ID="ValidationSummary1" Style="z-index: 101; left: 232px;
                                    position: absolute; top: 344px" runat="server" ShowMessageBox="True" ShowSummary="False">
                                </asp:ValidationSummary>
                                
                                <asp:TextBox runat="server" CssClass="HideRow" ID="ValdString"></asp:TextBox>
                                <asp:TextBox ID="ChkBoxIdTXtx" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="IsuClsID" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="UserStatusTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="WofStatusTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                
                                <asp:TextBox ID="IssLogId" CssClass="HideRow" runat=server></asp:TextBox>
                                <asp:TextBox ID="IssTypeId" CssClass="HideRow" runat=server></asp:TextBox>
                                <asp:TextBox ID="TextBox1" CssClass="HideRow" runat=server></asp:TextBox>
                                <asp:TextBox ID="TextBox2" CssClass="HideRow" runat=server></asp:TextBox>
                                <asp:TextBox ID="LodeTXT" CssClass="HideRow" runat=server Text="0"></asp:TextBox>
                                  <asp:TextBox ID="CustomValidFunTxt" runat="server"> </asp:TextBox>
                                <asp:TextBox ID="CunstomValIdsTxt" runat="server"> </asp:TextBox>
                                <asp:TextBox ID="ValidNotRqCtrlsTxt" runat="server"> </asp:TextBox>
                                 <asp:TextBox ID="EditabledocIDTxt" runat="server"> </asp:TextBox>
                                
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

var taMaxLength = 500

    function taLimit1() 
	{
		var taObj=window.event.srcElement;
		if (taObj.value.length==taMaxLength*1) return false;
	}

	function taCount1()
	{
		var taObj=window.event.srcElement;			
		if (taObj.value.length>taMaxLength*1){
			taObj.value=taObj.value.substring(0,taMaxLength*1);
			alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Characters")
		}
	}	
	
	var taMaxLength1 = 250

    function taLimit2() 
	{
		var taObj=window.event.srcElement;
		if (taObj.value.length==taMaxLength1*1) return false;
	}

	function taCount2()
	{
		var taObj=window.event.srcElement;			
		if (taObj.value.length>taMaxLength1*1){
			taObj.value=taObj.value.substring(0,taMaxLength1*1);
			alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength1 +" Characters")
		}
	}	
	
    function OpenIsueReport()
    {
        var pageURL = "../CAPAWORKS/WordFormatReport.aspx?Type=1&IsuLogID=" + <%=Request.QueryString("IsuLogID")%> + "&IsuTypeId=" + <%=Request.QueryString("IssTypeId")%> + "&PrsType=<%=Request.QueryString("PrsType") %> "
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
    
   function ChangCss()
    {
    
     var TotalApprovals= <%=TotalApprovals %>
      var ApprovalCompleted=<%=ApprovalCompleted %>  
      
      if (document.getElementById("Approve_0").checked== true) document.getElementById("RemarksTxt").value="--"
      else document.getElementById("RemarksTxt").value=""
      
      if (document.getElementById("Approve_0").checked== true) 
       { 
            disableEnableValidations(true);
       }
      if (document.getElementById("Approve_1").checked== true) 
       {
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
        if (state==false)
        {
            var EnableSelector ="span[controltovalidate='RemarksTxt']"
            $(EnableSelector).each(function (index) {
                ValidatorEnable(this, true);
            });
        }
        
        var ValiNotReqFids = document.getElementById("ValidNotRqCtrlsTxt").value
         if  (ValiNotReqFids != "")
         {
           var ValiNotReqFidsArr=new Array()
           ValiNotReqFidsArr=ValiNotReqFids.split("#*#") 
           for (var i=0;i<ValiNotReqFidsArr.length;i++)
           {
               var EnableSelector ="span[controltovalidate='" + ValiNotReqFidsArr[i] +"']"
                $(EnableSelector).each(function (index) {
                ValidatorEnable(this, false);
                });
           }
         }
   }
   

    </script>

<script language="javascript">
    //  function ValidateCheckBox(src,args) 
    //        {
    //            
    //             args.IsValid=true;
    //  	         Page_IsValid=true;
    //  	         
    //  	        if(document.getElementById("ChkBoxIdTXtx").value!="") 
    //  	       { 
    //      	    
    //               var ErrerStr=""
    //               var counter = 0;
    //               var checkCnt=0;
    //               
    //               var CtrlIdStr=document.getElementById("ChkBoxIdTXtx").value.substring(3)
    //               var CtrlIdarr =new Array()
    //               var CtrlvalArr =new Array()
    //               
    //               CtrlIdarr=CtrlIdStr.split("$*$")
    //               
    //               for(var i=0;i<CtrlIdarr.length;i++)
    //               {
    //                  CtrlvalArr=CtrlIdarr[i].split("#*#")
    //                  
    //                  
    //                  switch (parseInt(CtrlvalArr[2]))
    //                  {
    //                     case 7:
    //                          checkCnt=0
    //                          if(document.getElementById(CtrlvalArr[0])!=null)
    //                            {
    //                                if(document.getElementById(CtrlvalArr[0]).checked==true)
    //                                {
    //                                    checkCnt++
    //                                }
    //                            }  
    //                            break;
    //                     case 8:
    //                          checkCnt=0
    //                          counter=0
    //                          while(document.getElementById(CtrlvalArr[0]+"_"+counter)!=null)
    //                            {
    //                                if(document.getElementById(CtrlvalArr[0]+"_"+counter).checked==true)
    //                                {
    //                                    checkCnt++
    //                                }
    //                                counter++
    //                            }
    //                     break;
    //                  }
    //                  
    //                  if (checkCnt==0)
    //                  {
    //                    ErrerStr = ErrerStr + CtrlvalArr[1]  + "\n -"
    //                  }
    //               }
    //               
    //                  if (ErrerStr != "") 
    //                  {
    //                    src.errormessage=ErrerStr.substring(0,ErrerStr.length-3)
    //	                args.IsValid=false;
    //                    Page_IsValid=false;
    //                  }
    //                  
    //             }
    //       }
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
	    
	    CompareCtrl=document.getElementById("<%=Fldprefix%>" + CompareCtrlID + "_" + CtrlID + "$CalDateVal").value
	    if(CompareCtrl =="")
	    {
	        return;
	    }
	    CompareCtrlAyy=CompareCtrl.split("/")
	    CompareCtrlVal=DateSerialValue(CompareCtrlAyy[2],CompareCtrlAyy[0],CompareCtrlAyy[1])
	    
      }
      else
      {
        CtrlToCompare=document.getElementById("<%=Fldprefix%>" + CtrlToCompareId + "_" + CtrlID + "$CalDateVal").value
        if(CtrlToCompare =="")
	    {
	        return;
	    }
        CompareCtrl=document.getElementById("<%=Fldprefix%>" + CompareCtrlID  + "_" + CtrlID + "$CalDateVal").value
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
                    if(DDgap<=0)  ValidationSts =false;
                    break;

                case 2:
                    if(DDgap>=0) ValidationSts =false;
                    break;
                    
                case 3:
                    if(DDgap<0) ValidationSts =false;
                    break;
                    
                case 4:
                    if(DDgap>0) ValidationSts =false;
                    break;
                case 5:
                    if(DDgap!=0) ValidationSts =false;
                    break;
            }
           if(ValidationSts == false)
       {
            //Concatinate the error for the Global string.
            ErrerString = ErrerString + ErrerMessage  + "\n -"
       }
       
    }
  
   function fnWorkFlowPoup(WorkFlowId)
    {
        var pageURL = "../TestDynamicEForm/WorkFlowDetails.aspx?WorkFlowId=" + WorkFlowId + "&AT=G" 
        var features = "height=500,width=700,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
        SpWinObj = window.open(pageURL,'SpecCodes',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
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
    
    <script language ="javascript" >
    
    function SetGlobalIssueID()
	{
	 GlobalIssueID= document.getElementById("IssLogId").value
	}
	
	setTimeout("SetGlobalIssueID()",20);
	
	

        var TotalApprovals= <%=TotalApprovals %>
        var ApprovalCompleted=<%=ApprovalCompleted %>  
        
        if(TotalApprovals-ApprovalCompleted !=1)
        {
            AjaxCheckDuration(document.getElementById("IssLogId").value,"SubmitBtn")

        }
            
            
            
            
    TransType=<%=TransType %>;
	   

</script>
    
</body>
</html>

