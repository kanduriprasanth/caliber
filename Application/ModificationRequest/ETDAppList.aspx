<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ETDAppList.aspx.vb" Inherits="ModificationRequest.ETDAppList" %>

<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl2.ascx" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="EsignObj1.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>AppList</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
   
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../CAPAWORKS/jquery.min.js"></script>

    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />

  <style type="text/css">
    .ReportSubTable{
     border-collapse:collapse;border:none;mso-border-alt:solid #5fa8cf .5pt;mso-border-themecolor:text1;mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt;height:20.45pt;
     color :Black; 
            font-weight:600; 
            Background-Color:#FFFFFF;
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
            background:#54a2cc;
            
    }
    .ReportHeaderTd{
    Background-Color:#E1E3F2;font-family:Microsoft Sans Serif,Arial;font-size:9pt;Padding-Left:2px;
    }
    .ReportFirstRow{
    border:solid #5fa8cf 1 pt;font-family:Verdana,Arial;background:#FFFFFF;font-weight:normal;font-size:11
    }
    .ReportNextRow{
    border:solid #5fa8cf 1 pt;font-family:Verdana,Arial;background:#dcebf2;font-weight:normal;font-size:11
    }
    
        .MsoTableGrid Td 
        {
            color :Black; 
            font-weight:600; 
            Background-Color:#FFFFFF;
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
        }
        
        .MsoNormal
        {
            color :#fcfceb; 
            font-weight:600; 
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
        }
        
        .MainSubTD
        {
            color :#Black; 
            font-weight:600; 
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
            border-color:#ffffff;
            border-bottom-color:#ffffff;
            border-top-color:#5fa8cf;
            border-right-color:#5fa8cf;
            border-left-color:#5fa8cf;
        }
        
        .ChangeColor
        {
            Background-color:#eefce6;
            border:solid #c8e3b8 1 pt;
        }
        
        .OldColor
        {
            Background-color:#5fa8cf;
            border:solid #5fa8cf 1 pt;
        }
    
        
    </style>
    

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="Table1" EnableViewState="False" Width="100%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="CrTopTable">
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="6">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="6">
                                <uc1:SearchCtrl id="SearchCtrl1" runat="server">
                                </uc1:SearchCtrl>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="MaxRecLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <%--<asp:Literal ID="MaxRecCntLtrl" runat="server">0</asp:Literal>--%>
                                <asp:Label ID="MaxRecCntLbl" runat="server">0</asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="RecPerPageLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RecPerPageTxt" MaxLength="3" runat="server" Width="30px" CssClass="TxtCls"
                                    AutoPostBack="False" onkeypress="return IsDigit1(event);">20</asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="PgNoLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="PgNoTxt" runat="server" Width="50px" MaxLength="5" CssClass="TxtCls"
                                    AutoPostBack="False" onkeypress="return IsDigit1(event);">1</asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
									<ASP:Button id="GoBtn" Runat="server" CssClass="ButCls" Text="Display"></ASP:Button>
									                                    
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RecListTR">
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="RecListTab">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc1:EsignObj ID="EsignObj1" runat="server" Visible="false"></uc1:EsignObj>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">


        function Detach()
        {
            var formName = document.forms(0).name
            document.forms(0).detachEvent('onsubmit',fnCallESign)
        }

        function SubmitAppDetails(RowCnt)
        {
            var ExpMsg="";
            var AppDecision=0;
             
            if (document.getElementById("AppDecision" + RowCnt + "_0").checked==false && document.getElementById("AppDecision" + RowCnt + "_1").checked==false && document.getElementById("AppDecision" + RowCnt + "_2").checked==false) 
            {

                ExpMsg=ExpMsg + "Select Value For :Decision" + "\n"

            }
            else if (document.getElementById("AppDecision" + RowCnt + "_0").checked==true ||document.getElementById("AppDecision" + RowCnt + "_1").checked==true || document.getElementById("AppDecision" + RowCnt + "_2").checked==true)
            {

                if($.trim(document.getElementById("RemTxt" + RowCnt ).value)=="")
                {
                     ExpMsg=ExpMsg +"Enter Value For: Remark(s) / Reason(s)" + "\n"

                }

            }

            if (document.getElementById("AppDecision" + RowCnt + "_0").checked==true) 
            {
                 AppDecision=2
            }

            if (document.getElementById("AppDecision" + RowCnt + "_1").checked==true) 
            {
                 AppDecision=3
            }

            if (document.getElementById("AppDecision" + RowCnt + "_2").checked==true) 
            {
                 AppDecision=4
            }
            
            if (ExpMsg == "")
            { 
            
                fnCallESign(AppDecision,RowCnt);
               
            }
            else
            {
                alert(ExpMsg);
                return;
            }

        }


        function Ajax_ETDAppDetails(RowCnt,AppDecision)
        {
        
            ShowMask()
           
            var Values ='<XmlDS>';
            var AppDecision=0;
                                 
            if (document.getElementById("AppDecision" + RowCnt + "_0").checked==true) 
            {
                 AppDecision=2
            }

            if (document.getElementById("AppDecision" + RowCnt + "_1").checked==true) 
            {
                 AppDecision=3
            }

            if (document.getElementById("AppDecision" + RowCnt + "_2").checked==true) 
            {
                 AppDecision=4
            }  
            
                 
                             
            Values+="<DataTable>" 

            Values+="<ETDId>"+ "<![CDATA[" + document.getElementById("EtdIdTxt" + RowCnt ).innerText + "]]></ETDId>"
            Values+="<AppDecision>"+ "<![CDATA[" + AppDecision + "]]></AppDecision>"
            Values+="<ETDRemarks>"+ "<![CDATA[" + document.getElementById("RemTxt" + RowCnt ).value  + "]]></ETDRemarks>" 
            Values+="<ETDType>"+ "<![CDATA[" + document.getElementById("ETDTypeTxt" + RowCnt ).innerText  + "]]></ETDType>" 
            Values+="<NumAppReq>"+ "<![CDATA[" + document.getElementById("NumAppReqTxt" + RowCnt ).innerText  + "]]></NumAppReq>" 
            Values+="<NumAppCom>"+ "<![CDATA[" + document.getElementById("NumAppComTxt" + RowCnt ).innerText  + "]]></NumAppCom>" 
            Values+="<IsuLogId>"+ "<![CDATA[" + document.getElementById("IsuLogIdTxt" + RowCnt ).innerText  + "]]></IsuLogId>" 
            Values+="<FissId>"+ "<![CDATA[" + document.getElementById("FissIdTxt" + RowCnt ).innerText + "]]></FissId>" 
            Values+="<ActPlnId>"+ "<![CDATA[" + document.getElementById("ActPlnIdTxt" + RowCnt ).innerText  + "]]></ActPlnId>" 
           
            Values+="</DataTable>"

            Values+= "</XmlDS>";
           
            $.post('../ModificationRequest/ExtTargetDates_Ajax.aspx?ReqType=2', { XmlTextBox: Values }).done(function(data, textStatus, jqXHR) { 
            if($(data).text() == "1")
                $("#EtdIdTxt" + RowCnt + "").closest("tr").css("display","none");
                 ResetSno();
                //FnRefresh(RowCnt)
               
            })
            .fail(function(jqXHR, textStatus, errorThrown) {alert(errorThrown); }).always(function() {HideMask();});
        }
 
//        function FnRefresh(RowCnt)
//        {
//            $("#RecListTab").html("");
//           document.getElementById("GoBtn").click(); 

//        }    
        
     function ResetSno()
    {
        var SNo = 1;

        $(".ETDTrCss").each(function (index) {
            if(index >0)
            {
                if($(this).css("display") != "none")
                {
                    $(this).find("td:first").text(SNo);
                    SNo++;
                }
            }
        });
        $("#MaxRecCntLbl").html($("#MaxRecCntLbl").html()-1)
    }
    
    $("#GoBtn").click(function(){
    //to get  Search records properly
    $("#RecListTab").html("");
    });
</script>
<script language ="javascript" >

    function fnEventsDetails(EtdID)
        {
            var pageURL = "../ModificationRequest/ETDEventsDetails.aspx?EtdID=" + EtdID 
            
            var PWidth=500
            var PHeight=300
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
            
            var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=" + ScreenTop + ",left=" + ScreenLeft
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        
        }
    var taMaxLength1 = 250
		function taLimit1() {
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		}

		function taCount1() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength1*1){
				taObj.value=taObj.value.substring(0,taMaxLength1*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength1 +" Characters")
			}
			}	


</script>
   

</html>
