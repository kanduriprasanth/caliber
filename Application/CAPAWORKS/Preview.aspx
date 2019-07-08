<%@ Page Language="vb" EnableViewState="false" AutoEventWireup="false" Codebehind="Preview.aspx.vb"
    Inherits="CAPAWORKS.Preview" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>Preview</title>
    <link rel="stylesheet" href="../TRIMS.css" />

    <script type="text/javascript" src="../JScript/Common2.js"></script>

    <script language='javascript' src='../JScript/jquery.min.js'></script>

    <%-- <script type="text/javascript" src="../eNoteBookEditor/MaskJScript.js"></script>
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />--%>

    <script src="../Plugins/JqueryModel/jquery.simplemodal.js" type="text/javascript"></script>

    <link href="../Plugins/JqueryModel/simplemodal.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../Plugins/progressbar/jquery.ui.all.css" />

    <script type="text/javascript" src="../Plugins/progressbar/jquery.ui.core.js"></script>

    <script type="text/javascript" src="../Plugins/progressbar/jquery.ui.widget.js"></script>

    <script type="text/javascript" src="../Plugins/progressbar/jquery.ui.progressbar.js"></script>

    <link rel="stylesheet" href="../Plugins/progressbar/demos.css" />
    <style>
	.ui-progressbar .ui-progressbar-value { background-image: url(../Plugins/progressbar/pbar-ani.gif); }
	
	</style>

    <script type="text/javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'
	//-->
       
    </script>

    <script language="javascript">
        function SetWidth()
        {
            if (document.getElementById("OrientationRBn_0").checked ==true)
                document.getElementById("LiteralDiv").setAttribute("style","overflow-x:hidden;overflow-y:auto;height:7in;width:8.27in;vertical-align:top;") ;
            else if (document.getElementById("OrientationRBn_1").checked ==true)
                document.getElementById("LiteralDiv").setAttribute("style","overflow-x:hidden;overflow-y:auto;height:10in;width:12.27in;vertical-align:top;") ;
        }
    </script>

    <script type="text/javascript">
    function GenerateBatchData()
    {
        MaskData();
        StartProgress(1);
        setTimeout("GenerateBatchData1()",1000)
    }
    
    function getTemplatePath()
    {
        var THrefArr = [];
        var HrefArr = [];
        var HrefArr1 = [];
        THrefArr = window.location.href.split("/");

        for(var i=0;i< THrefArr.length - 2;i++)
        {
            HrefArr[i] = THrefArr[i];
        }

        for(var i=0;i< THrefArr.length - 3;i++)
        {
            HrefArr1[i] = THrefArr[i];
        }
        var Href = HrefArr.join("/");
        var Href1 = HrefArr1.join("/");

        return Href1 + "/HtmlFiles/SampleTemplate.dot";
    }
     function GenerateBatchData1()
    {
        //setTimeout("StartProgress(1)",1000)
        
        //Fetching the Data
        var HeaderData = "<div></div>";
        var FooterData = "<div></div>";
        var BodyData = WordFormatCorrections(document.getElementById("LiteralDiv").innerHTML);
        var BodyData = document.getElementById("LiteralDiv").innerHTML;
        //Creating HTML Files at Client Location
        var CaliberDocumentViewerIns = document.getElementById("CaliberDocumentViewer");
        
        var HeaderDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((HeaderData == "" ? "  " : HeaderData), "IH");
        var FooterDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((FooterData == "" ? "  " : FooterData), "IF");
        var BodyDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((BodyData == "" ? "  " : BodyData), "PH");

        //Load The Tempalte. DAT File
        var TemplatePath = getTemplatePath();
        setTimeout("StartProgress(10)",2000)
        try
        {
            CaliberDocumentViewerIns.LoadDocument(TemplatePath);
        }
        catch(ex)
        {
            
        }
        
        var DelayTime=3000
        //Insert Index Page
        
        var Orientation = <%=Orientation%>
        CaliberDocumentViewerIns.InsertFilesInSection(BodyDataPath,HeaderDataPath,FooterDataPath,Orientation,1);
               
        CaliberDocumentViewerIns.PreviewDocument(3);
        CaliberDocumentViewerIns.WordInstance.ActiveWindow.DocumentMap = false;
        CaliberDocumentViewerIns.SetPassword("Caliber_09");
        CaliberDocumentViewerIns.ScriptCallbackObjectForPrint=OnBeforePrint_Callback;
        DelayTime +=300
        setTimeout("StartProgress(100)",DelayTime)
        DelayTime +=300
        setTimeout("CloseMaskData()",DelayTime)
        DelayTime +=300
        setTimeout("documentDisplay()",DelayTime)
        
       
        //HideMask();
    }
     function documentDisplay(){
        document.getElementById("HTMlPreviewTd").className="HideRow"
        
        document.getElementById("WordPreviewTd").className=""
    }

     function OnBeforePrint_Callback(qa)
     {
       // alert("Not allowed");
     }
 
        function WordFormatCorrections(WordContent)
    {
        if(WordContent!='')
        {
            WordContent = WordContent.replace(/<(\w[^>]*) src="\s*([^/userfiles]*)([^>]*)/gi, "<$1 src=\""+window.location.href.substring(0, window.location.href.indexOf(window.location.pathname))+"$3") ;
            WordContent = WordContent.replace(/PR014_BRM_HST/gi,window.location.pathname.substring(1,window.location.pathname.substring(1).indexOf("/")+1));
            
            WordContent = WordContent.replace( /<SPAN ([^>]*) fieldtype="([^>"]*)"*>([\s\S]*?)<\/SPAN>/gi,"<span style='color:\"Blue\";display:\"inline\";font-size:\"11px\";font-weight:\"normal\";text-align:\"left\";font-family:\"Verdana\";font-style:\"oblique\";'>$3</span>");
            WordContent = WordContent.replace( /<SPAN ([^>]*) calfld="([^>"]*)"*>([\s\S]*?)<\/SPAN>/gi,"<span style='color:\"Blue\";display:\"inline\";font-size:\"11px\";font-weight:\"normal\";text-align:\"left\";font-family:\"Verdana\";font-style:\"oblique\";'>$3</span>");
            WordContent = WordContent.replace( /<SPAN ([^>]*) workflowfld="([^>"]*)"*>([\s\S]*?)<\/SPAN>/gi,"<span style='color:\"Blue\";display:\"inline\";font-size:\"11px\";font-weight:\"normal\";text-align:\"left\";font-family:\"Verdana\";font-style:\"oblique\";'>$3</span>");
