<%@ Page Language="vb" AutoEventWireup="false" Codebehind="TaskTYpeReg.aspx.vb" Inherits="ControlConfiguration.TaskTYpeReg" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
   
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
   
   <script language="javascript" src="../JScript/jquery.min.js"></script>

    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />
    <style type="text/css">
        #mask {position:absolute;left:0;top:0;z-index:9000;background-color:#808080;display:none;}
        #boxes .window {position:fixed;left:0;top:0;display:none;z-index:9999;padding:20px;}
        #boxes #dialog {padding:10px;background-color: #f3f3f3;position:absolute;}
        .MessageImgCls{width:30px;heigth:30px;}
        .MessageTxtCls{font-weight: bold;font-size:12pt;text-align:center}
        .MessageBtnCls{}
    </style>
    
<script type="text/javascript">
       jQuery(document).ready(function()
        {
                var d = new Date();
                d = d.getTime();
                if (jQuery('#reloadValue').val().length == 0)
                {
                        jQuery('#reloadValue').val(d);
                        jQuery('body').show();
                }
                else
                {
                        jQuery('#reloadValue').val('');
                        location.reload();
                }
        });
</script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
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
                            <asp:TableCell CssClass="SubHead" ColumnSpan="5">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="CategoryTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:DropDownList ID="CategoryDDl" runat="server" AutoPostBack ="true" >
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="TaskNameTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="TaskNameTxt" runat="server" CssClass="TxtCls"  onfocusout="CheckDescVal('TaskNameTxt','Task Name')" onkeyup="MaxCount()" Width="100px"
                                    AccessKey="D" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'" CssClass='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Add" Width="70"></asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow  CssClass="HideRow" ID="ItemTr">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="ItemTbl">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
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
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell>
                            </asp:TableCell>
                            <asp:TableCell>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc1:EsignObj id="EsignObj1" runat="server" visible="false">
                                </uc1:EsignObj>
                            </asp:TableCell>
                        </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="ProtocolFieldKeys" Style="display: none" Width="0" Height="0" runat="server">
                    </asp:TextBox>
                    <asp:TextBox ID="ProtocolFieldNames" Style="display: none" Width="0" Height="0" runat="server">
                    </asp:TextBox>
                    <asp:TextBox ID="ProtocolFieldbndto" Style="display: none" Width="0" Height="0" runat="server">
                    </asp:TextBox>
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
                        <asp:TableCell>
            <input id="reloadValue" type="hidden" name="reloadValue" value="" />
</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </div>
    </form>

    <script language="javascript">
      
       var taMaxLength = 25
        function MaxCount()
        {
            var taObj=window.event.srcElement;			
            if (taObj.value.length>taMaxLength*1)
            {
                taObj.value=taObj.value.substring(0,taMaxLength*1);
                alert("Characters Exceeding Maximum Length: "+ taMaxLength +" Characters")
            }
        }	

   function ShowConfermationMessage()
    {
        var ConfermationMessage = "<%=ErrerMessage%>"
        
        if(ConfermationMessage != "")
        {
            if(ConfermationMessage == "Task Type Registered")
            {
            Fn_Message_Show(ConfermationMessage,1)
            }
            
            else if(ConfermationMessage == "Task Type Already Registered")
            {
            Fn_Message_Show(ConfermationMessage,2)
            }


            //window.navigate("../ControlConfiguration/TaskTYpeReg.aspx")
            return(false);
       }
    }
    
    ShowConfermationMessage()
    
//    function fnUpdateSts(RowCnt,BaseID,status)
//          {
//              var recary = new Array();
//              var xmlhttp;
//                try
//                {
//                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
//                }
//                catch(ex)
//                {
//                    try
//                    {
//                        xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
//                    }
//                    catch(ex)
//                    {
//                        try
//                        {
//                            xmlhttp=new XmlHttpRequest();
//                        }
//                        catch(ex)
//                        {
//                            alert("please update the webbrowser");
//                        }
//                    }
//                }
//                   
//                xmlhttp.onreadystatechange=function()
//                {
//                    if(xmlhttp.readystate==4)
//                    {
//                        var RtnStr="abc"
//                        var ReturnArr =new Array()
//                        RtnStr=xmlhttp.ResponseText
//                        var text=''
//                        if (RtnStr==1)
//                          {  text = "<B>Active&nbsp;&nbsp;&nbsp;<span><a id='His" + RowCnt + "' href='javascript:fnUpdateSts(" + RowCnt + ',' + BaseID + ",2)'>Inactive</a></span></B>"}
//                        else
//                           { text = "<B><span><a id='His" + RowCnt + "' href='javascript:fnUpdateSts(" + RowCnt + ',' + BaseID + ",1)'>Active</a></span>&nbsp;&nbsp;&nbsp;Inactive</B>" }
//                           
//                        document.getElementById("Status" + RowCnt).innerHTML=text

