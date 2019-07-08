<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ChangeReqTrn.aspx.vb"
    Inherits="ModificationRequest.ChangeReqTrn" %>

<%--<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>--%>
<%@ Register TagPrefix="uc2" TagName="EsignObj1" Src="EsignObj3.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/jquery.min.js"></script>
    <script language="javascript" src="../JScript/Common2.js"></script>
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />
      <link href="../Plugins/ColorPicer/colorpicker.css" rel="stylesheet" type="text/css" />

    <script src="../Plugins/ColorPicer/colorpicker.js" type="text/javascript"></script>

    <link href="../Plugins/JqueryModel/simplemodal.css" rel="stylesheet" type="text/css" />

    <script src="../Plugins/JqueryModel/jquery.simplemodal.js" type="text/javascript"></script>
    <style type="text/css">
        #mask {position:absolute;left:0;top:0;z-index:9000;background-color:#808080;display:none;}
        #boxes .window {position:fixed;left:0;top:0;display:none;z-index:9999;padding:20px;}
        #boxes #dialog {padding:10px;background-color: #f3f3f3;position:absolute;}
        .MessageImgCls{width:30px;heigth:30px;}
        .MessageTxtCls{font-weight: bold;font-size:12pt;text-align:center}
        .MessageBtnCls{}
    </style>
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
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="CodeValTd">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DescTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="DescValTd" runat="server">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="IssTypeTd" Style="font-weight: bold; width: 31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="IssTypeValTd">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="IssuLogTD" Style="font-weight: bold; width: 31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="IssuLogValTD">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2" ID="RecListTd" runat="server">
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow CssClass="HideRow" ID="ChangeReqCommentsTr">
                            <asp:TableCell CssClass="MainTD" ID="ChangeReqCommentsTD" Style="font-weight: bold;
                                width: 31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                            <asp:TextBox ID="ChangeReqCommentsTxt" runat=server  TextMode=MultiLine  Width="45%" CssClass="TxtCls"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                        <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                            padding-bottom: 0px">
                             <uc2:EsignObj1 id="EsignObj1" runat="server" visible="false">
                                </uc2:EsignObj1>
                        </asp:TableCell>
                    </asp:TableRow>
                        
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
                                  Class='<%=ClsBtnClss%>' AccessKey="C" onMouseOut="this.className='ButexCls'" value="Close Modification Request"  onclick="CloseChangeReq()"/>
                                  
                                  
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="MainFoot" ColumnSpan=3 HorizontalAlign=Right > 
                                <%--<asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButexOCls'"
                                    Class='ButexCls' AccessKey="C" onMouseOut="this.className='ButexCls'" Text="Close Change Request" >
                                </asp:Button>--%>
                                <input type =button  id="Button1" onMouseOver="this.className='ButexOCls'"
                                  Class='ButexCls' AccessKey="C" onMouseOut="this.className='ButexCls'" value="Status Report"  onclick="OpenIsueReport()"/>
                                  
                                  
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
        
         <!-- Mask to cover the whole screen -->
        <div id="mask">
        </div>
        <div id="boxes">
            <div id="dialog" class="window">
                <asp:Table ID="Table3" runat="server" HorizontalAlign="Center">
                    <asp:TableRow>
                        <asp:TableCell ID="MessageImgTd">
                        </asp:TableCell>
                        <asp:TableCell ID="MessageTxtTd">
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ID="MessageBtnTd" HorizontalAlign="Center" ColumnSpan="2">
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </div>
    </form>


<script language="javascript">