//            WordContent = WordContent.replace(/\n/g, "<br />");
//            WordContent = WordContent.replace("\n", "<br />","g");
            return WordContent;
            var ValFld = window.location.href.substring(0, window.location.href.indexOf(window.location.pathname)+1) + window.location.pathname.substring(1,window.location.pathname.substring(1).indexOf("/")+1) + "/userfiles"
            WordContent = WordContent.replace( /<(\w[^>]*) src=([^http:\/\/]*)userfiles\s?([^>]*)/gi, "<$1 src=\""+ValFld+"$3") ;
            WordContent = WordContent.replace( /<input\s*[^\/>]*\/>/gi, '' ) ;
        }
        return WordContent;
    }
    </script>

</head>
<body>
    <form id="Form1" runat="server">
        <asp:Table ID="tt" HorizontalAlign="center" CssClass="MainTable" runat="server">
            <asp:TableRow CssClass="MainHead">
                <asp:TableCell>
                    <asp:Literal ID="MainTitleLtrl" runat="server">Preview</asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Style="background-color: Gray">
                    <!-----------Base table------------->
                    <div style="height: 600px; overflow: auto">
                        <asp:Table ID="DataTab" runat="server" CssClass="SubTable" HorizontalAlign="center"
                            Style="width: 100%;">
                            <%--<asp:TableRow>
                                <asp:TableCell CssClass="MainTD" HorizontalAlign="Left" ID="ProcesStagetd" Style="vertical-align: top;
                                    font-weight: bold;" Text="Orientation" Width="33%">
                                </asp:TableCell>
                                <asp:TableCell CssClass="MainTD">
                                    <asp:RadioButtonList ID="OrientationRBn" runat="server" CssClass="RBList" RepeatDirection="Horizontal"
                                        onclick="SetWidth()">
                                        <asp:ListItem Value="1" Selected="True">Portrait</asp:ListItem>
                                        <asp:ListItem Value="2">LandScape</asp:ListItem>
                                    </asp:RadioButtonList>
                                </asp:TableCell>
                            </asp:TableRow>--%>
                            <asp:TableRow ID="HTMlPreviewTd">
                                <asp:TableCell ColumnSpan="2" CssClass="MainTD" Style="overflow: auto; height: 300px">
                                    <div id="LiteralDiv" style="overflow-x: hidden; overflow-y: auto; height: 7in; width: 8.27in;
                                        vertical-align: top; margin-left: 0px">
                                        <asp:Literal ID="TableLit" runat="server"></asp:Literal>
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow ID="WordPreviewTd" CssClass="HideRow">
                                <asp:TableCell ColumnSpan="2" CssClass="MainTD" HorizontalAlign="Center">
                       
                               <div style="overflow: hidden;vertical-align:middle;width:100%" >
            <%
    Response.WriteFile("../DMSManagement/ActiveX.inc")
            %>
			 </div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="HideRow">
                                <asp:TableCell>
                                    <asp:TextBox ID="PageURLTxt" CssClass="HideRow" runat="server" />
                                    <asp:Button ID="RefreshBtn" runat="server" Text="Button" CausesValidation="false" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
               <%--<asp:TableCell>
                    <input type="button" value="Close " onclick="window.close()" Class="ButCls" onmouseOver="this.className='ButCls'"
                            onmouseout="this.className='ButCls'"/>                            
                    <input id="Button1" type="button" value="Word" onclick="ChangeCss(2)" onmouseover="this.className='ButCls'" class='ButCls'
                            accesskey="C" onmouseout="this.className='ButCls'"/>
                </asp:TableCell>--%>
                <asp:TableCell  Width="60%" HorizontalAlign="Left">
                           &nbsp;&nbsp; 
                <input id="Button2" type="button" value="HTML Preview" onmouseover="this.className='ButSelOCls'" class='ButSelCls'
                    accesskey="C" onmouseout="this.className='ButSelCls'" onclick="ChangeCss(1)" />
                    
                <input id="Button1" type="button" value="Word Preview" onclick="ChangeCss(2)" onmouseover="this.className='ButSelOCls'" class='ButSelCls'
                    accesskey="C" onmouseout="this.className='ButSelCls'"/>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><div id="MASkDiv">
                        <div style="display:none" id="message"><h1> Loading...</h1></div>
                <div id="progressbar"></div></div></asp:TableCell></asp:TableRow>
        </asp:Table>
    </form>
