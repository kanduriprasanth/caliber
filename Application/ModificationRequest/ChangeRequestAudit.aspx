<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ChangeRequestAudit.aspx.vb" Inherits="ModificationRequest.ChangeRequestAudit" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/jquery.min.js"></script>
    
    <script type="text/javascript">
        function ValidateUser(IssuTypeID,IssueLoginId,IssueLoginAulId,WorkType,WorkId,WorkAulId,TransactionType,ReqFor,LogAPPCout)
        {
           // window.location.href = window.event.srcElement.href;
        var ProcessId = document.getElementById("IssueTypeTxt").value //Change Control
        //return;
        //  WorkType => 1: IssueLogin 2: issue WorkItems 3: Issue Closer 4: Action Plan 5: Action Plan WorkItems 6: Action Plan Closure
        //  TransactionType == > 1: Modify 2: Approval 3: StatusChange
            AjaxCheckUserAutForMoidProcess(IssuTypeID,ProcessId,IssueLoginId,IssueLoginAulId,WorkType,WorkId,WorkAulId,TransactionType,ReqFor,window.event.srcElement,LogAPPCout);
        }
        function ChowDummyAlert()
        {
            alert('You are Not Authorized');
        }
        function AjaxCheckUserAutForMoidProcess(IssuTypeID,ProcessId,IssueLoginId,IssueLoginAulId,WorkType,WorkId,WorkAulId,TransactionType,ReqFor,eventObj,LogAPPCout) {
            $.ajax({
                url: '../PrsWorkFlow/AuthenticateUserForModification.aspx',
                cache: false,
                //type: "POST",
                //dataType: "html",
                data: "&CReqid=<%=Request.QueryString("CReqid")%>&ProcessId=" + ProcessId + "&IssueLoginId=" + IssueLoginId + "&IssueLoginAulId=" + IssueLoginAulId + "&WorkType=" + WorkType + "&WorkId=" + WorkId + "&WorkAulId=" + WorkAulId + "&TransactionType=" + TransactionType + "&ReqFor=" + ReqFor + "&IssuTypeID=" + IssuTypeID + "&LogAPPCout=" + LogAPPCout ,
                success: function (data) {
                    var s = data;
                    if (s == "1") {
                        window.location.href = eventObj.href;
                    }
                    else {
                        alert('You are Not Authorized');
                    }
                }
//                ,
//                error: function (xhr, errorType) {
//                    var Error = xhr.responseText;
//                    alert(Error);
//                }
            });
        }
    </script> 
    
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
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
                            <asp:TableCell CssClass="SubHead" ColumnSpan="3">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow CssClass="SubHead" style="text-align:center;">
                            <asp:TableCell CssClass="MainTD" Width="40px" ID="SnoTD" Text="S.No."></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="LabelTD"  Text="Label"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="valueTD"  Text="Value"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="text-align:center;" >
                            <asp:TableCell CssClass="MainTD" Width="40px" Text="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="CodeValTd">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="text-align:center;" > 
                            <asp:TableCell CssClass="MainTD" Width="40px" Text="2"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="DescTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="DescValTd" runat="server">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="text-align:center;" >
                            <asp:TableCell CssClass="MainTD"  Width="40px" Text="3"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="IssTypeTd" Style="font-weight: bold; width: 31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="IssTypeValTd">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="text-align:center;" > 
                            <asp:TableCell CssClass="MainTD" Width="40px" Text="4"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="IssuLogTD" Style="font-weight: bold; width: 31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="IssuLogValTD">
                            </asp:TableCell>
                        </asp:TableRow>
                       
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3" ID="RecListTd" runat="server">
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow style="text-align:center"  ID ="CommentsTr" >
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2"  ID="ModReqCommTd" ></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="ModReqComm" ></asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow ID ="EvntTabTr">
                                        <asp:TableCell ColumnSpan="3">
                                            <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0" 
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                     <%--   
                        <asp:TableRow CssClass="HideRow" ID="ChangeReqCommentsTr">
                            <asp:TableCell CssClass="MainTD" ID="ChangeReqCommentsTD" Style="font-weight: bold;
                                width: 31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                            <asp:TextBox ID="ChangeReqCommentsTxt" runat=server  TextMode=MultiLine  Width="45%" CssClass="TxtCls"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        --%>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
                       
            <asp:TableRow>
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot" ColumnSpan=3>
                                <%--<asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButexOCls'"
                                    Class='ButexCls' AccessKey="C" onMouseOut="this.className='ButexCls'" Text="Close Change Request" >
                                </asp:Button>--%>
                                <input type =button  id="ClsChngReq" onMouseOver="this.className='ButexOCls'"
                                  Class='HideRow' AccessKey="C" onMouseOut="this.className='ButexCls'" value="Close Modification Request"  onclick="CloseChangeReq()"/>
                                  
                                  
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="MainFoot" ColumnSpan=3 HorizontalAlign=Right > 
                                <%--<asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButexOCls'"
                                    Class='ButexCls' AccessKey="C" onMouseOut="this.className='ButexCls'" Text="Close Change Request" >
                                </asp:Button>--%>
                                <input type =button  id="Button1" onMouseOver="this.className='ButexOCls'"
                                  Class='HideRow' AccessKey="C" onMouseOut="this.className='ButexCls'" value="Status Report"  onclick="OpenIsueReport()"/>
                                  
                                  
                            </asp:TableCell>
                            </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            
            
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="6" ID="ValidatorsTd">
                    <asp:TextBox ID="TC" runat="server" Height="0" Width="0" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="S" runat="server" Height="0" Width="0" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="ST" runat="server" Height="0" Width="0" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="SMPID" runat="server" Height="0" Width="0" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="SSC" runat="server" Height="0" Width="0" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="IssueLoginAulIdTxt" runat="server" Height="0" Width="0" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="IssueLoginIdTxt" runat="server" Height="0" Width="0" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="IssueTypeTxt" runat="server" Height="0" Width="0" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="IssueFormIdTxt" runat="server" Height="0" Width="0" CssClass="HideRow"></asp:TextBox>
                    
                    
                    
                    
                    <input type="hidden" id="FromSub" name="FromSub">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">

