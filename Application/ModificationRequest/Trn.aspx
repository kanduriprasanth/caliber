<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="ModificationRequest.Trn" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
   
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/jquery.min.js"></script>
    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
	<!--



        jQuery(document).ready(function () {
            var d = new Date();
            d = d.getTime();
            if ((document.getElementById("ActionalAppReqRdl_0").checked == true) && (document.getElementById("NofAppreqTr").className == "HideRow") && document.getElementById("NofAppreqTxt").value != "") {
                document.getElementById("ActionalAppReqRdl_0").checked = false

                location.reload();

            }

            //                if (jQuery('#reloadValue').length == 0)
            //                {
            //                        jQuery('#reloadValue').val(d);
            //                        jQuery('body').show();
            //                        location.reload();
            //                }
            //                else
            //                {
            //                
            //                        jQuery('#reloadValue').val('');
            //                        location.reload();
            //                }
        });









        RequestPrefix = '<%=me.ClientID%>'

        function fnWorkFlowPoup(WorkFlowId) {
            var pageURL = "../TestDynamicEForm/WorkFlowDetails.aspx?WorkFlowId=" + WorkFlowId + "&AT=G"
            var PWidth = 600
            var PHeight = 500
            var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
            var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

            var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=" + ScreenTop + ",left=" + ScreenLeft
            SpWinObj = window.open(pageURL, 'SpecCodes', features)
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();
        }



        function fnSetToReasons(argValue) {
            document.getElementById("RemarksTxt").value = argValue
        }

        function IsuFormPopUpFn() {
            var pageURL = "../IssueWorkAllocationTemplate/IssueFormPopup.aspx?";
            var PWidth = 600
            var PHeight = 460
            var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
            var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

            SpWinObj = window.open(pageURL, 'SpecCodes', "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();
        }

        function GetFormVals(KdIdVal, KdCodeVal, KfLableVal) {
            document.getElementById("IssueFormID").value = KdIdVal
            document.getElementById("IssFormTxt").value = KdCodeVal
            document.getElementById("IssFormLab").innerHTML = KdCodeVal

            document.getElementById("IsuLogIdTxt").value = ""
            document.getElementById("IssueLogDescTxt").value = ""
            document.getElementById("IsuLogLbl").innerHTML = ""
            document.getElementById("IsuLogIdAulTxt").value = ""

            document.forms(0).submit()

        }

        function IsuLoginPopup() {
            if (document.getElementById("IssueFormID").value != "") {
                var pageURL = "IssueLoginPopup.aspx?PrsType=" + document.getElementById("IssueFormID").value;
                var PWidth = 600
                var PHeight = 460
                var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
                var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

                SpWinObj = window.open(pageURL, 'SpecCodes', "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
                if (SpWinObj.opener == null) SpWinObj.opener = self;
                SpWinObj.focus();
            }
            else {
                alert("Select Issue Form")
            }
        }

        function GetLoginVals(KdIdVal, KdAulIdVal, KfLableVal) {
            document.getElementById("IsuLogIdTxt").value = KdIdVal
            document.getElementById("IssueLogDescTxt").value = KfLableVal
            document.getElementById("IsuLogLbl").innerHTML = KfLableVal
            document.getElementById("IsuLogIdAulTxt").value = KdAulIdVal
            if (KdIdVal == '') {
                document.getElementById("ActionalAppReqRdl_0").checked = false;
                document.getElementById("NofAppreqTxt").value = 0;
                $("#NofAppreqTr").addClass("HideRow");
                $("#ApprovelTr").addClass("HideRow");
            }
            document.forms(0).submit()
        }

        function fnCrformSubmit()
        { }

        function CheckApprovels(src, args) {
            var str = ""
            args.IsValid = true;
            Page_IsValid = true;

            //if(document.getElementById("IsuLogIdTxt").value != "")
            //{
            if (document.getElementById("ActionalAppReqRdl_0").checked == true) {
                if (document.getElementById("NofAppreqTxt").value == "")
                    str = "Enter : No. of Approvals Required" + "\n-"
                else if (document.getElementById("NofAppreqTxt").value == "0")
                    str = "No. of Approvals Required Must be Greater Than 0" + "\n-"
            }

            //}  
            if (str != "") {
                src.errormessage = str.substring(0, str.length - 2)
                args.IsValid = false;
                Page_IsValid = false;
            }

        }

        function funSetStatuas(ReqFor, WrkItemCnt) {
            var flag = 0

            for (j = 1; j <= 7; j++) {
                for (i = 0; i <= '<%=TotalWorkItemCnt%>'; i++) {


                    if (document.getElementById("SRadioBtn_" + j + "_" + i)) {
                        if (document.getElementById("SRadioBtn_" + j + "_" + i).checked == true) {
                            flag = 2
                            break;
                        }
                    }


                    if (j == 6) {
                        if (document.getElementById("MRadioBtn_6_" + i)) {
                            if (document.getElementById("MRadioBtn_6_" + i).checked == true) {
                                flag = 1
                            }
                        }
                    }


                    else if (document.getElementById("MRadioBtn_" + j + "_" + i)) {
                        if (document.getElementById("MRadioBtn_" + j + "_" + i).checked == true) {
                            flag = 2
                            break;
                        }
                    }


                }

                if (flag == 2) {
                    break;
                }

            }
            if (flag == 1) {
                document.getElementById("ActionalAppReqRdl_0").disabled = "disabled"
                document.getElementById("ActionalAppReqRdl_1").checked = true
                document.getElementById("NofAppreqTr").className = "HideRow"
                document.getElementById("ApprovelTr").className = "HideRow"
                document.getElementById("NofAppreqTxt").value = ""
                for (k = 0; k <= 8; k++) {
                    if (document.getElementById("AppGrpIdTxt_" + k)) {
                        document.getElementById("AppGrpLbl_" + k).innerHTML = ""
                        document.getElementById("AppGrpIdTxt_" + k).value = ""
                        document.getElementById("AppGrpTxt_" + k).value = ""
                    }
                }
            }
            else {

                document.getElementById("ActionalAppReqRdl_1").disabled = "disabled"
                document.getElementById("ActionalAppReqRdl_0").disabled = false
                document.getElementById("ActionalAppReqRdl_1").checked = ""

            }

            document.getElementById("ReqRaiseFor_" + WrkItemCnt).value = ReqFor
        }

	//-->
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
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="1" ReadOnly="true"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DescTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" onkeypress="taLimit()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="IssTypeTd" Style="font-weight: bold; width: 31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" id ="IsuFrmBtn" onclick="IsuFormPopUpFn()" class='RsnPUP' tabindex="3">
                                <asp:Label ID="IssFormLab" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="IssFormTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="IssueFormID" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="IssuLogTD" Style="font-weight: bold; width: 31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" id ="IsuLogBtn" onclick="IsuLoginPopup()" class='RsnPUP' tabindex="3">
                                <asp:Label ID="IsuLogLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="IsuLogIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="IssueLogDescTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="IsuLogIdAulTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" ID="RecListTR">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="RecListTab" runat="server" CssClass="SubTable" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="center">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" ID="ActionalAppReqTR">
                            <asp:TableCell CssClass="MainTD" ID="ActionalAppReqTD" Style="font-weight: bold;
                                width: 31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="ActionalAppReqRdl" runat="server" OnClick="DisableBtn()" CssClass="MainTD" RepeatDirection="Horizontal"
                                 >
                                    <asp:ListItem Value=Yes>Yes</asp:ListItem>
                                    <asp:ListItem Value="No" Selected="true">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" ID="NofAppreqTr">
                            <asp:TableCell CssClass="MainTD" ID="NofAppreqTd" Style="font-weight: bold; width: 31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="NofAppreqTxt" onkeydown="return FnAllowNumVal()" Width="35px" CssClass="TxtCls"
                                    Text="" runat="server" onchange="IsNum()" TabIndex="5"  MaxLength=1 AutoPostBack="true"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" ID="ApprovelTr">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="ApprovelTab" runat="server" CssClass="SubTable" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="center">
                                </asp:Table>
                            </asp:TableCell>
                            
                        </asp:TableRow>
                        
                           <asp:TableRow CssClass="HideRow" ID="AcpAppNoteTr">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2" ForeColor="red">
                                
                                Note:Approval is not applicable for Action plan closure
                            </asp:TableCell>
                            
                        </asp:TableRow> 
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
                                <uc1:EsignObj id="EsignObj1" runat="server" visible="false">
                                </uc1:EsignObj>
                            </asp:TableCell>
                             <asp:TableCell>
            <input id="reloadValue" type="hidden" name="reloadValue" value="" />
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
                              <%--<asp:Button ID="Button1" runat="server" onMouseOver="this.className='ButOCls'" onClientClick="FnSubmit()"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit" Width="70" >
                                    </asp:Button>--%>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButexCls" Height="20px" onMouseOver="this.className='ButexOCls'"
                                    onMouseOut="this.className='ButexCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                        <asp:CustomValidator ID="CusVal1" runat ="server" ClientValidationFunction="ValidateChangeReq"></asp:CustomValidator>
                </asp:TableCell>
            </asp:TableRow>
            <%-- <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd1">
                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                        <asp:CustomValidator ID="CusVal2" runat ="server" ClientValidationFunction="ChkApprovals"></asp:CustomValidator>
                </asp:TableCell>
            </asp:TableRow>--%>
        </asp:Table>
    </form>
    <script type="text/javascript">

        //function FnSubmit()
        //{
        //document.getElementById("btnConfirm").click();
        //}
</script>
</body>

<script type="text/javascript">
<!--

    function DisableBtn() {
        document.getElementById("btnConfirm").setAttribute("disabled", "disabled")
    }

    function ValidateChangeReq(src, args) {
        debugger
        args.IsValid = true;
        Page_IsValid = true;
        var IssFormId = $("#IssueFormID").val();
        var IssLoginId = $("#IsuLogIdTxt").val();
        if (IssFormId != "" && IssLoginId != "") {
            if ($("[id*='RadioBtn_']:checked").length == 0) {
                src.errormessage = "Select At least One Event"; //"Invalid Change Request";
                args.IsValid = false;
                Page_IsValid = false;
            }
            else {
                if ($("[id^='ActionalAppReqRdl_']:checked").length == 0) {
                    src.errormessage = "Select Value For: " + $("#ActionalAppReqTD").html();
                    args.IsValid = false;
                    Page_IsValid = false;
                }
            }
        }
    }

    function ChkApprovals(src, args) {
        debugger
        args.IsValid = true;
        Page_IsValid = true;

        if (document.getElementById("NofAppreqTxt").value > 0) {
            for (i = 0; i < document.getElementById("NofAppreqTxt").value; i++) {
                src.errormessage = "Select Value For : " + "Approver Group - " & i + 1;

            }
            args.IsValid = false;
            Page_IsValid = false;


        }

    }
    function FnAllowNumVal() {
        if (event.shiftKey == true) { return false }
        var e = event.keyCode
        if (event.ctrlLeft == true) { return false }
        if (event.shiftLeft == true) { return false }
        else if ((e == 8) || (e == 46) || (e == 37) || (e == 39) || (e == 9) || (e == 16) || (e >= 96 && e <= 105)) { return true }
        else if (e == 32) { return false }
        else if (isNaN(String.fromCharCode(e))) //Validates for Key Data
        { return false }

    }

    $("[id^='ActionalAppReqRdl_']").click(function () {

        //-------Yes->1 ,  No->2
        if ($('#ActionalAppReqRdl_0:checked').val() == "Yes") {


            $("#NofAppreqTr").removeClass("HideRow").addClass("MainTD")


            if (document.getElementById("NofAppreqTxt").value == "")



                document.getElementById("ApprovelTr").className = "HideRow"

            else
                $("#ApprovelTr").removeClass("HideRow").addClass("MainTD")
        }
        if ($('#ActionalAppReqRdl_1:checked').val() == "No") {
            $("#NofAppreqTr").addClass("HideRow");
            $("#NofAppreqTxt").val("");
            $("#ApprovelTr").addClass("HideRow");
            Form1.submit()
        }

    });





    //function ChnageCss()
    //{
    //    if (document.getElementById("ActionalAppReqRdl_0").checked== true)
    //    {
    //        document.getElementById("NofAppreqTr").className="MainTD"
    //        document.getElementById("ApprovelTr").className="MainTD"
    //              
    //    } 
    //    else if (document.getElementById("ActionalAppReqRdl_1").checked== true)
    //    {
    //        document.getElementById("NofAppreqTxt").value=""
    //        document.getElementById("NofAppreqTr").className="HideRow"
    //        document.getElementById("ApprovelTr").className="HideRow"
    //        Form1.submit()
    //      }
    //}

    var RowCNT
    function fnInchargepopup(RowCnt) {
        RowCNT = RowCnt
        //SetPopDimensions()
        var pageURL = "RevAppListPopUp.aspx?IssId=0&UserGrpId=0"
        var PWidth = 600
        var PHeight = 400
        var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
        var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

        var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft
        SpWinObj = window.open(pageURL, 'SpecCodes', features)
        if (SpWinObj.opener == null) SpWinObj.opener = self;
        SpWinObj.focus();
    }

    function fnRevAppSetToCode(UsrGrpIdVal, UsrGrpCodeVal, UsrGrpUCodeVal) {
        document.getElementById("AppGrpLbl_" + RowCNT).innerHTML = UsrGrpUCodeVal
        document.getElementById("AppGrpIdTxt_" + RowCNT).value = UsrGrpIdVal
        document.getElementById("AppGrpTxt_" + RowCNT).value = UsrGrpUCodeVal
    }

    var taMaxLength = 500
    function taLimit() {
        var taObj = window.event.srcElement;
        if (taObj.value.length == taObj.maxLength * 1) return false;
    }

    function taCount() {
        var taObj = window.event.srcElement;
        if (taObj.value.length > taMaxLength * 1) {
            taObj.value = taObj.value.substring(0, taMaxLength * 1);
            alert("Characters exceeding limit\nMaximum Length: " + taMaxLength + " Characters")
        }
    }

    function IsNum() {
        var NoofApp = document.getElementById("NofAppreqTxt").value;
        if (isNaN(NoofApp) == true) {
            document.getElementById("NofAppreqTxt").value = "";
        }
    }

    function UserGroupDetails(UserGroupId) {
        pageURL = "../WorkFlow/UserGroupDetails.aspx?UserGroupId=" + UserGroupId
        SpWinObj = window.open(pageURL, 'TemplatePreview', "height=350,width=600,toolbar=no,resizable=false,menubar=no,status=no,scrollbars=yes,top=75,left=75");
        if (SpWinObj.opener == null) SpWinObj.opener = self;
        SpWinObj.focus();

    }
    $(document).ready(function () {

        document.getElementById("ActionalAppReqRdl_1").disabled = "disabled";
        document.getElementById("ActionalAppReqRdl_1").checked = "";


    });

    //-->

    fnCheckval()
    function fnCheckval() {
        if ((document.getElementById("ActionalAppReqRdl_0").checked == true) && (document.getElementById("NofAppreqTr").cssClass == "HideRow")) {
            document.getElementById("btnConfirm").setAttribute("disabled", "disabled")

        }
    }
    //for disable popups at the time of re-initiation
    if(<%=TransType %>==2)
    {
    document.getElementById("IsuFrmBtn").disabled=true
    document.getElementById("IsuLogBtn").disabled=true
    }
</script>

</html>