</body>

<script type="text/javascript">

//To Call the modal window
    function MaskData(){
        $("#progressbar").css('display','block');
        $("#message").css('display','block');
        $("#WordPreviewTd").addClass("HideRow")
        $("#MASkDiv").modal({
            containerCss: {
            height: 150,
            width: "90%"
            }
        });
         $("a").removeClass("modalCloseImg");
    }
    
    //To call the progressbar "i means % Completed"
    function StartProgress(i) {
        $(function () {
            $("#progressbar").progressbar({
            value: i
        });
        });
    }
    
    //To Close modal window 
    function CloseMaskData(){
        $.modal.close();
        $("#progressbar").css('display','none');
        $("#message").css('display','none');
    }

function ChangeCss(flag)
{   
    //Form2.submit()
    var isLoaded = true
    if(flag==2)
    {
       if(!$("body").data("loaded"))
       {
            isLoaded = false;
            $("body").data("loaded",1);
            GenerateBatchData()
       }
    }
    if(isLoaded == true)
   {
        document.getElementById("WordPreviewTd").className= flag == 1 ? "HideRow" : "MainTD"
        document.getElementById("HTMlPreviewTd").className=flag == 1 ? "MainTD" : "HideRow"
   }
//   if(isLoaded == true)
//   {
//          GenerateBatchData()
//        document.getElementById("WordPreviewTd").className= flag == 1 ? "HideRow" : " "
//        document.getElementById("HTMlPreviewTd").className=flag == 1 ? " " : "HideRow"
//        document.getElementById("ProcesStageBtnTr").className=" "
//   }
}
    function LoadDynamicPreview()
    {
        var tempPageUrl = opener.RertunData();
        document.getElementById("PageURLTxt").value = tempPageUrl;
        document.getElementById("RefreshBtn").click();
    }
    if("<%=Page.IsPostBack%>" == "False" && <%=Request.QueryString("Type")%> == "1")
    {
         LoadDynamicPreview()
    }
</script>

</html>
