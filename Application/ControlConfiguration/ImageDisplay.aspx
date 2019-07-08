<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ImageDisplay.aspx.vb" Inherits="ControlConfiguration.ImageDisplay" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head id="Head1" runat="server">
    <title>Image Manipulations Audit</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
       <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>

    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />
    <!-- Page styles -->
    <!-- Contact Form CSS files -->
    <link type='text/css' href='../ImageManipulation/basic.css' rel='stylesheet' media='screen' />
    <!-- IE6 "fix" for the close png image -->
    <!--[if lt IE 7]>
<link type='text/css' href='css/basic_ie.css' rel='stylesheet' media='screen' />
<![endif]-->
    <!-- JS files are loaded at the bottom of the page -->

    <script type="text/javascript" src="../ImageManipulation/ClientScripts/jquery.min.js"></script>

    <script type="text/javascript" src="../ImageManipulation/ClientScripts/jquery.maphilight.min.js"></script>

    <script type="text/javascript" src="../ImageManipulation/ClientScripts/jquery.metadata.min.js"></script>

    <script type='text/javascript' src='../ImageManipulation/jquery.simplemodal.js'></script>

    <script type='text/javascript' src='../ImageManipulation/basic.js'></script>

    <script type="text/javascript">        $(function () {
            $('.map').maphilight();
        });
    </script>

    <script language="javascript">
        var taMaxLength = 250
        function taLimit() {
            var taObj = window.event.srcElement;
            if (taObj.value.length == taObj.maxLength * 1) return false;
        }

        function taCount() {
            var taObj = window.event.srcElement;
            if (taObj.value.length > taMaxLength * 1) {
                taObj.value = taObj.value.substring(0, taMaxLength * 1);
                alert("Characters exceeding limit\nMaximum Length: " + taMaxLength + " Characters")
            }
        }

        function CropImage() {
            var ImgArr = new Array();
            ImgArr = document.getElementById("imgCrop").src.split("/");
            ShowMask("ImageCropper.aspx?ImgName=" + ImgArr[ImgArr.length - 1]);
        }
        function CropImageDone() {
            HideMask();
            document.getElementById("ActionsListTxt").value = "";
            document.getElementById("LoadMapBtn").click();
        }
        function SetActions() {
            var ImgArr = new Array();
            ImgArr = document.getElementById("imgCrop").src.split("/");
            ShowMask("ImageActions.aspx?Category=" + document.getElementById("CategoryDDl").value + "&ImgName=" + ImgArr[ImgArr.length - 1]);
        }
        function SetActionsDone(SHAPE, COORDS, TITLE, ALT, HREF) {
            var AREA = document.createElement("AREA");
            var MAP = document.getElementById("map1");
            MAP.appendChild(AREA);
            //AREA.setAttribute("SHAPE",SHAPE);
            AREA.setAttribute("COORDS", COORDS);
            AREA.setAttribute("TITLE", TITLE);
            AREA.setAttribute("ALT", ALT);
            AREA.setAttribute("HREF", HREF);
            document.getElementById("imgCrop").usemap = "#map1";
            CollectAllActions(SHAPE, COORDS, TITLE, ALT, HREF);
            HideMask();
            document.getElementById("LoadMapBtn").click();
        }

        function CollectAllActions(SHAPE, COORDS, TITLE, ALT, HREF) {
            var ActionsArr = new Array();
            var SHAPEArr = new Array();
            var COORDSArr = new Array();
            var TITLEArr = new Array();
            var ALTArr = new Array();
            var HREFArr = new Array();

            var ActionsList = document.getElementById("ActionsListTxt").value;

            if (ActionsList != "") {
                ActionsArr = ActionsList.split("$@@$");
                SHAPEArr = ActionsArr[0].split("#*#");
                COORDSArr = ActionsArr[1].split("#*#");
                TITLEArr = ActionsArr[2].split("#*#");
                ALTArr = ActionsArr[3].split("#*#");
                HREFArr = ActionsArr[4].split("#*#");
            }

            SHAPEArr.push(SHAPE);
            COORDSArr.push(COORDS);
            TITLEArr.push(TITLE);
            ALTArr.push(ALT);
            HREFArr.push(HREF);

            ActionsList = SHAPEArr.join("#*#") + "$@@$";
            ActionsList += COORDSArr.join("#*#") + "$@@$";
            ActionsList += TITLEArr.join("#*#") + "$@@$";
            ActionsList += ALTArr.join("#*#") + "$@@$";
            ActionsList += HREFArr.join("#*#");
            document.getElementById("ActionsListTxt").value = ActionsList;

        }

        function UploadFule() {
            var FileName = document.getElementById("Upload").value;

            if (FileName == "") {
                document.getElementById("btnUpload").className = "HideRow"
                return;
            }

            var FileAry = new Array();
            FileAry = FileName.split(".");
            var Exten = FileAry[FileAry.length - 1].toLowerCase();
            //".png", ".jpeg", ".jpg", ".gif"
            if ((Exten == 'png') || (Exten == 'jpeg') || (Exten == 'jpg') || (Exten == 'gif')) {
                document.getElementById("btnUpload").className = "ButCls"
            }
            else {
                alert("Invalied File Format")
                document.getElementById("btnUpload").className = "HideRow"
            }
        }

        function callme(Cnt) {

            var ActionsArr = new Array();
            var SHAPEArr = new Array();
            var COORDSArr = new Array();
            var TITLEArr = new Array();
            var ALTArr = new Array();
            var HREFArr = new Array();

            var ActionsList = document.getElementById("ActionsListTxt").value;

            ActionsArr = ActionsList.split("$@@$");
            SHAPEArr = ActionsArr[0].split("#*#");
            COORDSArr = ActionsArr[1].split("#*#");
            TITLEArr = ActionsArr[2].split("#*#");
            ALTArr = ActionsArr[3].split("#*#");
            HREFArr = ActionsArr[4].split("#*#");

            $("#RCntTxt").val(Cnt);
            $("#CaptionTxt").val(TITLEArr[Cnt]);
            $("#RedirectURLTxt").val(HREFArr[Cnt]);

            $('#basic-modal-content').modal();
        }

        function SetAction(Cnt, TITLE, HREF) {
            var ActionsArr = new Array();
            var SHAPEArr = new Array();
            var COORDSArr = new Array();
            var TITLEArr = new Array();
            var ALTArr = new Array();
            var HREFArr = new Array();

            var ActionsList = document.getElementById("ActionsListTxt").value;

            ActionsArr = ActionsList.split("$@@$");
            SHAPEArr = ActionsArr[0].split("#*#");
            COORDSArr = ActionsArr[1].split("#*#");
            TITLEArr = ActionsArr[2].split("#*#");
            ALTArr = ActionsArr[3].split("#*#");
            HREFArr = ActionsArr[4].split("#*#");

            TITLEArr[Cnt] = TITLE;
            ALTArr[Cnt] = TITLE;
            HREFArr[Cnt] = HREF;

            ActionsList = SHAPEArr.join("#*#") + "$@@$";
            ActionsList += COORDSArr.join("#*#") + "$@@$";
            ActionsList += TITLEArr.join("#*#") + "$@@$";
            ActionsList += ALTArr.join("#*#") + "$@@$";
            ActionsList += HREFArr.join("#*#");
            document.getElementById("ActionsListTxt").value = ActionsList;
            document.getElementById("LoadMapBtn").click();

        }
        function OkBtn_Click() {
            var Cnt = $("#RCntTxt").val();
            var TITLE = $("#CaptionTxt").val();
            var HREF = $("#RedirectURLTxt").val();

            SetAction(Cnt, TITLE, HREF)

            $("#RCntTxt").val("");
            $("#CaptionTxt").val("");
            $("#RedirectURLTxt").val("");
            $.modal.close();
        }

        function DeleteBtn_Click() {
            var Cnt = $("#RCntTxt").val();

            var ActionsArr = new Array();
            var SHAPEArr = new Array();
            var COORDSArr = new Array();
            var TITLEArr = new Array();
            var ALTArr = new Array();
            var HREFArr = new Array();

            var SHAPEArrNew = new Array();
            var COORDSArrNew = new Array();
            var TITLEArrNew = new Array();
            var ALTArrNew = new Array();
            var HREFArrNew = new Array();

            var ActionsList = document.getElementById("ActionsListTxt").value;

            ActionsArr = ActionsList.split("$@@$");
            SHAPEArr = ActionsArr[0].split("#*#");
            COORDSArr = ActionsArr[1].split("#*#");
            TITLEArr = ActionsArr[2].split("#*#");
            ALTArr = ActionsArr[3].split("#*#");
            HREFArr = ActionsArr[4].split("#*#");

            for (var i = 0; i < SHAPEArr.length; i++) {
                if (i != Cnt) {
                    SHAPEArrNew.push(SHAPEArr[i]);
                    COORDSArrNew.push(COORDSArr[i]);
                    TITLEArrNew.push(TITLEArr[i]);
                    ALTArrNew.push(ALTArr[i]);
                    HREFArrNew.push(HREFArr[i]);
                }
            }
            ActionsList = SHAPEArrNew.join("#*#") + "$@@$";
            ActionsList += COORDSArrNew.join("#*#") + "$@@$";
            ActionsList += TITLEArrNew.join("#*#") + "$@@$";
            ActionsList += ALTArrNew.join("#*#") + "$@@$";
            ActionsList += HREFArrNew.join("#*#");
            document.getElementById("ActionsListTxt").value = ActionsList;
            document.getElementById("LoadMapBtn").click();
        }



    </script>

