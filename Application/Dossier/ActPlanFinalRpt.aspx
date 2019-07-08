<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ActPlanFinalRpt.aspx.vb" Inherits="Dossier.ActPlanFinalRpt" %>

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

</head>
<body>
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
                    
                     
                    <asp:TextBox ID="ActPlanIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ActPlanCntTXt" runat="server"></asp:TextBox>
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="TempValTab">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
        <asp:Panel class="HideRow" id='PrnDiv' runat="server" style="display:none;">

        <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
            Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Back"
            Width="70"></asp:Button>
            <input type="button" id="backBtn" runat="server" value="Back" visible="false" onMouseOver="this.className='ButOCls'"
            Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Back"
            Width="70" onclick='javascript:window.history.back();' />

         <span id="PrinterOptSpan" >
            <select id="PrinterSelList" style="width:150px">
                <option value=""> [ Select ] </option>
            </select>
             <input id="Button1" type="button" value="Print" onmouseover="this.className='ButOCls'"
            class='ButCls' accesskey="C" onmouseout="this.className='ButCls'" onclick="PrintTemplate()"/>
        </span>
        </asp:Panel>
                         
    </form>
</body>

<script language="javascript">
    
    function Fn_GetE(EleId,ParentObject)
	{
	    ParentObject = ParentObject? ParentObject : document;
	    return ParentObject.all(EleId);
	}
	
    function WordFormatCorrections(WordContent)
    {
    
        WordContent = WordContent.replace(/<(\w[^>]*) src="\s*([^/userfiles]*)([^>]*)/gi, "<$1 src=\""+window.location.href.substring(0, window.location.href.indexOf(window.location.pathname))+"$3") ;
        WordContent = WordContent.replace( /<SPAN ([^>]*) fieldtype="([^>"]*)"*>([\s\S]*?)<\/SPAN>/gi,"<span style='color:\"Blue\";display:\"inline\";font-size:\"11px\";font-weight:\"normal\";text-align:\"left\";font-family:\"Verdana\";font-style:\"oblique\";'>$3</span>");
        WordContent = WordContent.replace( /<SPAN ([^>]*) calfld="([^>"]*)"*>([\s\S]*?)<\/SPAN>/gi,"<span style='color:\"Blue\";display:\"inline\";font-size:\"11px\";font-weight:\"normal\";text-align:\"left\";font-family:\"Verdana\";font-style:\"oblique\";'>$3</span>");
        WordContent = WordContent.replace( /<SPAN ([^>]*) workflowfld="([^>"]*)"*>([\s\S]*?)<\/SPAN>/gi,"<span style='color:\"Blue\";display:\"inline\";font-size:\"11px\";font-weight:\"normal\";text-align:\"left\";font-family:\"Verdana\";font-style:\"oblique\";'>$3</span>");

        return WordContent;
        var ValFld = window.location.href.substring(0, window.location.href.indexOf(window.location.pathname)+1) + window.location.pathname.substring(1,window.location.pathname.substring(1).indexOf("/")+1) + "/userfiles"
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
    
        var ActPlanIdlst=document.getElementById("ActPlanIdTxt").value
        var ActPlanCountlst=document.getElementById("ActPlanCntTXt").value
       
        if (ActPlanIdlst != "" )ActPlanIdlst=ActPlanIdlst.substring(3)
        if (ActPlanCountlst != "" )ActPlanCountlst=ActPlanCountlst.substring(1)
        
        if (ActPlanIdlst  !="")
        {
          
            var ActPlanIdArr=new Array()
            var ActPlanCountArr=new Array()
            
            ActPlanIdArr=ActPlanIdlst.split("#*#");
            ActPlanCountArr=ActPlanCountlst.split(",");
            
            var TempIdLst =document.getElementById("TempIdTxt").value
            var TempIdLst1 =document.getElementById("TempTxt").value
         
            if (TempIdLst != "" )TempIdLst=TempIdLst.substring(1)
            if (TempIdLst != "" )TempIdLst1=TempIdLst1.substring(1)
        
            var TempIdArr=new Array()
            var TempIdArr1=new Array()
            var FilePathArr=new Array()
            
            TempIdArr=TempIdLst.split(",");
            TempIdArr1=TempIdLst1.split(",");
            
            var FilePath = "" 
            var ActiveXObjeIns = document.CaliberOfficeAX;
            var Content = ""
            var DataContent = ""
            var TempCnt =0
            
            for(var Actplncnt=0;Actplncnt<ActPlanIdArr.length;Actplncnt++)            
            {
                Content = Fn_GetE("PlanBody_"+ ActPlanIdArr[Actplncnt] ).innerHTML;
                Content = Content == "" ? " " : Content;
                DataContent += Content + "<p class=MsoNormal><o:p></o:p></p>";
                
                if(ActPlanCountArr[Actplncnt] != "0")
                {
                  for(var TempId=TempCnt;TempId<ActPlanCountArr[Actplncnt];TempId++)
                    {
                      
                      if(TempIdArr[TempId]!="0"  )
                        {
                            Content = Fn_GetE("Body_" + TempIdArr[TempId] + "_" + TempIdArr1[TempId] ).innerHTML;
                            Content = Content == "" ? " " : Content;
                            DataContent += Content + "<p class=MsoNormal><o:p></o:p></p>";
                         }
                       TempCnt +=1
       
                    }
                }
            }

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
                    
            var TemplateUrl = "http://" + this.location.hostname +"/" + this.location.pathname.substring(1).substring(0,this.location.pathname.substring(1).indexOf("/")) + "/HtmlFiles/CiprofloxacinTempalte.dot";
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
        
    }
    
    
