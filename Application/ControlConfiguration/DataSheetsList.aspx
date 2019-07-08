<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DataSheetsList.aspx.vb"
    Inherits="ControlConfiguration.DataSheetsList" %>

<!DOCTYPE HTML>
<html lang="en">
<head id="Head1" runat="server">
    <title>Data Sheet(s)</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1" />
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    
    <link rel="stylesheet" href="../TRIMS.css" />

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript" src="../JScript/jquery.min.js"></script>

    <link href="../Plugins/JqueryModel/simplemodal.css" rel="stylesheet" type="text/css" />

    <script src="../Plugins/JqueryModel/jquery.simplemodal.js" type="text/javascript"></script>

</head>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="1" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server">Data Sheet</asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
           <asp:TableRow ID = "Registrationlink" CssClass="HideRow">
                <asp:TableCell HorizontalAlign="Center" CssClass="MainTD">
                    <asp:HyperLink ID="Hlink" runat="server" onclick="FnDataSheetReg()" Font-Underline="true"
                        Font-Bold="true" Style="cursor: pointer; color: Teal; font-size: 14px">Register New Data Sheet</asp:HyperLink>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Font-Bold=true>Search By </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="SrchRB" CssClass="RBList" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Data Sheet Code</asp:ListItem>
                                    <asp:ListItem Value="2">Data Sheet Type</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" Font-Bold=true>Search Text</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="Srchtxt" MaxLength="25" runat="server" CssClass="TxtCls" Text="%" Width="200" ></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Button ID="SrchBtn" runat="server" CssClass="ButOCls" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" Text="Display" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="SubHead">
                    <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
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

//-----To get the Current window Width
function getViewportHeight() {
    if (window.innerHeight != window.undefined) return window.innerHeight;
    if (document.compatMode == 'CSS1Compat') return document.documentElement.clientHeight;
    if (document.body) return document.body.clientHeight;

    return window.undefined;
}
    
//-----Data Sheet Registration 
function FnDataSheetReg(){
    var heightVal = getViewportHeight();
    heightVal = heightVal - 100;
    var pageURL = "DataSheetReg.aspx?Flag=1&DataSheetId=0"
    $.modal('<iframe src=" ' + pageURL + '" height="' + (heightVal - 30) + '" width="100%" />', {
        containerCss: {
            height: heightVal,
            width: "93%"
        }
    });

}

