<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AttachEditableDocReg.aspx.vb" Inherits="CAPAWORKS.AttachEditableDocReg" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../PrsWorkFlow/EsignObj1.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title><%=MainTitleLtrl.Text%></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript" src="jquery.min.js"></script>
     <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />
    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>

    <script language="javascript">
	<!--
        RequestPrefix = '<%=me.ClientID%>'
        function fnSetToReasons(argValue) {
            document.getElementById("RemarksTxt").value = argValue
        }
        //-->



        function RestrictSpecialChar(e) {

            //get the keycode when the user pressed any key in application
            var exp = String.fromCharCode(window.event.keyCode)


            //Below line will have the special characters that is not allowed you can add if you want more for some characters you need to add escape sequence
            var r = new RegExp("[,$#*@^]", "g");

            if (exp.match(r) != null) {
                window.event.keyCode = 0
                alert(" , $ # * @ ^ These Characters Are Not Allowed ")
                return false;
            }
        }


        function RestrictCopy() {

            var otxt = document.getElementById('DocTitleTxt');
            var val = otxt.value;

            for (i = 0; i < val.length; i++) {
                var code = val.charAt(i);

                if ((code == ',') || (code == '$') || (code == '#') || (code == '@') || (code == '^')) {
                    alert(" , $ # * @ ^  These Characters Are Not Allowed ")
                    otxt.value = ""; return;
                }

            }

        }

    </script>

</head>

<body ms_positioning="GridLayout" >
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
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="30" Width="200px"
                                    AccessKey="C"  TabIndex="1" ></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow >
                            <asp:TableCell CssClass="MainTD" ID="DocTitleTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DocTitleTxt" runat="server" CssClass="TxtCls" MaxLength="100" Width="200px" AccessKey="C" onkeypress="RestrictSpecialChar()" onchange="RestrictCopy()"
                                    ></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow id="DescTR" >
                            <asp:TableCell CssClass="MainTD" ID="DescTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" onkeypress="taLimit()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EditPertTr"  CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="EditPertTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="EditPertDDL"  runat="server">
                                    <asp:ListItem Value="10" Text="No Protection"  ></asp:ListItem>
                                    <asp:ListItem Value="1" Text="Comments"></asp:ListItem>
                                    <asp:ListItem Value="0" Text="Tracked Changes" Selected="True"></asp:ListItem>
                                    <asp:ListItem Value="3" Text="No Changes(Read Only)" ></asp:ListItem>
                                </asp:DropDownList>
                                <asp:Label ID="EditPertLbl" runat="server"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                          <%--<asp:TableRow ID="MessageTr"><asp:TableCell  HorizontalAlign="Center" ID="MessageTd" style="background-color:White;color:blue" ColumnSpan="2"></asp:TableCell></asp:TableRow>--%>
                        <asp:TableRow ID="FileUploadTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="FileUploadTd" Style="font-weight: bold" Width="40%">
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" id="RegBrowseTd" Width="60%">
                                <asp:FileUpload ID="FileUpload1" EnableViewState="true" autopostback="false" runat="server"
                                    CssClass="txtcls" size="36" onkeypress="return fnFileChk()" contenteditable="false"
                                    Width="280px" Style="behavior: url('#default#saveHistory')" onchange="return FnLoadDocument()"/>&nbsp;&nbsp;&nbsp;
                                    <input type="button" id="DocLoadBtn" value="Load" class="ButCls"/>
                                &nbsp;&nbsp;&nbsp;
                            </asp:TableCell>
                            <asp:TableCell ID ="RegBrowseLblTd" CssClass ="HideRow">
                                <asp:Label ID ="RegBrowseLbl" runat ="server" CssClass ="MainTD"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                       <asp:TableRow ID="WordPreviewTd" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" style="overflow-y:hide;">
                                <div id="ActiveXDiv" style="height: 500px;width:100%;overflow-y:hide;" >
                                <%  
                                    Response.WriteFile("../DMSManagement/ActiveX.inc")
                                %>
                                </div>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EditNoteRr" runat="server" CssClass="HideRow" >
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2" style="text-align:center;color:Navy;font-weight:bold;font-size:14px">
                                Note: To activate Excel, click on sheet and press F2 key.
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TempSaveTr" CssClass="HideRow" HorizontalAlign="Center">
                            <asp:TableCell ID="TempSaveTd" style="background-color:White">
                                <input type="button" id="TempSaveBtn" runat="server" value="Save" class="ButCls"/>
                                <asp:Button ID="TempSaveBtn1" runat=server CssClass="HideRow" />
                            </asp:TableCell>
                            <asp:TableCell style="background-color:White">
                            <input type="button" id="ShowExcelHistoryBtn" value="Show Previous History" class="HideRow" onclick="ShowHideExcelHistory()"/>
                          &nbsp;&nbsp;&nbsp; <input type="button" id="WinCloseBtn" value="Close" onclick="WinCloseDocument()" class="ButCls"/>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                                <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP' />
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
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow >
                            <asp:TableCell >
                              <input type=button ID="DummybtnConfirm" onMouseOver="this.className='ButOCls'" onclick="SubmitData123()" 
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Width="70" value="Submit" />
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'" style="display:none"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Width="70" Text="Submit">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right" >
                                <asp:HyperLink ID="Hlink" runat="server"  CssClass="HideRow" Height="20px" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                                    <asp:Button ID="CloseBtn" runat="server" onMouseOver="this.className='ButOCls'" CausesValidation="false"
                                    Class='ButCls' OnClientClick="Detach()" AccessKey="C" onMouseOut="this.className='ButCls'" Width="70" Text="Cancel"> </asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                         <asp:CustomValidator ID="DocLoadValidator" runat="server" ClientValidationFunction="Fn_DocLoadValidator" ErrorMessage="Please Load the document" ></asp:CustomValidator> 
                    <asp:TextBox ID="IndexIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IndexIdRefTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FilePathTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="DocumentPasswordTxt" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <input type="button" onclick="Dummy1()" value="Show All Changes" style="display:none"/>
    </form>
