<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WordFormatReport.aspx.vb"
    Inherits="Dossier.WordFormatReport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD  HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>Issue Report</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">

    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="vbscript" src="../JScript/MsWordScript.vbs"></script>

<style type ="text/css" >
/*
.InputFieldCss,.IFieldPreCss,.IFieldIssCss,.IFieldExeCss,.IFieldClsCss,.WorkIssuenceFieldCss,.WorkFlowFieldCss,.PlanFieldCss
{
	color :Black ;
	display: inline;
	font-size :12px;
	font-weight:normal;
	font-family :Microsoft Sans Serif,Arial;
	position: absolute;
	line-height: normal;
	letter-spacing: normal;
	overflow: hidden; 
    text-align: justify;
	text-indent: 0pt;
}*/
.InputFieldCss,.IFieldPreCss,.IFieldIssCss,.IFieldExeCss,.IFieldClsCss,.WorkIssuenceFieldCss,.WorkFlowFieldCss,.PlanFieldCss
{color:Blue;display:inline;font-size:11px;font-weight:normal;text-align:left;font-family:Verdana;font-style:oblique;text-indent: 0pt;
}

.MsoTableGrid
{
    mso-style-name:"Table Grid";
    mso-tstyle-rowband-size:0;
    mso-tstyle-colband-size:0;
    mso-style-priority:59;
    mso-style-unhide:no;
    border:solid windowtext 1.0pt;
    mso-border-alt:solid windowtext .5pt;
    mso-padding-alt:0in 5.4pt 0in 5.4pt;
    mso-border-insideh:.5pt solid windowtext;
    mso-border-insidev:.5pt solid windowtext;
    mso-para-margin:0in;
    mso-para-margin-bottom:.0001pt;
    mso-pagination:widow-orphan;
    font-size:11.0pt;
    font-family:"Calibri","sans-serif";
    mso-ascii-font-family:Calibri;
    mso-ascii-theme-font:minor-latin;
    mso-hansi-font-family:Calibri;
    mso-hansi-theme-font:minor-latin;
}

</style>
 
