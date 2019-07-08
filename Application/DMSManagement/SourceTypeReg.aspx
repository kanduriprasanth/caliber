<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SourceTypeReg.aspx.cs"
    Inherits="DMSManagement.SourceTypeReg" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>DMS Source Type</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1" />
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    
    <link rel="stylesheet" href="../TRIMS.css" />
    <script type='text/javascript'>

        function validateAttributesCnt(src, args) {
            var str = ""
            args.IsValid = true;
            Page_IsValid = true;

            var SelVal = document.getElementById("AttributesReqRbl_0").checked == true ? 1 : document.getElementById("AttributesReqRbl_1").checked == true ? 2 : 0;

            if (SelVal == 1 && document.getElementById("AttributesCntTxt").value == "") {
                str = str + "Enter Value For: " + document.getElementById("AttributesCntTd").innerHTML + "\n -"
            }
            if (str != "") {
                src.errormessage = str.substring(0, str.length - 3)
                args.IsValid = false;
                Page_IsValid = false;
            }
        }

        function FnENBSelLstPopUp() {
            var pageURL = "EnotebookListPopUp.aspx"
            SpWinObj = window.open(pageURL, 'SpecCodes', "height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=75,left=75");
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();
        }

        function GetENoteBookVals(ENBId, ENBAulId, ENBDesc, Secid, SecDesc) {
            document.getElementById("ENBUCodeTxt").value = ((ENBDesc == "") || (SecDesc == "")) ? "" : ENBDesc + " / " + SecDesc
            document.getElementById("ENBUCodeLab").innerHTML = document.getElementById("ENBUCodeTxt").value
            document.getElementById("ENBIDTxt").value = ENBId
            document.getElementById("ENBCodeTxt").value = ENBAulId
            document.getElementById("SectionIdTxt").value = Secid
        }

        function OpenSourceTypePopUp() {
            var RepositoryTypeId = document.getElementById("RepositoryTypeDdl").value;
            var RepositoryTypeVal = document.getElementById("RepositoryTypeDdl")[document.getElementById("RepositoryTypeDdl").selectedIndex].innerText;

            pageURL = "SourceTypeListPopUp.aspx?RepositoryTypeId=" + RepositoryTypeId + "&RepositoryTypeVal=" + RepositoryTypeVal;
            var SpWinObj;
            SpWinObj = window.open(pageURL, 'DMSPopUp', "height=500,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=50,left=50");
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();
        }

        function Ret_OpenSourceTypePopUp(SourceTypeId, SourceTypeCode, SourceTypeDesc, SourceTypeViewName) {
            document.getElementById("SourceTypeIdTxt").value = SourceTypeId;
            document.getElementById("SourceTypeViewNameTxt").value = SourceTypeId;
            document.getElementById("SourceTypeLbl").innerHTML = document.getElementById("CodeTxt").value = SourceTypeCode;
        }

        function OkRet_OpenSourceTypePopUp(UParam) {
            document.getElementById("SourceTypeBtn").click();
        }

        function ResetSoureTypeVal() {
            Ret_OpenSourceTypePopUp("", "", "");
        }
        function FormSelPopUpFn() {
            var pageURL;
            pageURL = "EFormListPopUp.aspx";

            SpWinObj = window.open(pageURL, 'SpecCodes', "height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();
        }

        function fnGetFormVal(KdIdVal, KdCodeVal, KfLableVal, EFmTypeIdVal) {
            document.getElementById("EFormDescLab").innerHTML = KfLableVal
            document.getElementById("EFormIdTxt").value = KdIdVal
            document.getElementById("EFormCodeTxt").value = KdCodeVal
            document.getElementById("EFormDescTxt").value = KfLableVal
            document.getElementById("EFormType").value = EFmTypeIdVal
        }

        function fnGetFormOk() {
            //if(document.getElementById("NoOfSearchOptionsTxt").value !="")
            document.getElementById("LoadSearchBtn").click();
        }

    </script>
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" runat="server">
    <asp:Table ID="tt" CellPadding="0" CellSpacing="1" HorizontalAlign="center" CssClass="MainTable"
        runat="server">
        <asp:TableRow CssClass="MainHead">
            <asp:TableCell>
                <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <!-----------Base table------------->
                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                    HorizontalAlign="center" ID="Table1">
                    <asp:TableRow CssClass="HideRow" Height="0">
                        <asp:TableCell Style="width: 40%"></asp:TableCell>
                        <asp:TableCell Style="width: 60%"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                            <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" Style="font-weight: bold; width: 40%" ID="RepositoryTypeTd"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD" Style="width: 60%">
                            <asp:DropDownList ID="RepositoryTypeDdl" runat="server" CssClass="RBList" Width="200px"
                                onchange="ResetSoureTypeVal()" AutoPostBack="true" OnSelectedIndexChanged="RepositoryTypeDdl_SelectedIndexChanged">
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" Style="font-weight: bold; width: 40%" ID="CodeTd"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD" Style="width: 60%">
                            <asp:TextBox ID="CodeTxt" runat="server" CssClass="HideRow" MaxLength="30" Width="200px"
                                AccessKey="C"></asp:TextBox>
                            <input type="button" onclick="OpenSourceTypePopUp()" class='RsnPUP' />
                            <asp:Label ID="SourceTypeLbl" runat="server" Text=""></asp:Label>
                            <asp:TextBox ID="SourceTypeIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            <asp:TextBox ID="SourceTypeViewNameTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            <asp:Button ID="SourceTypeBtn" runat="server" CssClass="HideRow" CausesValidation="false"
                                OnClick="Button1_Click" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="AutogenerateCodeTd"
                            Width="40%"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:RadioButtonList ID="AutogenerateCodeRbl" runat="server" RepeatDirection="horizontal"
                                CssClass="RBList">
                            </asp:RadioButtonList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ID="DocRepTd" CssClass="MainTD" Style="font-weight: bold;" Width="40%"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <input type="button" onclick="FnENBSelLstPopUp()" class='RsnPUP' tabindex="5" />
                            <asp:Label ID="ENBUCodeLab" runat="server" Text=""></asp:Label>
                            <asp:TextBox ID="ENBUCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            <asp:TextBox ID="ENBIDTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            <asp:TextBox ID="ENBCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            <asp:TextBox ID="SectionIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ID="FormSelTd" Style="font-weight: bold; width: 40%" runat="server"
                            CssClass="MainTD" Width="220px"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD" Style="width: 60%">
                            <input class='RsnPUP' onclick="FormSelPopUpFn()" type="button" tabindex="8" />
                            <asp:Label ID="EFormDescLab" runat="server" Text=""></asp:Label>
                            <asp:TextBox ID="EFormIdTxt" runat="server" CssClass="HideRow" Text="0"></asp:TextBox>
                            <asp:TextBox ID="EFormCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            <asp:TextBox ID="EFormDescTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            <asp:TextBox ID="EFormType" runat="server" CssClass="HideRow"></asp:TextBox>
                            <asp:Button ID="LoadSearchBtn" runat="server" CssClass="HideRow" OnClick="LoadSearchBtn_Click"
                                CausesValidation="false" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="eFromColumsTr" CssClass="HideRow">
                        <asp:TableCell ColumnSpan="2">
                            <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                HorizontalAlign="center" ID="eFromColumsTbl">
                            </asp:Table>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" Style="font-weight: bold; width: 40%" ID="MultipleSTypeSelTd"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD" Style="width: 60%">
                            <asp:RadioButtonList ID="MultipleSTypeSelRBl" runat="server" CssClass="RBList" RepeatDirection="Horizontal">
                            </asp:RadioButtonList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" Style="font-weight: bold; width: 40%" ID="NoOfSearchOptionsTd"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD" Style="width: 60%">
                            <asp:TextBox ID="NoOfSearchOptionsTxt" runat="server" CssClass="TxtCls" MaxLength="1"
                                AutoPostBack="true" Width="60px" Text="" OnTextChanged="NoOfSearchOptionsTxt_TextChanged">
                            </asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="SearchOptionsTr" CssClass="HideRow">
                        <asp:TableCell ColumnSpan="2">
                            <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                HorizontalAlign="center" ID="SearchOptnTbl">
                            </asp:Table>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-----------End of Base table------------->
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="MainFoot">
            <asp:TableCell>
                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                    CssClass='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text=""
                    OnClick="btnConfirm_Click"></asp:Button>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="HideRow" Height="0">
            <asp:TableCell ID="ValidatorsTd">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                    ShowMessageBox="True"></asp:ValidationSummary>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </form>
    <script type='text/javascript'>

        function ShowMessage() {
            var Msg = "<%=ConfermationMessage%>";
            if (Msg != "") {
                alert(Msg);
            }
        }
        ShowMessage();
    </script>
</body>
</html>