</head>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="Table1" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
             runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="HideRow">
                    <asp:Literal ID="MainTitleLtrl" runat="server" Text="Flow Chart Configuration"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server"  Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table2">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell  ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                 </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" >
                               
                                
                                <asp:TextBox ID="ActionsListTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ImageTd" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <div align="CENTER">
                                    <map name="map1">
                                        <%=MapText%>
                                    </map>
                                    <asp:Image ID="imgCrop" runat="server" usemap="#map1" class="map" />
                                </div>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow >
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table3" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                               
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
        <div class="HideRow">
            <div id="basic-modal-content">
                <asp:Table ID="Table12" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
                     runat="server" Width="400px">
                    <asp:TableRow Height="20">
                        <asp:TableCell ColumnSpan=2>
                            Change Actions
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ID="CaptionTd" runat="server" CssClass="MainTD" Text="Caption"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:TextBox ID="CaptionTxt" runat="server" Enabled="false" Width="200" MaxLength="300" CssClass="TxtCls"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ID="RedirectURLTd" runat="server" CssClass="MainTD" Text="Redirect URL"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:TextBox ID="RedirectURLTxt" Enabled="false" runat="server" Width="200" MaxLength="300" CssClass="TxtCls"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <input id="OkBtn" type =button value ="  Ok  " onclick="OkBtn_Click()" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'"/>
                            <input type =text id="RCntTxt" class="HideRow" />
                        </asp:TableCell>
                        <asp:TableCell  HorizontalAlign=Right>
                            <input id="Button1" type =button value ="  Delete  " onclick="DeleteBtn_Click()" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'"/>
                        </asp:TableCell>
                        
                    </asp:TableRow>
                </asp:Table>
            </div>
        </div>
    </form>
</body>
</html>