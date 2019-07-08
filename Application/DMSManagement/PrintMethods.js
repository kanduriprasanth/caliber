var FPageHeader, FpageFooter, __SectionCnt, __MaxCount, __PrintPreType, __OrientationArray, __HeaderReqArray, __FooterReqArray, __SectionDesArr, __TUniqueID, __TemplateUrl, __PrintType, __PrintRange;

function caliberAXWordPrintPre(Text,Visibility,Header,Footer,TextType,Template,LoadLocalTemplate,Orientation,HeaderRequiredVal,FooterReqiredValue,PrintType,PrintRange,PrintPath,SectionDesList)
{
    var RetVal=""
    var ActiveXObjeIns = document.CaliberOfficeAX
    try
    {
        Visibility = false
        RetVal = ActiveXObjeIns.ExportToWord(Text,Visibility,Header,Footer,TextType,Template,LoadLocalTemplate,Orientation,HeaderRequiredVal,FooterReqiredValue,PrintType,PrintRange)  
    }
    catch(ex)
    {
        alert("ActiveX Component Not Installed!");
        HideMask();
        return false;
    }

    var hArr = new Array()
    var fArr = new Array()
    var DataArr = new Array()
    DataArr = Text.split("#*#")

    if(DataArr.length > 1)
    {
        hArr = Header.split("#*#")
        fArr = Footer.split("#*#")
        ActiveXObjeIns.InsertIndex(SectionDesList,hArr[2],fArr[2])
    }
    ActiveXObjeIns.SetPassword("Caliber")
    if((Visibility == false) && ((PrintType==0) || (PrintType ==2)))// || (PrintType ==11)))
    {
        PrintRange = PrintRange ? PrintRange : ""
        ActiveXObjeIns.PrintDocument(PrintType,PrintRange)
        ActiveXObjeIns.SaveFileToDMSDirectory($("#DMSAttXMLData").text(),"");
        ActiveXObjeIns.CloseDocument()
        if(typeof(SubMitVal) != "undefined"  )
        {
            SubMitVal()
        }
    }
    else
    {
        ActiveXObjeIns.Visible(true)
        ActiveXObjeIns.PreviewDocument()
    }
    HideMask()

}
function PrintPreviewMaster(PrintPreType,TextType,TextArray,OrientationArray,TemplateUrl,PortraitHeader,LandScapeHeader,PortraitFooter,LandScapeFooter,IndexPageHeader,IndexPageFooter,HeaderReqArray,FooterReqArray,SectionDesArr,TUniqueID,PrintType, PrintRange)
{
    PrintPreType = PrintPreType ? ((PrintPreType.toLowerCase()=="print") ? "Print" : "Preview")  : "Preview";
    PrintRange = PrintRange ? PrintRange : "";
    var Cnt =0;
    __PrintPreType = PrintPreType;
    FPageHeader=IndexPageHeader;
    FpageFooter=IndexPageFooter;
    PrintType =  isNaN(PrintType) ? 4 : PrintType;
    switch (TextType.toLowerCase())
    {
        case "url" : //Ok Working Fine

            var MaxCount = ((typeof(TextArray) == "string") ? 0 : TextArray.length );
            var TotalSections = MaxCount +1;
            var PVisible = ((PrintPreType == "Print") ? false : true);
            var BlankTemplate = TemplateUrl.substring(0,TemplateUrl.lastIndexOf('/')) + "/" + "SampleTemplate.dot"
            caliberAXWordPrintPre(TextArray.join("#*#"),PVisible,PortraitHeader+"#*#"+LandScapeHeader+"#*#"+IndexPageHeader,PortraitFooter+"#*#"+LandScapeFooter+"#*#"+IndexPageFooter,"url",BlankTemplate,"no",OrientationArray.join(","),HeaderReqArray.join(","),FooterReqArray.join(","),PrintType,PrintRange,"",SectionDesArr.join("#*#"))
            break;

        case "text" : //Ok Working Fine

            __OrientationArray = OrientationArray;
            __HeaderReqArray = HeaderReqArray;
            __FooterReqArray = FooterReqArray;
            __SectionDesArr = SectionDesArr;
            __PrintRange = PrintRange;
            __PrintType = PrintType;
            var TArr = new Array();
            TArr.push(PortraitHeader);
            TArr.push(LandScapeHeader);
            TArr.push(IndexPageHeader);
            TArr.push(PortraitFooter);
            TArr.push(LandScapeFooter);
            TArr.push(IndexPageFooter);
            var TArr1 = new Array()
            TArr1 = TextArray.concat(TArr)
            CreateHtmlFiles(TArr1,"HandleUrlValues");

            break;

        case "id" :     //Not Verified Yet
           
            __OrientationArray = OrientationArray;
            __HeaderReqArray = HeaderReqArray;
            __FooterReqArray = FooterReqArray;
            __SectionDesArr = SectionDesArr;

            FnAjaxGetBindVal(TextArray);
            break;
    }
}

