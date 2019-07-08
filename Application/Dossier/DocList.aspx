<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DocList.aspx.vb" Inherits="Dossier.DocList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Doc List</title>

    <script src="../JScript/jquery.min.js" type="text/javascript"></script>

    <script type="text/javascript" src="../JScript/Common2.js"></script>

    <link rel="stylesheet" href="../TRIMS.css">
    <link rel="stylesheet" href="MaskStyles.css" />

    <script language="javascript" src="MaskJScript.js"></script>

    <script type="text/javascript">
     
var FilesAry=new Array();
var IndexStr="<%=IndexIdStr%>"
FilesAry=IndexStr.split(",")    
var FilePathAry=new Array();
var FileNameAry=new Array(); 
var SucsFlg=0,Cnt=0;
var GlbCnt=0;
var ActionPlnRptFlg=0;
var IsuRptFlg=0;
var DeleteFiles = [];
var DeleteFilesCnt =0;
var FilesAryCnt = 0;

function fnCreateReportsPdfs(Type)
{
    var ReqUrl=''
    var ReportCode=''
    var IsLoaded = false;
    if(FilesAry.length>=1){
//        for(var i=0;i<FilesAry.length;i++)
//        {
    if(FilesAry.length == FilesAryCnt)
    {
        IsLoaded =true;
    }
        if(FilesAry.length > FilesAryCnt)
        {
            var i= FilesAryCnt;
            FilesAryCnt+=1;
            switch (parseInt(FilesAry[i]))
            {
                case 1:
                    ReqUrl='../CAPAWORKS/WordFormatReport_Ajax.aspx?Type=2&' ;
                    ReportCode='IssueReport';
                    BookMarkName(ReportCode);
                    LoadReportData(ReqUrl,ReportCode,Type);
                    break;
                case 2:
                    ReqUrl='../CAPAWORKS/ActPlanFinalRpt_Ajax.aspx?Type=2&';
                    ReportCode='ActionPlanReport';
                    BookMarkName(ReportCode);
                    LoadReportData(ReqUrl,ReportCode,Type);
                    break;
               
                case 3:
                    ReqUrl='../CAPAWORKS/ETDReport_Ajax.aspx?Type=1&';
                    ReportCode='ETDReport';
                    BookMarkName(ReportCode);
                    LoadReportData(ReqUrl,ReportCode,Type);
                    break;

                case 4:
                    ReqUrl='../CAPAWORKS/ETDReport_Ajax.aspx?Type=2&' ;
                    ReportCode='ModificationRequestReport';
                    BookMarkName(ReportCode);
                    LoadReportData(ReqUrl,ReportCode,Type);
                    break;

            }
        }
    }
    if(IsLoaded)
    {
        if('<%=RptsFlag %>'==GlbCnt){
    //        document.getElementById("MrgBtn").disabled=false;
            document.getElementById("CrtBtn").disabled=true;
    //        alert('Files Created Successfully'); 
            if(Type==0)
            {
                FnMrgPdf();
            }
    //        //HideMask(); 
        }
    }
}


     function getDocFilePath(DocFilePath) {
        var THrefArr = [];
        var HrefArr = [];
        var HrefArr1 = [];
        THrefArr = window.location.href.substring(0,window.location.href.lastIndexOf(".")).split("/")
        for (var i = 0; i < THrefArr.length - 2; i++) {
            HrefArr[i] = THrefArr[i];
        }
        var Href = HrefArr.join("/");
        return Href + DocFilePath.replace("..", "");
    }

 function LoadReportData(PageUrl,FileName,Type)
 {
    //PageUrl += 'IsuTypeId=' + '<%=Request.QueryString("IsuTypeId") %>' + '&IsuLogID=' + '<%=Request.QueryString("IsuLogID") %>' +'&RptType=1&PreviewFlg=0&PrsType=0&IsuClsTempID=' + '<%=Request.QueryString("IsuClsTempID") %>' ;
    var indexPageOrientation=1; //1 portrait, 2 landscape
    CaliberDocumentViewerIns.ScriptCallbackObjectForErrors = OnError;
    
     $.ajax({
            url: PageUrl,
            cache: false,
            async: false,
            //type: "POST",
            //dataType: "html",
            data: 'IsuTypeId=' + '<%=Request.QueryString("IsuTypeId") %>' + '&IsuLogID=' + '<%=Request.QueryString("IsuLogID") %>' +'&RptType=1&PreviewFlg=0&PrsType=0&ReturnFlag=4&IsuClsTempID=' + '<%=Request.QueryString("IsuClsTempID") %>' ,

            success: function (data) {
            
                var HTMLdata = data;
                 var TempAry = new Array()
            var TempAry=HTMLdata.split("#*#") 
            

            var HeaderData =TempAry[0] //($(data).find("#HeaderDiv")).html()//WordFormatCorrections(document.getElementById("HeaderDiv").innerHTML);
            var FooterData =TempAry[2]  //($(data).find("#FooterDiv")).html() //WordFormatCorrections(document.getElementById("FooterDiv").innerHTML);
            var BodyData =TempAry[1]  //($(data).find("#BodyDiv")).html() //WordFormatCorrections(document.getElementById("BodyDiv").innerHTML);
       
       
            var HeaderDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((HeaderData == "" ? "  " : HeaderData), "IH");
            var FooterDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((FooterData == "" ? "  " : FooterData), "IF");
            var BodyDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((BodyData == "" ? "  " : BodyData), "PH");

            DeleteFiles[DeleteFilesCnt] = HeaderDataPath;
            DeleteFilesCnt +=1;
         
            DeleteFiles[DeleteFilesCnt] = FooterDataPath;
            DeleteFilesCnt +=1;
         
            DeleteFiles[DeleteFilesCnt] = BodyDataPath;
            DeleteFilesCnt +=1;
    
                var TempDorPath = CaliberDocumentViewerIns.GetTempPath();
            //    var WordHeaderHtmFilePath = TempDorPath + FileName + "_H" + ".doc";
            //    DeleteFiles[DeleteFilesCnt] = WordHeaderHtmFilePath;
            //    DeleteFilesCnt +=1;
            //    
            //    var WordBodyHtmFilePath = TempDorPath + FileName + "_B" + ".doc";
            //    DeleteFiles[DeleteFilesCnt] = WordHeaderHtmFilePath;
            //    DeleteFilesCnt +=1;

            //    var WordFooterHtmFilePath = TempDorPath + FileName + "_F" + ".doc";
            //    DeleteFiles[DeleteFilesCnt] = WordHeaderHtmFilePath;
            //    DeleteFilesCnt +=1;

            //    CaliberDocumentViewerIns.LoadWebDocument(HeaderHtmFilePath,false,WordHeaderHtmFilePath,false);
            //    CaliberDocumentViewerIns.LoadWebDocument(FooterHtmFilePath,false,WordFooterHtmFilePath,false);
            //    CaliberDocumentViewerIns.LoadWebDocument(BodyHtmFilePath,false,WordBodyHtmFilePath,false);

    var TemplatePath = getTemplatePath();
    CaliberDocumentViewerIns.CloseControlOnLoad = false;
    CaliberDocumentViewerIns.LoadDocument(TemplatePath,false); // CaliberDocumentViewerIns.LoadDocument(TemplatePath,true);

    if(CaliberDocumentViewerIns.IsDocumentLoaded ==false)
    {
        alert("File Not Loaded");
        return;
    }

            //    CaliberDocumentViewerIns.InsertFilesInSection(WordBodyHtmFilePath,WordHeaderHtmFilePath,WordFooterHtmFilePath,indexPageOrientation,1);

            CaliberDocumentViewerIns.InsertFilesInSection(BodyDataPath,HeaderDataPath,FooterDataPath,indexPageOrientation,1);
 
            try {
                    for(var i=1;i<CaliberDocumentViewerIns.Worddocument.Tables.Count+1;i++)
                    {
                     CaliberDocumentViewerIns.Worddocument.Tables(i).AutoFitBehavior (0)
            
//             var  WrDTabObj =CaliberDocumentViewerIns.WordInstance.ActiveDocument.Tables(i)
//             
//             WrDTabObj.Rows.HeightRule = 0
//   
//             var  TablesCount =WrDTabObj.Tables.Count
//             
//             for(var TabCount=i;TabCount<TablesCount+1;TabCount++ )
//             {
//                    var  InnerWrDTabObj = WrDTabObj.Tables(TabCount)
//                    InnerWrDTabObj.Rows.HeightRule = 0
//             }
//          
         }
  }
            catch(err) {
    
                        }
         
    var PDFFilepath = TempDorPath + FileName + ".pdf";
    CaliberDocumentViewerIns.ExportDocumentToPDF(PDFFilepath);
    CaliberDocumentViewerIns.SetVisible(false);

    DeleteFiles[DeleteFilesCnt] = PDFFilepath;
    DeleteFilesCnt +=1;
    
    //if(GlbCnt==0){GlbCnt=1;}
    if(FileName=="ActionPlanReport"){ActionPlnRptFlg=1;}else if(FileName=="IssueReport"){IsuRptFlg=1;}

    AddFilesList(PDFFilepath,true)

                //    fnCreateReportsPdfs();  
                //if(GlbCnt==1){GlbCnt=2;} 
                GlbCnt+=1;
    
                fnCreateReportsPdfs(Type);
  
                //($(data).find("#ContentDiv")).html()
            },
            
            error: function (xhr, errorType) {
                var Error = xhr.responseText;
                alert(Error);
            }
        });


        //if(FileName=="EMPlanReport")
        //{
        //PageUrl +="&IsEmPlan=1";
        //}

        ////    var HeaderHtmFilePath= getDocFilePath(PageUrl + "&ReturnFlag=1");
        ////    var BodyHtmFilePath  = getDocFilePath(PageUrl + "&ReturnFlag=2");
        ////    var FooterHtmFilePath = getDocFilePath(PageUrl + "&ReturnFlag=3");
        //    
        //    
        //       var HeaderData = ($(data).find("#HeaderDiv")).html()//WordFormatCorrections(document.getElementById("HeaderDiv").innerHTML);
        //        var FooterData = ($(data).find("#FooterDiv")).html() //WordFormatCorrections(document.getElementById("FooterDiv").innerHTML);
        //        var BodyData =  ($(data).find("#BodyDiv")).html() //WordFormatCorrections(document.getElementById("BodyDiv").innerHTML);
        //       
        //       
        //        var HeaderDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((HeaderData == "" ? "  " : HeaderData), "IH");
        //        var FooterDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((FooterData == "" ? "  " : FooterData), "IF");
        //        var BodyDataPath = CaliberDocumentViewerIns.GenerateHtmlFile((BodyData == "" ? "  " : BodyData), "PH");

        //         DeleteFiles[DeleteFilesCnt] = HeaderDataPath;
        //         DeleteFilesCnt +=1;
        //         
        //         DeleteFiles[DeleteFilesCnt] = FooterDataPath;
        //         DeleteFilesCnt +=1;
        //         
        //         DeleteFiles[DeleteFilesCnt] = BodyDataPath;
        //         DeleteFilesCnt +=1;
        //    
        ////    var TempDorPath = CaliberDocumentViewerIns.GetTempPath();
        ////    var WordHeaderHtmFilePath = TempDorPath + FileName + "_H" + ".doc";
        ////    DeleteFiles[DeleteFilesCnt] = WordHeaderHtmFilePath;
        ////    DeleteFilesCnt +=1;
        ////    
        ////    var WordBodyHtmFilePath = TempDorPath + FileName + "_B" + ".doc";
        ////    DeleteFiles[DeleteFilesCnt] = WordHeaderHtmFilePath;
        ////    DeleteFilesCnt +=1;

        ////    var WordFooterHtmFilePath = TempDorPath + FileName + "_F" + ".doc";
        ////    DeleteFiles[DeleteFilesCnt] = WordHeaderHtmFilePath;
        ////    DeleteFilesCnt +=1;

        ////    CaliberDocumentViewerIns.LoadWebDocument(HeaderHtmFilePath,false,WordHeaderHtmFilePath,false);
        ////    CaliberDocumentViewerIns.LoadWebDocument(FooterHtmFilePath,false,WordFooterHtmFilePath,false);
        ////    CaliberDocumentViewerIns.LoadWebDocument(BodyHtmFilePath,false,WordBodyHtmFilePath,false);

        //    var TemplatePath = getTemplatePath();
        //    CaliberDocumentViewerIns.LoadDocument(TemplatePath,false); // CaliberDocumentViewerIns.LoadDocument(TemplatePath,true);

        //    if(CaliberDocumentViewerIns.IsDocumentLoaded ==false)
        //    {
        //        alert("File Not Loaded");
        //        return;
        //    }

        ////    CaliberDocumentViewerIns.InsertFilesInSection(WordBodyHtmFilePath,WordHeaderHtmFilePath,WordFooterHtmFilePath,indexPageOrientation,1);

        //CaliberDocumentViewerIns.InsertFilesInSection(BodyDataPath,HeaderDataPath,FooterDataPath,indexPageOrientation,1);
        // 
        // try {
        //        for(var i=1;i<CaliberDocumentViewerIns.WordInstance.ActiveDocument.Tables.Count+1;i++)
        //         {
        //            CaliberDocumentViewerIns.WordInstance.ActiveDocument.Tables(i).AutoFitBehavior (0)
        //            
        ////             var  WrDTabObj =CaliberDocumentViewerIns.WordInstance.ActiveDocument.Tables(i)
        ////             
        ////             WrDTabObj.Rows.HeightRule = 0
        ////   
        ////             var  TablesCount =WrDTabObj.Tables.Count
        ////             
        ////             for(var TabCount=i;TabCount<TablesCount+1;TabCount++ )
        ////             {
        ////                    var  InnerWrDTabObj = WrDTabObj.Tables(TabCount)
        ////                    InnerWrDTabObj.Rows.HeightRule = 0
        ////             }
        ////          
        //         }
        //}
        //catch(err) {
        //    
        //}
        //    
        //         
        //    var PDFFilepath = TempDorPath + FileName + ".pdf";
        //    CaliberDocumentViewerIns.ExportDocumentToPDF(PDFFilepath);
        //    CaliberDocumentViewerIns.SetVisible(false);

        //    DeleteFiles[DeleteFilesCnt] = PDFFilepath;
        //    DeleteFilesCnt +=1;
        //    
        //    //if(GlbCnt==0){GlbCnt=1;}
        //    if(FileName=="ActionPlanReport"){ActionPlnRptFlg=1;}else if(FileName=="IssueReport"){IsuRptFlg=1;}

        //    AddFilesList(PDFFilepath,true)

        ////    fnCreateReportsPdfs();  
        //    //if(GlbCnt==1){GlbCnt=2;} 
        //    GlbCnt+=1;
        //    
        //    fnCreateReportsPdfs(Type);
    
 }
  
  function OnError(Oevent)
    {
      // alert(Oevent);
    }