</body>

<script language="javascript">
<!--


window.onbeforeunload = WindowCloseHanlder;
function WindowCloseHanlder()
{
//window.alert('My Window is reloading');
  AJAX_ChekcDocLockedData_check(<%=Request.QueryString("DocID")%>)
}

function AJAX_ChekcDocLockedData_check(DocID)
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
                xmlhttp =null;
            }
        }
        var url="../CAPAWORKS/DocLockCheck.aspx?Type=4&DocID=" +  DocID
        xmlhttp.open("POST",url,true);
        xmlhttp.send(null);
     
}


//     function AJAX_ChekcDocLockedData_check(DocID)
//    {
    
    
    
////        var recary = new Array(); 
////                  
////        var xmlhttp;
////        try
////        { 
////            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
////        }
////        catch(ex)
////        {
////            try 
////            {
////                xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
////            }
////            catch(ex)
////            {
////                try
////                {
////                    xmlhttp=new XmlHttpRequest();
////                }
////                catch(ex)
////                {
////                    alert("please update the webbrowser");
////                }
////            }
////        }
////        xmlhttp.onreadystatechange=function()
////        {
////            if(xmlhttp.readystate==4)
////            {debugger
////                 var Returnval =''
////                 var LOckedBYID = 0
////                 var LOckedBY =''
////                 var LockedOn =''
////                 var  ValArr = new Array()
////                
////                 Returnval=xmlhttp.ResponseText
////                 
////                 if (Returnval !='')
////                 { 
////                    ValArr=Returnval.split("#*#") 
////                    LOckedBYID=ValArr[0]
////                    LOckedBY=ValArr[1]
////                    LockedOn=ValArr[2]
////                    if (LOckedBYID == "<%=UserID%>")
////                     {
////                       UpdateLockData1(DocID);
////                       CloseDocument();
////                     }
////                 }
////                xmlhttp =null;
////            }
//        }
//        var url="../CAPAWORKS/DocLockCheck.aspx?Type=1&DocID=" +  DocID
//        xmlhttp.open("POST",url,true);
//        xmlhttp.send(null);




//    }
    
    
    
    



