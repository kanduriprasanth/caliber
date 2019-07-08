<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UPDATEEFOmXML.aspx.vb" Inherits="AutoWorkAllocation.UPDATEEFOmXML" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head runat="server">
    <title>Untitled Page</title>
    
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<script language="javascript" src="../JScript/jquery.min.js"></script>
    
    
    
    <script language=javascript >
    
     function FunInsertXMl(RowCnt)
     {
       var FissId = document.getElementById("FissID_" + RowCnt).value
       var FexeId = document.getElementById("FexeId_" + RowCnt).value
        if (FissId !="" && FexeId !="")
        {
           Ajax_InsertXMl(FissId,FexeId,RowCnt)
        }
     }
     
     
     function Fn_XMLTableRow(ColName,ColValue,TableName)
    {
        TableName = TableName ? TableName : "DataTable"
        return "<" + TableName + "><ColumnName>" + ColName +"</ColumnName><ColumnValue>" + ColValue +"</ColumnValue></" + TableName + ">";
    }
            
        function Ajax_InsertXMl(FissId,FexeId,RowCnt) 
        {

            var Values ='<XmlDS>';
            Values+=Fn_XMLTableRow("FissId","<![CDATA[" + FissId + "]]>")
            Values+=Fn_XMLTableRow("FexeId","<![CDATA[" + FexeId + "]]>")
            Values+= "</XmlDS>";

            var url="UPDATEEFOmXML_Ajax.aspx?FissId=" + FissId + "&FexeId=" + FexeId
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
                        var Time="abc"
                        Time=reqXML.responseText
                        if (Time="1")
                        {
                          alert("Record Insert")
                          document.getElementById("SubmitBtn_" + RowCnt).setAttribute('disabled', 'disabled')
                          
                        } 
                        else 
                        alert("Exception Occured")
                        xmlhttp =null;
                    }
                }
            }
            else
            {
                alert("Your browser does not support Ajax");
            }
        }

     
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:Button  runat=server ID="CheckExistenceData"  Text ="CheckExistenceData" CssClass="ButCls" />
        
        <asp:Table ID=rectab runat=server CellPadding="0" CellSpacing="1" CssClass="SubTable"
                        HorizontalAlign="center" Width="100%" ></asp:Table>
                        
                      
                        
    </div>
    </form>
</body>
</html>