function OnPDFExportComplete(Oevent)
{
    CaliberDocumentViewerIns.CloseDocument();
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

        return Href1 + "/HtmlFiles/Template.dot"; //HtmlFiles/Template.dot"; ///HtmlFiles/SampleTemplate.dot";
    }
 
    function AddFilesList(FileName,LocalFile)
   {
        var FileNamelst = [];
        var _FileNamelst = new Array();
        FileNamelst = $("#FilesPathTxt").val().split(",");
        FileNamelst[FileNamelst.length] = FileName;
        
        for(var k=0;k<FileNamelst.length;k++)
        {
            if(FileNamelst[k] != "")
            {
            _FileNamelst.push(FileNamelst[k]);
            }
        }

        $("#FilesPathTxt").val(_FileNamelst.join(","));
        if(LocalFile ==true)
        {
            DeleteFiles[DeleteFilesCnt] = FileName;
            DeleteFilesCnt +=1;
        }
   }
   
     function BookMarkName(FileName)
   {
        var FileNamelst = [];
        var _FileNamelst = new Array();
        FileNamelst = $("#Txt").val().split(",");
        FileNamelst[FileNamelst.length] = FileName;
        
        for(var k=0;k<FileNamelst.length;k++)
        {
            if(FileNamelst[k] != "")
            {
            _FileNamelst.push(FileNamelst[k]);
            }
        }

        $("#Txt").val(_FileNamelst.join(","));
      
   }