//---------------DataSheet Modify
function DataSheetModify(DataSheetId,DatasheetTyp){

    var heightVal = getViewportHeight();
    heightVal = heightVal - 100;
   
    var pageURL = "DataSheetReg.aspx?Flag=2&DataSheetId="+DataSheetId;
    $.modal('<iframe src=" ' + pageURL + '" height="' + (heightVal - 30) + '" width="100%" />', {
        containerCss: {
            height: heightVal,
            width: "93%"
        }
    });
}
//------------DataSheet View
function DataSheetView(DataSheetId){
    var pageURL = "DataSheetAuditDisplay.aspx?Flag=2&ViewFlag=1&DataSheetId=" + DataSheetId;
    var PWidth = window.screen.availWidth
    var PHeight = window.screen.availHeight
    var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
    var ScreenTop = parseInt(window.screen.height - PHeight) / 2;
    var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft
    SpWinObj = window.open(pageURL, 'SpecCodes', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}

//-------Data Sheet Status Change
 function AjaxStatusChange(RowCnt, DataShhetID) {
    var Status = $("#Status" + RowCnt).val();
    //window.event.srcElement.style.color="SkyBlue"           
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
//--------Data Sheet Preview Page   
    function SetRecordsPerRow()
    {
        var DisplayMode = (document.getElementById("DisplayModeDdl").value == "1" ? 1 : 2);
        document.getElementById("RecordsPerRowTr").className =((DisplayMode == 1)? "HideRow" : "");
    }

   function FnOpenPreviewPage(Type,SheetId)
    {
       if(Type == 1)
       {
        if(document.getElementById("NoOfColTxt").value!="" && document.getElementById("DataShtDDL").value!="")
        {
                var SheetType = document.getElementById("DataShtDDL").value;
                var Title = document.getElementById("RowCapTxt").value;
                var TitleBold = document.getElementById("BoldTitleChk").checked ? 1 : 0;
                var TitleFont = document.getElementById("TitleFontDDl").value;
                var TitleFontSize = document.getElementById("TitleFontSzeDDl").value;
                var TitleAlign = document.getElementById("TitleAlgnDDl").value;
                var noOfColumns = document.getElementById("NoOfColTxt").value;
                var ColumnsBold = document.getElementById("BoldCapChk").checked ? 1 : 0;
                var ColumnsWidthUnits = document.getElementById("WidthUnitsDdl").value;
                var ColumnsFont = document.getElementById("FontDDl").value;
                var ColumnsFontSize = document.getElementById("FontSzeDDl").value;
                var ColumnsAlign = document.getElementById("ColTextAlignDdl").value;
                var ObsTpltId = document.getElementById("ObservationIdTxt").value;
                ObsTpltId = (ObsTpltId == "" ? 0 : ObsTpltId)
                var WidthArr = [];
                var ColTitleArr = [];
                var ColNameArr=[];
                var ColumnWidth = "";
                var ColumnCaptions ="";
                var ColumnNamesList=""
                
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
                    
            }
                ColumnWidth=WidthArr.join(",");
                ColumnCaptions=ColTitleArr.join("$@$");
                ColumnNamesList=ColNameArr.join("$@$");
            
            SetPopDimensions()
                var pageURL = "../CAPAWORKS/Preview.aspx?";//&Type="+1+"&Width=" + Width + "&ColTitle=" + ColTitle + "&RowCaption=" + RowCaption + "&BindingCol=" + BindingCol + "&Font=" + Font + "&FontSze=" + FontSze + "&TitleAlgn=" + TitleAlgn + "&WidthMeasure=" + WidthMeasure + "&DefaultRows=" + DefaultRows ;
                
                pageURL += "&Type=" +Type;
                pageURL += "&SType=" + SheetType; 
                pageURL += "&ObsTpltId=" + ObsTpltId; 
                pageURL += "&Title=" + Title; 
                pageURL += "&TitleBold=" + TitleBold; 
                pageURL += "&TitleFont=" + TitleFont; 
                pageURL += "&TitleFontSize=" + TitleFontSize; 
                pageURL += "&TitleAlign=" + TitleAlign; 
                pageURL += "&noOfColumns=" + noOfColumns; 
                pageURL += "&ColumnsBold=" + ColumnsBold; 
                pageURL += "&ColumnsWidthUnits=" + ColumnsWidthUnits; 
                pageURL += "&ColumnsFont=" + ColumnsFont; 
                pageURL += "&ColumnsFontSize=" + ColumnsFontSize; 
                pageURL += "&ColumnsAlign=" + ColumnsAlign; 
                pageURL += "&ColumnWidth=" + ColumnWidth; 
                pageURL += "&ColumnCaptions=" + ColumnCaptions; 
                pageURL += "&DefaultRows=" + NoofRows; 
                pageURL += "&DisplayType=" + DisplayType; 
                pageURL += "&RecordsPerRow=" + RecordsPerRow; 
                pageURL += "&ColumnNamesList=" + ColumnNamesList; 
                
            }
            else
            {
                return false;
            }
        }
        else
        {
            var pageURL = "../CAPAWORKS/Preview.aspx?";
            pageURL += "&Type=" +Type;
            pageURL += "&SheetId=" +SheetId;
        }
            var yval = screen.availHeight - 40;
            var xval = screen.availWidth;
            SpWinObj = window.open(pageURL, 'RepPopUp', "height=" + yval + ",width=" + xval + ",toolbar=no,menubar=no,resizable=yes,status=no,scrollbars=yes,top=1,left=1");
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();
        }

</script>

</html>
