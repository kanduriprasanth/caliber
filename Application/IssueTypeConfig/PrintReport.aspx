<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PrintReport.aspx.vb" Inherits="IssueTypeConfig.PrintReport" %>
<%@ Register TagPrefix="uc3" TagName="ReportFooter" Src="../CaliberCommonCtrls/ReportFooter.ascx"  %>
<%@ Register TagPrefix="uc2" TagName="ReportHeader" Src="../CaliberCommonCtrls/ReportHeader.ascx"  %>
<%@ Register TagPrefix="uc1" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
<head id="Head1" runat="server">
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="vbscript" src="../JScript/MsWordScript.vbs"></script>

    <link rel="stylesheet" href="../eNoteBookEditor/editor/css/fck_editorarea.css">

    <script type="text/javascript" src="dhtml-suite-for-applications.js"></script>


<style >
.MainTD
{
Background-Color:white;font-family:Verdana,Arial;font-size:8pt;Padding-Left:1px;Padding-Top:1px;Padding-Bottom:1px; padding-right:1px;
	border-width :0px;
	border-color :black ;
	border-style :solid ;	
}
.SubTable{Background-color:#C4DCFB; border-width:1px;Background-Color:white; 
	border-width :1px;
	border-color :#C4DCFB ;
	border-style :solid ;	
 }
 .TdCss { border:solid black 1.0pt;mso-border-themecolor:text1;mso-border-themecolor:text1;padding:0in 5.4pt 0in 5.4pt; }
 
 table.MsoTableGrid
	{mso-style-name:"Table Grid";
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-priority:59;
	mso-style-unhide:no;
	border:solid black 1.0pt;
	mso-border-alt:solid black .5pt;
	mso-padding-alt:0in 5.4pt 0in 5.4pt;
	/*mso-border-insideh:.5pt solid black;
	mso-border-insidev:.5pt solid black;*/
	mso-para-margin:0in;
	mso-para-margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:10.0pt;
	font-family:"Calibri","sans-serif";}
</style>

<style>
.IFieldPreCss
{
	background-color :lightcyan;
	color :Black ;
	display :inline ;
	width :200px;
	height :20px;
	border-width :1px;
	border-color :Black ;
	border-style :solid ;	
	cursor: text;
	float: inherit ;
}
.DHTMLSuite_window{	/* The bar that is parent of the menu strip */
	background-color:#FFF;
	border:1px solid #8eb9f3;
	width:330px;
	height:200px;
	overflow:hidden;
	top:0px;
	left:0px;
	z-index:1000;
	
}

.DHTMLSuite_windowInnerDiv{	/* This div is the parent parent element of window elements such as tabs, content and status bar, i.e. the primary main parent element for a window */
	position:relative;
	background-color:#FFF;
	top:0px;
	left:0px;
	width:100%;
	height:100%;
	background-color:#C4DCFB;
}

.DHTMLSuite_windowTitleBar{
	background-image:url(Images/window_titlebar.png);
	background-repeat:repeat-x;
	height:17px;
	position:relative;	/* IMPORTANT */
}
.DHTMLSuite_windowTitleInTitleBar{	/* The title text in the title bar */
	padding:1px;
	font-size:11px;
}
.DHTMLSuite_windowButtonDiv{	/* Div for the buttons in the title bar */
	position:absolute;
	right:1px;
	top:1px;
	width:40px;
	cursor:default;
}

.DHTMLSuite_windowButtonDiv div{
	float:right;
	position:relative;
}
/* General button rules */
.DHTMLSuite_windowMinimizeButton,.DHTMLSuite_windowCloseButton,.DHTMLSuite_windowMaximizeButton{
	background-repeat:no-repeat;
	background-position:center center;
	padding:2px;
	width:11px;
	height:11px;

}

/* Close button */
.DHTMLSuite_windowCloseButton{
	background-image:url(Images/window-close.gif);
}
.DHTMLSuite_windowCloseButtonOver{
	cursor:default;
}

.DHTMLSuite_windowMinimizeButtonOver,.DHTMLSuite_windowMaximizeButtonOver,.DHTMLSuite_windowCloseButtonOver{
	padding:1px;
	border:1px solid #8eb9f3;
	background-color:#FFF;
}
	
