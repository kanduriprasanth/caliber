<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DataSheetReg.aspx.vb" Inherits="ControlConfiguration.DataSheetReg" %>
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

    <script type="text/javascript" src="../JScript/jquery.min.js"></script>

    <link href="../Plugins/ColorPicer/colorpicker.css" rel="stylesheet" type="text/css" />

    <script src="../Plugins/ColorPicer/colorpicker.js" type="text/javascript"></script>

    <%-- <script src="../Plugins/ColorPicer/eye.js" type="text/javascript"></script>
    <script src="../Plugins/ColorPicer/layout.js" type="text/javascript"></script>--%>
    
    
    <link href="../Plugins/JqueryModel/simplemodal.css" rel="stylesheet" type="text/css" />

    <script src="../Plugins/JqueryModel/jquery.simplemodal.js" type="text/javascript"></script>




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
    <script language="javascript">
    
   
    function ChkVal(id,cap)
    {
    var expmsg=""
    if(document.getElementById(id).value <= 0 )
    {
        expmsg = cap + " Cannot Be Empty And Value Entered Should Be Greater Than 0"
    alert(expmsg)
    document.getElementById(id).value=""
    }
    }
    
    function ReplaceText(cnt)
    {
    
  document.getElementById("WidthTxt_" +cnt).onpaste=new Function("return false")
   
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
       if (id == "CodeTxt")
       {
       if (itemName.indexOf("#") >-1 || itemName.indexOf("=") >-1 || itemName.indexOf("+") >-1 || itemName.indexOf("&") >-1)//#, &,+,= 
       {
          expmsg= "\n - Special Symbols Like  #, &,+,= Are Not Allowed In "+cap
       }
       }
       
       if(expmsg != "")
       {
       alert(expmsg)
       document.getElementById(id).value=""
       }      
     
   }
 }
   
   
    var pageURL;