function CreateHtmlFiles(DataArr,ReturnFunction)
{
    var Values ='<BindSet1>';

//var ValFld = window.location.href.substring(0, window.location.href.indexOf(window.location.pathname)+1) + window.location.pathname.substring(1,window.location.pathname.substring(1).indexOf("/")+1) + "/userfiles"
//var ValFld = window.location.href.substring(0, window.location.href.indexOf(window.location.pathname.substring(window.location.pathname.indexOf("(")-1)));
        var ValFld = window.location.href.substring(0, window.location.href.indexOf(window.location.pathname.substring(window.location.pathname.indexOf("(")-1)));

    for(var k=0;k<DataArr.length;k++)
    {
        DataArr[k] = DataArr[k].replace(/replaceh="1"/gi,'height=\"0\"')
        DataArr[k] = DataArr[k].replace(/replaceh="1"/gi,'width=\"0\"')
        DataArr[k] = DataArr[k].replace( /<TR ([^>]*)height="0"*>([\s\S]*?)<\/TR>/gi,"<\!--\[if \!supportMisalignedColumns\]><tr height=0>$1 <\/tr><\!\[endif\]-->") ;
        DataArr[k] = DataArr[k].replace( /<TD ([^>]*)width="0"([^>]*)>([\s\S]*?)<\/TD>/gi,"<\!\--[if \!supportMisalignedRows\]><td $1 $2 width=0> <\/td><\!\[endif\]-->") ;
        DataArr[k] = DataArr[k].replace( /<SPAN ([^>]*) calfld="([^>"]*)"*>([\s\S]*?)<\/SPAN>/gi,"<span style='font-size:9.0pt;font-family:\"Arial\",\"sans-serif\"'>$3</span>");
        DataArr[k] = DataArr[k].replace( /<H1(\w[^>]*) style="([^\"]*)"([^>]*)/gi, "<H1 $3" ) ;
        DataArr[k] = DataArr[k].replace( /<H2(\w[^>]*) style="([^\"]*)"([^>]*)/gi, "<H2 $3" ) ;
        DataArr[k] = DataArr[k].replace( /<H3(\w[^>]*) style="([^\"]*)"([^>]*)/gi, "<H3 $3" ) ;
        DataArr[k] = DataArr[k].replace( /<H4(\w[^>]*) style="([^\"]*)"([^>]*)/gi, "<H4 $3" ) ;
        DataArr[k] = DataArr[k].replace( /<H5(\w[^>]*) style="([^\"]*)"([^>]*)/gi, "<H5 $3" ) ;
        DataArr[k] = DataArr[k].replace( /<H6(\w[^>]*) style="([^\"]*)"([^>]*)/gi, "<H6 $3" ) ;
        DataArr[k] = DataArr[k].replace( /<a[^>]*>[\s\S]*?<\/a>/gi, '' ) ;
        DataArr[k] = DataArr[k].replace(/<BR[^<]*/gi, "");
        DataArr[k] = DataArr[k].replace( /<H([^>]*)/gi, '<H$1 class=\"H$1\"' ) ;
        DataArr[k] = DataArr[k].replace(/margin-left:([^;\"]*)/gi, "");
        
        DataArr[k] = DataArr[k].replace( /<DIV class=Section\d/gi, "<DIV" ) ;
        DataArr[k] = DataArr[k].replace( /<DIV><\/DIV>/gi, "" ) ;


        //DataArr[k] = DataArr[k].replace(/mso-rotate: 90/gi, "");
        
        //Setting the Image http path insted of relative path & Making shure that it's not a http path
        //DataArr[k] = DataArr[k].replace( /<(\w[^>]*) src=([^ http:\/\/]*)userfiles\s?([^>]*)/gi, "<$1 src=\""+ValFld+"$3") ;
        DataArr[k] = DataArr[k].replace( /<(\w[^>]*) src=([^http:]*)userfiles\s?([^>]*)/gi, "<$1 src=\""+ValFld+"\/userfiles"+"$3") ;
 }

    for(var k=0;k<DataArr.length;k++)
    {
        Values+=Fn_XMLTableRow("SubTpltData" + k,"<![CDATA[" + DataArr[k] + "]]>")
    }

    Values+= "</BindSet1>";
    var url="../eNoteBookEditor/GenTempHtmlFiles.aspx?RecordLog=1";
    if (window.XMLHttpRequest)
    { 
        reqXML = new XMLHttpRequest(); 
    }
    else if(window.ActiveXObject)
    {
        reqXML = new ActiveXObject("Microsoft.XMLHTTP"); 
    }
    if(reqXML)
    {
        reqXML.open("POST", url, true);
        reqXML.setRequestHeader("Content-Type", "text/xml");
        reqXML.send("<?xml version='1.0' encoding='UTF-8'?>" + Values);
        reqXML.onreadystatechange = function()
        {
            if(reqXML.readyState==4)
            {
                var s=reqXML.responseText;
                if(s !="")
                {
                    setTimeout(ReturnFunction + "('" + s + "')", 0);
                }
                reqXML =null;
            }
        }
    }
    else
    {
     alert("Your browser does not support Ajax");
    }
}

function HandleUrlValues(s)
{
    var RetValArr = new Array();
    RetValArr = s.split('#*#');

    var PHeaderUrl, PFooterUrl, LHeaderUrl, LFooterUrl, IPHeaderUrl, IPFooterUrl;

    IPFooterUrl = RetValArr[RetValArr.length-1];RetValArr.pop();
    LFooterUrl = RetValArr[RetValArr.length-1];RetValArr.pop();
    PFooterUrl = RetValArr[RetValArr.length-1];RetValArr.pop();
    IPHeaderUrl = RetValArr[RetValArr.length-1];RetValArr.pop();
    LHeaderUrl = RetValArr[RetValArr.length-1];RetValArr.pop();
    PHeaderUrl = RetValArr[RetValArr.length-1];RetValArr.pop();

    var CTUniqueID = "";
    var TFPageHeader = PFooterUrl;
    CTUniqueID = TFPageHeader.substring(0,TFPageHeader.lastIndexOf('/'));
    CTUniqueID =  CTUniqueID.substring(CTUniqueID.lastIndexOf('/')+1);

    var TemplateUrl = TFPageHeader.substring(0,TFPageHeader.lastIndexOf('/'));
    TemplateUrl = TemplateUrl.substring(0,TemplateUrl.lastIndexOf('/'));
    TemplateUrl = TemplateUrl + "/" + "SampleTemplate.dot";
    
    PrintPreviewMaster(__PrintPreType,"url",RetValArr,__OrientationArray,TemplateUrl,PHeaderUrl,LHeaderUrl,PFooterUrl,LFooterUrl,IPHeaderUrl,IPFooterUrl,__HeaderReqArray,__FooterReqArray,__SectionDesArr,CTUniqueID,__PrintType,__PrintRange)
}

function Fn_XMLTableRow(ColName,ColValue,TableName)
{
    TableName = TableName ? TableName : "DataTable"
    return "<" + TableName + "><ColumnName>" + ColName +"</ColumnName><ColumnValue>" + ColValue +"</ColumnValue></" + TableName + ">";
}