function WinCloseDocument()
{
    var docType=GetDocType(TemplatePath);
    if(docType == "e")
    {
        if(CaliberDocumentViewerIns.IsEditing() ==true)
        {
            alert("Active cell should not be in edit mode[Press Tab in Excel to release the lock].");
            return;
        }
    }
    UpdateLockData1(<%=Request.QueryString("DocID") %>)
    CloseDocument();
    window.close()
}
function ShowHideExcelHistory()
{
    var docType=GetDocType(TemplatePath);
    if(docType == "e")
    {
        if(CaliberDocumentViewerIns.IsEditing() ==true)
        {
            alert("Active cell should not be in edit mode[Press Tab in Excel to release the lock].");
            return;
        }
    }
    $(document).progressDialog.showDialog();
    $("#ShowExcelHistoryBtn, #TempSaveBtn").attr("disabled","disabled");
    CaliberDocumentViewerIns.ShowChangeHistoryAsComments();
    $(document).progressDialog.hideDialog();
}
function Dummy1()
{
    CaliberDocumentViewerIns.ExcelWorkBook.Save();
    CaliberDocumentViewerIns.ShowChangeHistoryAsComments()
}

    document.getElementById("DocTitleTxt").focus()
    var __isDocumentLoaded  =false
    function SubmitData123()
    {
        if(Page_ClientValidate() == true)
        {
            __isDocumentLoaded = true;
            CaliberDocumentViewerIns.CloseControl();
            document.getElementById("btnConfirm").click();
        }
    }
if(<%=TransType%> == 1)
{
    $("#FileUploadTr").removeClass("HideRow");
}
    var taMaxLength = 250
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

    $(window).scroll(function() {
        if (jQuery.data(document.body, "widthMes") == "1") {
            $("#CaliberDocumentViewer").css("width", "+=1");
            jQuery.data(document.body, "widthMes", "0")
        }
        else {
            $("#CaliberDocumentViewer").css("width", "-=1");
            jQuery.data(document.body, "widthMes", "1")
        }
    });
    jQuery.data(document.body, "widthMes", "1");
    $("#CaliberDocumentViewer").attr("width", parseInt($("#Table1").outerWidth()) - 40) + "px"; //  $("#ActiveXDiv").width());	
	//-->
</script>

<script type="text/javascript">

    function FnCheckRepeat() {
        Detach();
    }

    function Detach() {
        var formName = document.forms(0).name
        document.forms(0).detachEvent('onsubmit', fnCallESign)
    }

    function CheckDocType(FileName) {
        var RetVal = true;
        if (FileName != "") {
            var FileAry = new Array();
            FileAry = FileName.split(".");
            var Exten = FileAry[FileAry.length - 1].toLowerCase()
            var SupportedFilesLst = ",doc,docx,xlsx,xls,"
            if (SupportedFilesLst.indexOf("," + Exten + ",") == -1) {
                RetVal = false;
            }
        }
        else {
            RetVal = false;
        }
        return RetVal;
    }

    function GetDocType(FileName) {
        if (FileName != "") {
            var FileAry = new Array();
            FileAry = FileName.split(".");
            var Exten = FileAry[FileAry.length - 1].toLowerCase()
            var WordFilesLst = ",doc,docx,"
            var ExcelFilesLst = ",xlsx,xls,"
            var PowerpointFilesLst = ",pptx,ppt,"
            if (WordFilesLst.indexOf("," + Exten + ",") > -1) {
                return 'w';
            }
            if (ExcelFilesLst.indexOf("," + Exten + ",") > -1) {
                return 'e';
            }
            if (PowerpointFilesLst.indexOf("," + Exten + ",") > -1) {
                return 'p';
            }
        }
        return 'n';
    }

    function FnReadFilePath() {
        return (CaliberPath + FileName).toLowerCase();
    }

    function getTemplatePath(DocFilePath) {
        var THrefArr = [];
        var HrefArr = [];
        var HrefArr1 = [];
        THrefArr = window.location.href.substring(0, window.location.href.lastIndexOf(".")).split("/")
        for (var i = 0; i < THrefArr.length - 2; i++) {
            HrefArr[i] = THrefArr[i];
        }
        var Href = HrefArr.join("/");
        var FileAry = new Array();
        FileAry = DocFilePath.split(".");
        var Exten = FileAry[FileAry.length - 1].toLowerCase()

        FileName = "<%=CodeTxt.Text%>." + Exten;
        var FileName1 = "TempFile" + getRandomizer(1, 600000) + "." + Exten;
        FilePath = CaliberPath + FileName1;
        TemplatePath = FilePath;
        return Href + DocFilePath.replace("..", "");
    }

    function getPagePath(PageName) {
        var THrefArr = [];
        var HrefArr = [];
        var HrefArr1 = [];
        THrefArr = window.location.href.substring(0, window.location.href.lastIndexOf(".")).split("/")
        for (var i = 0; i < THrefArr.length - 2; i++) {
            HrefArr[i] = THrefArr[i];
        }
        var Href = HrefArr.join("/");
        return Href + "//CAPAWORKS//" + PageName;
    }
    var Extension = "";
    function GetFileExtension(FileName) {
        // FileName means Entire File Path or File Name 
        FileAry = FileName.split(".");
        Extension = FileAry[FileAry.length - 1].toLowerCase()
        return Extension;
    }