<script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'


    function AssignFieldsvalues()
    { 
    
        var TempIdLst =document.getElementById("TempIdTxt").value
        var TempTypeLst=document.getElementById("TempTypeTxt").value
         var TempIdLst1 =document.getElementById("TempTxt").value 
     
         TempIdLst=TempIdLst.substring(1)
        TempIdLst1=TempIdLst1.substring(1)
        
         
        if(TempIdLst  !="")
        {
            
            var TempIdArr=new Array()
            var TemFldIdArr=new Array()
            var TempIdArr1=new Array()
            
            var BodyFldIdArr=new Array()
            var BodyFldValArr=new Array()
                                    
            var TpltUniqueIdTxt
            var TemFldIdLst
            var BodyFldIdLst
            var BodyFldValLst

            TempIdArr=TempIdLst.split(",");
            TempTypeArr=TempTypeLst.split(",");
             TempIdArr1=TempIdLst1.split(",");
                                    
            for(var TempId=0;TempId<TempIdArr.length;TempId++)
            {
               if(TempIdArr[TempId]!="0")
               {
                   TemFldIdArr=(document.getElementById("TemFldIdLst_"+TempIdArr[TempId] + "_" + TempIdArr1[TempId]).value).split("#*#");
                   BodyFldIdArr=(document.getElementById("BodyFldIdLst_"+TempIdArr[TempId]+ "_" + TempIdArr1[TempId]).value).split(",");
                   BodyFldValArr=(document.getElementById("BodyFldValLst_"+TempIdArr[TempId]+ "_" + TempIdArr1[TempId]).value).split("$$$");
                   TpltUniqueIdTxt=(document.getElementById("TpltUniqueId_"+TempIdArr[TempId]+ "_" + TempIdArr1[TempId]).value)
                   
                   if(document.all(TpltUniqueIdTxt + "_ActPlan") != null)
                   {
                     _ReadActionPlan("<%=Request.QueryString("IsuLogID")%>",TpltUniqueIdTxt + "_ActPlan")
                   }
                  
                        for(var k=0;k<BodyFldIdArr.length;k++)    
                            {
                              
                              //  if( (BodyFldIdArr[k]== TpltUniqueIdTxt + "_ISU_FLD_23"))  || (BodyFldIdArr[k]== TpltUniqueIdTxt + "_ISU_FLD_23")
                                var obj = document.all(BodyFldIdArr[k])
                                if (obj!=null && BodyFldValArr[k]!=""){
                                  BodyFldValArr[k]=BodyFldValArr[k].replace("#*#","\n")                                
                                 if(obj.length)
                                    {
                                      
                                        for(var s=0;s<obj.length;s++)
                                        {
                                          
                                          obj[s].inneHTML=BodyFldValArr[k]
                                        }
                                    }
                                    else
                                    {
                                       obj.innerText=BodyFldValArr[k]
                                    }       
                                }
                            
                            }
                     }
        
            }//For Wit
       }     ///Main IF
    }
    
    function AssignWflowFieldsvalues()
    {   
        var TempIdLst =document.getElementById("TempIdTxt").value
        var TempCntLst=document.getElementById("TempStatusTxt").value
        
        TempIdLst=TempIdLst.substring(1)
        TempCntLst=TempCntLst.substring(1)
        
        if(TempIdLst  !="")
        {
           
            var FldIdArr=new Array()
            var FldValueArr=new Array()
            var TempIdArr=new Array()
          
            TempIdArr=TempIdLst.split(",");

               for(var TempId=0;TempId<TempIdArr.length;TempId++)
                {
                 if(TempIdArr[TempId]!="0")
                   {
                     FldIdArr=(document.getElementById("WorkFlwFldId_"+TempIdArr[TempId]).value).split(",");
                     FldValueArr=(document.getElementById("WorkFlwFldVal_"+TempIdArr[TempId]).value).split(",");
               
                     
                        for(var k=0;k<FldIdArr.length;k++)    
                            {
                                var obj = document.all(FldIdArr[k])
                                if (obj!=null && FldValueArr[k]!=""){
                                 if(obj.length)
                                    {
                                        for(var s=0;s<obj.length;s++)
                                        {
                                            obj[s].inneHTML=FldValueArr[k]
                                        }
                                    }
                                    else
                                    {
                                        obj.innerText=FldValueArr[k]
                                    }       
                                }
                            }
                    }
                   
                }//For Wit
       }     ///M
        
    }
 
    
    
    function SetTemplateDisplay()
    {
    return;
      var contrlLst =new Array()
      contrlLst=document.getElementsByTagName('span')
      
      for(var CtrlCnt=0;CtrlCnt<contrlLst.length;CtrlCnt++)
      {
        if(contrlLst[CtrlCnt].calfld != null) 
        {
          contrlLst[CtrlCnt].outerHTML=contrlLst[CtrlCnt].innerHTML;
        }
      }
    }
    
    
  
	//-->
</script>
    
<script language=javascript>
    
     
      function _ReadActionPlan(IsuLogId,DivObjId)
    {
        var xmlHttp;
        try 
        {
            //FF, Opera, Safari, Chrome, IE7+
            xmlHttp = new XMLHttpRequest();  
        }
        catch(e)
        {    
            try 
            {      
                //IE6+
                xmlHttp  = new ActiveXObject("Microsoft.XMLHTTP");    
            }
            catch(e)
            {
                try
                {
                    //IE5+
                    xmlHttp  = new ActiveXObject("Msxml2.XMLHTTP");
                }
                catch(e)
                {
                    xmlHttp  = null;
                }
            }
        }  

        if (xmlHttp!=null)
        {
            xmlHttp.onreadystatechange=function()
            {
                if(xmlHttp.readyState==4)
                {
                
                var DivObj = document.getElementById(DivObjId)
                    var DispTbl = xmlHttp.responseText;
                    DispTbl = DispTbl.replace( /html/gi, 'div' );
                    DispTbl = DispTbl.replace( /<HEAD>([\s\S]*?)<\/HEAD>/gi, '' );
                    DispTbl = DispTbl.replace( /<body([\s\S]*?)>([\s\S]*?)<\/body>/gi, '$2' );
                    DispTbl = DispTbl.replace( /<form([\s\S]*?)>([\s\S]*?)<\/form>/gi, '$2' );
                    DispTbl = DispTbl.replace( /<input([\s\S]*?)\/>/gi, '' );
                    //DivObj.outerHTML = DispTbl;
                    DivObj.innerHTML = DispTbl;
//                    if(DispRecFields.length >0)
//                    {
//                       setTimeout("LoadProcessDynamicData()",20);
//                    }
//                    else
//                    {
//                        var DataArr = new Array()
//                        DataArr.push(document.getElementById("DataTd").innerHTML) 
//                        DataArr.push(document.getElementById("HeaderTd").innerHTML) 
//                        DataArr.push(document.getElementById("FooterTd").innerHTML) 
//                        CreatePHtmlFiles(DataArr,"HandleProcessData");
////                    }
                }
            }
            var url="";
            var IsDummy=0;
            url="ActionPlanTable.aspx?IsuLogId="+IsuLogId
            if(url != "")
            {
                xmlHttp.open("GET",url,false);
                xmlHttp.send(null);
            }
            else
            {
                var DataArr = new Array()
                DataArr.push(document.getElementById("DataTd").innerHTML) 
                DataArr.push(document.getElementById("HeaderTd").innerHTML) 
                DataArr.push(document.getElementById("FooterTd").innerHTML) 
                CreatePHtmlFiles(DataArr,"HandleProcessData");
            }
        }
    }
    
    </script>