/* Minimize button */
.DHTMLSuite_windowMinimizeButton{
	background-image:url(Images/window-minimize.gif);
}
.DHTMLSuite_windowMinimizeButtonOver{
	cursor:default;
}
/* Minimize button */
.DHTMLSuite_windowMaximizeButton{
	background-image:url(Images/window-maximize.gif);
}
DIV.DHTMLSuite_windowMaximizeButton.DHTMLSuite_windowMaximizeButtonOver{
	cursor:default;
}

/* CSS for the tab row */
.DHTMLSuite_windowTabRow{
	background-color:#C4DCFB;
	padding-top:1px;
	height:26px;
	border-top:1px solid #8eb9f3;
	padding-left:5px;
	position:relative;
	width:1900px;
	z-index:500;	/* IMPORTANT */
}
.DHTMLSuite_windowTabRow table{
	padding-top:3px;
}
.DHTMLSuite_windowTabRow td{
	text-overflow:ellipsis;
	white-space:nowrap;
	font-weight:bold;
}
.DHTMLSuite_windowTabRow td div{
	
}	
.DHTMLSuite_windowATab{
	float:left;	
	background-position:bottom right;
	background-repeat:no-repeat;
	height:23px;
	cursor:default;
	font-size:11px;
	line-height:26px;
	font-family:arial;
	overflow:hidden;
}

.DHTMLSuite_windowATabInnerDiv{
	background-repeat:no-repeat;
	background-position:bottom left;
	height:23px;
	position:relative;
	z-index:10000;
	padding-left:5px;
	margin-right:25px;
	padding-right:4px;
}

.DHTMLSuite_windowActiveTabCell{	/* Active tab - td tag */
	background-image:url('Images/tab-active-right.gif');	
	position:relative;
	bottom:-1px;
}

head:first-child+body .DHTMLSuite_windowActiveTabCell {	/* Transparent png for other browsers than IE6 */
	background-image:url('Images/tab-active-right.png');
}

.DHTMLSuite_windowInactiveTabCell{	/* Inactive tab, <td> tag */
	background-image:url('Images/tab-inactive-right.gif');
	position:relative;
}

head:first-child+body .DHTMLSuite_windowInactiveTabCell {	/* Transparent png for other browsers than IE6 */
	background-image:url('Images/tab-inactive-right.png');
}

            
            
.DHTMLSuite_windowActiveTabCellContent{	/* Active tab - inner div */
	background-image:url('Images/tab-active-left.png');
	height:21px; /* These three lines are added in order to make the text of active tab appear on line with text of inactive tabs */
	line-height:24px;	
	padding-bottom:2px;
}
.DHTMLSuite_windowInactiveTabCellContent{
	background-image:url('Images/tab-inactive-left.png');
}


.DHTMLSuite_windowContent{
	overflow:auto;
	background-color:#FFF;
	margin-left:2px;
	margin-right:2px;
	border:1px solid #8eb9f3;
	padding-bottom:1px;
	position:relative;
}

.DHTMLSuite_windowContent .DHTMLSuite_windowContentInner{	/* Div for each of the tab content divs */
	padding:1px;
}
/* Start css for window status bar */
.DHTMLSuite_windowStatusBar{
	height:14px;
	border:1px solid #8eb9f3;
	background-color:#C4DCFB;
	margin:2px;
	position:relative;
	overflow:hidden;
}
.DHTMLSuite_windowStatusBarText{	/* Text inside status bar */
	font-size:11px;
	line-height:13px;
	padding:1px;
}

.DHTMLSuite_windowResizeHandle{
	background-image:url('Images/resize-handle-bottom-right.gif');
	background-repeat:no-repeat;
	position:absolute;
	bottom:1px;
	right:1px;
	width:14px;
	height:14px;
}

.DHTMLSuite_windowIcon{	/* Icon div  in the title bar*/
	margin-left:2px;
	margin-top:2px;
}
/*
General CSS for the demos of DHTMLSuite
*/
body{
	font-family: Trebuchet MS, Lucida Sans Unicode, Arial, sans-serif;
	font-size:0.8em;
}

a{
	color:red;
	text-decoration:underline;
}

pre{
	color:red;
}
h2{
	font-size:1.2em;
	}
</style>