</script>

<script type="text/javascript">

    function fnFileChk() {
        alert("Use 'Browse' Button To Select a Document")
        window.event.cancelBubble = true;
        return (false);
    }
    
    function isWordInstalled() { //Chec ActiveX installed/not
        try {
             if (CaliberDocumentViewerIns.IsWordInstalled() == false) {

                    return false;
            }
        }
        catch (e) {
            alert("ActiveX Component Not Installed");
            return false;
        }
        return true;
    }

    (function ($) {
        $(window).unload(function(){
            CloseDocument();
        });
    })(jQuery);
    
    function CloseDocument()
    {
        if(CaliberDocumentViewerIns != null)
        {
            if(CaliberDocumentViewerIns.IsDocumentLoaded ==true)
            {
                if(<%=TransType%> == 1)
                {
                    var FileName = document.getElementById("FileUpload1").value;
                    var docType=GetDocType(FileName);
                    if(docType == "w")
                    {
                        CaliberDocumentViewerIns.UnProtectRevisionDocument(password);
                        CaliberDocumentViewerIns.Save(FileName);
                    }
                    else
                    {
                    }
                    CaliberDocumentViewerIns.CloseControl();
                }
                else
                {
                    CaliberDocumentViewerIns.CloseControl();
                }
            }
        }
    }

    function getRandomizer(bottom, top) {
        return Math.floor( Math.random() * ( 1 + top - bottom ) ) + bottom;
    }

</script>

