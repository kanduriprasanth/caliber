<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ETDRIList.aspx.vb" Inherits="ModificationRequest.ETDRIList" %>

<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl2.ascx" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="EsignObj1.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>RIList</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
   
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>

    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />

    <script language="javascript" src="../CAPAWORKS/jquery.min.js"></script>

    <script language="javascript" src="../JScript/Common2.js"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="Table1" EnableViewState="False" Width="98%">
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
                                <asp:Button ID="GoBtn" runat="server" CssClass="ButCls" Text="Display"></asp:Button>
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
                            <asp:TableCell  Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc1:EsignObj ID="EsignObj1" runat="server" Visible="false"></uc1:EsignObj>
                            </asp:TableCell>
                            <asp:TableCell ID="TotalRecordsCnt" >
                            
                            <asp:TextBox ID="TotalRecordsCntTxt" runat="server" ></asp:TextBox>
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

    function ExtTargetDate(RowCnt,IsuAulId,EtdType)
    {
        var targetdate;
        var duration;

        targetdate=document.getElementById("PresentTrgDate" + RowCnt).innerHTML
        duration =document.getElementById("ExtwrkTxt" + RowCnt).value

       if(  (isNaN(duration)==true) || (duration=="")){
             document.getElementById("ExtwrkTxt" + RowCnt).value="";
             alert("Proposed Extension Days Should Be Numeric values");         
        }
        
        if (duration==0)
            {
                 alert("Proposed Extension Days Should Be Greater Than Zero");
                 document.getElementById("ExtwrkTxt" + RowCnt).value="";
                 duration="";
            }
        if (targetdate !="" && duration!="" && isNaN(duration)==false ){
            AjaxExtTargetDate(targetdate,duration,RowCnt,IsuAulId,EtdType)
        }
    }


    function SetExtTargetDate(Targetdate,RowCnt)
    {
        if(Targetdate==0)
        {
            alert("Target Date Should be Greater Than Or Equal to Current Date");
            document.getElementById("ExtwrkTxt" + RowCnt ).value="";
            document.getElementById ("ETDlbl" + RowCnt).innerText="";
            return;
        }
           else if(Targetdate==1)
        {
            alert("Target Date Should be Less Than Issue Closure Date");
            document.getElementById("ExtwrkTxt" + RowCnt ).value="";
            document.getElementById ("ETDlbl" + RowCnt).innerText="";
            return;
    
        }
        else if(Targetdate==2)
        {
            alert("Target Date Should be Less Than Or Equal to Action Plan Target Date");
            document.getElementById("ExtwrkTxt" + RowCnt ).value="";
            document.getElementById ("ETDlbl" + RowCnt).innerText="";
            return;
        }
        document.getElementById ("ETDlbl" + RowCnt).innerText=Targetdate;
        document.getElementById ("ExtTargetDateTxt" + RowCnt).value=Targetdate;
    }


    function AjaxExtTargetDate(Targetdate,Duration,RowCnt,IsuAulId,EtdType)
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
                SetExtTargetDate(RtnStr,RowCnt)
            }
        }  
        var url="../ModificationRequest/AjaxTargetDateCalc.aspx?Targetdate=" + Targetdate + "&Duration=" + Duration + "&IsuAulId=" +IsuAulId + "&EtdType=" + EtdType
        xmlhttp.open("POST",url,true);
        xmlhttp.send(null);
    }


    function SubmitValues(RowCnt)
    {
        var ExpMsg="";
        if(document.getElementById("ExtwrkTxt" + RowCnt ).value=="")
        {
             ExpMsg="Enter Value For: Proposed Extension(days)" + "\n";
        } 
        if($.trim(document.getElementById("RemTxt" + RowCnt ).value)=="")
        {
             ExpMsg=ExpMsg +"Enter Value For: Remark(s) / Reason(s)" + "\n";
        }
        if (ExpMsg == "")
        { 
             fnCallESign(5,RowCnt);
        }
        else
        {
            alert(ExpMsg);
            return;
        }
    }


    function Ajax_ReInitETD(RowCnt)
    {

        ShowMask()
       
        
        var Values ='<XmlDS>';
        var IsuCode="";
        var WrkItemAulId=0;
        var WrkItemUCode="";
        var ActPlnId=0;
        var WorkType=0;
        var ETDRequired=0;
   
        Values+="<DataTable>"
        Values+="<ETDId>"+ "<![CDATA[" + document.getElementById("EtdIdTxt" + RowCnt ).innerText + "]]></ETDId>"

        Values+="<ExtDuration>"+"<![CDATA[" + document.getElementById("ExtwrkTxt" + RowCnt ).value + "]]></ExtDuration>"
        Values+="<ExtTargetDate>"+"<![CDATA[" + document.getElementById("ExtTargetDateTxt" + RowCnt ).innerText+ "]]></ExtTargetDate>"
        Values+="<ETDRemarks>"+"<![CDATA[" + document.getElementById("RemTxt" + RowCnt ).value + "]]></ETDRemarks>"
        Values+="<EventType>"+"<![CDATA[" + document.getElementById("EventTypeTxt" + RowCnt ).innerText + "]]></EventType>"
        Values+="<IsuLogId>"+ "<![CDATA[" + document.getElementById("IsuLogIdTxt" + RowCnt ).innerText  + "]]></IsuLogId>" 
        Values+="<FissId>"+ "<![CDATA[" + document.getElementById("FissIdTxt" + RowCnt ).innerText + "]]></FissId>" 
        Values+="<ActPlnId>"+ "<![CDATA[" + document.getElementById("ActPlnIdTxt" + RowCnt ).innerText  + "]]></ActPlnId>" 
        Values+="<ETDType>"+ "<![CDATA[" + document.getElementById("ETDTypeTxt" + RowCnt ).innerText  + "]]></ETDType>" 
       
        Values+="</DataTable>"

        Values+= "</XmlDS>";

        $.post('../ModificationRequest/ExtTargetDates_Ajax.aspx?ReqType=3', { XmlTextBox: Values }).done(function(data, textStatus, jqXHR) { 
            if($(data).text() == "1")
                $("#EtdIdTxt" + RowCnt + "").closest("tr").css("display","none");
                ResetSno();
               //FnRefresh(RowCnt);
            })
            .fail(function(jqXHR, textStatus, errorThrown) {alert(errorThrown); }).always(function() {HideMask();});
         
    }
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
    
//    function FnRefresh(RowCnt)
//    {
//        $("#RecListTab").html("");
//        document.getElementById("GoBtn").click(); 
//    }
   
</script>

<script language="javascript">

    function FnAllowNumVal()
    {
        var e =event.keyCode
        if(event.ctrlLeft == true){return false}  
        if(event.shiftKey ==true){return false}

        else if((e ==8)||(e ==46)||(e ==37)||(e ==39)||(e ==9)||(e ==16)||(e>=96 && e <= 105)) {return true}
        else if(e ==32){return false}
        else if(isNaN(String.fromCharCode(e))) //Validates for Key Data
        {return false}
    }
    
         
    $("#GoBtn").click(function(){
    //to get  Search records properly
     $("#RecListTab").html("");
    });
    
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
