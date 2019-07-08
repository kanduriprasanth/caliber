<%@ Register TagPrefix="uc3" TagName="ReportFooter" Src="../CaliberCommonCtrls/ReportFooter.ascx"  %>
<%@ Register TagPrefix="uc2" TagName="ReportHeader" Src="../CaliberCommonCtrls/ReportHeader.ascx"  %>
<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PrintResult.aspx.vb" Inherits="IssueLogin.PrintResult" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head runat="server">
    <title>Untitled Page</title>
    <link rel="stylesheet" href="../TRIMS.css">
      <link rel="stylesheet" href="../eNoteBookEditor/editor/css/fck_editorarea.css">
      
             <script language="javascript" src="../JScript/Common2.js"></script>
        <script language="vbscript" src="../JScript/MsWordScript.vbs"></script>
        <link rel="stylesheet" href="../eNoteBookEditor/editor/css/fck_editorarea.css">
    </head>

<script language="javascript">

  function AssignFieldsvalues()
    {   
        var FldIdArr=new Array()
        var FldValueArr=new Array()
        
        FldIdArr=document.getElementById("FieldNameListTxt").value.split("#*#");
        FldValueArr=document.getElementById("FieldValuesListTxt").value.split("#*#");
      
        for(var k=0;k<FldIdArr.length;k++)    
        {
           
            var obj = document.all(FldIdArr[k])
            if (obj!=null && FldValueArr[k]!=""){
             if(obj.length)
                {
                    for(var s=0;s<obj.length;s++)
                    {
                        obj[s].innerText=FldValueArr[k]
                    }
                }
                else
                {
                    obj.innerText=FldValueArr[k]
                }       
            }
         // document.getElementById(FldIdArr[k]).innerText=FldValueArr[k]
        }
        
    }
   
    
     function AssignWflowFieldsvalues()
    {   
        var FldIdArr=new Array()
        var FldValueArr=new Array()
        
        FldIdArr=document.getElementById("WorkFlwFldIdLstTxt").value.split(",");
        FldValueArr=document.getElementById("WorkFlwFldValLstTxt").value.split(",");
      
        for(var k=0;k<FldIdArr.length;k++)    
        {
           
            var obj = document.all(FldIdArr[k])
            if (obj !=null && FldValueArr[k] !="")
            {
             if(obj.length)
                {
                    for(var s=0;s<obj.length;s++)
                    {
                        obj[s].innerText=FldValueArr[k]
                    }
                }
                else
                {
                    obj.innerText=FldValueArr[k]
                }       
            }
         // document.getElementById(FldIdArr[k]).innerText=FldValueArr[k]
        }
        
    }
    setTimeout ("AssignFieldsvalues()",500)
   setTimeout ("AssignWflowFieldsvalues()",550)
    
    
