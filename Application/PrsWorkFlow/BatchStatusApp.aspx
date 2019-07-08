<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="BatchStatusApp.aspx.vb" Inherits="PrsWorkFlow.BatchStatusApp" %>

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
    <script language="javascript" src="../JScript/CustomValidationFuns.js"></script>
        
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
        var AppDecision=0;

        if (document.getElementById("AppDecisionDll" + RowCnt ).value== "")
        {
            ExpMsg=ExpMsg + "Select Value For :" + "<%=AppDecCap%>" + "\n"
        }
        
        else
        {        
             var selval=document.getElementById("AppDecisionDll" + RowCnt ).value
             
             if ( "<%=Request.QueryString("ReqType")%>" == "3")
              {
                if (selval ==2  || selval ==4 )
                {
                    ExpMsg=ExpMsg +"Selected Decision Is Not Allowed At This Stage" + "\n"
                }
                
              }
              else if ( "<%=Request.QueryString("ReqType")%>" != "2")
              {
                 var activalvaue= document.getElementById("AppRevDecion" + RowCnt).value
                 if (activalvaue != selval)
                {
                    if($.trim(document.getElementById("AppRemTxt_" + RowCnt ).value)=="")
                    {
                         ExpMsg=ExpMsg +"Enter Value For: " + "<%=AppRemarksCap%>" + "\n"
                    }
                }
              }
              
              
         }
        
        if (ExpMsg == "")
        { 
            fnCallESign(2,RowCnt);
        }
        else
        {
            alert(ExpMsg);
            return;
        }

     }


    function Ajax_AppDetails(RowCnt,AppDecision)
    {
           
        ShowMask()
         var selval=document.getElementById("AppDecisionDll" + RowCnt ).value
         if (selval=="4")  // If Decision Id No change The there is no need to check with sap
         {          
            Ajax_AppDetailsInsert(RowCnt)
         }
         else
         {
           SAPInterface(RowCnt,document.getElementById("IsuBatchIdTxt" + RowCnt ).innerText)
         }   
        
     }   
     
    function Ajax_AppDetailsInsert(RowCnt)
    {
    
        var Values ='<XmlDS>';
        var IsuCode="";
        var WrkItemAulId=0;
        var WrkItemUCode="";
        var ActPlnId=0;
        var WorkType=0;
        var ETDRequired=0;
   
        Values+="<DataTable>"
        
        Values+="<IsuBatchId>"+ "<![CDATA[" + document.getElementById("IsuBatchIdTxt" + RowCnt ).innerText + "]]></IsuBatchId>"
        Values+="<AppDecision>"+"<![CDATA[" + document.getElementById("AppDecisionDll" + RowCnt ).value + "]]></AppDecision>"
        Values+="<AppRemarks>"+"<![CDATA[" + document.getElementById("AppRemTxt_" + RowCnt ).innerText+ "]]></AppRemarks>"
        Values+="<FldId>"+"<![CDATA[" + "<%=Request.QueryString("BaseId")%>" + "]]></FldId>"
      
        Values+="</DataTable>"
        Values+= "</XmlDS>";

        $.post('../PrsWorkFlow/BatchStsReg_Ajax.aspx?ReqType=' + "<%=Request.QueryString("ReqType")%>" , { XmlTextBox: Values }).done(function(data, textStatus, jqXHR) { 
            if($(data).text() == "1")
                
                $("#Submitbtn" + RowCnt). attr("disabled", "disabled");
                $("#AppDecisionDll" + RowCnt + ""). attr("disabled", "disabled");
                $("#AppRemTxt_" + RowCnt + ""). attr("disabled", "disabled");
                $("#AppvRevDll_" + RowCnt + ""). attr("disabled", "disabled");
                    
                if ($("#BatchIdTxt").val()!="")
                    $("#BatchIdTxt").val($("#BatchIdTxt").val() + "," + $("#IsuBatchIdTxt" + RowCnt).text());
                else
                    $("#BatchIdTxt").val($("#IsuBatchIdTxt" + RowCnt).text());                
                ResetSno(document.getElementById("IsuBatchIdTxt" + RowCnt ).innerText,document.getElementById("AppDecisionDll" + RowCnt ).value);
                 
             })
            .fail(function(jqXHR, textStatus, errorThrown) {alert(errorThrown); }).always(function() {HideMask();});
         
    }
    
   
    
    
    function ResetSno(BatchId,selval)
    {

       if (BatchId != undefined &&  selval !=4 ) uploadstatsap(BatchId);
        $("#TotalRecCntTxt").val($("#TotalRecCntTxt").val()-1)
        
       var ObjIds=$("#BatchIdTxt").val();
         opener.SetObjectValue("<%=Request.QueryString("BaseId")%>","<%=Request.QueryString("CtrlId") %>",ObjIds)
         
       if($("#TotalRecCntTxt").val()==0)
       {
         AjaxUpdateBatchId(ObjIds,"<%=Request.QueryString("BaseId")%>","<%=Request.QueryString("CtrlId") %>","<%=Request.QueryString("IssuLogId")%>");
         window.self.close();
       }
    }
    
 
      function checkvalue(k)
      {
         var activalvaue= document.getElementById("AppRevDecion" + k).value
         var selval=document.getElementById("AppvRevDll_" + k).value
         
         if (activalvaue != selval)
         {
           document.getElementById("ReviewDesc").className="SubHeadTD";
           document.getElementById("AppRevRemTd" + k).className="MainTD";
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
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            
          
            
        </asp:Table>
    </form>
</body>

<script language=jscript >

   if ("<%=Page.IsPostBack %>" == "False")
  {
    
    if ($("#BatchIdTxt").val()==""){ 
            $("#BatchIdTxt").val($("#BatchIdTxt").val() + "," + opener.window.document.getElementById("<%=Request.QueryString("BaseId")%>" + "_" +"<%=Request.QueryString("CtrlId") %>").value ); 
            
            var BatchIdVal= $("#BatchIdTxt").val()
            if (BatchIdVal.substring(0,1)==',')  { $("#BatchIdTxt").val(BatchIdVal.substring(1)); } 
        } 
                    
   if($("#TotalRecCntTxt").val()=="0")
       {
        $("#TotalRecCntTxt").val(1)
        ResetSno()
       }
       
   } 
</script>

</html>

