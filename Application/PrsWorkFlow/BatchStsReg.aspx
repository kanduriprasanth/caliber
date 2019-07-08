<%@ Page Language="vb" AutoEventWireup="false" Codebehind="BatchStsReg.aspx.vb" Inherits="PrsWorkFlow.BatchStsReg" %>

<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl4.ascx" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="EsignObj2.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../CAPAWORKS/jquery.min.js"></script>

    <script language="javascript" src="../JScript/Common2.js"></script> 
        
    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />
    
    <script language ="javascript" >
    
    var taMaxLength = 250
		function taLimit() {
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		}

		function taCount() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength*1){
				taObj.value=taObj.value.substring(0,taMaxLength*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Characters")
			}
			}		
			
        function Detach()
        {
            var formName = document.forms(0).name
            document.forms(0).detachEvent('onsubmit',fnCallESign)
        }
    
    function SubmitInitDetails(RowCnt)
    {
    
         var ExpMsg="";
         
        if(document.getElementById("InitRecStsddl_" + RowCnt).value=="")
        {
           ExpMsg=ExpMsg + "Select Value For :" + "<%=InitRecomStsCap%>" + "\n"
        }
        if(document.getElementById("InitRemTxt_"+ RowCnt).value=="")
        {
            ExpMsg=ExpMsg + "Enter Value For :" + "<%=InitRemarksCap%>" + "\n"
        }
       
        if (ExpMsg == "")
        { 
           fnCallESign(1,RowCnt);
        }
        else
        {
            alert(ExpMsg);
            return;
        }
    }

    function Ajax_SaveInitiatorDetails(RowCnt)
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
        Values+="<IsuBatchId>"+ "<![CDATA[" + document.getElementById("IsuBatchIdTxt" + RowCnt ).innerText + "]]></IsuBatchId>"

        Values+="<AppDecision>"+"<![CDATA[" + document.getElementById("InitRecStsddl_" + RowCnt ).value + "]]></AppDecision>"
        Values+="<AppRemarks>"+"<![CDATA[" + document.getElementById("InitRemTxt_" + RowCnt ).innerText+ "]]></AppRemarks>"
        Values+="<FldId>"+"<![CDATA[" + "<%=Request.QueryString("BaseId")%>" + "]]></FldId>"
        
//         Values+="<RecomRemarks>"+"<![CDATA[" + "" +"]]></RecomRemarks>"
//         Values+="<RecomStatus>"+"<![CDATA[" + 0+ "]]></RecomStatus>"
      
        Values+="</DataTable>"

        Values+= "</XmlDS>";

        $.post('../PrsWorkFlow/BatchStsReg_Ajax.aspx?ReqType=1', { XmlTextBox: Values }).done(function(data, textStatus, jqXHR) { 
            if($(data).text() == "1")
              //  $("#IsuBatchIdTxt" + RowCnt + "").closest("tr").css("display","none");
              
               $("#Submitbtn" + RowCnt). attr("disabled", "disabled");
                 $("#InitRecStsddl_" + RowCnt). attr("disabled", "disabled");
                  $("#InitRemTxt_" + RowCnt). attr("disabled", "disabled");
                    
                
                if ($("#BatchIdTxt").val()!="")
                    $("#BatchIdTxt").val($("#BatchIdTxt").val() + "," + $("#IsuBatchIdTxt" + RowCnt).text());
                else
                    $("#BatchIdTxt").val($("#IsuBatchIdTxt" + RowCnt).text());
                    
                ResetSno();
              })
            .fail(function(jqXHR, textStatus, errorThrown) {alert(errorThrown); }).always(function() {HideMask();});
         
    }
    function ResetSno()
    {
//        var SNo = 1;
//         $(".BatchTrCss").each(function (index) {
//            if(index >0)
//            {
//                if($(this).css("display") != "none")
//                {
//                    $(this).find("td:first").text(SNo);
//                    SNo++;
//                }
//            }
//        });
       // $("#MaxRecCntLbl").html($("#MaxRecCntLbl").html()-1)
        $("#TotalRecCntTxt").val($("#TotalRecCntTxt").val()-1)
       
       if($("#TotalRecCntTxt").val()==0)
       {
         var ObjIds=$("#BatchIdTxt").val();
            
         opener.SetObjectValue("<%=Request.QueryString("BaseId")%>","<%=Request.QueryString("CtrlId") %>",ObjIds)
         AjaxUpdateBatchId(ObjIds,"<%=Request.QueryString("BaseId")%>","<%=Request.QueryString("CtrlId") %>","<%=Request.QueryString("IssuLogId") %>");
         window.self.close();
       }
    }
    
</script>
    
    <script language ="javascript" >
    function AjaxUpdateBatchId(BatchIds,BaseId,ControlId,IsuLogId)
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
            }
        }  
        var url="../PrsWorkFlow/BatchStsReg_Ajax.aspx?ReqType=4" + "&BaseId=" + BaseId + "&ControlId=" + ControlId + "&IsuLogId=" + IsuLogId + "&BatchIds=" + BatchIds
        xmlhttp.open("POST",url,true);
        xmlhttp.send(null); 

    
    }
</script>
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
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc1:EsignObj ID="EsignObj1" runat="server" Visible="false"></uc1:EsignObj>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow ID="TableRow1"  runat="server" CssClass="HideRow">
                            <asp:TableCell>
                               <asp:TextBox ID ="TotalRecCntTxt" runat ="server" ></asp:TextBox>
                               <asp:TextBox ID ="BatchIdTxt" runat ="server" ></asp:TextBox>
                               <asp:TextBox ID ="SelBatchIdTxt" runat ="server" ></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>

<script language ="javascript" >

function getSelBatchIds()
{
    var ObjectIdList=''
    ObjectIdList=opener.window.document.getElementById("<%=Request.QueryString("BaseId")%>" + "_" +"<%=Request.QueryString("CtrlId") %>").value;
    document.getElementById("SelBatchIdTxt") .value=ObjectIdList;
    Form1.submit ();
    
}

 if("<%=Page.IsPostBack%>" == "False")
{
	    getSelBatchIds()
//	    if($("#TotalRecCntTxt").val()==0)
//       {
//        $("#TotalRecCntTxt").val(1)
//        ResetSno()
//       }	    
}



 </script>
</body>

</html>