</script>

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
        var ComplaintNo=(document.all("ComplaintTxt").value)
		var IsuID=(document.all("ISIDTxt").value)
		var copyNo=(document.all("CopyNoTxt").value)
        //Header and Footer
        var k=0
        var TempId='<%=TemID%>'
        var Values ='<BindSet1>';
       
        Values+= Fn_XMLTableRow("TemplateData" + k,"<![CDATA[" + Fn_GetE("Body_"+TempId).innerHTML + "]]>")
       Values+= Fn_XMLTableRow("TemplateData" + k + 1,"<![CDATA[" + Fn_GetE("Header_"+TempId).innerHTML + "]]>")
       // Values+= Fn_XMLTableRow("TemplateData" + (k + 1),"<![CDATA[" + Fn_GetE("HeaderDiv").innerHTML + "]]>")
        Values+= Fn_XMLTableRow("TemplateData" + (k + 2),"<![CDATA[" + Fn_GetE("Footer_"+TempId).innerHTML + Fn_GetE("F_"+TempId).innerHTML + "]]>")
        
        

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
                        var Vis =(Type == "Print") ? false : true;
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
                            UpdateCopyNo_Ajax(IsuID,copyNo,ComplaintNo)
                        }
                        else
                        {
                            PreviewDocument()
                            UpdateCopyNo_Ajax(IsuID,copyNo,ComplaintNo)
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
 
    <script language="jscript">
    function UpdateCopyNo_Ajax(IsuID,copyNo,ComplaintNo)
    {
         var xmlhttp;
            try
            {
                xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
            }
            catch(ex)
            {
               try {
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
                if(xmlhttp.readyState==4)
                {
                    //Returnval=xmlhttp.responseText  
                    //if(Returnval!='')
                    //{
                     //  CreateTimer(Returnval)
                   // }
                    xmlhttp =null
                }
            }//onready
        var url="PrintConform.aspx?IsuId=" + IsuID + "&IsuCode=" + ComplaintNo + "&CopyNo=" + copyNo
        xmlhttp.open("POST",url,true);
        xmlhttp.send(null);
    }

    </script>
    
   
   <style >
.MainTD
{
Background-Color:white;font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;
	border-width :1px;
	border-color :black ;
	border-style :solid ;	
}
.SubTable{Background-color:#C4DCFB; border-width:1px;Background-Color:white; 
	border-width :1px;
	border-color :#C4DCFB ;
	border-style :solid ;	
 }
 .TdCss { border:solid black 1.0pt;mso-border-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:text1;padding:0in 5.4pt 0in 5.4pt; }
</style>
    
<body>
    <form id="form1" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="1" HorizontalAlign="center"
            CssClass="MainTable" runat="server" Width="98%">
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
                        <asp:TableCell CssClass="MainTD" ColumnSpan="2" style="background-color:White">
                       <asp:Panel id="HeaderDiv"  runat="server" Width="100%" HorizontalAlign="Left"  style="background-color:White"  EnableViewState="False">
					   		         		</asp:Panel>
                        </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="TableRow6" runat="server">
                            <asp:TableCell ID="EditorTd" runat="server" CssClass="MsoTableGrid" ColumnSpan="2" Width =100%>
                                <asp:Table ID="WorkSheetTable" runat="server" CssClass="SubTable" CellPadding="0" Width =100%
                                    CellSpacing="0" BackColor="white" BorderColor =white  style=' border-right: medium none; border-top: medium none; border-left: 0px; width: 100%; border-bottom: medium none; border-collapse: collapse; background-color: white;Width:100%;'>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ColumnSpan="2" style="background-color:White">
                        <asp:Panel id="FooterDiv" runat="server" Width="100%" HorizontalAlign="Left" EnableViewState="False" style="background-color:White"></asp:Panel>
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
            <asp:TableRow >
                <asp:TableCell>
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell ColumnSpan="2"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="HideRow">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Left" CssClass="MainFoot">
                               <input id="BtnPrint" onclick="TpltPrintPre('Print')" type="button" value="Print"  onMouseOver="this.className='ButOCls'"
                                Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'"  style="width:70px"/>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow"  Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="FieldNameListTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="FldUniqueIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="FLDIdListTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="FieldValuesListTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="WorkFlwFldIdLstTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="WorkFlwFldValLstTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    
                </asp:TableCell>
                
            </asp:TableRow>
    
    </asp:Table>
    <asp:TextBox id="ComplaintTxt" runat="server" CssClass="HideRow" MaxLength="50" Width="200px"
				AccessKey="D" TabIndex="1"></asp:TextBox>
			<asp:TextBox id="PrintByTxt" runat="server" CssClass="HideRow" MaxLength="50" Width="200px" AccessKey="D"
				TabIndex="1"></asp:TextBox>
			<asp:TextBox id="PrintOnTxt" runat="server" CssClass="HideRow" MaxLength="50" Width="200px" AccessKey="D"
				TabIndex="1"></asp:TextBox>
			<asp:TextBox id="CopyNoTxt" runat="server" CssClass="HideRow" MaxLength="100" Width="200px" AccessKey="D"
				TabIndex="1"></asp:TextBox>
			<asp:TextBox id="ISIDTxt" runat="server" CssClass="HideRow" MaxLength="100" Width="200px" AccessKey="D"
				TabIndex="1"></asp:TextBox>
    </form>
    
</body>
</html>
