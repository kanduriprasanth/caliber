<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ViewDocument.aspx.vb" Inherits="ReportConfig.ViewDocument" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" >

<html>
<head id="Head1" runat="server">
       <link rel="stylesheet" href="../TRIMS.css">
     <script src="jquery.min.js" type="text/javascript"></script>
     <script type="text/javascript" src="../JScript/Common2.js"></script>
    <title>DMS Document Preview</title>

    <script type="text/javascript">
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
                CaliberDocumentViewerIns.CloseControl();
            }
        }
    }
        function CheckFileType() {
            if(<%=LoadActivex %>==1)
            {
                GenerateBatchData();
            }
        }

    function GetDocType(FileName)
    {
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
    
        function getTemplatePath() {
           
            var THrefArr = [];
            var HrefArr = [];
            var HrefArr1 = [];
            THrefArr = window.location.href.split("/");
            for (var i = 0; i < THrefArr.length - 2; i++) {
                HrefArr[i] = THrefArr[i];
            }
            for (var i = 0; i < THrefArr.length - 3; i++) {
                HrefArr1[i] = THrefArr[i];
            }
            var Href = HrefArr.join("/");
            var Href1 = HrefArr1.join("/");
            var FilePath = "<%=FilePath%>";

            if(FilePath != "")
            {
                var TFilePathArr = [];
                var T1FilePathArr = [];
                TFilePathArr = FilePath.split("\\");

                for(var i=2;i<TFilePathArr.length;i++)
                {
                    T1FilePathArr[i-1] = TFilePathArr[i];
                }
                FilePath = T1FilePathArr.join("\\")
            }
            return Href + FilePath;
        }

        function GenerateBatchData() {
            //Creating HTML Files at Client Location
            //Load The Tempalte. DAT File
            var TemplatePath = getTemplatePath();
            var docType=GetDocType(TemplatePath);
            CaliberDocumentViewerIns.LoadDocument(TemplatePath);
            CaliberDocumentViewerIns.SetPassword("Caliber_09");
            if(docType == "w")
            {  
             document.getElementById("DocPreview").className="HideRow"
                CaliberDocumentViewerIns.PreviewDocument(3);
            }
            else
            {
               document.getElementById("DocPreview").className="MainTD"
            }
            
        }
        
         function FnOpenIsuReport(IsuId,IsuTypId)
            {
                var pageURL = "../CAPAWORKS/WordFormatReport.aspx?RptType=1&Type=2&IsuLogID=" + IsuId + "&IsuTypeId=" + IsuTypId + "&RepType=2&PrsType=1"
                var features = "height=650,width=750,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=200,left=100"
                SpWinObj = window.open(pageURL,'SpecCodes',features)
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();
            }
        
    </script>

</head>
<body>
    <form autocomplete="off" id="form1" runat="server">
    <center>
        <asp:Table ID="tt" HorizontalAlign="center" CssClass="MainTable" runat="server">
        <asp:TableRow CssClass="MainHead">
            <asp:TableCell>
                <asp:Literal ID="MainTitleLtrl" runat="server">Preview</asp:Literal>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <!-----------Base table------------->
                <asp:Table ID="DataTab" runat="server" CssClass="SubTable" HorizontalAlign="center" Style="overflow: auto; height: 300px;" Width="100%" >
                    <asp:TableRow ID="HTMlPreviewTd">
                        <asp:TableCell>
                            <div id="Div1" runat="server" style="overflow:scroll; height: 500px; width: 100%;">
                                <asp:Table ID="Table1" runat="server" CssClass="SubTable" HorizontalAlign="center" Style="overflow: auto; height: 300px;" Width="100%" >
                                    <asp:TableRow>
                                        <asp:TableCell ID="PreviwTd" CssClass="MainTD"></asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
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
                </asp:Table>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="MainFoot">
            <asp:TableCell>
              <asp:Label runat=server  ID="DocPreview" Text="Note: Use keyboard to Scroll the document"
                CssClass="HideRow"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </center>
    </form>
</body>
<script type="text/javascript">
    var CaliberDocumentViewerIns = document.getElementById("CaliberDocumentViewer");
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
    $("#CaliberDocumentViewer").attr("width", parseInt($("#DataTab").outerWidth()) - 40) + "px"; //  $("#ActiveXDiv").width());	

    $(window).resize(function() {
        $("#CaliberDocumentViewer").attr("width", parseInt($("#DataTab").outerWidth()) - 40) + "px"; //  $("#ActiveXDiv").width());	
    });
    CheckFileType();
</script>
</html>