<script language="javascript">
    
    
    function Fn_GetE(EleId,ParentObject)
	{
	    ParentObject = ParentObject? ParentObject : document;
	    return ParentObject.all(EleId);
	}
	
//      function TpltPrintPre(Type)
//    {
//        if(IsMSWordInstalled() == false)
//        {
//            alert("MS Word Not Installed")
//            return
//        }
//        		
//		//Header and Footer
//        var k=0
//        var Values ='<BindSet1>';
//        
//          var TempIdLst =document.getElementById("TempIdTxt").value
//          TempIdLst=TempIdLst.substring(1)
//          var TempIdArr=new Array()
//          TempIdArr=TempIdLst.split(",");
//          
//           for(var TempId=0;TempId<TempIdArr.length;TempId++)
//            {
//                Values+= Fn_XMLTableRow("TemplateData" + k,"<![CDATA[" +  WordFormatCorrections(Fn_GetE("Body_"+TempIdArr[TempId]).innerHTML) + "]]>")     
//            }
//            
//        Values+= Fn_XMLTableRow("TemplateData" + k + 1,"<![CDATA[" +WordFormatCorrections(Fn_GetE("Header").innerHTML) + "]]>")
//        Values+= Fn_XMLTableRow("TemplateData" + (k + 2),"<![CDATA[" + WordFormatCorrections(Fn_GetE("Footer").innerHTML) + "]]>")

//        Values+= "</BindSet1>";
//        
//        
//        var url="../IssueLogin/HtmlExport.aspx"
//        
//        if (window.XMLHttpRequest)
//        { 
//          reqXML = new XMLHttpRequest(); 
//        }
//        else if(window.ActiveXObject)
//        { 
//          reqXML = new ActiveXObject("Microsoft.XMLHTTP"); 
//        }

