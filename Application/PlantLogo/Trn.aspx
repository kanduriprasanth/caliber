<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Trn.aspx.vb" Inherits="PlantLogo.Trn" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
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
        RequestPrefix = '<%=me.ClientID%>'

        //-->
        function fnSetToReasons(argValue) {

            document.getElementById("RemarksTxt").value = argValue
        }

        function UploadFule() {
            var FileName = document.getElementById("Upload").value;

            if (FileName == "") {
                document.getElementById("btnUpload").className = "HideRow"
                return;
            }

            var FileAry = new Array();
            FileAry = FileName.split(".");
            var Exten = FileAry[FileAry.length - 1].toLowerCase();
            //".png", ".jpeg", ".jpg", ".gif"
            if ((Exten == 'png') || (Exten == 'jpeg') || (Exten == 'jpg') || (Exten == 'gif')) {
                document.getElementById("btnUpload").className = "ButCls"
            }
            else {
                alert("Invalied File Format")
                document.getElementById("btnUpload").className = "HideRow"
            }
        }

        function Detach() {

            if (typeof (fnCallESign) != "undefined") {

                var formName = document.forms(0).name
                document.getElementById("Form1").detachEvent('onsubmit', fnCallESign)
            }
        }
        function ChkValidationForCode(src, args) {
            args.IsValid = true;
            Page_IsValid = true;

            if (document.getElementById("CodeDDL").value == "0") {
                args.IsValid = false;
                Page_IsValid = false;
            }
        }
        function ChkValidationForPlantLogo(src, args) {
            var LogoUpload = '<%=ViewState("LogoUpload")%>'

            args.IsValid = true;
            Page_IsValid = true;

            if (LogoUpload != 'True') {
                args.IsValid = false;
                Page_IsValid = false;
            }
        }
        function fnOpenPopUp() {

            var pageURL = "Preview.aspx?ImageName=" + '<%=ViewState("ImageName") %>'
            var features = "height=250,width=450,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=250,left=150"
            SpWinObj = window.open(pageURL, 'SpecCodes', features)
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();

        }
        $(document).ready(function () {

            var Img = '<%=ViewState("ImageName")%>'
            if (Img != "") {
                $
                $("#RefDocLink").removeClass("HideRow").addClass("anchortxt");
            }

        });
    </script>
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
    <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
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
                        <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                            <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ID="CodeTd1"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:DropDownList ID="CodeDDL" runat="server" Width="200px" AccessKey="C" TabIndex="1">
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ID="DescTd" Width="310px"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                AccessKey="D" TabIndex="2"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="HideRow">
                        <asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="10" Width="200px"
                                AccessKey="C" TabIndex="2"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ID="SOPDetailsTd" Width="310px"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:TextBox ID="SOPDetailsTxt" runat="server" CssClass="TxtCls" MaxLength="250"
                                Width="200px" AccessKey="S" TabIndex="3"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ID="AddressTd" Width="310px"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:TextBox ID="AddressTxt" runat="server" CssClass="TxtCls" MaxLength="500" Width="200px"
                                TextMode="MultiLine" Rows="2" AccessKey="A" TabIndex="4"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ID="OthrDetailsTd" Width="310px"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:TextBox ID="OthrDetailsTxt" runat="server" CssClass="TxtCls" MaxLength="250"
                                Width="200px" AccessKey="O" TabIndex="5"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ID="PltLogoTd" Width="310px"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:FileUpload ID="Upload" runat="server" onpropertychange="UploadFule()" />&nbsp;&nbsp;
                            <asp:Button ID="btnUpload" runat="server" OnClientClick="Detach()" Text="Upload"
                                onMouseOver="this.className='ButOCls'" Class='ButCls' onMouseOut="this.className='ButCls'"
                                CausesValidation="false" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp <a href="#" class='HideRow'
                                    id="RefDocLink" onclick="fnOpenPopUp()">Preview</a>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                        <asp:TableCell CssClass="MainTD">
                            <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                        </asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                            <input type="button" onclick="fnOpenReasons(1),'RemarksTxt'" class='RsnPUP'>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                        <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                            padding-bottom: 0px">
                            <uc1:esignobj id="EsignObj1" runat="server" visible="false"></uc1:esignobj>
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
                            <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70">
                            </asp:Button>
                        </asp:TableCell>
                        <asp:TableCell CssClass="MainFoot" HorizontalAlign="Right">
                            <asp:HyperLink ID="Hlink" runat="server" CssClass="ButCls" Height="20px" onMouseOver="this.className='ButOCls'"
                                onMouseOut="this.className='ButCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="HideRow" Height="0">
            <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                    ShowMessageBox="True"></asp:ValidationSummary>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </form>
</body>
</html>