function FnOpenPreviewPage(Type,SheetId)
{
   
   if(Type == 1)
   {
    var errMsg = ""
    var ret = false
    if(document.getElementById("DataShtDDL").value == "")
    {
     errMsg += "Select Value For: Data Sheet Type \n";
     ret = true ;
    }
    if(document.getElementById("NoOfColTxt").value=="" )
    {
            errMsg += "Enter Value For: No. Of Columns \n"
            ret = true          
    }
    if (document.getElementById("TTLChk").checked)
    {
        if(document.getElementById("RowCapTxt").value == "")
        {
         errMsg += "Enter Value For: Title \n";
         ret = true ;
        }
    }
   if(document.getElementById("NoOfColTxt").value != "" )
    {
        var noOfColumns = parseInt(document.getElementById("NoOfColTxt").value)
        for(var i = 0; i < noOfColumns; i++)
        {
            if(document.getElementById("ColDDL_" + i).value == "")
            {
             errMsg += "Select Value For: Binding Column - " + (i+1) +"\n";
             ret = true ;
            }
            if(document.getElementById("ColCapChk").checked)
            {
                if(document.getElementById("ColTxt_" + i).value == "")
                {
                 errMsg += "Enter Value For: Column Title - " + (i+1) +"\n";
                 ret = true ;
                }
            }
            if(document.getElementById("WidthTxt_" + i).value == "")
            {
             errMsg += "Enter Value For: Column Width - " + (i+1) +"\n";
             ret = true ;
            }
            
        }
    }
    if(document.getElementById("NoofRowsTxt").value == "")
    {
             ret = true 
            errMsg += "Enter Value For: Default No. of Rows(Only For Template) "
    }
    
    if(ret == false && document.getElementById("NoOfColTxt").value!="" && document.getElementById("DataShtDDL").value!="") {
    debugger
        var SheetType = document.getElementById("DataShtDDL").value;
        
        var TitleCkh=document.getElementById("TTLChk").checked ? 1 : 0;
        var Title = document.getElementById("RowCapTxt").value;
        var TitleBold = document.getElementById("BoldTitleChk").checked ? 1 : 0;
        var TitleFont = document.getElementById("TitleFontDDl").value;
        var TitleFontSize = document.getElementById("TitleFontSzeDDl").value;
        var TitleAlign = document.getElementById("TitleAlgnDDl").value;
        
        var SubTitleCkh=0 // This is hided in the page so it is set to 0  document.getElementById("SubTTLChk").checked ? 1 : 0;
        var SubTitle = "" //"Set Description" //document.getElementById("ObservationDDL").children(document.getElementById("ObservationDDL").selectedIndex).innerText;
        var SubTitleBold = document.getElementById("BoldSubTtlChk").checked ? 1 : 0;
        var SubTitleFont = document.getElementById("SubTtlFontDDl").value;
        var SubTitleFontSize = document.getElementById("SubTtlFontSzeDDl").value;
        var SubTitleAlign = document.getElementById("SubTtlAlgnDDl").value;
        
        var noOfColumns = document.getElementById("NoOfColTxt").value;
        var ColumnsBold = document.getElementById("BoldCapChk").checked ? 1 : 0;
        var ColumnsWidthUnits = document.getElementById("WidthUnitsDdl").value;
        var ColumnsFont = document.getElementById("FontDDl").value;
        var ColumnsFontSize = document.getElementById("FontSzeDDl").value;
        var ColumnsAlign = document.getElementById("ColTextAlignDdl").value;
        //var ObsTpltId = document.getElementById("ObservationIdTxt").value;
        //ObsTpltId = (ObsTpltId == "" ? 0 : ObsTpltId)
        var WidthArr = [];
        var ColTitleArr = [];
        var ColNameArr=[];
        var ColumnWidth = "";
        var ColumnCaptions ="";
        var ColumnNamesList=""
        //by T$$
        var ColFontArr =[];
        var ColItalicArr=[];
        var ColColorArr=[];
        var ColFont="";
        var ColItalic="";
        var ColColor="";
        
        var RecordsPerRow =0
        var DisplayType = document.getElementById("DisplayModeDdl").value;
        if(DisplayType == "2")
        {
            RecordsPerRow= document.getElementById("RecordsPerRowDdl").value;
        }
            
        var NoofRows= document.getElementById("NoofRowsTxt").value;
        for(var i = 0; i < noOfColumns; i++)
        {
            
            WidthArr[i] = document.getElementById("WidthTxt_" + i).value;
            ColTitleArr[i] = document.getElementById("ColTxt_" + i).value;
            ColNameArr[i] = document.getElementById("ColDDL_" + i).value;
            ColFontArr[i] =document.getElementById("FontDDL_" + i).value;
            if(document.getElementById("ItalicChk_" + i).checked==true)
            {
                ColItalicArr[i]=1;
            }
            else
            {
                ColItalicArr[i]=0;
            }
            ColColorArr[i]=document.getElementById("ColorTxt_" + i).value.replace("#","_");
        }
        ColumnWidth=WidthArr.join(",");
        ColumnCaptions=ColTitleArr.join("$@$");
        ColumnNamesList=ColNameArr.join("$@$");
        ColFont=ColFontArr.join("$@$");
        ColItalic=ColItalicArr.join("$@$");
        ColColor=ColColorArr.join("$@$");
        
        SetPopDimensions()
        pageURL1 = "../CAPAWORKS/Preview.aspx?";//&Type="+1+"&Width=" + Width + "&ColTitle=" + ColTitle + "&RowCaption=" + RowCaption + "&BindingCol=" + BindingCol + "&Font=" + Font + "&FontSze=" + FontSze + "&TitleAlgn=" + TitleAlgn + "&WidthMeasure=" + WidthMeasure + "&DefaultRows=" + DefaultRows ;
        
       
        
         pageURL1 += "&Type=" +Type;
        pageURL="";
        pageURL += "@@@@@SType=" + SheetType; 
      //  pageURL += "&ObsTpltId=" + ObsTpltId; 
        pageURL += "@@@@@Title=" + Title; 
        pageURL += "@@@@@TitleChk="+TitleCkh;
        pageURL += "@@@@@TitleBold=" + TitleBold; 
        pageURL += "@@@@@TitleFont=" + TitleFont; 
        pageURL += "@@@@@TitleFontSize=" + TitleFontSize; 
        pageURL += "@@@@@TitleAlign=" + TitleAlign; 
       
        pageURL += "@@@@@SubTitleChk="+SubTitleCkh;
        pageURL += "@@@@@SubTitle=" + SubTitle; 
        pageURL += "@@@@@SubTitleBold=" + SubTitleBold; 
        pageURL += "@@@@@SubTitleFont=" + SubTitleFont; 
        pageURL += "@@@@@SubTitleFontSize=" + SubTitleFontSize; 
        pageURL += "@@@@@SubTitleAlign=" + SubTitleAlign;
       
        pageURL += "@@@@@noOfColumns=" + noOfColumns; 
        pageURL += "@@@@@ColumnsBold=" + ColumnsBold; 
        pageURL += "@@@@@ColumnsWidthUnits=" + ColumnsWidthUnits; 
        pageURL += "@@@@@ColumnsFont=" + ColumnsFont; 
        pageURL += "@@@@@ColumnsFontSize=" + ColumnsFontSize; 
        pageURL += "@@@@@ColumnsAlign=" + ColumnsAlign; 
        pageURL += "@@@@@ColumnWidth=" + ColumnWidth; 
        pageURL += "@@@@@ColumnCaptions=" + ColumnCaptions; 
        pageURL += "@@@@@DefaultRows=" + NoofRows; 
        pageURL += "@@@@@DisplayType=" + DisplayType; 
        pageURL += "@@@@@RecordsPerRow=" + RecordsPerRow; 
        pageURL += "@@@@@ColumnNamesList=" + ColumnNamesList; 
        pageURL += "@@@@@ColFont=" + ColFont;
        pageURL += "@@@@@FntColor=" + ColColor;
        pageURL += "@@@@@ColItalic=" + ColItalic;
        pageURL += "@@@@@Orientation=" + ((document.getElementById("OrientationRBn_0").checked == true)? "1" : "2")
      }
        else
        {
            alert(errMsg);
            return false;
        }

    }    
    else
    {
        pageURL1 = "Preview.aspx?";
        pageURL1 += "&Type=" +Type;
        pageURL1 += "&SheetId=" +SheetId;
    }
    
        //document.getElementById("PageUrl").value = pageURL;
        var yval = screen.availHeight - 40;
        var xval = screen.availWidth;
        var features = 'height='+ yval + ',width=' + xval + ',toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=0,left=0';
//        SpWinObj = window.open(pageURL, 'RepPopUp', "height=" + 600 + ",width=" + 800 + ",toolbar=no,menubar=no,resizable=yes,status=no,scrollbars=yes,top=1,left=1");
        SpWinObj = window.open(pageURL1, 'RepPopUp',features);
//        SpWinObj = window.open("Preview.aspx", 'RepPopUp',features);
        if (SpWinObj.opener == null) SpWinObj.opener = self;
        SpWinObj.focus();
   }
   
    function RertunData(Type)
    {
        return pageURL;
    }
    
    function FnChange(i)
    { 
    var flag=0;
        document.getElementById("ColTxt_" + i).value=document.getElementById("ColDDL_" + i).options[document.getElementById("ColDDL_" + i).selectedIndex].text
                for(j=0;j < parseInt(document.getElementById("NoOfColTxt").value);j++)
                {
                        if(document.getElementById("ColDDL_" + i).options[document.getElementById("ColDDL_" + i).selectedIndex].text == document.getElementById("ColDDL_" + j).options[document.getElementById("ColDDL_" + j).selectedIndex].text && i != j)
                        {
                        flag=1;
                        }
                }
        if(flag==1)
        {
        alert("The Selected Binding Column Is Already Selected")
       document.getElementById("ColDDL_" + i).selectedIndex="0"
       document.getElementById("ColTxt_" + i).value=""
        }
    }


    </script>

    <script type="text/javascript">
    function SetRecordsPerRow()
    {
        var DisplayMode = (document.getElementById("DisplayModeDdl").value == "1" ? 1 : 2);
        document.getElementById("RecordsPerRowTr").className =((DisplayMode == 1)? "HideRow" : "");
    }


  function AjaxStatusChange(RowCnt, DataShhetID) {
    var Status = $("#Status" + RowCnt).val();
         
        $.ajax({
            url: 'DATASheetStatusChange.aspx',
            cache: false,
            //type: "POST",
            //dataType: "html",
            data: "DataShhetID=" + DataShhetID + "&Status=" + Status,
            success: function (data) {
                var s = data;
                if (s == "1") {
                    $("#StatusTd" + RowCnt).text("Active");
                    document.getElementById("StatusTd" + RowCnt).style.color = "Green";
                    $("#Status" + RowCnt).val(1);
                }
                else if (s == "0") {
                    $("#StatusTd" + RowCnt).text("In-Active");
                    document.getElementById("StatusTd" + RowCnt).style.color = "Red"
                    $("#Status" + RowCnt).val(0);
                }
            }
            ,
            error: function (xhr, errorType) {
                var Error = xhr.responseText;
                alert(Error);
            }
        });
    }
    
    
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server">Data Sheet</asp:Literal>
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
                            <asp:TableCell CssClass="MainTD" ID="DataShtTypeTD" Font-Bold="true" Width="40%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="DataShtDDL" runat="server" OnChange="Fn_ClearParamData()" AutoPostBack="true" Width="250px"
                                    >
                                    <asp:ListItem Value="">[Select]</asp:ListItem>
                                </asp:DropDownList>
                                <asp:TextBox runat="server" ID="DataShtDDLTxt" CssClass="HideRow" />
                            </asp:TableCell>
                        </asp:TableRow>
            
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Font-Bold="true" Width="40%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTd">
                                <asp:TextBox ID="CodeTxt" runat="server"  onfocusout='CheckDescVal("CodeTxt","Data Sheet Code")' CssClass="UCTxtCls" MaxLength="50" Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD">
                                <label class="MainTD" style="font-weight: bold;">
                                    Title Required</label>
                                <asp:CheckBox runat="server" ID="TTLChk" Font-Bold="true" onClick="FnTTLChkClick()" />
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <label class="MainTD" style="font-weight: bold;">
                                    Column Title Required</label>
                                <asp:CheckBox runat="server" ID="ColCapChk" Font-Bold="true" Enabled="false" onClick="FnColCapChkClick()" />
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc1:EsignObj id="EsignObj1" runat="server" visible="false">
                                </uc1:EsignObj>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2">
                                <asp:Table ID="TitleTbl" runat="server" CssClass="SubTabel" Width="100%">
                                    <asp:TableRow ID="TitleRw" runat="server">
                                        <asp:TableCell CssClass="MainTD" ID="RowCaptionTd" Font-Bold="true"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                            <asp:TextBox ID="RowCapTxt" runat="server" onfocusout='CheckDescVal("RowCapTxt","Title")' CssClass="TxtCls" MaxLength="200" Width="250px"
                                                AccessKey="C" TabIndex="2"></asp:TextBox>
                                        </asp:TableCell>
                                        <asp:TableCell ID="BoldTitleTd" CssClass="MainTD" Font-Bold="true"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:CheckBox ID="BoldTitleChk" runat="server" Checked="true" />
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ID="TitleFontTd" Font-Bold="true"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:DropDownList ID="TitleFontDDl" runat="server" Width="100px">
                                                <asp:ListItem Value="Consolas">Consolas</asp:ListItem>
                                                <asp:ListItem Value="Calibri">Calibri</asp:ListItem>
                                                <asp:ListItem Value="Comic Sans MS">Comic Sans MS</asp:ListItem>
                                                <asp:ListItem Value="Verdena">Verdena</asp:ListItem>
                                                <asp:ListItem Selected="true" Value="Times New Roman">Times New Roman</asp:ListItem>
                                                <asp:ListItem Value="Courier">Courier</asp:ListItem>
                                                <asp:ListItem Value="Arial">Arial</asp:ListItem>
                                                <asp:ListItem Value="Arial Narrow">Arial Narrow</asp:ListItem>
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ID="TitleFontSzeTd" Font-Bold="true"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:DropDownList ID="TitleFontSzeDDl" runat="server" Width="100px">
                                                <asp:ListItem Value="8">8</asp:ListItem>
                                                <asp:ListItem Value="9">9</asp:ListItem>
                                                <asp:ListItem Value="10">10</asp:ListItem>
                                                <asp:ListItem Value="11" Selected="true">11</asp:ListItem>
                                                <asp:ListItem Value="12">12</asp:ListItem>
                                                <asp:ListItem Value="14">14</asp:ListItem>
                                                <asp:ListItem Value="16">16</asp:ListItem>
                                                <asp:ListItem Value="18">18</asp:ListItem>
                                                <asp:ListItem Value="20">20</asp:ListItem>
                                                <asp:ListItem Value="22">22</asp:ListItem>
                                                
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ID="TitleAlgnTd" Font-Bold="true">
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:DropDownList ID="TitleAlgnDDl" runat="server" Width="100px">
                                                <asp:ListItem Value="left">left</asp:ListItem>
                                                <asp:ListItem Value="center" Selected="true">center</asp:ListItem>
                                                <asp:ListItem Value="right">right</asp:ListItem>
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD" ID="NoOfColTD" Font-Bold="true"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:TextBox ID="NoOfColTxt" runat="server" CssClass="TxtCls" AutoPostBack="true"
                                                MaxLength="2" Width="50px" AccessKey="C" TabIndex="2" onkeypress="return IsDigit(event);"></asp:TextBox>
                                        </asp:TableCell>
                                        <asp:TableCell ID="BoldCapTd" CssClass="MainTD" Font-Bold="true"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:CheckBox ID="BoldCapChk" runat="server" />
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ID="WidthUnitsTd" Font-Bold="true"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                            <asp:DropDownList ID="WidthUnitsDdl" runat="server" Width="100px">
                                                <asp:ListItem Value="in" Selected="true">Inches</asp:ListItem>
                                                <asp:ListItem Value="%">Percent</asp:ListItem>
                                                <asp:ListItem Value="px">Pixel</asp:ListItem>
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="HIdeRow" ID="FontTd" Font-Bold="true"></asp:TableCell>
                                        <asp:TableCell CssClass="HIdeRow">
                                            <asp:DropDownList ID="FontDDl" runat="server" Width="100px">
                                                <asp:ListItem Value="Consolas">Consolas</asp:ListItem>
                                                <asp:ListItem Value="Calibri">Calibri</asp:ListItem>
                                                <asp:ListItem Value="Verdena">Verdena</asp:ListItem>
                                                <asp:ListItem Value="Times New Roman">Times New Roman</asp:ListItem>
                                                <asp:ListItem Value="Courier">Courier</asp:ListItem>
                                                <asp:ListItem Selected="true" Value="Arial">Arial</asp:ListItem>
                                                <asp:ListItem Value="Arial Narrow">Arial Narrow</asp:ListItem>
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ID="FontSzeTd" Font-Bold="true"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:DropDownList ID="FontSzeDDl" runat="server" Width="100px">
                                                <asp:ListItem Value="8">8</asp:ListItem>
                                                <asp:ListItem Value="9">9</asp:ListItem>
                                                <asp:ListItem Value="10">10</asp:ListItem>
                                                <asp:ListItem Value="11" Selected="true">11</asp:ListItem>
                                                <asp:ListItem Value="12">12</asp:ListItem>
                                                <asp:ListItem Value="14">14</asp:ListItem>
                                                <asp:ListItem Value="16">16</asp:ListItem>
                                                <asp:ListItem Value="18">18</asp:ListItem>
                                                <asp:ListItem Value="20">20</asp:ListItem>
                                                <asp:ListItem Value="22">22</asp:ListItem>
                                                
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ID="ColTextAlignTd" Font-Bold="true"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:DropDownList ID="ColTextAlignDdl" runat="server" Width="100px">
                                                <asp:ListItem Value="left" Selected="true">left</asp:ListItem>
                                                <asp:ListItem Value="right">right</asp:ListItem>
                                                <asp:ListItem Value="center">center</asp:ListItem>
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow CssClass="MainTD">
                                        <asp:TableCell ID="SubTTLChkTR" ColumnSpan="12" runat="server" CssClass="HideRow">
                                            <label class="MainTD" style="font-weight: bold;">
                                                Sub Title Required</label>
                                            <asp:CheckBox runat="server" ID="SubTTLChk" Checked="True" Font-Bold="true" onClick="FnSubTTLChkClick()" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow CssClass="HideRow" ID="SubTtlColumnTr">
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="2" ID="SubTtlTd" Font-Bold="true" Text="Sub Title Column">
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="HideRow" ColumnSpan="2">
                                            <asp:DropDownList ID="ObservationDDL" runat="server" Style="width: 250px;">
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                            <asp:Label Text="Set Description" runat="server" ID="SubTitleLbl"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell ID="BoldSubTtlTd" CssClass="MainTD" Font-Bold="true" Text="Bold">
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:CheckBox ID="BoldSubTtlChk" runat="server" /></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ID="SubTtlFontTd" Font-Bold="true" Text="Font">
                                        
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:DropDownList ID="SubTtlFontDDl" runat="server" Width="100px">
                                                <asp:ListItem Value="Consolas">Consolas</asp:ListItem>
                                                <asp:ListItem Value="Calibri">Calibri</asp:ListItem>
                                                <asp:ListItem Value="Comic Sans MS">Comic Sans MS</asp:ListItem>
                                                <asp:ListItem Value="Verdena">Verdena</asp:ListItem>
                                                <asp:ListItem Selected="true" Value="Times New Roman">Times New Roman</asp:ListItem>
                                                <asp:ListItem Value="Courier">Courier</asp:ListItem>
                                                <asp:ListItem Value="Arial">Arial</asp:ListItem>
                                                <asp:ListItem Value="Arial Narrow">Arial Narrow</asp:ListItem>
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ID="SubTtlFontSzeTd" Font-Bold="true" Text="Font Size"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:DropDownList ID="SubTtlFontSzeDDl" runat="server" Width="100px">
                                                <asp:ListItem Value="8">8</asp:ListItem>
                                                <asp:ListItem Value="9">9</asp:ListItem>
                                                <asp:ListItem Value="10">10</asp:ListItem>
                                                <asp:ListItem Value="11" Selected="true">11</asp:ListItem>
                                                <asp:ListItem Value="12">12</asp:ListItem>
                                                <asp:ListItem Value="14">14</asp:ListItem>
                                                <asp:ListItem Value="16">16</asp:ListItem>
                                                <asp:ListItem Value="18">18</asp:ListItem>
                                                <asp:ListItem Value="20">20</asp:ListItem>
                                                <asp:ListItem Value="22">22</asp:ListItem>
                                               
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ID="SubTtlAlgnTd" Font-Bold="true" Text="Align">
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:DropDownList ID="SubTtlAlgnDDl" runat="server" Width="100px">
                                                <asp:ListItem Value="left" Selected="true">left</asp:ListItem>
                                                <asp:ListItem Value="center">center</asp:ListItem>
                                                <asp:ListItem Value="right">right</asp:ListItem>
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="SubTabRw" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" CssClass="MainTD">
                                <asp:Table ID="DisTable" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="Center">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass= "HideRow"> 
                            <asp:TableCell ColumnSpan="2" CssClass="MainTD">
                                <label class="MainTD" style="font-weight: bold;">
                                    Calculations Required</label>
                                <asp:CheckBox runat="server" ID="CalcChk" Font-Bold="true" onClick="FnCalcChkClick()" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="CalcTabRw" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" CssClass="MainTD">
                                <asp:Table ID="CalcTable" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="Center">
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="SubHeadTD" Font-Bold="true">Type</asp:TableCell>
                                        <asp:TableCell CssClass="SubHeadTD" Font-Bold="true">Select</asp:TableCell>
                                        <asp:TableCell CssClass="SubHeadTD" Font-Bold="true">Caption</asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD">Total</asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:CheckBox ID="TotalChk" runat="server" />
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:TextBox ID="TotalTxt" runat="server">Total</asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD">Average</asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:CheckBox ID="AverageChk" runat="server" />
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:TextBox ID="AverageTxt" runat="server">Average</asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD">Minimum</asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:CheckBox ID="MinimumChk" runat="server" />
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:TextBox ID="MinimumTxt" runat="server">Minimum</asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD">Maximum</asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:CheckBox ID="MaximumChk" runat="server" />
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:TextBox ID="MaximumTxt" runat="server">Maximum</asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD">STD</asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:CheckBox ID="StdChk" runat="server" />
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:TextBox ID="StdTxt" runat="server">STD</asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD">RSD</asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:CheckBox ID="RsdChk" runat="server" />
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:TextBox ID="RsdTxt" runat="server">RSD</asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                          
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" CssClass="MainTD">
                                <label class="MainTD" style="font-weight: bold;">
                                    Signatures Required</label>
                                <asp:CheckBox runat="server" ID="SigChk" Font-Bold="true" onClick="FnSigChkClick()" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="SigTr" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="1" CssClass="MainTD">
                              <label>Signature</label>                               
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type='button' id="SigPopUp" runat="server" onclick='FnopenDataSheets()' class='RsnPUP'
                                    tabindex='5' />
                                <asp:TextBox runat="server" ID="DisplayFormatTxt" CssClass="HideRow" />
                                <asp:TextBox runat="server" ID="DisplayFormatIDTxt" CssClass="HideRow" />
                                <label runat="server" id="DisplayFormatLbl">
                                </label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="1" CssClass="MainTD">
                              <label class="MainTD" style="font-weight: bold;">Orientation</label>                   
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="OrientationRBn" runat="server" CssClass="RBList" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1" Selected="True">Portrait</asp:ListItem>
                                    <asp:ListItem Value="2">LandScape</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" ID="TableRow1" runat="server">
                            <asp:TableCell ColumnSpan="1" CssClass="MainTD">
                              <label class="MainTD" style="font-weight: bold;">Table Broder Color</label>                               
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <span id="40ColLab" class='SubDivCss' style='cursor: pointer; background-color: Black'
                                    onclick='FnColorpick(40)'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                <asp:TextBox runat="server" ID="ColorTxt_40" CssClass="HideRow" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="NoofRowsTr">
                            <asp:TableCell CssClass="MainTD" ID="NoofRowsTd" Font-Bold="true"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="NoofRowsTxt" runat="server" CssClass="TxtCls" MaxLength="3" onchange='ChkVal("NoofRowsTxt","Default No. of Rows(Only For Template)")' onkeypress="return IsDigit(event);"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DisplayModeTd" Font-Bold="true"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList CssClass="HideRow" ID="DisplayModeDdl" runat="server" onchange="SetRecordsPerRow()"
                                    Width="120">
                                    <asp:ListItem Value="1" Text="Table Model" Selected="True"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="Header Model"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:Label ID="Label1" runat="server" Text="Table Model"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RecordsPerRowTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="RecordsPerRowTd" Font-Bold="true"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="RecordsPerRowDdl" runat="server" Width="120">
                                    <asp:ListItem Value="1" Text="1"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="2" Selected="True"></asp:ListItem>
                                    <asp:ListItem Value="3" Text="3"></asp:ListItem>
                                    <asp:ListItem Value="4" Text="4"></asp:ListItem>
                                    <asp:ListItem Value="5" Text="5"></asp:ListItem>
                                    <asp:ListItem Value="6" Text="6"></asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell>
                                <input type="text" id="PageUrl" cssclass="HideRow" runat="server" />
                            </asp:TableCell>
                            <asp:TableCell>
            <input id="reloadValue" type="hidden" name="reloadValue" value="" />
</asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="FootTr" CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Button ID="btnConfirm" runat="server" onmouseover="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onmouseout="this.className='ButCls'" Text="Submit"
                                    TabIndex="2"></asp:Button>
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
								<input type=button id="PrviewBtn" onmouseover="this.className='ButOCls'" class='ButCls'
										accessKey="C" onmouseout="this.className='ButCls'" onclick="FnOpenPreviewPage(1,0)" value="Preview" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="WidthTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="BindingColTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ColTitleTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FontTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ItalicTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ColorTxt" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:Table ID="Table3" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable HideRow" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="Literal1" runat="server">Data Sheet(s) List</asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow">
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="DataScheetsDetTbl">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script type="text/javascript">
function FnColorpick(i){

 $('.SubDivCss').ColorPicker({
        color: '#cc00ff',
        onShow: function (colpkr) {
            $(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            $(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb, ele) {
      
            var Cnt = ele.id.replace("ColLab", "")
            $("#ColorTxt_" + Cnt).val('#' + hex);
            $("#" + Cnt + "ColLab").css('backgroundColor', '#' + hex);
        },
        onSubmit: function (hsb, hex, rgb, ele) {
            $(ele).ColorPickerHide();
        }
    });
    }
    
     function IsNumeric(src,args)
     {
            args.IsValid=true;
            Page_IsValid=true;
           if(isNaN(document.getElementById("NoofRowsTxt").value))
           {
               args.IsValid = false;
               Page_IsValid = false;   
               document.getElementById("NoofRowsTxt").value="";     
           }
      } 
     
     
     function IsDigit(e)  ///Function To check Numeric values
    {
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
      if(e.shiftKey==true)
            return false
      var iCode = ( e.keyCode || e.charCode );
      if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
            iCode = KeyIdentifierMap[ e.keyIdentifier ] ;
      if(iCode == 39 ) return false;
      return (
            ( iCode >= 48 && iCode <= 57 )        // Numbers
            || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
            || iCode == 8                        // Backspace
            || iCode == 9                        // Tab.
            )
    }
      function IsDigitfloat(e)
{
    if(e.shiftKey ==true)
        return false;
	var KeyIdentifierMap =
	{
		End			: 35,
		Home		: 36,
		Left		: 37,
		Right		: 39,
		'U+00007F'	: 46		// Delete
	} 
	if ( !e )
		e = event ;
	var AvailableVal = window.event.srcElement.value
	var iCode = (e.keyCode || e.charCode);
	if (e.shift == true)
	    return false

//	if (AvailableVal == '' && iCode == 48)
//	    return false
	if ((iCode == 46) && (AvailableVal.indexOf(".") != -1))
	    return false;
	if ((iCode == 46) && (window.event.srcElement.value == ""))
            return false;

	if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
			iCode = KeyIdentifierMap[ e.keyIdentifier ] ;
        if(iCode == 39 ) return false;

	return (
			( iCode >= 48 && iCode <= 57 )		// Numbers
			|| (iCode >= 35 && iCode <= 40)		// Arrows, Home, End
			|| iCode == 8						// Backspace
			|| iCode == 46						// Delete
			|| iCode == 9	                    // Tab
			)
}   
  
</script>

<script type="text/javascript">
 function Fn_ClearParamData()
{
  var NoOfCol
  NoOfCol = document.getElementById("NoOfColTxt").value 
     for(var i=0;i < NoOfCol;i++)
            { document.getElementById("NoOfColTxt").value=2
                document.getElementById("ColTxt_" + i).value=""
                document.getElementById("ColDDL_" + i).value=""
                document.getElementById("WidthTxt_" + i).value=""
                document.getElementById("ItalicChk_" + i).checked=false
                document.getElementById("FontDDL_" + i).value=""
                document.getElementById("ColorTxt_" + i).value=""
              }
}
    function FnopenDataSheets()
    {

        if (document.getElementById("SigChk").checked == true)
        {
            var DStype = 62
            var pageURL = "../ProcessOperTemplate/DataSheetPopup.aspx?DSType=" + DStype  + "&setCount=" + 0
            var features = "height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=250,left=150"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }       
    }
    function GetSheetValue(BaseId,SheetCode,setCount)
    {
        document.getElementById("DisplayFormatIDTxt").value=BaseId
        document.getElementById("DisplayFormatTxt").value=SheetCode
        document.getElementById("DisplayFormatLbl").innerHTML=SheetCode       
    }
    function Ok_GetSheetValue()
	{
	}
</script>

<script type="text/javascript">
function FnCalcChkClick()
{ 
  if (document.getElementById("CalcChk").checked == true)
  {
          document.getElementById("CalcTabRw").setAttribute("className", "MainTD")
  }
  else
  {
        document.getElementById("CalcTabRw").setAttribute("className" ,"HideRow")
        document.getElementById("TotalChk").checked = false
        document.getElementById("AverageChk").checked = false
        document.getElementById("MinimumChk").checked = false
        document.getElementById("MaximumChk").checked = false
        document.getElementById("StdChk").checked = false
        document.getElementById("RsdChk").checked = false

        document.getElementById("TotalTxt").value = "Total"
        document.getElementById("AverageTxt").value = "Average"
        document.getElementById("MinimumTxt").value = "Minimum"
        document.getElementById("MaximumTxt").value = "Maximum"
        document.getElementById("StdTxt").value = "STD"
        document.getElementById("RsdTxt").value = "RSD"
    }
                

}
function FnSigChkClick()
{ 
  if (document.getElementById("SigChk").checked == true)
  {
        document.getElementById("SigTr").setAttribute("className", "MainTD")          
  }
  else
  {
        document.getElementById("SigTr").setAttribute("className" ,"HideRow") 
        document.getElementById("DisplayFormatIDTxt").value = 0
        document.getElementById("DisplayFormatTxt").value= ""
        document.getElementById("DisplayFormatLbl").innerHTML=""
  } 
}

function FnTTLChkClick()
{

    if (document.getElementById("TTLChk").checked == true)
    {
       document.getElementById("TitleRw").setAttribute("className", "MainTD")
    }
    else
    {
       document.getElementById("TitleRw").setAttribute("className" ,"HideRow")
    }

}
function FnSubTTLChkClick()
{

    if (document.getElementById("SubTTLChk").checked == true)
    {
       document.getElementById("SubTtlColumnTr").setAttribute("className", "HideRow")
    }
    else
    {
       document.getElementById("SubTtlColumnTr").setAttribute("className" ,"HideRow")
    }

}
function FnColCapChkClick()
{
    var count = document.getElementById("NoOfColTxt").value        
    if (count > 0)
    {
        if (document.getElementById("ColCapChk").checked == true)
        {
            document.getElementById("ColCapTd").setAttribute("className", "SubHeadTd")
            for(var i=0;i < count;i++)
            {
                if(document.getElementById("ColTxt_" + i).value == "")
                  {
                    document.getElementById("ColTxt_" + i).value=document.getElementById("ColDDL_" + i).options[document.getElementById("ColDDL_" + i).selectedIndex].text
                  }
                document.getElementById("ColTxtTd_" + i).setAttribute("className", "MainTD")
            }
        }
        else
        {
            document.getElementById("ColCapTd").setAttribute("className" ,"HideRow") 
            for(var i=0;i < count;i++)
            {
            if(document.getElementById("ColTxt_" + i).value == "")
                  {
                document.getElementById("ColTxt_" + i).value=document.getElementById("ColDDL_" + i).options[document.getElementById("ColDDL_" + i).selectedIndex].text
                  }
                document.getElementById("ColTxtTd_" + i).setAttribute("className", "HideRow")
            }
        }
        
    }    
}


$(document).ready(function() 
{
    FnCalcChkClick();
    FnSigChkClick();
    FnTTLChkClick();
    FnSubTTLChkClick();
    if(<%=Flag%> != 2 && '<%=Page.IsPostBack%>'!= 'False' )
    {
        FnColCapChkClick();
    }
    var color = document.getElementById("ColorTxt_40").value
    if( color == "")
    {
        document.getElementById("40ColLab").setAttribute("style","background-color:Black")
    }
    else
    {
        document.getElementById("40ColLab").style.backgroundColor = color
    }
});

function FnTTLChkvalid(src,args)
{
    if (document.getElementById("TTLChk").checked == true && document.getElementById("RowCapTxt").value == "")
    {
       args.IsValid = false;
       Page_IsValid = false;
    }
}
</script>

<script type="text/javascript">
   
</script>

</html>