//        if(reqXML)
//        {
//            reqXML.open("POST", url, true);
//            reqXML.setRequestHeader("Content-Type", "text/xml");
//            reqXML.send("<?xml version='1.0' encoding='UTF-8'?>" + Values);
//            reqXML.onreadystatechange = function()
//            {
//                if(reqXML.readyState==4)
//                {
//                    var s=reqXML.responseText
//                    if(s !="")
//                    {
//                        var SplitVal = new Array()
//                        SplitVal = s.split("@###@")
//                        var FileNamesList = new Array()
//                        FileNamesList = SplitVal[0].split("#*#");
//                        var Vis =(Type == "Print") ? false : true;
//                        var FormatFile=SplitVal[1]+"CiprofloxacinTempalte.dot"
//                        openWordDocument("Caliber",Vis,FormatFile);
//                        for(var k=0;k<FileNamesList.length-2 ;k++)
//                        {
//                            var HeaderFile = (k==0 ? SplitVal[1]+FileNamesList[FileNamesList.length-2]+".htm" : "")
//                            var FooterFile = (k==0 ? SplitVal[1]+FileNamesList[FileNamesList.length-1]+".htm" : "")
//                            InsertHtmlFiles(SplitVal[1]+FileNamesList[k]+".htm",HeaderFile,FooterFile,1)
//                        }
//                        if(Type == "Print")
//                        {
//                            PrintAndClose()
//                        }
//                        else
//                        {
//                            PreviewDocument()
//                        }
//                    }
//                    reqXML =null;
//                }
//            }
//        }
//    }
//    function Fn_XMLTableRow(ColName,ColValue)
//    {
//        var Values = "<DataTable>";
//        Values+= "<ColumnName>" + ColName +"</ColumnName>";
//        Values+= "<ColumnValue>" + ColValue +"</ColumnValue>";
//        Values+= "</DataTable>";
//        return Values;
//    }



    function WordFormatCorrections(WordContent)
    {
    
        WordContent = WordContent.replace(/<(\w[^>]*) src="\s*([^/userfiles]*)([^>]*)/gi, "<$1 src=\""+window.location.href.substring(0, window.location.href.indexOf(window.location.pathname))+"$3") ;
        WordContent = WordContent.replace( /<SPAN ([^>]*) fieldtype="([^>"]*)"*>([\s\S]*?)<\/SPAN>/gi,"<span style='color:\"Blue\";display:\"inline\";font-size:\"11px\";font-weight:\"normal\";text-align:\"left\";font-family:\"Verdana\";font-style:\"oblique\";'>$3</span>");
        WordContent = WordContent.replace( /<SPAN ([^>]*) calfld="([^>"]*)"*>([\s\S]*?)<\/SPAN>/gi,"<span style='color:\"Blue\";display:\"inline\";font-size:\"11px\";font-weight:\"normal\";text-align:\"left\";font-family:\"Verdana\";font-style:\"oblique\";'>$3</span>");
        WordContent = WordContent.replace( /<SPAN ([^>]*) workflowfld="([^>"]*)"*>([\s\S]*?)<\/SPAN>/gi,"<span style='color:\"Blue\";display:\"inline\";font-size:\"11px\";font-weight:\"normal\";text-align:\"left\";font-family:\"Verdana\";font-style:\"oblique\";'>$3</span>");

        return WordContent;
        var ValFld = window.location.href.substring(0, window.location.href.indexOf(window.location.pathname)+1) + window.location.pathname.substring(1,window.location.pathname.substring(1).indexOf("/")+1) + "/userfiles"

        // RetVal = RetVal.replace( /<STYLE[^>]*>[\s\S]*?<\/STYLE[^>]*>/gi, '' ) ;
	    // RetVal = RetVal.replace( /<(?:META|LINK)[^>]*>\s*/gi, '' ) ;
        //	   
        //	     WordContent = WordContent.replace(/<(\w[^>]*)margin-left:([^;]*)([^>]*)/gi, "<$1 $3") ;
        //	     font-family:\"Arial\",\"sans-serif\"
        //        WordContent = WordContent.replace( /<TR ([^>]*)height="0"*>([\s\S]*?)<\/TR>/gi,"<\!--\[if \!supportMisalignedColumns\]><tr height=0>$1 <\/tr><\!\[endif\]-->") ;
        //        WordContent = WordContent.replace( /<TD ([^>]*)width="0"([^>]*)>([\s\S]*?)<\/TD>/gi,"<\!\--[if \!supportMisalignedRows\]><td $1 $2 width=0> <\/td><\!\[endif\]-->") ;
        //        WordContent = WordContent.replace( /<SPAN ([^>]*) calfld="([^>"]*)"*>([\s\S]*?)<\/SPAN>/gi,"<span style='font-size:9.0pt;font-family:\"Arial\",\"sans-serif\"'>$3</span>");
        //        WordContent = WordContent.replace( /<H1(\w[^>]*) style="([^\"]*)"([^>]*)/gi, "<H1 $3" ) ;
        //        WordContent = WordContent.replace( /<H2(\w[^>]*) style="([^\"]*)"([^>]*)/gi, "<H2 $3" ) ;
        //        WordContent = WordContent.replace( /<H3(\w[^>]*) style="([^\"]*)"([^>]*)/gi, "<H3 $3" ) ;
        //        WordContent = WordContent.replace( /<H4(\w[^>]*) style="([^\"]*)"([^>]*)/gi, "<H4 $3" ) ;
        //        WordContent = WordContent.replace( /<H5(\w[^>]*) style="([^\"]*)"([^>]*)/gi, "<H5 $3" ) ;
        //        WordContent = WordContent.replace( /<H6(\w[^>]*) style="([^\"]*)"([^>]*)/gi, "<H6 $3" ) ;
        //        WordContent = WordContent.replace( /<a[^>]*>[\s\S]*?<\/a>/gi, '' ) ;
        //        WordContent = WordContent.replace(/<BR[^<]*/gi, "");
        //        WordContent = WordContent.replace( /<H([^>]*)/gi, '<H$1 class=\"H$1\"' ) ;
        //        WordContent = WordContent.replace(/margin-left:([^;\"]*)/gi, "");
        //        
        //        WordContent = WordContent.replace( /<DIV class=Section\d/gi, "<DIV" ) ;
        //        WordContent = WordContent.replace( /<DIV><\/DIV>/gi, "" ) ;

        WordContent = WordContent.replace( /<(\w[^>]*) src=([^http:\/\/]*)userfiles\s?([^>]*)/gi, "<$1 src=\""+ValFld+"$3") ;

        return WordContent;

    }
    
    
    function PrintTemplate()
    {
       if(document.getElementById("PrinterSelList").value == "")
        {
            alert("- Select Printer!");
            return false;
        }
      try
        {
            var ActiveXObjeIns = document.CaliberOfficeAX
            if(ActiveXObjeIns.IsWordInstalled()==false)
            {
                //alert("MS Word Not Installed!")
                return false;
            }
        }
        catch (e)
        {
            alert("ActiveX Component Not Installed!");
            //HideMask();
            return false;
        }
        GenerateLocalHTMLFiles()
    }
    function GenerateLocalHTMLFiles()
    {
        var TempIdLst =document.getElementById("TempIdTxt").value
        var TempIdLst1 =document.getElementById("TempTxt").value
        
        TempIdLst=TempIdLst.substring(1)
        TempIdLst1=TempIdLst1.substring(1)
        
        var TempIdArr=new Array()
        var TempIdArr1=new Array()
        var FilePathArr=new Array()
        
        TempIdArr=TempIdLst.split(",");
        TempIdArr1=TempIdLst1.split(",");
        
        var FilePath = "" 
        var ActiveXObjeIns = document.CaliberOfficeAX;
        
        var Content = ""
        
        var DataContent = ""
        
        
        for(var TempId=0;TempId<TempIdArr.length;TempId++)
        {
          if(TempIdArr[TempId]!="0" && <%=ClstempId%> != TempIdArr[TempId] )
            {
            Content = Fn_GetE("Body_"+TempIdArr[TempId] + "_" + TempIdArr1[TempId]).innerHTML;
            Content = Content == "" ? " " : Content;
            DataContent += Content + "<p class=MsoNormal><o:p></o:p></p>";
                //FilePath = ActiveXObjeIns.GenerateHtmlFile(Content,TempId)
              //  FilePathArr.push(FilePath)
             }
        }
        
        if (<%=ActPlnStatus%> !=0)
        {
          var PlanCout=<%=PlanCout%>
          for(var i=0;i<PlanCout;i++)
          {
            Content = Fn_GetE("PlanBody_"+<%=ClstempId%> + "_" +  i).innerHTML;
            Content = Content == "" ? " " : Content;
            DataContent += Content //+ "<p class=MsoNormal><o:p></o:p></p>";
          }  
        
        }
        Content = Fn_GetE("Body_"+<%=ClstempId%> + "_" +  <%=Request.QueryString("IsuLogID")%>).innerHTML;
        Content = Content == "" ? " " : Content;
        DataContent += Content
            
        
        DataContent=WordFormatCorrections(DataContent)
        
        var HeaderFilePath = ActiveXObjeIns.GenerateHtmlFile(Content,"H")
        
        FilePath = ActiveXObjeIns.GenerateHtmlFile(DataContent,TempId)
        FilePathArr.push(FilePath)

        Content = Fn_GetE("Header").innerHTML;
        Content = Content == "" ? " " : Content;
        Content=WordFormatCorrections(Content)
        var HeaderFilePath = ActiveXObjeIns.GenerateHtmlFile(Content,"H")

        Content = Fn_GetE("Footer").innerHTML;
        Content = Content == "" ? " " : Content;
        Content=WordFormatCorrections(Content)
        var FooterFilePath = ActiveXObjeIns.GenerateHtmlFile(Content,"F")

        var ContentUrl = FilePathArr.join("#*#");
                
        //var TemplateUrl = "http://" + this.location.hostname +"/" + this.location.pathname.substring(1).substring(0,this.location.pathname.substring(1).indexOf("/")) + "/HtmlFiles/CiprofloxacinTempalte.dot";
         var TemplateUrl = "http://" + this.location.hostname +"/" + this.location.pathname.substring(1).substring(0,this.location.pathname.substring(1).indexOf("/")) + "/HtmlFiles/Template.dot";
        //ActiveXObjeIns.CreateWordInstance(false);
        ActiveXObjeIns.OpenWordDocument(TemplateUrl,false);
        for(var k=0;k<FilePathArr.length;k++)
        {
            var SectionOrientasion = "<%=SectionOrientasion%>"
            var newSection = false;//(k==0) ? false : true;
            ActiveXObjeIns.InsertFileWithSection(FilePathArr[k],HeaderFilePath,FooterFilePath,newSection,SectionOrientasion);
        } 
        var PrinterName = document.getElementById("PrinterSelList").value;
        ActiveXObjeIns.RemoveEmptyPages();
        ActiveXObjeIns.PrintDocument(0,"",PrinterName);
        ActiveXObjeIns.CloseDocument();
        
        FilePathArr.push(HeaderFilePath) ;
        FilePathArr.push(FooterFilePath) ;
        ActiveXObjeIns.DeleteHTMLFiles(FilePathArr.join("#*#"));
    }
    