function FnCreatePdf()
{  
//    var Selection=confirm("Please Save & Close All The Word Documents Continue?");
//    if(Selection==true)
        FnCreatePdf1();  
}

function FnCreatePdf1()
{    
ShowMask();
    var tmpIndexIdStr="<%=IndexIdStr%>"
    var tmpIndexIdAry=new Array();
    
    var ExtPwds="<%=ExtPwds%>"
    var ExtPwdsAry=new Array();    
    
    var DmsDocsAry=new Array();
    var DmsAryStr=''
    
    var ExtPwdsAry1=new Array();
    
    var BookMarkNamesLstArr=new Array();
    var BookMarkNamesLstArr1=new Array();
    var BookMarkNamesLst=$("#BookMarkNamesLstTxt").val(); //"<%=BookMarkNamesLst %>"
    BookMarkNamesLstArr=BookMarkNamesLst.split(",")
    
    
    tmpIndexIdAry=tmpIndexIdStr.split(",")
    ExtPwdsAry=ExtPwds.split("#*#")
    
    var dmsFlsChkFlg=0;
    for(var chkCnt=0;chkCnt<tmpIndexIdAry.length;chkCnt++)
    {
        if(tmpIndexIdAry[chkCnt].length>3)
        {
            dmsFlsChkFlg=1;
            DmsDocsAry.push(tmpIndexIdAry[chkCnt])
            ExtPwdsAry1.push(ExtPwdsAry[chkCnt])
            BookMarkNamesLstArr1.push(BookMarkNamesLstArr[chkCnt])
        }
        else
        {
            BookMarkNamesLstArr1.push(BookMarkNamesLstArr[chkCnt])
        }
   }
   
//   document.getElementById("Txt").value=BookMarkNamesLstArr1.join(",")
    if(dmsFlsChkFlg==1)
    {
         if('<%=RptsFlag %>'>0)
         {
            fnCreateReportsPdfs(1)
         }
                    
        DmsAryStr=DmsDocsAry.join(",")
        $.ajax({
                url: 'CreatePdf_ajax.aspx',
                cache: false,
                 async: false,
                //type: "POST",
                //dataType: "html",
               // data: "IndexIdStr=" + "<%=IndexIdStr%>" + "&SrcType=" + <%=SrcType%> + "&SmpCode=" + '<%=Request.QueryString("SmpCode")%>'  + "&SptId=" + '<%=Request.QueryString("SptId")%>', 
                data: "IndexIdStr=" + DmsAryStr + "&SrcType=" + <%=SrcType%> + "&IsuLogAulId=" + '<%=Request.QueryString("IsuLogAulId")%>'  + "&SptId=" + '<%=Request.QueryString("SptId")%>', 
                success: function (data) { 
                    var Arr=[];
                    var ExtArr=[];
                    var PathArr=[];
                    var FileNameArr=[];
                    var TemPath = CaliberDocumentViewerIns.GetTempPath();
                    Arr=data.split("#*#");
                    ExtArr=Arr[1].split(",")
                    PathArr=Arr[0].split(",")
                    FileNameArr=Arr[2].split(",")
                    for(var i=0; i<ExtArr.length; i++)
                    {
                        if(ExtArr[i]=='.doc' || ExtArr[i]=='.docx' || ExtArr[i]=='.xls'|| ExtArr[i]=='.xlsx'|| ExtArr[i]=='.xlt')
                        {
                            var TFilePath = TemPath + FileNameArr[i] + '.pdf';
                            var FName = FileNameArr[i]
                            CaliberDocumentViewerIns.LoadDocument(PathArr[i] + FileNameArr[i] + ExtArr[i],false,ExtPwdsAry1[i]);
                            CaliberDocumentViewerIns.ExportDocumentToPDF(TFilePath)
                            AddFilesList(TFilePath,true);
                            BookMarkName(FName);
                        }
                        else
                        {
                            AddFilesList(PathArr[i] + FileNameArr[i] + '.pdf');
                            BookMarkName(FileNameArr[i]);
                        }
                    }
//                    if('<%=RptsFlag %>'>0)
//                    {
//                        fnCreateReportsPdfs()
//                    }
//                    else
//                    {
                        CaliberDocumentViewerIns.ScriptCallbackObjectForPDFExportComplete = OnPDFExportComplete 
//                        alert('Files Created Successfully');             
//                        document.getElementById("MrgBtn").disabled=false;
                        document.getElementById("CrtBtn").disabled=true; 
                        FnMrgPdf();
//                        HideMask();
//                    }
                },
                error: function (xhr, errorType) {
                    var Error = xhr.responseText;
                    alert(Error);
                }
            });
    }
    else
    {
//        var ActiveXObjeIns  = document.getElementById("CaliberDocumentViewer")
//        var PrinterProperties = ActiveXObjeIns.ReadPrinterProperties(PrinterName,"");
//        PrinterProperties = PrinterProperties.replace( /\\/gi, '@@@@@' ) ;
//        
//        var JSONObj = jQuery.parseJSON(PrinterProperties);
//        var  DriverName=JSONObj.DriverName
        
       fnCreateReportsPdfs(0)
    }
}