<script type="text/javascript">
    var CaliberDocumentViewerIns = document.getElementById("CaliberDocumentViewer");
    if (typeof(CaliberDocumentViewerIns.IsDocumentLoaded) != "undefined") {

    CaliberDocumentViewerIns.ScriptCallbackObjectForPrintStart = OnBeforePrintStart;
    CaliberDocumentViewerIns.ScriptCallbackObjectForPrintComplete = OnPrintComplete;

    CaliberDocumentViewerIns.ScriptCallbackObjectForSaveStart = OnBeforeSaveStart;
    CaliberDocumentViewerIns.ScriptCallbackObjectForSaveComplete = OnSaveComplete;

    CaliberDocumentViewerIns.ScriptCallbackObjectForLoadStart = OnBeforeLoadStart;
    CaliberDocumentViewerIns.ScriptCallbackObjectForLoadComplete = OnLoadComplete;

    CaliberDocumentViewerIns.ScriptCallbackObjectForUserPrintClick = OnUserPrintClick;
    CaliberDocumentViewerIns.ScriptCallbackObjectForUserSaveClick = OnUserSaveClick;

    CaliberDocumentViewerIns.ScriptCallbackObjectForErrors = OnError;

    CaliberDocumentViewerIns.ScriptCallbackObjectForMergePDFStart = OnMergePDFStart;
    CaliberDocumentViewerIns.ScriptCallbackObjectForMergePDFComplete = OnMergePDFComplete;

    CaliberDocumentViewerIns.ScriptCallbackObjectForPDFExportStart = OnPDFExportStart;
    CaliberDocumentViewerIns.ScriptCallbackObjectForPDFExportComplete = OnPDFExportComplete;

    CaliberDocumentViewerIns.ScriptCallbackObjectForWrongFileSelection = OnWrongFileSelection;

    CaliberDocumentViewerIns.ScriptCallbackObjectForUploiadStart = OnFileuploadStart;
    CaliberDocumentViewerIns.ScriptCallbackObjectForUploiadCompete = OnFileuploadComplete;

    var _CaliberPath=CaliberDocumentViewerIns.GetTempPath() ; //+ "\\"
    //var _CaliberPath=CaliberDocumentViewerIns.RedApplicationPath() + "\\";
    }
    var CaliberPath=_CaliberPath;
   
    var FileName = "TempFile" + getRandomizer( 1, 600000) +".docx";
    var FilePath = CaliberPath + FileName;
    var TemplatePath = FilePath;
    var password = $("#DocumentPasswordTxt").val(); // "Caliber_09";

    function Fn_DocLoadValidator(src,args)
    {
        var arVal =false;
        if (<%=TransType%> == 1) 
        {
            var FileName = document.getElementById("FileUpload1").value;
            if(CheckDocType(FileName) ==true)
            {
                 if (typeof(CaliberDocumentViewerIns.IsDocumentLoaded) != "undefined") 
                {
                    var docType=GetDocType(FileName);
                    if(docType == "w")
                    {
                        if (CaliberDocumentViewerIns.IsWordInstalled() == true)
                        {
                            if(__isDocumentLoaded ==true)
                            {
                                arVal =true;
                            }
                            else
                            {
                                if(CaliberDocumentViewerIns.IsDocumentLoaded == true)
                                {
                                    arVal =true;
                                }
                            }
                        }
                    }
                    if(docType == "e")
                    {
                        if (CaliberDocumentViewerIns.IsExcelInstalled() == true)
                        {
                            if(__isDocumentLoaded ==true)
                            {
                                arVal =true;
                            }
                            else
                            {
                                if(CaliberDocumentViewerIns.IsDocumentLoaded == true)
                                {
                                    arVal =true;
                                }
                            }
                        }
                    }
                }
            }
        }
        args.IsValid = arVal;
        Page_IsValid = arVal;
    }

    
    function ValidateUploadFile(src, args) {
        Page_IsValid = true;
        args.IsValid = true;
        var FileName = document.getElementById("FileUpload1").value;
        if(CheckDocType(FileName) ==false)
        {
            src.errormessage="Select .doc/.docx/.xlsx/.xls  Files Only ";
            Page_IsValid = false;
            args.IsValid = false;
            return;
        }
    }
    
    function FnLoadDocument1()
    {
            CloseDocument();
            LoadOfficeDocument(TemplatePath);
            //document.getElementById("FileUpload1").setAttribute('disabled', 'disabled');          
             document.getElementById("DocLoadBtn").setAttribute('disabled', 'disabled');
             
            //This is added to resolve the exception when word document is selected after selecting the Excel document (refer bugid-25398)
            document.getElementById("RegBrowseLblTd").className ="MainTD";
            document.getElementById("RegBrowseTd").className ="HideRow";
            document.getElementById("RegBrowseLbl").innerHTML=document.getElementById("FileUpload1").value;
            HideMask();
    }
    
    function FnLoadDocument() {
        TemplatePath = document.getElementById("FileUpload1").value;
        if(TemplatePath != "")
        {
            if(CheckDocType(TemplatePath) ==false)
            {
                alert("Select .doc/.docx/.xlsx/.xls  Files Only ");
                return;
            }
            var FileControlName = "FileUpload1";
			var fileSize = GetFileSize(FileControlName);
			var MaxFilelength=<%=MaxFilelength%> ;
			if ( fileSize > MaxFilelength)
			{
                alert("File Size Should not Exceed " + ((MaxFilelength / 1024)/ 1024) + "MB") ;
               
			}
			else{
                ShowMask();
                setTimeout("FnLoadDocument1()",500);
              }
        }
        else{
            alert("Please Browse The Document")
        }
    }
    $("#DocLoadBtn").click(function(){
         
                FnLoadDocument();
           
    });

    function LoadOfficeDocument(DocPath) //To Load the Document
    {
      if (typeof(CaliberDocumentViewerIns.IsDocumentLoaded) == "undefined") {
            $("#DocumentPasswordTxt").val("");
            alert("ActiveX Not Installed");
            return;
        }
        $(document).progressDialog.showDialog();
        CaliberDocumentViewerIns.CloseControl();
        LoadOfficeDocument_TiemOut(DocPath)
    }
    
    function LoadOfficeDocument_TiemOut(DocPath)
    {
        CaliberDocumentViewerIns.CloseControl();
        var docType=GetDocType(DocPath);
        
        if(docType == "w")
        {
            if (CaliberDocumentViewerIns.IsWordInstalled() == false) {
                $("#DocumentPasswordTxt").val("");
                alert("Microsoft Word Not Installed");
                return;
            }
        }
        if(docType == "e")
        {
            if (CaliberDocumentViewerIns.IsExcelInstalled() == false) {
                $("#DocumentPasswordTxt").val("");
                alert("Microsoft Excel Not Installed");
                return;
            }
        }
        
        var _password ="";
        var _protectionType = 3;
        if (<%=TransType%> != 1){
            DocPath = getTemplatePath(DocPath);
            _password = password;
            _protectionType = $("#EditPertDDL").val();
        }
       if (<%=TransType%> == 1){
            if(docType == "w")
            {
                CaliberDocumentViewerIns.LoadDocument(DocPath,true,_password);
                CaliberDocumentViewerIns.ProtectRevisionDocument(_protectionType, password, true);
            }
            else
            {
                CaliberDocumentViewerIns.LoadExcelDocument(DocPath);
                if(CaliberDocumentViewerIns.IsExcelSharable(DocPath) ==false)
                {
                    alert("This workbook cannot be uploaded for multi-user editing, due to privacy settings.");
                    $("#DummybtnConfirm").attr("disabled","disabled");
                }
                else{
                    $("#DummybtnConfirm").removeAttr("disabled");
                }
                $("#DocumentPasswordTxt").val("");
            }
        }
        else
        {
            CaliberDocumentViewerIns.DeleteHTMLFiles(TemplatePath);
            if(docType == "w")
            {
                CaliberDocumentViewerIns.LoadDocument(DocPath,true,_password);
                   var RamdomSID= Math.floor((Math.random()*1000000000)+1)
                CaliberDocumentViewerIns.ChangeUserName("<%=Session("UserName")%>" + " (SID:" + RamdomSID + ")"," ");
                //CaliberDocumentViewerIns.ProtectRevisionDocument(_protectionType, password, true);
                CaliberDocumentViewerIns.SetMarkupModeForTackChanges();
                CaliberDocumentViewerIns.SetTrackChanges(true);
                CaliberDocumentViewerIns.Save(TemplatePath, password);
            }
            else
            {
                $("#ShowExcelHistoryBtn").attr("class","ButexCls");
                var ExRamdomSID= Math.floor((Math.random()*1000000000)+1)
                CaliberDocumentViewerIns.OpenExcelDocument(DocPath, TemplatePath, "<%=Session("UserName")%>" + " (SID:" + ExRamdomSID + ")");
                CaliberDocumentViewerIns.ExcelWorkBook.Worksheets(1).Activate();
                CaliberDocumentViewerIns.ExcelWorkBook.Worksheets(1).Range("A1").Select();
            }
        }
        document.getElementById("WordPreviewTd").className ="";
        $(document).progressDialog.hideDialog();
    }
  
    function OnFileuploadStart()
    {
        $(document).progressDialog.showDialog();
    }
    
    function OnFileuploadComplete(response)
    {
        $(document).progressDialog.hideDialog();
    }
    
    function OnWrongFileSelection(Oevent)
    {
        alert("In-valid File Selected")
    }

    function OnPDFExportStart(Oevent)
    {
        
    }

    function OnPDFExportComplete(Oevent)
    {
        
    }

    function OnMergePDFStart(Oevent)
    {
        
    }

    function OnMergePDFComplete(Oevent)
    {
        
    }

    function OnError(Oevent)
    {
        //$(document).progressDialog.hideDialog();
       // alert(Oevent);
    }

    function OnUserSaveClick(Oevent)
    {
        
    }
    function OnUserPrintClick(Oevent)
    {
        
    }
    function OnBeforePrintStart(Oevent)
    {
        //alert("Document Print Not allowed");
    }
    function OnPrintComplete(Oevent)
    {
        
    }
    function OnBeforeSaveStart(Oevent)
    {
        
    }
    function OnSaveComplete(Oevent)
    {
        
    }
    function OnBeforeLoadStart(Oevent)
    {
        //$(document).progressDialog.showDialog();
    }
    function OnLoadComplete(Oevent)
    {
        document.getElementById("WordPreviewTd").className ="";
        //$(document).progressDialog.hideDialog();
    }