</script>
    
</head>
<body language="javascript" onload="return window_onload()">
    <form id="Form1" method="post" runat="server">
        <object id="CaliberOfficeAX" name="CaliberOfficeAX" classid="clsid:EF51DBFA-53A5-43a6-9362-50C9B5D24D81"
            viewastext codebase="CaliberOfficeActiveXComponent.cab">
        </object>
        
        
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
                            <asp:TableCell CssClass="HideRow" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2" Style="background-color: White">
                                <asp:Panel ID="HeaderDiv" runat="server" Width="100%" HorizontalAlign="Left" Style="background-color: White"
                                    EnableViewState="False">
                                </asp:Panel>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TableRow6" runat="server">
                            <asp:TableCell ID="EditorTd" runat="server" CssClass="MsoTableGrid" ColumnSpan="2"
                                Width="100%">
                                <asp:Table ID="TemplateTab" runat="server" CssClass="SubTable" CellPadding="0" Width="100%"
                                    CellSpacing="0" BackColor="white" BorderColor="white" Style='border-right: medium none;
                                    border-top: medium none; border-left: 0px; width: 100%; border-bottom: medium none;
                                    border-collapse: collapse; background-color: white; width: 100%;'>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2" Style="background-color: White">
                                <asp:Panel ID="FooterDiv" runat="server" Width="100%" HorizontalAlign="Left" EnableViewState="False"
                                    Style="background-color: White">
                                </asp:Panel>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2" Style="background-color: White">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="IsuLogTable">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="ClserTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="ClserTrTab">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow >
                          <asp:TableCell ID="BatchTD" runat=server  >
                            <asp:Literal id="SampleLtrl" runat=server ></asp:Literal>
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
                    <asp:Table runat="server"  Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table3" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell Width="33%" CssClass="HideRow">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Back"
                                    Width="70"></asp:Button>
                                
                            </asp:TableCell>
                            
                            <asp:TableCell  HorizontalAlign=Left Width="33%" >
                              <input type="button" id="BackBtn" value="Back" accesskey="C" class="HideRow" onmouseout="this.className='ButexCls'"
                                        onmouseover="this.className='ButexOCls'" onclick="fnBack()" style="width:70;"/>
                                 <asp:Button ID="ActPlnRptBtn" runat="server" AccessKey="C" CssClass="ButexCls" onMouseOut="this.className='ButexCls'"
                                        onMouseOver="this.className='ButexOCls'" Text="Action Plan Report" />
                                 <asp:Label ID="ActionPlanMsg" runat=server  Font-Size="Medium"  ></asp:Label>
                               
                            </asp:TableCell>
                            
                            
                            
                            <asp:TableCell HorizontalAlign="Right" Width="33%">
                                 <span id="PrinterOptSpan" >
                                    <select id="PrinterSelList" style="width:150px">
                                        <option value=""> [ Select ] </option>
                                    </select>
                                     <input id="Button1" type="button" value="Print" onmouseover="this.className='ButOCls'"
                                    class='ButCls' accesskey="C" onmouseout="this.className='ButCls'" onclick="PrintTemplate()"/>
                            </span>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="IssuedWorksIdLstTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IssuedWorksAulIdLstTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="PlanIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IsuLogIDTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IsuCodeTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TypeTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="PlanCodeTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TempIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TempTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TempStatusTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TempTypeTxt" runat="server"></asp:TextBox>
                    
                    <input type=text id="HeaderTxt" class="HideRow" />
                    <input type=text id="BodyTxt" class="HideRow" />
                    <input type=text id="FooterTxt" class="HideRow" />
                    
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="TempValTab">
                        
                        
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>