//                    }
//                } 
//                var url="StatusUpdate_Ajax.aspx?BID=" + BaseID + "&status=" + status  + "&Type=1"
//                xmlhttp.open("POST",url,true);
//                xmlhttp.send(null);
//          }
//  
//        
//            
//        $(document).ready(function() {	
//	        $(window).resize(function () {
// 		        var box = $('#boxes .window');
//         
//                //Get the screen height and width
//                var maskHeight = $(document).height();
//                var maskWidth = $(window).width();
//              
//                //Set height and width to mask to fill up the whole screen
//                $('#mask').css({'width':maskWidth,'height':maskHeight});
//                       
//                //Get the window height and width
//                var winH = $(window).height();
//                var winW = $(window).width();

//                //Set the popup window to center
//                box.css('top',  winH/2 - box.height()/2);
//                box.css('left', winW/2 - box.width()/2);
//	        });
//        });

        function Fn_Message_Show(Message,MessageType)
        {
            switch (MessageType)
            {
                case 1:
                    $("#MessageImgTd").html("<div><img src=\"../Images/Info.GIF\" class=\"MessageImgCls\"/></div>")
                    $("#MessageTxtTd").html("<div class=\"MessageTxtCls\"><span id=\"MsgSpan\"></span></div>");
                    $("#MessageBtnTd").html("<br/><button type=\"button\" class=\"ButCls\" onclick=\"Fn_Message_Hide()\">OK</button>");
                    break;
                case 2:
                    $("#MessageImgTd").html("<div><img src=\"../Images/Exlamatry.GIF\" class=\"MessageImgCls\"/></div>")
                    $("#MessageTxtTd").html("<div class=\"MessageTxtCls\"><span id=\"MsgSpan\"></span></div>");
                    $("#MessageBtnTd").html("<br/><button type=\"button\" class=\"ButCls\" onclick=\"Fn_Message_Hide()\">OK</button>");
                    break;
                case 3:
                    $("#MessageImgTd").html("<div><img src=\"../Images/QuestionMark.GIF\" class=\"MessageImgCls\"/></div>")
                    $("#MessageTxtTd").html("<div class=\"MessageTxtCls\"><span id=\"MsgSpan\"></span></div>");
                    $("#MessageBtnTd").html("<br/><button type=\"button\" class=\"ButCls\" onclick=\"Fn_Message_Hide()\">OK</button>");
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
        }
   function myTrim(str)
   {
   return str.replace(/^\s+|\s+$/gm,'')
   }
   function CheckDescVal(id,cap) 
   {
           var expmsg = ""
           var Flag=0
     if(document.getElementById(id).value !='' )
     {
     document.getElementById(id).value= myTrim(document.getElementById(id).value)
     var  itemName =document.getElementById(id).value
       
       if (itemName.indexOf("\'") >-1 || itemName.indexOf("\"") >-1 )
       {
          expmsg= "\n - Single Coute(\') or Double Coute(\") Symbols Are Not Allowed In "+cap
       }     
       if (itemName.indexOf("  ") >-1)
       {
          expmsg= "\n - Double Space Is Not Allowed In "+cap
       }
       
       if(expmsg != "")
       {
       alert(expmsg)
       document.getElementById(id).value=""
       }      
     
   }
 }
 function fnUpdateSts(RowCnt, BaseID, status) {
     // ShowMask()
     var pageURL = "WebForm1.aspx?BID=" + BaseID + "&status=" + status + "&Type=1"

     var PWidth = 650
     var PHeight = 300
     var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
     var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

     var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=" + ScreenTop + ",left=" + ScreenLeft
     SpWinObj = window.open(pageURL, 'SpecCodes', features)
     if (SpWinObj.opener == null) SpWinObj.opener = self;
     SpWinObj.focus();

 }

 function fnPageRefresh() {
     window.location = window.location.pathname

 }  
             
    </script>
</body>
</html>
