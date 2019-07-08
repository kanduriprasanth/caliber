<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="IssueAudit.aspx.vb" Inherits="IssueLogin.IssueAudit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" >

<html>
<head runat="server">
  <title>AuditDisplay</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
    <link rel="stylesheet" href="../eNoteBookEditor/editor/css/fck_editorarea.css">
  
      <script language="javascript" src="../JScript/Common2.js" type="text/javascript"></script>
    <script language="vbscript" src="../JScript/MsWordScript.vbs" type="text/vbscript"></script>
   
</head>

<script language="javascript">

  function AssignFieldsvalues()
    {   
        var FldIdArr=new Array()
        var FldValueArr=new Array()
        
        FldIdArr=document.getElementById("FLDIdListTxt").value.split("#*#");
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

    function TpltPrintPre(Type)
    {
       
        if(IsMSWordInstalled() == false)
        {
            alert("MS Word Not Installed")
            return
        }
        var MTpltDatArr = new Array();
        //var TstCodeArr = new Array()
      
      var InvType="<%=InvType%>"
        var Values ='<BindSet1>';
        
        if(InvType==1)
        {
            Values+= Fn_XMLTableRow("IssueData" + 0,"<![CDATA[" + document.getElementById("IssWorkTd").innerHTML + "]]>")
        
        }
        else if(InvType==2)
        {
            Values+= Fn_XMLTableRow("IssueData" + 0,"<![CDATA[" + document.getElementById("IssWorkTd").innerHTML + document.getElementById("IssWorkTbl").innerHTML + "]]>")
        
        }
        
        
        //Header and Footer
        Values+= Fn_XMLTableRow("IssueData" + 1,"<![CDATA[" + document.getElementById("HeaderDiv").innerHTML + "]]>")
        Values+= Fn_XMLTableRow("IssueData" + 2,"<![CDATA[" + document.getElementById("FooterDiv").innerHTML + "]]>")

        Values+= "</BindSet1>";
        var url="HtmlExport.aspx"
        
        reqXML = GetXmlHttpObject();
        
//        if (window.XMLHttpRequest)
//        { 
//          reqXML = new XMLHttpRequest(); 
//        }
//        else if(window.ActiveXObject)
//        { 
//          reqXML = new ActiveXObject("Microsoft.XMLHTTP"); 
//        }

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
    
     function GetXmlHttpObject(){ 
            var objXMLHttp=null                    
            if (window.ActiveXObject){
            objXMLHttp=new ActiveXObject("Microsoft.XMLHTTP")
            }else if (window.XMLHttpRequest){	           
               objXMLHttp=new XMLHttpRequest()	                   
            }
            return objXMLHttp
        }
    </script>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow Height="20" CssClass="HideRow">
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
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                       <asp:Panel id="HeaderDiv"  runat="server" Width="100%" HorizontalAlign="Left"  EnableViewState="False">
					   </asp:Panel>
                        </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="DisplayTr" CssClass ="MainTD">
                            <asp:TableCell CssClass="MainTD"  ID="TableCell2" ColumnSpan =3>
                            <asp:Table ID="DispTbl" runat =server  CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1" HorizontalAlign="center" >
                            </asp:Table>
                          </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                        <asp:Panel id="FooterDiv" runat="server" Width="100%" HorizontalAlign="Left" EnableViewState="False"></asp:Panel>
                        </asp:TableCell>
                        </asp:TableRow>
                         
                        
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            
             <asp:TableRow>
                <asp:TableCell>
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell ColumnSpan="2">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Left" CssClass="MainFoot">
                               <input id="BtnPrint" onclick="TpltPrintPre('Print')" type="button" value="Print"  onMouseOver="this.className='ButOCls'"
            Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Width="100px"/>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
                               
                 <asp:TableRow CssClass="HideRow">
                   <asp:TableCell>
                       <asp:TextBox ID="FLDIdListTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                        <asp:TextBox ID="FieldValuesListTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                        <asp:TextBox ID="WorkFlwFldIdLstTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                        <asp:TextBox ID="WorkFlwFldValLstTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                        
                   </asp:TableCell>
                 </asp:TableRow>
            
        </asp:Table>
    </form>
</body>
</html>