<script language=javascript>

function ExternalPdfCreation()
    {
        var TempIdLst =document.getElementById("TempIdTxt").value
        var TempIdLst1 =document.getElementById("TempTxt").value
        
        TempIdLst=TempIdLst.substring(1)
        TempIdLst1=TempIdLst1.substring(1)
        
        var TempIdArr=new Array()
        var TempIdArr1=new Array()
        var FilePathArr=new Array()
        
        TempIdArr=TempIdLst.split(",");
        TempIdArr1=TempIdLst1.split(",");
        
        var FilePath = "" 
        var Content = ""
        var DataContent = ""
        
        for(var TempId=0;TempId<TempIdArr.length;TempId++)
        {
          if(TempIdArr[TempId]!="0" && <%=ClstempId%> != TempIdArr[TempId] )
            {
                Content = Fn_GetE("Body_"+TempIdArr[TempId] + "_" + TempIdArr1[TempId]).innerHTML;
                Content = Content == "" ? " " : Content;
                DataContent += Content + "<p class=MsoNormal><o:p></o:p></p>";
             }
        }
        
        if (<%=ActPlnStatus%> !=0)
        {
          var PlanCout=<%=PlanCout%>
          for(var i=0;i<PlanCout;i++)
          {
            Content = Fn_GetE("PlanBody_"+<%=ClstempId%> + "_" +  i).innerHTML;
            Content = Content == "" ? " " : Content;
            DataContent += Content //+ "<p class=MsoNormal><o:p></o:p></p>";
          }  
        
        }
        Content = Fn_GetE("Body_"+<%=ClstempId%> + "_" +  <%=Request.QueryString("IsuLogID")%>).innerHTML;
        Content = Content == "" ? " " : Content;
        DataContent += Content
        
        DataContent=WordFormatCorrections(DataContent)
        document.getElementById("BodyTxt").value=DataContent
        
        Content = Fn_GetE("Header").innerHTML;
        Content = Content == "" ? " " : Content;
        Content=WordFormatCorrections(Content)
        document.getElementById("HeaderTxt").value=Content

        Content = Fn_GetE("Footer").innerHTML;
        Content = Content == "" ? " " : Content;
        Content=WordFormatCorrections(Content)
        document.getElementById("FooterTxt").value=Content
        
    }
    
    
