<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="IsueForcedClosure.aspx.vb" Inherits="ModificationRequest.IsueForcedClosure" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head id="Head1" runat="server">
    <title>Untitled Page</title>
     <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
   
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/jquery.min.js"></script>
    <script language="javascript" src="../JScript/Common2.js"></script>
    
 <script language ="javascript" >
    
    function IsuFormPopUpFn(PrsType)
    {
        var pageURL ="../IssueWorkAllocationTemplate/IssueFormPopup.aspx?PrsType="+ PrsType ;
        var PWidth=600
        var PHeight=460
        var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
        var ScreenTop = parseInt(window.screen.height-PHeight)/2;
        
        SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }

    function GetFormVals(KdIdVal,KdCodeVal,KfLableVal)
    {
        document.getElementById("IssueFormID").value=KdIdVal
        document.getElementById("IssFormTxt").value=KdCodeVal
        document.getElementById("IssFormLab").innerHTML=KdCodeVal

        document.getElementById("IsuLogIdTxt").value=""
        document.getElementById("IssueLogDescTxt").value=""
        document.getElementById("IsuLogLbl").innerHTML=""
        document.getElementById("IsuLogIdAulTxt").value=""

        document.forms(0).submit()

    }

    function IsuLoginPopup()
    {
        if (document.getElementById("IssueFormID").value  != "")
        {
            var pageURL ="IssueLoginPopup.aspx?PrsType=" + document.getElementById("IssueFormID").value+ "&ListType=2" ;

            var PWidth=600
            var PHeight=460
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight)/2;
            
            SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        else
        {
            alert("Select Issue Form")
        }
    }

    function GetLoginVals(KdIdVal,KdAulIdVal,KfLableVal)
    {
        document.getElementById("IsuLogIdTxt").value=KdIdVal
        document.getElementById("IssueLogDescTxt").value=KfLableVal
        document.getElementById("IsuLogLbl").innerHTML=KfLableVal
        document.getElementById("IsuLogIdAulTxt").value=KdAulIdVal

        //document.Forms(0).submit()
        funCheckUserExistence()
    }
    
    function fnCrformSubmit()
    { }
    
    function funCheckUserExistence()
    {
      if (document.getElementById("IsuLogIdTxt").value !="")
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
                    var RtnStr="abc"
                    var ReturnArr =new Array()
                    RtnStr=xmlhttp.ResponseText
                    if (RtnStr==1)
                    {
//                     document.getElementById("ForcedClosureTr").className="MainTD"
                     document.getElementById("ForcedClsRemksTr").className="MainTD"
                     document.getElementById("btnConfirm").className="ButCls"
                    }
                    else
                    {
                      alert("You Are Not Authorised To Raise Forced Closure")
                      document.getElementById("btnConfirm").className="HideRow"
                      document.getElementById("ForcedClsRemksTr").className="HideRow"
                    }
                }
            }  
                var url="../ModificationRequest/CheckUserExistence.aspx?IsuLogID=" + document.getElementById("IsuLogIdTxt").value
                xmlhttp.open("POST",url,true);
                xmlhttp.send(null);
        
      }
      else
      {
//        document.getElementById("ForcedClosureTr").className="HideRow"
        document.getElementById("ForcedClsRemksTr").className="HideRow"
      }
    }

 </script>
</head>
<body>
    <form id="Form1" runat="server">
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
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="IssTypeTd" Style="font-weight: bold; width: 31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="IsuFormPopUpFn(<%=PrsType%>)" class='RsnPUP' tabindex="3">
                                <asp:Label ID="IssFormLab" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="IssFormTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="IssueFormID" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                          <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="IssuLogTD" Style="font-weight: bold; width: 31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="IsuLoginPopup()" class='RsnPUP' tabindex="3">
                                <asp:Label ID="IsuLogLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="IsuLogIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="IssueLogDescTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="IsuLogIdAulTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                                       
               
                         <asp:TableRow CssClass="HideRow" ID="ForcedClsRemksTr">
                            <asp:TableCell CssClass="MainTD" ID="ForcedClsRemkstd" Style="font-weight: bold; width: 31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="ForcedClsRemksTxt" runat=server TextMode=MultiLine Width="250px" onkeypress="StdMaxLimit(500)"  onkeyup="StdMaxCount(500)"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                       
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                                <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc1:EsignObj id="EsignObj1" runat="server" visible="false">
                                </uc1:EsignObj>
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
                <asp:TableCell CssClass="MainFoot" >
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    CssClass='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainFoot" >
                                
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                    <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
    
     
   
</body>


</html>
