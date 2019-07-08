<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DMSeFormExec.aspx.vb"
    Inherits="TestEFormExecution.DMSeFormExec" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Trn</title>
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../Scripts/Common.js"></script>
    <script type="text/javascript">
<!--
        RequestPrefix = '<%=me.ClientID%>'

        function fnSetToReasons(argValue) {
            document.getElementById("RemarksTxt").value = argValue
        }

//-->
    </script>
    <script type="text/javascript">
        function fnOpenPopUp(BaseId, CtrlID) {
            //SetPopDimensions()
            var pageURL = "../IssueLogin/PopupPage.aspx?BaseID=" + BaseId + "&CtrlId=" + CtrlID
            var features = "height=390,width=470,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=250,left=150"
            SpWinObj = window.open(pageURL, 'SpecCodes', features)
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();
        }

        function fnCrSetToCode(BaseId, CtrlID, FldVAlArr) {
            document.getElementById(BaseId + "_" + CtrlID).value = FldVAlArr[0] //FldVAlArr[0]+ "/" + FldVAlArr[1];
            document.getElementById("Value_" + BaseId + "_" + CtrlID).innerHTML = FldVAlArr[1] //FldVAlArr[2]+ "/" + FldVAlArr[3];
        }

        function fnCrformSubmit() {  //document.Form1.submit() 
        }

    </script>
    <script type="text/javascript">

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

    function OpenDMSPopUp(BaseId,CtrlID)
    {
        var UParam = BaseId + "_" + CtrlID
        var RType =1;   // Source Type
        var PlantID =<%=Session("PlantID")%>;   // Source Type
        var pageURL;
        pageURL ="../DMSManagement/DMSFilesPopUp.aspx?RType=" + RType + "&PlantID=" + PlantID + "&UParam=" + UParam;
        var SpWinObj;
        SpWinObj = window.open(pageURL,'DMSPopUp',"height=500,width=600,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }

    function Ret_OpenDMSPopUp(DocId,DocCode,DocDesc,UParam)
    {
        document.getElementById(UParam).value=DocId + '#*#' + DocDesc ;
        document.getElementById("File_"+UParam).innerHTML=DocDesc.replace("$@$","; ") ;
    }

    function OkRet_OpenDMSPopUp(UParam)
    {

    }

    </script>
    <script type="text/javascript">

        function fnActPlnPopUp(FieldId, CtrlId) {

            var ActplnCnt
            var ActPlnsArr = new Array()

            if (document.getElementById(FieldId + "_" + CtrlId).value != "") {
                var ActPln = document.getElementById(FieldId + "_" + CtrlId).value
                ActPlnsArr = ActPln.split("#*#");
                ActplnCnt = ActPlnsArr.length
            }
            else { ActplnCnt = '' }

            var ActinplanArr
            var pageURL = "ActionPlanList.aspx?FieldId=" + FieldId + "&CtrlId=" + CtrlId + "&ActplnCnt=" + ActplnCnt //+ "&ValidationList=" + ValidationList + "&IsuLogID=" + document.getElementById("IssueLogIdTXt").value
            var features = "height=500,width=600,toolbar=no,menubar=no,status=no,scrollbars=no,top=250,left=300"
            SpWinObj = window.open(pageURL, 'SpecCodes', features)
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();
        }

        function setvalue(FieldId, CtrlId, ValueArr) {
            if (ValueArr != '') {
                document.getElementById("Value_" + FieldId + "_" + CtrlId).innerHTML = ValueArr.join("#*#")  //"Action Plan(s) Raised " //
                document.getElementById(FieldId + "_" + CtrlId).value = ValueArr.join("#*#")
            }
            else {
                document.getElementById("Value_" + FieldId + "_" + CtrlId).innerHTML = ""
                document.getElementById(FieldId + "_" + CtrlId).value = ""
            }
        }


        var NFieldId
        var NWorkTempID

        function AssignWorkItems(FieldId, WorkTempID) {
            NFieldId = FieldId
            NWorkTempID = WorkTempID

            var IssueId = document.getElementById("IssueLogIdTXt").value
            var IssAulID = document.getElementById("IsuLogAulIdTXt").value
            var IssueTypeId = document.getElementById("IsueTypeIDTxt").value
            var IssueCatId = document.getElementById("IssueCatIdTxt").value

            ShowMask("../IssueLogin/WorkItemPopup.aspx?WorkTempID=" + WorkTempID + "&IssueId=" + IssueId + "&IssAulID=" + IssAulID + "&IsuTypeID=" + IssueTypeId + "&IsuCategory=" + IssueCatId)
        }

        function CloseFunctionality() {
            HideMask()
        }

        function SetWorkItems(WrkCodeStr, WrkIdStr) {
            if (WrkIdStr != "") {
                document.getElementById(NFieldId + "_" + NWorkTempID).value = WrkIdStr;
                document.getElementById("Value_" + NFieldId + "_" + NWorkTempID).innerHTML = WrkCodeStr;
            }
        }
    </script>
    <script type="text/javascript">

        function fnBatchpopup(BaseId, CtrlId) {
            var pageURL = "../IssueLogin/MultiBatchList.aspx?BaseId=" + BaseId + "&CtrlId=" + CtrlId + "&StatusFlag=1&BatchType=2"
            var features = "height=450,width=700,toolbar=no,menubar=no,status=no,scrollbars=yes,top=250,left=350"
            SpWinObj = window.open(pageURL, 'SpecCodes', features)
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();
        }

        function SetBatchValue(BaseId, CtrlId, XmlString) {
            if (XmlString != '') {
                document.getElementById(BaseId + "_" + CtrlId).value = XmlString
                document.getElementById("Lbl_" + BaseId + "_" + CtrlId).className = "MainTD"
            }
            else {
                document.getElementById(BaseId + "_" + CtrlId).value = ""
                document.getElementById("Lbl_" + BaseId + "_" + CtrlId).className = "HideRow"
            }
        }

        function fnBatchPreview(BaseId, CtrlId) {
            var pageURL = "../IssueLogin/MultiBatchList.aspx?BaseId=" + BaseId + "&CtrlId=" + CtrlId + "&StatusFlag=2&BatchType=2"
            var features = "height=450,width=600,toolbar=no,menubar=no,status=no,scrollbars=yes,top=250,left=350"
            var SpWinObj = window.open(pageURL, 'SpecCodes', features)
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();
        }

        function chklistPopup(FieldId, CtrlID) {
            //SetPopDimensions()
            var pageURL = "../IssueLogin/ChkListPopup.aspx?BaseID=" + FieldId + "&CtrlId=" + CtrlID
            var features = "height=390,width=470,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=250,left=150"
            SpWinObj = window.open(pageURL, 'SpecCodes', features)
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();
        }

        function fnSetVal_Chklist(KfLableVal, FieldId, CtrlId) {
            document.getElementById(FieldId + "_" + CtrlId).value = KfLableVal
            document.getElementById("Value_" + FieldId + "_" + CtrlId).innerHTML = KfLableVal
        }

        function OpenIsueReport() {
            var pageURL = "../CAPAWORKS/WordFormatReport.aspx?Type=1&IsuLogID=" + document.getElementById("IssueLogIdTXt").value + "&IsuTypeId=" + document.getElementById("IsueTypeIDTxt").value
            var features = "height=600,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
            SpWinObj = window.open(pageURL, 'SpecCodes', features)
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();
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

            if (!e) e = event;
            if (e.shift == true) return false
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
            if (e.shift == true) return false
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

    </script>
    <script type="text/javascript">
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


                    switch (parseInt(CtrlvalArr[2])) {
                        case 7:
                            checkCnt = 0
                            if (document.getElementById(CtrlvalArr[0]) != null) {
                                if (document.getElementById(CtrlvalArr[0]).checked == true) {
                                    checkCnt++
                                }
                            }

                            break;

                        case 8:
                            checkCnt = 0
                            counter = 0
                            while (document.getElementById(CtrlvalArr[0] + "_" + counter) != null) {
                                if (document.getElementById(CtrlvalArr[0] + "_" + counter).checked == true) {
                                    checkCnt++
                                }
                                counter++
                            }
                            break;
                    }

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
    </script>
    <script type="text/javascript">
 
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
            CompareCtrl=document.getElementById(CompareCtrlID + "_" + CtrlID + ":CalDateVal").value

            if(CompareCtrl =="") return;

            CompareCtrlAyy=CompareCtrl.split("/")
            CompareCtrlVal=DateSerialValue(CompareCtrlAyy[2],CompareCtrlAyy[0],CompareCtrlAyy[1])

        }
        else
        {
            CtrlToCompare=document.getElementById( CtrlToCompareId + "_" + CtrlID + ":CalDateVal").value
            if(CtrlToCompare =="")return;

            CompareCtrl=document.getElementById( CompareCtrlID  + "_" + CtrlID + ":CalDateVal").value
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

function Chec1111()
{
if(Page_ClientValidate())
{
    alert(1.1);
}
else
{
 alert(1);
}
}
    </script>
    <script type="type/vbscript">

    function DateSerialValue(Year,Month,Day)

        DateSerialValue= dateSerial(Year,Month,Day)

    End function

    function DateDiffFun(CompareCtrlVal,CtrlToCompareVal)

        DateDiffFun= DateDiff("d",CompareCtrlVal,CtrlToCompareVal)

    End function

    </script>
</head>
<body>
    <form autocomplete="off" id="Form1" method="post" runat="server">
    <asp:Table ID="DMSFormtTbl" HorizontalAlign="center" CssClass="MainTable" runat="server">
        <asp:TableRow CssClass="MainHead">
            <asp:TableCell>
                <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <!-----------Base table------------->
                <asp:Table runat="server" CssClass="SubTable" HorizontalAlign="Center" ID="DMSFormSubTbl">
                    <asp:TableRow CssClass="HideRow" Height="0px">
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="SubHead">
                        <asp:TableCell ColumnSpan="2">
                            <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-----------End of Base table------------->
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="MainFoot">
            <asp:TableCell>
                    <input type =button ID="DMSAtteFormBtn" onMouseOver="this.className='ButOCls'"
                        Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" value ="Submit" onclick="SeteFromVal()"/>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="HideRow" Height="0px">
            <asp:TableCell ColumnSpan="2" runat="server">
                <asp:TextBox runat="server" CssClass="HideRow" ID="ValdString"></asp:TextBox>
                <asp:TextBox ID="ChkBoxIdTXtx" runat="server" CssClass="HideRow"></asp:TextBox>
                <div id="DMSAttXMLData" runat="server">
                </div>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </form>
</body>
</html>
