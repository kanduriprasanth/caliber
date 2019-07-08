				    <%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="IssueLogin.Trn" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<%@ Register TagPrefix="uc2" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<%@ Register TagPrefix="UC3" TagName="DateTxt" Src="../IssueLogin/DateTextbox.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    
    <link href="../TRIMS.css" rel="stylesheet">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript" src="../JScript/CustomValidationFuns.js"></script>
    <script language="javascript" src="../JScript/jquery.min.js"></script>

    <script language="javascript">
        <!--        code
        RequestPrefix = '<%=me.ClientID%>'

        function fnSetToReasons(argValue) {
            document.getElementById("RemarksTxt").value = argValue
        }

        function IsDigit(e)  ///Function To check Numeric values
        {//debugger
            var KeyIdentifierMap =
            {
                End: 35,
                Home: 36,
                Left: 37,
                Right: 39,
                'U+00007F': 46        // Delete

            }



            if (!e) e = event;
            if (e.shiftLeft == true) return false
            var AvailableVal = window.event.srcElement.value.indexOf(".")
            var iCode = (e.keyCode || e.charCode);

            if ((iCode == 46) && (AvailableVal != -1))
                return false;
            if ((iCode == 46) && (window.event.srcElement.value == ""))
                return false;


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
            if (!e) e = event;

            if (e.shiftLeft == true) return false

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
                    CtrlvalArr = CtrlIdarr[i].substring("#*#")
                    checkCnt = 0

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
            var pageURL = "PopupPage.aspx?BaseID=" + BaseId + "&CtrlId=" + CtrlID
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL, 'SpecCodes', features)
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();
        }

        function fnCrSetToCode(BaseId, CtrlID, FldVAlArr, GenericCode) {
            if (FldVAlArr != '') {
                document.getElementById("<%=Fldprefix %>" + BaseId + "_" + CtrlID).value = FldVAlArr[0] //FldVAlArr[0]+ "/" + FldVAlArr[1];
                document.getElementById("Value_" + "<%=Fldprefix %>" + BaseId + "_" + CtrlID).innerHTML = FldVAlArr[1] //FldVAlArr[2]+ "/" + FldVAlArr[3];
            }
            else {
                document.getElementById("<%=Fldprefix %>" + BaseId + "_" + CtrlID).value = ''
                document.getElementById("Value_" + "<%=Fldprefix %>" + BaseId + "_" + CtrlID).innerHTML = ''
            }

            var CusValFunIdLst = document.getElementById("CustomValidFunTxt").value.substring(1)
            var CusValFldIdLst = document.getElementById("CunstomValIdsTxt").value.substring(3)
            var CusValFunIdArr = new Array()
            var CusValFldIdArr = new Array()

            CusValFunIdArr = CusValFunIdLst.split(",")
            CusValFldIdArr = CusValFldIdLst.split("#*#")

            for (var i = 0; i <= CusValFunIdArr.length - 1; i++) {
                var CusValFldId = new Array()
                CusValFldId = CusValFldIdArr[i].split(",")
                if (CusValFunIdArr[i] == "36") {
                    document.getElementById("<%=Fldprefix %>" + "35_11").value = GenericCode
                    var elem = document.getElementById("<%=Fldprefix %>" + "35_11");
                    if (GenericCode != '')
                        elem.readOnly = true;
                    else
                        elem.readOnly = false;

                }
            }
        }

        function fnCrformSubmit() { }

        //        var FunctId
        //        function chklistPopup(BaseId,CtrlID,FunctionId)
        //        {
        //          FunctId=FunctionId
        //            //SetPopDimensions()
        //            var pageURL = "ChkListPopup.aspx?BaseID="+ BaseId + "&CtrlId="+CtrlID
        //            var features = "height=390,width=470,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=250,left=150"
        //            SpWinObj = window.open(pageURL,'SpecCodes',features)
        //            if(SpWinObj.opener == null) SpWinObj.opener=self;
        //            SpWinObj.focus();
        //        }

        //        function fnSetVal_Chklist(KfLableVal,Saveid,BaseID,CtrlId)
        //        { 
        //            var FldValue=KfLableVal.split("#*#")
        //            document.getElementById("Value_"+"<%=Fldprefix %>"+BaseID+"_"+CtrlId).innerHTML=FldValue[0]
        //            if (Saveid ==1)
        //                document.getElementById("<%=Fldprefix %>"+BaseID+"_"+CtrlId).value=KfLableVal 
        //            else
        //                document.getElementById("<%=Fldprefix %>"+BaseID+"_"+CtrlId).value=FldValue[0] 
        //                
        //            if (FunctId !=0) QAMS_SpecialValidations(FunctId,BaseID,CtrlId,document.getElementById("IssueID").value)
        //        }
        //        
        //    function fnCrformSubmitDoc(BaseID,CtrlId)
        //    {
        //       //if (FunctId !=0) QAMS_SpecialValidations(FunctId,BaseID,CtrlId,document.getElementById("IssueLogIdTXt").value)
        //    }
        //    
    </script>

    <script language="javascript">

        function fnFileupload(BaseId, CtrlID) {
            //SetPopDimensions()
            var pageURL = "DocumentPopup.aspx?BaseID=" + BaseId + "&CtrlId=" + CtrlID
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
         if (<%=TransType %> == 1 || <%=TransType %> ==2)
            {
            var CompareCtrl
            var CtrlToCompare
            var CompareCtrlVal
            var CtrlToCompareVal 
            var DDgap=0
            var CompareCtrlAyy  = new Array()
            var CtrlToCompareAyy =new Array()
            
            if(CtrlType==1)
            {
                ThisMonth = <%=ThisMonth%>
                ThisYear = <%=ThisYear%>
                ThisDay = <%=ThisDay%>

                CtrlToCompareVal=DateSerialValue(ThisYear,ThisMonth,ThisDay)

                CompareCtrl=document.getElementById("<%=Fldprefix%>" + CompareCtrlID + "_" + CtrlID + "_CalDateVal").value  
 var input_date_cls=document.getElementById("<%=Fldprefix%>" + CompareCtrlID + "_" + CtrlID + "_CalDateVal")
               
 if(CompareCtrl =="")   return;
					  if (input_date_cls.nextSibling.style.display=='none') return;

                CompareCtrlAyy=CompareCtrl.split("/")
                CompareCtrlVal=DateSerialValue(CompareCtrlAyy[2],CompareCtrlAyy[0],CompareCtrlAyy[1])
            }
            else
            {
                CtrlToCompare=document.getElementById("<%=Fldprefix%>" + CtrlToCompareId + "_" + CtrlID + "_CalDateVal").value
                if(CtrlToCompare =="")return;
                CompareCtrl=document.getElementById("<%=Fldprefix%>" + CompareCtrlID  + "_" + CtrlID + "_CalDateVal").value
 var input_date_cls=document.getElementById("<%=Fldprefix%>" + CompareCtrlID + "_" + CtrlID + "_CalDateVal")
                
if(CompareCtrl =="") return;
					if (input_date_cls.nextSibling.style.display=='none') return;
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
            if(ValidationSts == false) ErrerString = ErrerString + ErrerMessage  + "\n -"
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

        function IsuTypePopUpFn() {
            var pageURL;
            pageURL = "IsuTypePopUp.aspx"
            SpWinObj = window.open(pageURL, 'SpecCodes', "height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();
        }

        function fnCrSetIsuType(BaseID, AulID, IsuTypeUCode, IsuTYpeDes) {
            document.getElementById("IssueID").value = BaseID
            document.getElementById("IssTypeLab").innerHTML = IsuTYpeDes
            document.getElementById("IssTypeTxt").value = IsuTYpeDes
        }

        function fnCrformSubmit1()
        { document.getElementById("GoBtn").click() }

        function ValidateRefISuPopup(src, args) {
            ErrerString = ""
            args.IsValid = true;
            Page_IsValid = true;

            if ((document.getElementById("OtherIsuRefRdl_0").checked == false) && (document.getElementById("OtherIsuRefRdl_1").checked == false))
            { ErrerString = ErrerString + "Select : Is Connected With A Previous Issue Ref." + "\n" }
            else {
                if (document.getElementById("OtherIsuRefRdl_0").checked == true) {
                    if (document.getElementById("RefIsuIdTxt").value == "" || document.getElementById("RefIsuIdTxt").value == "0") ErrerString = ErrerString + "Select: Referred Issue" + "\n";
                }
            }

            if (ErrerString != "") {
                src.errormessage = ErrerString.substring(0, ErrerString.length - 1)
                args.IsValid = false;
                Page_IsValid = false;
            }
        }
    </script>

    <script language="javascript">

        function funSetCode(prefix)
        { 
            var TotlaFldCout =document.getElementById("UcodeLevelTxt").value
            var UCodeTyp = document.getElementById("UcodeTyepTxt").value 
            var prefix =""
            prefix=document.getElementById("CodeTxt").value.substring(0,document.getElementById("CodeTxt").value.indexOf("-")+1)

            for(var i=0;i<TotlaFldCout;i++)
            { 
                prefix = prefix + document.getElementById("Ucodelevel" + i).value + "-"  
            }
            prefix = prefix + <%=ThisYear%>
            if (UCodeTyp == "3") { document.getElementById("CodeTxt").value=prefix  }
        }

        function ValidateUcodeLevels(src,args)
        {
            ErrerString=""
            args.IsValid=true;
            Page_IsValid=true;
            if (<%=TransType %> == 1 || <%=TransType %> ==2)
            {
                var Cout=0
                var TotlaFldCout =document.getElementById("UcodeLevelTxt").value
                for(var i=0;i<TotlaFldCout;i++)
                {
                    if (document.getElementById("Ucodelevel" + i).value =="") {Cout=1}
                }

                 var prefixarr=new Array()
                 prefixarr=document.getElementById("CodeTxt").value.split("-")
              
                for(var i=0;i<prefixarr.length;i++)
                { 
                  if (prefixarr[i]=="")
                  {
                    Cout=1
                  }
                  
                  else if($.trim(document.getElementById("CodeTxt").value)=="") //for system generated ucode 
                  {
                  Cout=1
                  }
                }

                if(Cout !=0)
                {
                    src.errormessage="Select - All Unique Item Value(s)"
                    args.IsValid=false;
                    Page_IsValid=false;
                }
            }
        }    

    </script>

    <script language="javascript">

        function fnBatchpopup(BaseId,CtrlId)
        {
        
            var pageURL
            if(CtrlId==23)
             pageURL = "MultiBatchList.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId   + "&StatusFlag=1&BatchType=1&prsType=" + <%=FromType%> 
            else 
            pageURL = "MultiBatchList_DI.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId   + "&StatusFlag=1&BatchType=1"
            
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
              pageURL= "MultiBatchList.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId + "&StatusFlag=2&BatchType=1&prsType=" + <%=FromType%>
             else 
              pageURL = "MultiBatchList_DI.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId   + "&StatusFlag=2&BatchType=1"
            
            var features = "height=450,width=600,toolbar=no,menubar=no,status=no,scrollbars=yes,top=250,left=350"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }

  window.history.forward();
        function noBack() { window.history.forward(); }
    </script>

</head>
<body ms_positioning="GridLayout"  onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="noBack">
    <form id="Form1" runat="server" method="post">
        <asp:Table ID="tt" runat="server" BorderWidth="3" CellPadding="0" CellSpacing="0"
            CssClass="MainTable" HorizontalAlign="center" Width="98%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table ID="Table1" runat="server" CellPadding="0" CellSpacing="1" CssClass="SubTable"
                        HorizontalAlign="center" Width="100%">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" CssClass="SubHead">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ID="IsuCategoryTd" CssClass="MainTD" Style="font-weight: bold; width: 31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Label ID="IsuCatLbl" runat="server"></asp:Label>
                                <asp:TextBox ID="IsuCatTXt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ID="IssTypeTd" CssClass="MainTD" Style="font-weight: bold; width: 31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input class='HideRow' onclick="IsuTypePopUpFn()" tabindex="3" type="button">
                                <asp:Label ID="IssTypeLab" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="IssueID" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="IssTypeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" >
                            <asp:TableCell ID="UcodeTypeTd" CssClass="MainTD" Style="font-weight: bold; width: 31%"></asp:TableCell>
                            <asp:TableCell ID="UcodeType" CssClass="MainTD"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="CodeLevelTr" CssClass="HideRow">
                            <asp:TableCell ID="CodeLevelTd" CssClass="MainTD" Style="font-weight: bold; width: 31%"></asp:TableCell>
                            <asp:TableCell ID="UCodeLevelCtrlTD" runat="server" CssClass="MainTD">
                                <asp:Table ID="UcodeTab" runat="server" CellPadding="0" CellSpacing="1" CssClass="SubTable"
                                    HorizontalAlign="center" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ID="CodeTd" CssClass="MainTD" Style="font-weight: bold; width: 31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" AccessKey="C" CssClass="UCTxtCls" MaxLength="30"
                                    TabIndex="1" Width="200px" OnKeyPress="RestrictSpecialChar()" ></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ID="DescTd" CssClass="MainTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" AccessKey="D" CssClass="TxtCls" MaxLength="250"
                                    onkeypress="taLimit()" onkeyup="taCount()" TabIndex="2" TextMode="MultiLine"
                                    Width="200px"></asp:TextBox>
                                <asp:TextBox ID="ValdString" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ID="ISSINVTd" CssClass="MainTD" Style="font-weight: bold" Text="">
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="INVRd" runat="server" CssClass="RBList" RepeatDirection="Horizontal">
                                    <asp:ListItem Selected="True" Value="1">Off-Line</asp:ListItem>
                                    <asp:ListItem Value="2">On-LIne</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <%--This Row Css Is Changed  to Hide Due To Lupin Specific  Requirement SCR : 26206 --%>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ID="OterIsuRefTd" ColumnSpan="1" CssClass="MainTD" Style="font-weight: bold"
                                Width="30%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="OtherIsuRefRdl" runat="server" CssClass="MainTD" onclick="CssChange()"
                                    RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="IsuRefTr" CssClass="HideRow">
                            <asp:TableCell ID="IsuRefTD" ColumnSpan="1" CssClass="MainTD" Style="font-weight: bold"
                                Width="30%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input class='RsnPUP' onclick="FnIsuePopup()" tabindex="5" type="button">
                                <asp:Label ID="RefIsuDescLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="RefIsuIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="RefIsuDescTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                 <asp:TextBox ID="ForIssueUcode" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" CssClass="MainTD">
                                <asp:Table ID="LogFldTab" runat="server" CellPadding="0" CellSpacing="1" CssClass="SubTable"
                                    HorizontalAlign="center" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold">
                                <asp:Literal ID="RemarksLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" AccessKey="R" CssClass="TxtCls" MaxLength="250"
                                    Rows="2" TextMode="MultiLine" Width="200px"></asp:TextBox>
                                <input class='RsnPUP' onclick="fnOpenReasons(1,'RemarksTxt')" type="button">
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
                    <asp:Table ID="IATab" runat="server" CellPadding="0" CellSpacing="1" CssClass='SubTable'
                        HorizontalAlign="Center" Width="100%">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table ID="Table2" runat="server" BorderWidth="0" CellPadding="0" CellSpacing="0"
                        CssClass="SubTable" HorizontalAlign="center" Width="100%">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                            
                            <input type ="button" onMouseOver="this.className='ButOCls'" Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'"
                                    Width="70px" value ="Submit" onclick="Fnsubmit1(<%=TransType%>,'1')" />
                                
                             <asp:Button ID="btnConfirm" runat="server" AccessKey="C" CssClass="HideRow" onMouseOut="this.className='ButCls'"
                                    onMouseOver="this.className='ButOCls'" Text="" Width="70" OnClientClick ="IssueFinalSubmit()" />
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" AccessKey="V" CssClass="HideRow" Font-Underline="False"
                                    onMouseOut="this.className='ButexCls'" onMouseOver="this.className='ButexOCls'"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ID="ValidatorsTd" ColumnSpan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                        ShowSummary="False" />
                    <asp:TextBox ID="ChkBoxIdTXtx" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:Button ID="GoBtn" runat="server" CssClass="HidRow" />
                    <asp:TextBox ID="NCIDTxt" runat="server"> </asp:TextBox>
                    <asp:TextBox ID="TypeTxt" runat="server"> </asp:TextBox>
                    <asp:TextBox ID="UcodeTyepTxt" runat="server"> </asp:TextBox>
                    <asp:TextBox ID="UcodeLevelTxt" runat="server"> </asp:TextBox>
                    <asp:TextBox ID="CustomValidFunTxt" runat="server"> </asp:TextBox>
                    <asp:TextBox ID="CunstomValIdsTxt" runat="server"> </asp:TextBox>
                    <asp:TextBox ID="ExpMsgTxt" runat="server"> </asp:TextBox>
                    <asp:TextBox ID="EditabledocIDTxt" runat="server"> </asp:TextBox>
                    <asp:TextBox ID="BatchStatusIdTxt" runat="server"> </asp:TextBox>
                    <asp:TextBox ID="BatchFldIdTxt" runat="server"> </asp:TextBox>
                    <asp:TextBox ID="IsuLogIdTxt" runat="server"> </asp:TextBox> 
                    <asp:TextBox ID="SelBatchIdTxt" runat="server"> </asp:TextBox>
                                                         
                  </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">

	
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
        var PWidth=600
        var PHeight=460
        var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
        var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
        
        SpWinObj = window.open(pageURL,'SpecCodes1',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }

    function fnSetRefValue(KfLableVal,KfIdVal,PrsType,IsuTypeId)
    {
     
      if (KfLableVal != "")
      {
          document.getElementById("RefIsuIdTxt").value=KfIdVal
          document.getElementById("RefIsuDescTxt").value=KfLableVal
          document.getElementById("RefIsuDescLbl").innerHTML="<a target='IsuAudit' href=../CAPAWORKS/WordFormatReport.aspx?RptType=1&Type=2&IsuLogID=" + KfIdVal + "&IsuTypeId=" + IsuTypeId + "&RepType=2&PrsType=" + PrsType + ">" + KfLableVal + "</a>" 
      }
      else
      {
          document.getElementById("RefIsuIdTxt").value=""
          document.getElementById("RefIsuDescTxt").value=""
          document.getElementById("RefIsuDescLbl").innerHTML=""
      }
      
    }
    
    
    
//     function FinalValidationCheck(src,args)
//        {
//            args.IsValid=true;
//            Page_IsValid=true;
//            var ErrerString=""
//            
//            for(var i=0;i<=EXpControlId.length-1;i++) //ExpMessageArr
//            {
//               if ( ExpMessageArr[i]!="") 
//                {
//                  var CtrlIDArr=new Array()
//                  var ExpMsgArr=new Array()
//                  
//                  CtrlIDArr=EXpControlId[i].split("#*#")
//                  ExpMsgArr=ExpMessageArr[i].split("#*#")
//                  
//                  for(var j=0;j<=CtrlIDArr.length-1;j++)
//                  {
//                    if (CtrlIDArr[j] != "")
//                    {
//                        if (CtrlIDArr[j] == "Ucodelevel1")
//                        {
//                           var obj=document.getElementById("Ucodelevel1")
//                            if(obj!=null)
//                            {
//                                var selIndex=obj.selectedIndex
//                                var deptname=obj.options(selIndex).text
//                                var obj2=document.getElementById("FLD_14_30")
//                                    if (obj2!=null)
//                                    {
//                                        selIndex=obj2.selectedIndex
//                                        var Initdeptname=document.getElementById("FLD_14_30").options(selIndex).text
//                                        if (Initdeptname!=deptname)
//                                        {
//                                               ErrerString= ErrerString + ExpMsgArr[j] + "\n -"
//                                        }
//                                    }//obj2
//                             }//0bj
//                                                           
//                        }
//                    else{//"Ucodelevel1" 
//                           var obj= document.getElementById("DT_" + CtrlIDArr[j])
//                           var DataType= obj.value
//                           
//                           var CheckFld=false
//                               if (DataType==4)
//                               {
//                                 var ItemsLen=document.getElementById(CtrlIDArr[j]).cells.length 
//                                 for( var i=0;i<ItemsLen;i++)
//                                 {
//                                   if ( document.getElementById(CtrlIDArr[j] + "_" + i).checked == true)CheckFld=true
//                                 }
//                                 if(CheckFld!=true)ErrerString= ErrerString + ExpMsgArr[j] + "\n -" 
//                               }
//                               else// if (DataType==4)
//                               {
//                                    if (document.getElementById(CtrlIDArr[j]).value =="")
//                                    ErrerString= ErrerString + ExpMsgArr[j] + "\n -" 
//                               }  // if (DataType==4)
//                         } //"Ucodelevel1"  
//                    } 
//                  }
//                }
//            }
//             if(ErrerString!= "")
//             {
//              src.errormessage=ErrerString.substring(0,ErrerString.length-3)
//              args.IsValid=false;
//              Page_IsValid=false;
//             } 
//         }   
//         
    
    if( (<%=TransType %>==1) && ("<%=Page.IsPostBack%>"=="False"))
    (
     setTimeout("funSetCode()",0)
    )
    
  if ("<%=Page.IsPostBack %>" == "False")
  {
    setTimeout("SetPropertiedToControlsAtPageLoad(1)",50)
    
        if (<%=TransType%>!=1) 
        {
            var Isulogid=<%=Request.QueryString("Bid")%> 
            document.getElementById("IsuLogIdTxt").value=Isulogid;
        }
  }
     
     



</script>


<script language ="javascript" >

// To calculate Issuclosure date at IssueLogin Registration initiation
// based on date of identification and issue duration(given in form configuration) 
        function fnGetIsuClosureDate()
        {
            var TransType=<%=TransType%>
            var Typeid='';
            
            if(TransType==1)
            {
                
                 Typeid=document.getElementById("IssueID").value
                 
                 // Code For set Login Plant Caode To Unique code Related Location field
                 var LocationUqObj = document.getElementById("Ucodelevel0")
                 if (LocationUqObj != null) {
                    
                    var plantcode = "<%=Session("PlantCode") %>"
                    var LocationCount = parseInt(LocationUqObj.options.length)
                    
                    for (j = 0; j <= LocationCount - 1; j++) {
                        if (plantcode != '') {
                            if (plantcode == LocationUqObj.options[j].value) {
                                LocationUqObj.selectedIndex = j;
                                LocationUqObj.disabled = true;
                                funSetCode();

                            } // if
                        } // if
                    } //for

                }
            
            
                // AjaxReadPlanStatus(Typeid,0,20,"LoadingClsDate")
            }
            else if (TransType==2||TransType==3||TransType==4)
            {
               // Typeid=<%=Request.QueryString("AId")%>
               /// AjaxReadPlanStatus(Typeid,0,25,"LoadingClsDate")
                 LoadLoginSettings() 
            }
           
                         
        }

fnGetIsuClosureDate();
TransType=<%=TransType %>;

setTimeout("DisableFields()",100)  //For Modification in CustomValid


 function RestrictSpecialChar(e) {
        //get the keycode when the user pressed any key in application
        var exp = String.fromCharCode(window.event.keyCode)

        //Below line will have the special characters that is not allowed you can add if you want more for some characters you need to add escape sequence
        var r = new RegExp("[,$#*@^&!%()<>?+]", "g");

        if (exp.match(r) != null) {_
        window.event.keyCode = 0
        alert(", $ # * @ ^ & ! % ( ) < > ? + _  These Characters Are Not Allowed")
        return false;
        }
        
        
    }


 </script>
 
 
</html>