//    function GenerateLocalHTMLFiles()
//    {
//        var TempIdLst =document.getElementById("TempIdTxt").value
//        var TempWITLst =document.getElementById("TempTxt").value
//        
//        TempIdLst=TempIdLst.substring(3)
//        TempWITLst=TempWITLst.substring(3)
//        
//        var TempIdArr=new Array()
//        var TempWITArr=new Array()
//        var TempIdArr1=new Array()
//        var TempWITArr1=new Array()
//        
//        var FilePathArr=new Array()
//        
//        TempIdArr=TempIdLst.split("#*#");
//        TempWITArr=TempWITLst.split("#*#");
//        
//        
//        var FilePath = "" 
//        var ActiveXObjeIns = document.CaliberOfficeAX;
//        var Content = ""
//        var DataContent = ""
//        
//        Content = Fn_GetE("Header").innerHTML;
//        Content = Content == "" ? " " : Content;
//        Content=WordFormatCorrections(Content)
//        var HeaderFilePath = ActiveXObjeIns.GenerateHtmlFile(Content,"H")

//        Content = Fn_GetE("Footer").innerHTML;
//        Content = Content == "" ? " " : Content;
//        Content=WordFormatCorrections(Content)
//        var FooterFilePath = ActiveXObjeIns.GenerateHtmlFile(Content,"F")
//        
//              
//        //Load Action Plan Data
//        
//        if (<%=ActPlnStatus%> !=0)
//        {
//          var PlanCout=<%=PlanCout%>
//          
//          var WitCnt=0
//          for(var i=0;i<PlanCout;i++)
//          {
//            Content = Fn_GetE("PlanBody_"+"<%=Request.QueryString("IsuClsTempID")%>"+ "_" +  i).innerHTML;
//            Content = Content == "" ? " " : Content;
//            DataContent += Content + "<p class=MsoNormal><o:p></o:p></p>";
//            
//             TempIdArr1=TempIdArr[i].split(",");
//             TempWITArr1=TempWITArr[i].split(",");
//             
//            for(WitCnt=0;WitCnt <= TempIdArr1.length-1;WitCnt++)
//            {
//                //Content = Fn_GetE("Body_" + TempIdArr1[WitCnt] + "_" + TempWITArr1[WitCnt]).innerHTML;
//                Content = Content == "" ? " " : Content;
//                DataContent += Content + "<p class=MsoNormal><o:p></o:p></p>";
//            }
//          }  
//        }
//       
//        DataContent=WordFormatCorrections(DataContent)
//        
//        FilePath = ActiveXObjeIns.GenerateHtmlFile(DataContent,WitCnt)
//        FilePathArr.push(FilePath)

//        var ContentUrl = FilePathArr.join("#*#");
//                
//        var TemplateUrl = "http://" + this.location.hostname +"/" + this.location.pathname.substring(1).substring(0,this.location.pathname.substring(1).indexOf("/")) + "/HtmlFiles/CiprofloxacinTempalte.dot";
//        //ActiveXObjeIns.CreateWordInstance(false);
//        ActiveXObjeIns.OpenWordDocument(TemplateUrl,false);
//        for(var k=0;k<FilePathArr.length;k++)
//        {
//            var SectionOrientasion = "<%=SectionOrientasion%>"
//            var newSection = false;//(k==0) ? false : true;
//            ActiveXObjeIns.InsertFileWithSection(FilePathArr[k],HeaderFilePath,FooterFilePath,newSection,SectionOrientasion);
//        } 
//        var PrinterName = document.getElementById("PrinterSelList").value;
//        ActiveXObjeIns.RemoveEmptyPages();
//        ActiveXObjeIns.PrintDocument(0,"",PrinterName);
//        ActiveXObjeIns.CloseDocument();
//        
//        FilePathArr.push(HeaderFilePath) ;
//        FilePathArr.push(FooterFilePath) ;
//       // ActiveXObjeIns.DeleteHTMLFiles(FilePathArr.join("#*#"));
//    }
    
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

</html>