function FnMrgPdf()
{
     //ShowMask();
     var MergedPath="";
     var reqCode="<%=PdfReqUCOde %>"  
     var RequestedBy="<%=RequestedBy%>" 
     var RequestedOn="<%=RequestedOn%>" 
     var FoterStr="Dossier Request Id: " + reqCode + "   Prepared By: " + RequestedBy + "   Prepared On:" + RequestedOn
     var Pwd="";
     if ("<%=Pwd%>"!="")
     {
        Pwd="<%=Pwd%>";
     }
     var SpecialChar=$("#BookMarkNamesLstTxt").val(); //'<%=BookMarkNamesLst %>';
//     var FilesAry=new Array();
//     FilesAry=SpecialChar.split(",") 
//      
//      for(var i=0;i<FilesAry.length;i++)
//       {
//         SpecialChar+=SpecialChar.replace( /\W/g , '_');
//       } 
       
     CaliberDocumentViewerIns.MergePDFFiles("<%=IndexIdStr%>",Pwd,reqCode,document.getElementById("FilesPathTxt").value,SpecialChar,FoterStr,4)
     alert('Files Merged Successfully'); 
     HideMask();
     form1.submit();
}


    </script>

</head>
<body ms_positioning="GridLayout">
    <form autocomplete="off" id="form1" runat="server">
        <!-- Our activeX object -->
        <span style="display:none">
            <%
    Response.WriteFile("../DMSManagement/ActiveX.inc")
            %>

        </span>
        <center>
            <asp:Table ID="tt" HorizontalAlign="center" CssClass="MainTable" runat="server" CellPadding="0"
                CellSpacing="0" BorderWidth="0">
                <asp:TableRow Height="20" CssClass="MainHead">
                    <asp:TableCell>
                        <asp:Literal ID="MainTitleLtrl" runat="server">Documents List</asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <!-----------Base table------------->
                        <asp:Table runat="server" CssClass="SubTable" HorizontalAlign="center" ID="Table1"
                            CellPadding="0" CellSpacing="0" BorderWidth="0" Width="100%">
                        </asp:Table>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow CssClass="MainFoot">
                    <asp:TableCell>
                        <input type="button" id="CrtBtn" class='ButSelCls' value='Download & Save' onclick="FnCreatePdf()"
                            onmouseover="this.className='ButSelOCls'" onmouseout="this.className='ButSelCls'" />
                        <asp:TextBox ID="FilesPathTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                        <%--<input type="button" id="MrgBtn" class='ButSelCls' disabled="disabled" value='Save File(s)'
                            onclick="FnMrgPdf()" onmouseover="this.className='ButSelOCls'" onmouseout="this.className='ButSelCls'" />--%>
                            <asp:TextBox ID="BookMarkNamesLstTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            <asp:TextBox ID="Txt" runat="server" CssClass="HideRow"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </center>
    </form>
</body>

<script type="text/javascript" language="javascript">

    var CaliberDocumentViewerIns = document.getElementById("CaliberDocumentViewer");
    CaliberDocumentViewerIns.ScriptCallbackObjectForErrors = OnError;
    CaliberDocumentViewerIns.ScriptCallbackObjectForPDFExportComplete = OnPDFExportComplete;

    (function ($) {
        $(window).unload(function () {
            DeleteTempDocument();
        });
    })(jQuery);

    function DeleteTempDocument() {
        if (DeleteFiles.length > 0) {
            CaliberDocumentViewerIns.DeleteHTMLFiles(DeleteFiles.join("#*#"));
            DeleteFiles.length = 0;
        }
    }

</script>

</html>
