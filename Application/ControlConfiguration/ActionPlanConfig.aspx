<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ActionPlanConfig.aspx.vb" Inherits="ControlConfiguration.ActionPlanConfig" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
   
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
   <script language="javascript" src="../JScript/jquery.min.js"></script>

    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />
    <style type="text/css">
        #mask {position:absolute;left:0;top:0;z-index:9000;background-color:#808080;display:none;}
        #boxes .window {position:fixed;left:0;top:0;display:none;z-index:9999;padding:20px;}
        #boxes #dialog {padding:10px;background-color: #f3f3f3;position:absolute;}
        .MessageImgCls{width:30px;heigth:30px;}
        .MessageTxtCls{font-weight: bold;font-size:12pt;text-align:center}
        .MessageBtnCls{}
    </style>
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
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
                        <asp:TableRow CssClass ="HideRow">
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                                               
                         <asp:TableRow CssClass="HideRow" ID="AcpTabTr">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="AcpTab">
                                </asp:Table>
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
                <asp:TableCell CssClass ="MainFoot">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit" Width="70">
                                </asp:Button>
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
     <!-- Mask to cover the whole screen -->
        <div id="mask">
        </div>
        <div id="boxes">
            <div id="dialog" class="window">
                <asp:Table ID="Table3" runat="server" HorizontalAlign="Center">
                    <asp:TableRow>
                        <asp:TableCell ID="MessageImgTd">
                        </asp:TableCell>
                        <asp:TableCell ID="MessageTxtTd">
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ID="MessageBtnTd" HorizontalAlign="Center" ColumnSpan="2">
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </div>
    </form>

<script language ="javascript" >

    function ShowConfermationMessage() {
        var ConfermationMessage = "<%=ErrerMessage%>"

        if (ConfermationMessage != "") {
            Fn_Message_Show(ConfermationMessage, 1)
            //setTimeout("navigating()",1000)

            return (false);
        }
    }
    function navigating() {
        window.navigate("../BodyHome.aspx")
    }
    $(document).ready(function () {
        $(window).resize(function () {
            var box = $('#boxes .window');

            //Get the screen height and width
            var maskHeight = $(document).height();
            var maskWidth = $(window).width();

            //Set height and width to mask to fill up the whole screen
            $('#mask').css({ 'width': maskWidth, 'height': maskHeight });

            //Get the window height and width
            var winH = $(window).height();
            var winW = $(window).width();

            //Set the popup window to center
            box.css('top', winH / 2 - box.height() / 2);
            box.css('left', winW / 2 - box.width() / 2);
        });
    });

    function Fn_Message_Show(Message, MessageType) {
        switch (MessageType) {
            case 1:
                $("#MessageImgTd").html("<div><img src=\"../Images/Info.GIF\" class=\"MessageImgCls\"/></div>")
                $("#MessageTxtTd").html("<div class=\"MessageTxtCls\"><span id=\"MsgSpan\"></span></div>");
                $("#MessageBtnTd").html("<br/><button type=\"button\" class=\"ButCls\" onclick=\"Fn_Message_Hide()\">OK</button>");
                break;
            case 2:
                $("#MessageImgTd").html("<div><img src=\"../Images/Exlamatry.GIF\" class=\"MessageImgCls\"/></div>")
                $("#MessageTxtTd").html("<div class=\"MessageTxtCls\"><span id=\"MsgSpan\"></span></div>");
                $("#MessageBtnTd").html("<br/><button type=\"button\" class=\"ButCls\" onclick=\"Fn_Message_Hide()\">OK</button>");
                break;
            case 3:
                $("#MessageImgTd").html("<div><img src=\"../Images/QuestionMark.GIF\" class=\"MessageImgCls\"/></div>")
                $("#MessageTxtTd").html("<div class=\"MessageTxtCls\"><span id=\"MsgSpan\"></span></div>");
                $("#MessageBtnTd").html("<br/><button type=\"button\" class=\"ButCls\" onclick=\"Fn_Message_Hide()\">OK</button>");
                break;
            default:
                $("#MessageImgTd").html("<div><img src=\"../Images/Exlamatry.GIF\" class=\"MessageImgCls\"/></div>")
                $("#MessageTxtTd").html("<div class=\"MessageTxtCls\"><span id=\"MsgSpan\"></span></div>");
                $("#MessageBtnTd").html("<br/><button type=\"button\" class=\"ButCls\" onclick=\"Fn_Message_Hide()\">OK</button>");
                break;
        }

        $("#MsgSpan").html(Message.replace(/\n/g, '<br/>'));

        var maskHeight = $(document).height();
        var maskWidth = $(window).width();
        var id = "#dialog"
        //Set heigth and width to mask to fill up the whole screen
        $('#mask').css({ 'width': maskWidth, 'height': maskHeight });

        //transition effect		
        $('#mask').fadeIn(10);
        $('#mask').fadeTo("slow", 0.8);

        var winH = $(window).height() + $(window).scrollTop();
        var winW = $(window).width();

        //Set the popup window to center
        $(id).css('top', ((winH - $(id).outerHeight()) / 2) + $(window).scrollTop() / 2);
        $(id).css('left', (winW - $(id).outerWidth()) / 2);

        //transition effect
        $(id).fadeIn(20);
    }

    function Fn_Message_Hide() {
        $('#mask').hide();
        $('.window').hide();
        navigating()
    }
    ShowConfermationMessage()
    


</script>

</body>
</html>
