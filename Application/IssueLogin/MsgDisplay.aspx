<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MsgDisplay.aspx.vb" Inherits="IssueLogin.MsgDisplay" %>

<%@ Register TagPrefix="uc1" TagName="MessageDisplay" Src="../CaliberCommonCtrls/MessageDisplay.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>MsgDisplay</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <script language=javascript>
      
      
       function ChaosePopup()
    {
         if("<%=Session("NCID")%>"!="0" && "<%=Session("NCID")%>"!="")
         {
           // window.parent.window.CloseWindow("<%= Session("WorkId")%>")
           opener.CloseWindow("<%= Session("WorkId")%>")
            window.self.close()
          }  
    }
  window.setTimeout("ChaosePopup()",300)
     //For Back button Issue
     window.history.forward();
        function noBack() { window.history.forward(); }
    </script>
</head>
<body ms_positioning="GridLayout" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="noBack">
    <form id="Form1" method="post" runat="server">
        <uc1:MessageDisplay id="MessageDisplay1" runat="server">
        </uc1:MessageDisplay>
        <br />  <asp:Label ID="SAPPanel" runat =server ></asp:Label>
        
    </form>
</body>

<script language=javascript >

  function Ajax_SendMail_To_PRPOSEPLANS()
   {
     var recary = new Array(); 
      
        var xmlhttp;
        try
        { 
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        catch(ex)
        {
            try 
            {
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
            if(xmlhttp.readystate==4)
            {
                var Time="abc"
                Time=xmlhttp.ResponseText
                xmlhttp =null;
            }
        }
        var url="../AutoWorkAllocation/MailEvent_ajax.aspx?IsuLogID=" +  "<%=IssueID %>" 
        xmlhttp.open("POST",url,true);
        xmlhttp.send(null);
    }
                
  
  if( "<%=IssueID %>" != "0")
  {
  setTimeout("Ajax_SendMail_To_PRPOSEPLANS()",100)
 } 
  
</script>

</html>