</script>

<script type="text/javascript">
    // Document Loading at other than Registration Level

  $(function() {
        if ("<%=page.IsPostBack%>" == "False" && "<%=DocFilePath%>" !=""){
            LoadOfficeDocument("<%=DocFilePath%>")
        }

        if (<%=TransType%> == 2) {
            var docType=GetDocType(TemplatePath);
            $("#FileUploadTr").attr("class", "HideRow");
            $("#TempSaveTr").attr("class", "MainTD")
            if(docType == "e")
            {
                $("#EditNoteRr").attr("class", "MainTD")
            }
            $("#btnConfirm").attr("class", "HideRow")
            $("#DummybtnConfirm").attr("class", "HideRow")
        }
    });

    $("#TempSaveBtn").click(function (){
        var docType=GetDocType(TemplatePath);
        if(docType == "e")
        {
            if(CaliberDocumentViewerIns.IsEditing() ==true)
            {
                alert("Active cell should not be in edit mode[Press Tab in Excel to release the lock].");
                return;
            }
        }
        AJAX_ChekcDocLockedData (<%=Request.QueryString("DocID") %>,2)
    });

     function AJAX_ChekcDocLockedData(DocID,FunctionType)
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
                 var Returnval =''
                 var LOckedBYID = 0
                 var LOckedBY =''
                 var LockedOn =''
                 var  ValArr = new Array()
                
                 Returnval=xmlhttp.ResponseText
                 
                 if (Returnval !='')
                 { 
                    ValArr=Returnval.split("#*#") 
                    LOckedBYID=ValArr[0]
                    LOckedBY=ValArr[1]
                    LockedOn=ValArr[2]
                 }
                 else if (FunctionType==1)
                 {
                   UpdateLockData(DocID);
                   CALL_AEDApp(DocID) 
                 }
                 
                if ( (LOckedBYID == '<%=Session("UserID")%>')  ) 
                {
                     UpdateLockData(DocID);
                    if(FunctionType==1) { CALL_AEDApp(DocID) }
                    if(FunctionType==2) { fnCallESign(12,0);  }
                    
                }
                else
                {
                  if(FunctionType==1 && Returnval  != '') {
                  
                    var r = confirm("This Document Is Locked by " + LOckedBY + " on " + LockedOn + "\n" + "To Take Control From Other User Click 'Ok' Else 'Cancel' ");
                    if (r == true)  
                     { UpdateLockData(DocID);} 
                    else
                     {  $("#TempSaveBtn").attr("disabled","disabled");
                        $("#WinCloseBtn").attr("disabled","disabled");
                     } 
                    
                  }
                  
                  if(FunctionType==2 && Returnval !='') {
                        alert("This Document Is Locked by " + LOckedBY + " on " + LockedOn + "\n" + "'Save' Is Not Allowed");
                         $("#TempSaveBtn").attr("disabled","disabled");
                         $("#WinCloseBtn").attr("disabled","disabled");
                  }
                  else  if(FunctionType==2 && Returnval =='') {
                  
                       alert("New Changes Are Done In This Document By Some Other User" + "\n " + "So Please Close And Reopen The Document For New Updated");
                         $("#TempSaveBtn").attr("disabled","disabled");
                         $("#WinCloseBtn").attr("disabled","disabled");
                  }
                
                }
                xmlhttp =null;
            }
        }
        var url="../CAPAWORKS/DocLockCheck.aspx?Type=1&DocID=" +  DocID
        xmlhttp.open("POST",url,true);
        xmlhttp.send(null);
    }
    
    
    
    function  UpdateLockData(DocID)
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
                 var Returnval =''
                 Returnval=xmlhttp.ResponseText
                 CALL_AEDApp(DocID)
                  xmlhttp =null;
            }
        }
        var url="../CAPAWORKS/DocLockCheck.aspx?Type=2&DocID=" +  DocID
        xmlhttp.open("POST",url,true);
        xmlhttp.send(null);
    }
    
   
    

             

    function SaveDocument()
    {
        //CaliberDocumentViewerIns.HandleExcelFocus();
        
        var DocID="<%=Request.QueryString("DocID") %>"
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
                 var Returnval =''
                 var LOckedBYID = 0
                 var LOckedBY =''
                 var LockedOn =''
                 var  ValArr = new Array()
                
                 Returnval=xmlhttp.ResponseText
                 
                 if (Returnval !='')
                 { 
                    ValArr=Returnval.split("#*#") 
                    LOckedBYID=ValArr[0]
                    LOckedBY=ValArr[1]
                    LockedOn=ValArr[2]
                 }
                 
                if ( (LOckedBYID == '<%=Session("UserID")%>')  )  // (LOckedBYID == 0) || 
                {
                     UpdateLockData(DocID);
                     var docType=GetDocType(TemplatePath);
                        if(docType == "w")
                        {
                            CaliberDocumentViewerIns.DisableSave=false;
                            CaliberDocumentViewerIns.Save(TemplatePath, password);
                            CaliberDocumentViewerIns.CloseDocument();
                        }
                        else{
                            CaliberDocumentViewerIns.SaveExcelWithHistory(TemplatePath);
                        }
                        setTimeout("SaveDoc()",1000)                    
                }
                else if (LOckedBYID >0)
                {
                        alert("This Document Is Locked by " + LOckedBY + " on " + LockedOn + "\n" + "'Save' Is Not Allowed");
                         $("#TempSaveBtn").attr("disabled","disabled");
                         $("#WinCloseBtn").attr("disabled","disabled");
                }
                else if (LOckedBYID==0)
                {
                    alert("New Changes Are Done In This Document By Some Other User" + "\n " + "So Please Close And Reopen The Document For New Updated");
                    $("#TempSaveBtn").attr("disabled","disabled");
                    $("#WinCloseBtn").attr("disabled","disabled");
                }
                xmlhttp =null;
            }
        }
        var url="../CAPAWORKS/DocLockCheck.aspx?Type=1&DocID=" +  DocID
        xmlhttp.open("POST",url,true);
        xmlhttp.send(null);       
                      
    }
    
    function SaveDoc()
    {
        var Extension=GetFileExtension(TemplatePath)
        var PageUrl = getPagePath("GetHttpFileCollection.aspx?IndexId=" + $("#IndexIdTxt").val() + "&Extension=" + Extension + "&DocId=" +  "<%=Request.QueryString("DocID")%>"); 

        CaliberDocumentViewerIns.UploadFile(TemplatePath, PageUrl)
        CaliberDocumentViewerIns.DeleteHTMLFiles(TemplatePath);
        window.self.close();
    }
    
    $("#CloseBtn").click(function(){
        window.close();
    });
    
    
    if ("<%=Page.isPostBack %>" == "False")
    {
      setTimeout("AJAX_ChekcDocLockedData(<%=Request.QueryString("DocID") %>,1)",10)
    } 
   
   // For Close Button
   
   
    function  UpdateLockData1(DocID)
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
                 var Returnval =''
                 Returnval=xmlhttp.ResponseText
                  xmlhttp =null;
            }
        }
        var url="../CAPAWORKS/DocLockCheck.aspx?Type=3&DocID=" +  DocID
        xmlhttp.open("POST",url,true);
        xmlhttp.send(null);
    }

   
</script>

  <script type="text/javascript">
      function GetFileSize(fileid) {
          try {
              var fileSize = 0;
              //for IE
              if ($.browser.msie) {
                  //before making an object of ActiveXObject,
                  //please make sure ActiveX is enabled in your IE browser
                  var objFSO = new ActiveXObject("Scripting.FileSystemObject"); var filePath = $("#" + fileid)[0].value;
                  var objFile = objFSO.getFile(filePath);
                  var fileSize = objFile.size; //size in kb
                  return fileSize;
                  //fileSize = fileSize / 1048576; //size in mb
              }
              //for FF, Safari, Opeara and Others
              else {
                  fileSize = $("#" + fileid)[0].files[0].size //size in kb
                  return fileSize;
                  //fileSize = fileSize / 1048576; //size in mb
              }
              //alert("Uploaded File Size is" + fileSize + "MB");
          }
          catch (e) {
              //alert("Error is :" + e);
          }
      }
    
        </script>
</html>