<script language="javascript">

   function Fn_GetE(EleId,ParentObject)
	{
	    ParentObject = ParentObject? ParentObject : document;
	    return ParentObject.all(EleId);
	}

    function TpltPrintPre(Type)
    {
        if(IsMSWordInstalled() == false)
        {
            alert("MS Word Not Installed")
            return
        }
        
        //Header and Footer
        var k=0
        
        var Values ='<BindSet1>';
       
        Values+= Fn_XMLTableRow("IssueData" + k,"<![CDATA[" + Fn_GetE("CopyTab").innerHTML + Fn_GetE("BodyTab").innerHTML + "]]>")
        Values+= Fn_XMLTableRow("IssueData" + k + 1,"<![CDATA[" + Fn_GetE("HeaderDiv").innerHTML + "]]>")
        Values+= Fn_XMLTableRow("IssueData" + k + 2,"<![CDATA[" + Fn_GetE("FooterDiv").innerHTML + "]]>")

        Values+= "</BindSet1>";
        var url="HtmlExport.aspx"
        
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
                    var s=reqXML.responseText
                    if(s !="")
                    {
                        var SplitVal = new Array()
                        SplitVal = s.split("@###@")
                        var FileNamesList = new Array()
                        FileNamesList = SplitVal[0].split("#*#");
                        var Vis =true// (Type == "Print") ? false : true;
                        openWordDocument("Caliber",Vis,"");
                        for(var k=0;k<FileNamesList.length-2 ;k++)
                        {
                            var HeaderFile = (k==0 ? SplitVal[1]+FileNamesList[FileNamesList.length-2]+".htm" : "")
                            var FooterFile = (k==0 ? SplitVal[1]+FileNamesList[FileNamesList.length-1]+".htm" : "")
                            InsertHtmlFiles(SplitVal[1]+FileNamesList[k]+".htm",HeaderFile,FooterFile,1)
                        }
                        if(Type == "Print")
                        {
                            PrintAndClose()
                            
                        }
                        else
                        {
                            PreviewDocument()
                            
                        }
                    }
                    reqXML =null;
                }
            }
        }
    }
    function Fn_XMLTableRow(ColName,ColValue)
    {
        var Values = "<DataTable>";
        Values+= "<ColumnName>" + ColName +"</ColumnName>";
        Values+= "<ColumnValue>" + ColValue +"</ColumnValue>";
        Values+= "</DataTable>";
        return Values;
    }
    </script>


</head>

<body>
    <form id="form1" runat="server">
   <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" Width="98%">
            
                       
              <asp:TableRow>
               <asp:TableCell CssClass="MainTD" ColumnSpan="2"> 
                 <asp:Panel id="HeaderDiv"  runat="server" Width="100%" HorizontalAlign="Left"  EnableViewState="False">
					   <uc2:ReportHeader id="ReportHeader1" runat="server"></uc2:ReportHeader>
		         		</asp:Panel>
               </asp:TableCell>
              </asp:TableRow>
              
                <asp:TableRow ID="TableRow6" runat="server">
                    <asp:TableCell ID="EditorTd" runat="server" CssClass="MsoTableGrid" ColumnSpan="2" Width =100%>
                         <asp:Table ID="IssueListTable" runat="server" CssClass="MsoTableGrid"  border="1" CellPadding="0" Width =100%
                               CellSpacing="0" BackColor="white" BorderColor =white  style='border-collapse:collapse;border:none;mso-border-alt:solid black .5pt;mso-border-themecolor:text1;mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt;width:100%'>
                          </asp:Table>
                      </asp:TableCell>
                   </asp:TableRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                        <asp:Panel id="FooterDiv" runat="server" Width="100%" HorizontalAlign="Left" EnableViewState="False"></asp:Panel>
                        </asp:TableCell>
                        </asp:TableRow>
               <asp:TableRow>
                 <asp:TableCell HorizontalAlign="Right" CssClass="MainFoot" style="TEXT-ALIGN:left">
                               <input id="BtnPrint" onclick="TpltPrintPre('Print')" type="button" value="Print"  onMouseOver="this.className='ButOCls'"
            Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Width="120px" style="font-size:15" />
            </asp:TableCell>
             <asp:TableCell CssClass="MainFoot" ColumnSpan="1" style="TEXT-ALIGN:right">
                    <asp:Button  ID="ExpBtn" runat="server" onMouseOver="this.className='ButOCls'"
                          Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="150" style="margin-right:">
                    </asp:Button>
                    </asp:TableCell>
                            
                            </asp:TableRow>
            </asp:Table>
            
    </form>
</body>
</html>