</script>


<script language="javascript">
    function LoadPrinters()
    {
        try
        {
            var ActiveXObjeIns = document.CaliberOfficeAX
            if(ActiveXObjeIns.IsWordInstalled()==true)
            {
                var PrintestList = new Array();
                PrintestList = ActiveXObjeIns.ReadPrinters().split("#*#");
                var PrinterSelObj = document.getElementById("PrinterSelList");
                for (var k =0;k<PrintestList.length;k++)
                {
                    var oOption = document.createElement("OPTION");
                    oOption.text= PrintestList[k];
                    oOption.value= PrintestList[k];
                    PrinterSelObj.add(oOption)
                }
            }
        }
        catch (e)
        {
            alert("ActiveX Component Not Installed!");
            return false;
        }
    }

    var ActiveXObjeIns = document.CaliberOfficeAX

    LoadPrinters()
   
</script>

<script language="javascript">
 //setTimeout ("SetTemplateDisplay()",250)
// setTimeout ("AssignWflowFieldsvalues()",300)
 //setTimeout ("AssignFieldsvalues()",200)
function window_onload() {
    var PreviewFlg='<%=Request.QueryString("PreviewFlg")%>'
    if(PreviewFlg==1)
    {
        document.getElementById("BackBtn").className="ButCls"
        document.getElementById("ActPlnRptBtn").className="HideRow"
        
    }
}
function fnBack()
{
      window.history.back(-1)
}
</script>

</html>
