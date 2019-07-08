<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ControlCfg.aspx.vb" Inherits="ControlConfiguration.ControlCfg" %>
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
    jQuery(document).ready(function () {
        var d = new Date();
        d = d.getTime();
        if (jQuery('#reloadValue').val().length == 0) {
            jQuery('#reloadValue').val(d);
            jQuery('body').show();
        }
        else {
            jQuery('#reloadValue').val('');
            location.reload();
        }
    });
</script>

    
    <script language="javascript">


        function FnDataSheetpopup() {
            debugger
            //SetPopDimensions()
            var SheetTypeId

            if (document.getElementById("CtrlTypeDDl").value != "") {
                if (document.getElementById("CtrlTypeDDl").value == "15")  //Action Plan Type-2
                {
                    SheetTypeId = 1
                }
                if (document.getElementById("CtrlTypeDDl").value == "17") //MultiObjRefCheckList
                {
                    if (document.getElementById("Objectddl").value != "") {
                        SheetTypeId = document.getElementById("Objectddl").value
                    }
                    else {
                        alert("Select Object Type");
                        return;
                    }
                }
                if (document.getElementById("CtrlTypeDDl").value == "21") { SheetTypeId = 12 }  // batch recommendation
                if (document.getElementById("CtrlTypeDDl").value == "22") { SheetTypeId = 14 } // batch authorization1
                if (document.getElementById("CtrlTypeDDl").value == "23") { SheetTypeId = 13 } // bathc section & recomm
                if (document.getElementById("CtrlTypeDDl").value == "24") { SheetTypeId = 15 } // batch authorization2

            }

            var pageURL = "DataSheetsPopup.aspx?SheetTypeId=" + SheetTypeId
            var PWidth = 550
            var PHeight = 420
            var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
            var ScreenTop = parseInt(window.screen.height - PHeight) / 2;
            var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft
            SpWinObj = window.open(pageURL, 'SpecCodes', features)
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();
        }

        function fnOpenDataSheetPopUp_Ret(SheetIdVal, SheetCode, SheetType, SheetTypeId) {
            document.getElementById("DataSheetLbl").innerHTML = SheetCode
            document.getElementById("DataSheetidTxt").value = SheetIdVal
            document.getElementById("DataSheetDescTxt").value = SheetCode

        }

        function myTrim(str) {
            return str.replace(/^\s+|\s+$/gm, '')
        }
        function CheckDescVal(id, cap) {
            var expmsg = ""
            var Flag = 0
            if (document.getElementById(id).value != '') {
                document.getElementById(id).value = myTrim(document.getElementById(id).value)
                var itemName = document.getElementById(id).value

                if (itemName.indexOf("\'") > -1 || itemName.indexOf("\"") > -1) {
                    expmsg = "\n - Single Coute(\') or Double Coute(\") Symbols Are Not Allowed In " + cap
                }
                if (itemName.indexOf("  ") > -1) {
                    expmsg = "\n - Double Space Is Not Allowed In " + cap
                }

                if (expmsg != "") {
                    alert(expmsg)
                    document.getElementById(id).value = ""
                }

            }
        }
        function datasheetinit() {
            document.getElementById("DataSheetLbl").innerHTML = ""
            document.getElementById("DataSheetidTxt").value = ""
            document.getElementById("DataSheetDescTxt").value = ""
        }
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" autocomplete="off" method="post" runat="server">
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
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="CtrlTypeTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:DropDownList ID="CtrlTypeDDl" runat="server" AutoPostBack="true">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="DeptReqTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DeptReqTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <asp:RadioButtonList ID="DeptReqRBL" runat="server" CssClass="MainTD" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1" Selected="true">Yes</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="DrpTypeTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DrpTypeTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <asp:RadioButtonList ID="DrpTypeRBL" runat="server" onclick="ChangeCss()" CssClass="MainTD"
                                    RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Object Type</asp:ListItem>
                                    <asp:ListItem Value="2">List Type</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="objecttr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="ObjectTYpeTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <asp:DropDownList ID="Objectddl" runat="server" onchange="datasheetinit()">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="MinTxtSizeTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="TaskNameTd"> </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <asp:TextBox ID="MinTxtSizeTxt" runat="server" MaxLength="2" onkeypress="return StdTxtIsDigit(event);"
                                    OnfocusOut="funCheckValue(1)"></asp:TextBox>&nbsp;
                                <asp:Label ID="Label1" CssClass="MainTD" runat="server" Text="(Min Length is 1 Character)"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="MaxtxtSizeTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="TableCell1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <asp:TextBox ID="MaxtxtSizeTxt" runat="server" MaxLength="4" onkeypress="return StdTxtIsDigit(event);"
                                    OnfocusOut="funCheckValue(2)"></asp:TextBox>&nbsp;
                                <asp:Label ID="Label2" CssClass="MainTD" runat="server" Text="(Max Length is 3500 characters)"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="CAPACodeTR" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="CAPACodeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <asp:TextBox ID="CAPACodeTxt" runat="server" MaxLength="2" CssClass="TxtCls"></asp:TextBox>&nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="DataSheetTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DataShhetTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <input class='RsnPUP' onclick="FnDataSheetpopup()" tabindex="5" type="button">
                                <asp:Label ID="DataSheetLbl" runat="server"></asp:Label>
                                <asp:TextBox ID="DataSheetidTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="DataSheetDescTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="AcpFldCap" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="TableCell2"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <asp:TextBox ID="AcpFldtxt" runat="server" MaxLength="2"></asp:TextBox>&nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="AcpType2Tr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold; width: 33%" ID="Acp2DdlTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TableCell4" ColumnSpan="2">
                                <asp:DropDownList ID="Acp2Ddl" runat="server" AutoPostBack="true">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="AcpItemTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold; width: 33%" ID="AcpItemTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TableCell7" ColumnSpan="2">
                                <asp:DropDownList ID="AcpItemDDl" runat="server" AutoPostBack="true">
                                </asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell CssClass="HideRow" ID="TableCell3" ColumnSpan="2">
                                <asp:DropDownList ID="AcpTypeddl" runat="server">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="FldnameTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="FldNameTxt" onfocusout='CheckDescVal("FldNameTxt","Control Name")' runat="server" MaxLength="60" CssClass="TxtCls"></asp:TextBox>
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit"
                                    Width="70"></asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" ID="FldTblTr">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="FldTab">
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
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
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
                    <asp:TextBox ID="ProtocolFieldKeys" Style="display: none" Width="0" Height="0" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ProtocolFieldNames" Style="display: none" Width="0" Height="0" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ProtocolFieldbndto" Style="display: none" Width="0" Height="0" runat="server"></asp:TextBox>
                    <asp:TextBox ID="AcpTypeTxt" Style="display: none" Width="0" Height="0" runat="server"></asp:TextBox>
		    <input id="reloadValue" type="hidden" name="reloadValue" value="" />

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
       function ReplaceText(id)
    {
    var digival=/\D/g
    var obj=document.getElementById(id)
    obj.value=obj.value.replace(digival,'')
    }
     function ResetData()
     {
         if(<%=IsLoaded%>=="0")
         {
            var TCnt = document.getElementById("CtrlTypeDDl").length;
            for(var ItemCnt=0;ItemCnt<TCnt;ItemCnt++)
            {
                document.getElementById("CtrlTypeDDl")[ItemCnt].selected = false;
            }
            document.getElementById("CtrlTypeDDl")[0].selected = true;
         }
     }
     setTimeout("ResetData()","200")
     function funCheckValue(FldType)
     {
       if (FldType==1) // For  Minimum Txt Size
       {
       
         if (document.getElementById("MinTxtSizeTxt").value  !="")
         { 
             if(document.getElementById("MinTxtSizeTxt").value <1)
             {
               alert("Minimum Text Size Value Must Be Greater Than  Or Equal To 1")
               document.getElementById("MinTxtSizeTxt").value=""
               
             }
              ReplaceText("MinTxtSizeTxt")
         }    
      }   
      else
      {
         if (document.getElementById("MaxtxtSizeTxt").value  !="")
         { 
             if(document.getElementById("MaxtxtSizeTxt").value > 3500)
             {
               alert("Maximum Text Size Value Must be Less Than Or Equal To 3500")
               document.getElementById("MaxtxtSizeTxt").value=""
             }
             
             if(document.getElementById("MaxtxtSizeTxt").value < 3)
             {
               alert("Maximum Text Size Value Must Be Greater Than  Or Equal To 3")
               document.getElementById("MaxtxtSizeTxt").value=""
               
             }
          ReplaceText("MaxtxtSizeTxt")
         }    
         
       }
       
       //To compare Maximum text size value with minimum text size value
       if((document.getElementById("MinTxtSizeTxt").value  !="") && (document.getElementById("MaxtxtSizeTxt").value  !="") )
       {
            var ReturnVal
            var MaxVal = 0
            var MinVal = 0
            var MaxL = 0
            var MinL = 0
           
            MinVal = parseInt(document.getElementById("MinTxtSizeTxt").value)
            MaxVal = parseInt(document.getElementById("MaxtxtSizeTxt").value)
          
//            MaxL = MaxVal.length
//            MinL = MinVal.length
//            
//            if (MaxL < MinL)
//                ReturnVal=1
            if (MinVal > MaxVal)
                ReturnVal = 1
                
//            if ((MinVal > MaxVal) && (MaxL == MinL))
//             ReturnVal = 1

            if (ReturnVal == 1)
            {
                alert("Maximum Text Size Value Must Be Greater Than Or Equal To Minimum Text Size Value")
                document.getElementById("MaxtxtSizeTxt").value=""
            }
       }
       
       
    }
    
        
     function ChangeCss()
     {
       if (document.getElementById("DrpTypeRBL_0").checked==true)
        {
          document.getElementById("objecttr").className="MainTD"
        }
        else if (document.getElementById("DrpTypeRBL_1").checked==true)
        {
          document.getElementById("objecttr").className="HideRow"
          document.getElementById("Objectddl").value=""
        }
     }
     
     function ControlValidation(src,args) 
        {
            args.IsValid=true;
            Page_IsValid=true;
            var ControlVal=document.getElementById("CtrlTypeDDl").value; 
            if(ControlVal==2){
                if ((document.getElementById("DrpTypeRBL_0").checked==false) && (document.getElementById("DrpTypeRBL_1").checked==false))
                {
                        src.errormessage="Select Value For: DropDown Type"
                        args.IsValid=false;
                        Page_IsValid=false;
                }
                else if (document.getElementById("DrpTypeRBL_0").checked==true)
                {
                  if (document.getElementById("Objectddl").value=="")
                  {
                        src.errormessage="Select Value For: Object Type"
                        args.IsValid=false;
                        Page_IsValid=false;
                  }
                }
              } //end if

        }
     
     function fnUpdateSts(RowCnt,FldID,status)
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
                        var text=''
                        if (RtnStr==1)
                          {  text = "<B>Active&nbsp;&nbsp;&nbsp;<span><a id='His" + RowCnt + "' href='javascript:fnUpdateSts(" + RowCnt + ',' + FldID + ",2)'>Inactive</a></span></B>"}
                        else
                           { text = "<B><span><a id='His" + RowCnt + "' href='javascript:fnUpdateSts(" + RowCnt + ',' + FldID + ",1)'>Active</a></span>&nbsp;&nbsp;&nbsp;Inactive</B>" } 
                            
                        document.getElementById("Status" + RowCnt).innerHTML=text

                    }
                }  
                var ctrlid = document.getElementById("CtrlTypeDDl").value
                var url="StatusUpdate_Ajax.aspx?FldID=" + FldID + "&status=" + status  + "&Type=2" + "&ctrlid=" + ctrlid
                xmlhttp.open("POST",url,true);
                xmlhttp.send(null);
          }
          
          
 function ShowConfermationMessage()
    {
        var ConfermationMessage = "<%=ErrerMessage%>"
        
        if(ConfermationMessage != "")
        {
        if(ConfermationMessage.indexOf("Already Registered") >-1 )
        {
         Fn_Message_Show(ConfermationMessage,2)
        }
        else
        {
          Fn_Message_Show(ConfermationMessage,1)
        }  
            return(false);
        }
        
    }
    
    ShowConfermationMessage()
    
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
        
        function StdTxtIsDigit(e)
    {
 
        if(e.shiftKey ==true)
            return false;
        var KeyIdentifierMap =
        {
            End            : 35,
            Home        : 36,
            Left        : 37,
            Right        : 39,
            'U+00007F'    : 46        // Delete
        }
        if ( !e )
            e = event ;

    var AvailableVal = window.event.srcElement.value
          var iCode = ( e.keyCode || e.charCode );
            if(e.shift==true)
                return false
            if(AvailableVal == '' && iCode == 48)
                return false
        if((iCode == 46) && (AvailableVal.indexOf(".") != -1))
                return false;
        if((iCode == 46) && (window.event.srcElement.value == ""))
                return false;

        if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
                iCode = KeyIdentifierMap[ e.keyIdentifier ] ;
            if(iCode == 39 ) return false;

        return (
                ( iCode >= 48 && iCode <= 57 )        // Numbers
                || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
                || iCode == 8                        // Backspace
                                       // Delete
                || iCode == 9                        // Tab
                )
    }
        
    </script>

</body>
</html>