function RasiSeAlert(WrkItemStatus)
{
  if(WrkItemStatus!= "1")
  alert("This Work Item Modification Is not allowed , because  It Is Under Execution")
}
    $("a[onclick]").click(function(event){
        event.preventDefault();
    });

function IsuCloser()
{
  alert("Issue Closure  Is Not Initiated")
}  
function CloseChangeReq()
{
  if (document.getElementById("ChangeReqCommentsTxt").value != "")
    Ajax_CloseChangeReq()
  else
    alert("Enter : Modification Request Comments ")
}


 function Fn_XMLTableRow(ColName,ColValue,TableName)
    {
        TableName = TableName ? TableName : "DataTable"
        return "<" + TableName + "><ColumnName>" + ColName +"</ColumnName><ColumnValue>" + ColValue +"</ColumnValue></" + TableName + ">";
    }
    
function Ajax_CloseChangeReq()
{

    var Values ='<XmlDS>';

    Values+=Fn_XMLTableRow("Comments","<![CDATA[" + document.getElementById("ChangeReqCommentsTxt").value + "]]>")
    
    Values+= "</XmlDS>";
    var url="CloseChangeReq_Ajax.aspx?CReqid=" +  <%=Request.QueryString("CReqid")%> + "&IsuLogCode=" + document.getElementById("IssueLoginAulIdTxt").value 
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
                if (Time=1)
                {
                    alert("Modification Request Closed")
                    window.navigate("ChangeRequestList.aspx")
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



function OpenIsueReport()
     {
        var pageURL = "../CAPAWORKS/WordFormatReport.aspx?Type=1&RptType=1&IsuLogID=" + document.getElementById("IssueLoginIdTxt").value  + "&IsuTypeId=" + document.getElementById("IssueFormIdTxt").value
	    var features = "height=600,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
	    SpWinObj = window.open(pageURL,'SpecCodes',features)
	    if(SpWinObj.opener == null) SpWinObj.opener=self;
	    SpWinObj.focus();
     }

</script>

</html>
