<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UploadDocList.aspx.vb" Inherits="CAPAWORKS.UploadDocList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
    <title>"<%=MainTitleLtrl.Text %>"</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript" src="../JScript/jquery.min.js"></script>
</head>
<body>
    <form autocomplete="off" id="Form1" method="post" runat="server">
    
    <table class="MainTable">
        <!-- MAIN HEADER -->
        <tr class="MainHead">
            <td>
              <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
            </td>
        </tr>
        
        <tr>
            <td>
                <table class="SubTable" align="center" style="width:100%" >
                    <tr class="HideRow">
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr >
                        <td class="MainTD" colspan="1">
                            <asp:Literal ID="SearchOptionLtrl" runat="server">Search Option</asp:Literal>
                        </td>
                        <td class="MainTD" colspan="3">
                            <asp:RadioButtonList ID="SearchOptionRD" runat="server" RepeatDirection="Horizontal" CssClass="RBList">
                                <asp:ListItem Value="1" Selected="True">Unique Code</asp:ListItem>
                                <asp:ListItem Value="2">Document Title</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="MainTD" colspan="2">
                            <asp:Literal ID="FindLrl" runat="server">Find</asp:Literal>
                            <asp:TextBox ID="FindTxt" runat="server" Width="180px" CssClass='TxtCls'>%</asp:TextBox>
                        </td>
                        <td class="MainTD" colspan="2">
                            <asp:Literal ID="FetchSizeLtrl" runat="server">Records Limit</asp:Literal>
                            <asp:TextBox ID="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:TextBox>
                            <asp:Button ID="btnFind" runat="server" Text="Display" class="ButCls"></asp:Button>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <div style="overflow-x:hidden; overflow:auto;height:220px;background-color:gray">
                                <asp:Table ID="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                    CellPadding="0" CssClass="SubTable">
                                </asp:Table>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <!-- MAIN FOOTER -->
        <tr class="HideRow">
            <td>
                <input class="ButCls" onclick="fnCrGetCode()" type="button" value="Ok" />
                <input class="ButCls" onclick="fnCrCancel()" type="button" value="Cancel" />
            </td>
        </tr>
    </table>
   
    </form>
    

<script language =vbscript>
    function AlertMsgBox(ErrStr)
        ReturnVal=MsgBox(ErrStr,36,"Message From Caliber QAMS")
        AlertMsgBox= ReturnVal
    End function
        
</script>

<script type="text/javascript">


     function FnDocLock (RowCnt, DocID)
     {
       AJAX_ChekcDocLockedData(RowCnt,DocID)
     
     }
     
      function AJAX_ChekcDocLockedData(RowCnt,DocID)
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
                        
                            var Returnval =''
                            var LOckedBYID = 0
                            var LOckedBY =''
                            var LockedOn =''
                            var  ValArr = new Array()

                            Returnval=xmlhttp.ResponseText

                            if (Returnval !='')
                            { 
                                ValArr=Returnval.split("#*#") 
                                LOckedBYID=ValArr[0]
                                LOckedBY=ValArr[1]
                                LockedOn=ValArr[2]
                            }
                 
                                                       
                            LOckedBY = xmlhttp.ResponseText
                            
                            if ((LOckedBYID == "0" ) || ( LOckedBYID == "<%=UserID%>"))
                            {
                                FnopenAEDApp(DocID,LOckedBYID)
                            }   

                            else if ( LOckedBYID  != "<%=UserID%>")
                            {
                                var Flag=AlertMsgBox("This Document Is  Locked By " +  document.getElementById("LockedBy" + RowCnt).innerHTML + ", Still Do You Want Edit This Documnet ")
                                if (Flag==6) // Yes
                                {
                                AJAX_ChageLocData(DocID)
                                }
                            }
                            xmlhttp =null;
                        }
                    }
                    var url="../CAPAWORKS/DocLockCheck.aspx?DocID=" +  DocID
                    xmlhttp.open("POST",url,true);
                    xmlhttp.send(null);
                }
                
     
          function AJAX_ChageLocData(DocID)
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
                            var Time = "abc"
                            Time = xmlhttp.ResponseText
                            
                            if (Time ==0)
                            {
                               alert("Exception Occured")
                            }
                            else
                             {
                                FnopenAEDApp(DocID)
                             }
                            xmlhttp =null;
                        }
                    }
                    var url="../CAPAWORKS/Ajax_LockData.aspx?DocID=" +  DocID
                    xmlhttp.open("POST",url,true);
                    xmlhttp.send(null);
                }
                
     
     
    var DocTypId
    var DocTyp
    
    var RecCount = "<%=TotalRecCount %>"
    function fnCrGetCode() {
    
      var DocIdArr= new Array()
      var UniqueCodeArr = new Array()
      
      for ( var i=0;i<RecCount;i++)
      {
        if (document.getElementById("RBID" + i).checked==true)
        {
           UniqueCodeArr.push($("#UniqueCode" + i).text());
           DocIdArr.push($("#DocId" + i).text());
           var IndexId=$("#DocId" + i).text();
        }
         
      }
        $("#RBVal").val(IndexId)
        if ($("#RBVal").val() == '') {
            alert("Select Document Type ")
            return (false);
        }
               
        opener.Ret_SetEditableDMSPopUp(DocIdArr.join(","),UniqueCodeArr.join("$@$"), "<%=Request.QueryString("UParam")%>")
        window.self.close()

    }
    function fnCrCancel() {
        opener.Ret_SetEditableDMSPopUp('', '',  "<%=Request.QueryString("UParam")%>")
        window.self.close()
    }
    document.oncontextmenu = new Function("return false")
    function fnSpCloseWin() {
        if ($("#RBVal").val() == '') {
            alert("Select Document Type ")
            return (false);
        }
       
        window.self.close()
    }
    
     function RefreshList() {
        document.getElementById("btnFind").click();
        }
    </script>
</body>
</html>