$(document).ready(function() {	
	        $(window).resize(function () {
 		        var box = $('#boxes .window');
         
                //Get the screen height and width
                var maskHeight = $(document).height();
                var maskWidth = $(window).width();
              
                //Set height and width to mask to fill up the whole screen
                $('#mask').css({'width':maskWidth,'height':maskHeight});
                       
                //Get the window height and width
                var winH = $(window).height();
                var winW = $(window).width();

                //Set the popup window to center
                box.css('top',  winH/2 - box.height()/2);
                box.css('left', winW/2 - box.width()/2);
	        });
        });
  function Fn_Message_Show(Message,MessageType)
        {
            switch (MessageType)
            {
                case 1:
                    $("#MessageImgTd").html("<div><img src=\"../Images/Info.GIF\" class=\"MessageImgCls\"/></div>")
                    $("#MessageTxtTd").html("<div class=\"MessageTxtCls\"><span id=\"MsgSpan\"></span></div>");
                    $("#MessageBtnTd").html("<br/><button type=\"button\" class=\"ButCls\" onclick=\"Fn_Message_Navigate()\">OK</button>");
                    break;
                case 2:
                    $("#MessageImgTd").html("<div><img src=\"../Images/Exlamatry.GIF\" class=\"MessageImgCls\"/></div>")
                    $("#MessageTxtTd").html("<div class=\"MessageTxtCls\"><span id=\"MsgSpan\"></span></div>");
                    $("#MessageBtnTd").html("<br/><button type=\"button\" class=\"ButCls\" onclick=\"Fn_Message_Hide()\">OK</button>");
                    break;
                case 3:
                    $("#MessageImgTd").html("<div><img src=\"../Images/QuestionMark.GIF\" class=\"MessageImgCls\"/></div>")
                    $("#MessageTxtTd").html("<div class=\"MessageTxtCls\"><span id=\"MsgSpan\"></span></div>");
                    $("#MessageBtnTd").html("<br/><button type=\"button\" class=\"ButCls\" onclick=\"Fn_Message_Navigate()\">OK</button>");
                    break;
                default:
                    $("#MessageImgTd").html("<div><img src=\"../Images/Exlamatry.GIF\" class=\"MessageImgCls\"/></div>")
                    $("#MessageTxtTd").html("<div class=\"MessageTxtCls\"><span id=\"MsgSpan\"></span></div>");
                    $("#MessageBtnTd").html("<br/><button type=\"button\" class=\"ButCls\" onclick=\"Fn_Message_Hide()\">OK</button>");
                    break;
            }
            
            $("#MsgSpan").html(Message.replace(/\n/g, '<br/>' ));
            
	        var maskHeight = $(document).height();
	        var maskWidth = $(window).width();
            var id = "#dialog"
	        //Set heigth and width to mask to fill up the whole screen
	        $('#mask').css({'width':maskWidth,'height':maskHeight});
        	
	        //transition effect		
	        $('#mask').fadeIn(10);	
	        $('#mask').fadeTo("slow",0.8);	
	        
	        var winH = $(window).height() + $(window).scrollTop();
	        var winW = $(window).width();

	        //Set the popup window to center
	        $(id).css('top', ((winH - $(id).outerHeight() ) / 2) + $(window).scrollTop()/2);
	        $(id).css('left', (winW - $(id).outerWidth() ) / 2);

	        //transition effect
	        $(id).fadeIn(20);
        }

        function Fn_Message_Hide()
        {
	        $('#mask').hide();
	        $('.window').hide();
             document.getElementById("btn").click()
	        
	        
        }
        
         function Fn_Message_Navigate()
        {
           window.navigate("ChangeRequestList.aspx")
	        
        }
        
        
       
    
             


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
  if ($.trim(document.getElementById("ChangeReqCommentsTxt").value)!="")
      Ajax_ChkUsrAuthModCls()
  else
    alert("Enter : Modification Request Comments ")
}


 function Fn_XMLTableRow(ColName,ColValue,TableName)
    {
        TableName = TableName ? TableName : "DataTable"
        return "<" + TableName + "><ColumnName>" + ColName +"</ColumnName><ColumnValue>" + ColValue +"</ColumnValue></" + TableName + ">";
    }
    
function Ajax_CloseChangeReq()
{debugger

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
                
                if (Time==1)
                {//debugger
//                    alert("Modification Request Closed")
                        Fn_Message_Show("Modification Request Closed Successfully",1)
                      
                   
                } 
                else if (Time==2)
                {
                   Fn_Message_Show("You are Not Authorized",2)

                }
                else
                    Fn_Message_Show("Exception Occured",2)

                xmlhttp =null;
            }
        }
    }
    else
    {
     alert("Your browser does not support Ajax");
    }
}



//function Ajax_ChkUsrAuthModCls()
//{

//   
//    var url="ChkUsrAuthForModClosure_Ajax.aspx"
//    if (window.XMLHttpRequest)
//    { 
//        reqXML = new XMLHttpRequest(); 
//    }
//    else if(window.ActiveXObject)
//    {
//        reqXML = new ActiveXObject("Microsoft.XMLHTTP"); 
//    }
//    if(reqXML)
//    {
//        reqXML.open("POST", url, true);
//        reqXML.setRequestHeader("Content-Type", "text/xml");
//        reqXML.send("<?xml version='1.0' encoding='UTF-8'?>" + Values);
//        reqXML.onreadystatechange = function()
//        {
//            if(reqXML.readyState==4)
//            {
//                var Time="abc"
//                Time=reqXML.responseText
//                
//                if (Time==1)
//                {
//                      
//                   fnCallESign()
//                   
//                } 
//                else if (Time==2)
//                {
//                 alert("You are Not Authorized")
//                }
//                else
//                    
//                    alert("Exception Occured")

//                xmlhttp =null;
//            }
//        }
//    }
//    else
//    {
//     alert("Your browser does not support Ajax");
//    }
//}




  function Ajax_ChkUsrAuthModCls() {debugger
  
            var recary = new Array();
            var xmlhttp;
            try {
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            catch (ex) {
                try {
                    xmlhttp = new ActiveXObject("MSxml2.XMLHTTP");
                }
                catch (ex) {
                    try {
                        xmlhttp = new XmlHttpRequest();
                    }
                    catch (ex) {
                        alert("please update the webbrowser");
                    }
                }
            }
            xmlhttp.onreadystatechange = function() {

                if (xmlhttp.readystate == 4) {debugger
                    var Time="abc"
                Time=xmlhttp.responseText
                
                if (Time==1)
                {
                      
                   fnCallESign()
                   
                } 
                else if (Time==2)
                {
                 alert("You are Not Authorized")
                }
                else
                    
                    alert("Exception Occured")

                }
            }      
            var url = "ChkUsrAuthForModClosure_Ajax.aspx"
            xmlhttp.open("POST", url, true);
            xmlhttp.send(null);
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
</body>
</html>
