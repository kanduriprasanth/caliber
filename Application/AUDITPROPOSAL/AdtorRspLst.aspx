<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AdtorRspLst.aspx.vb" Inherits="AUDITPROPOSAL.AdtorRspLst" %>

<%@ Register TagPrefix="uc2" TagName="EsignObj" Src="EsignObj1.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SearchCtrl2" Src="SearchCtrl2.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>AdtorAccLst</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    
    <link href="../TRIMS.css" rel="stylesheet">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript" src="../JScript/jquery.min.js"></script>

    <script language="javascript">
		var RgsChildId=""
		var Cnt="";
		var Type="";
		var Value="";
		var Remark="";
		
		function FnOpenPopUp(RgsId)
		{
		
		    SetPopDimensions()
            var pageURL = "ShowAudit.aspx?RgsId=" + RgsId;
            var features = "height= 450,width= 850,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
            var SpWinObj = window.open(pageURL,'BRMPopup',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
		}
		
		function CallAjax()
		{
//		    RgsChildId = RgsChildId;
//		    Cnt = Cnt;
		    
		    
        try 
        {    
            //FF, Opera, Safari, Chrome, IE7+    
            xmlHttp = new XMLHttpRequest();  
        } 
        catch(e) 
        {    
            try 
            {      
                //IE6+
                xmlHttp  = new ActiveXObject("Microsoft.XMLHTTP");    
            } 
            catch(e) 
            {
                try 
                {
                    //IE5+
                    xmlHttp  = new ActiveXObject("Msxml2.XMLHTTP");
                } 
                catch(e) 
                {
                    xmlHttp  = null;
                }
            }
        }  

        if (xmlHttp!=null)
        {
            xmlHttp.onreadystatechange=function()
            {
                if(xmlHttp.readyState==4)
                {  
                    var s = xmlHttp.responseText;
                    if(s=="1")
                    {
                       document.getElementById("EsignRow").className="";
                       alert('Accepted') 
                       document.getElementById("Lbl_" + document.getElementById("CntTxt").value).innerText="Accepted";
                       document.getElementById("Txt_" + document.getElementById("CntTxt").value).value=""
                       document.getElementById("DecRbLst_" + document.getElementById("CntTxt").value + "_0").checked=true;
                       document.getElementById("DecRbLst_" + document.getElementById("CntTxt").value + "_0").disabled=true;
                       document.getElementById("DecRbLst_" + document.getElementById("CntTxt").value + "_1").disabled=true;
                       document.getElementById("HtmBtn_" + document.getElementById("CntTxt").value).disabled=true;
                       document.getElementById("Txt_" + document.getElementById("CntTxt").value).readOnly=true;
                       document.getElementById("ReloadBtn").click();
                       document.getElementById("EsignRow").className="HideRow";
                       document.forms(0).detachEvent('onsubmit',fnCallESign);
                    }
                    else
                    {
                         
                       alert('Rejected')  
                       document.getElementById("Lbl_" + document.getElementById("CntTxt").value).innerText="Rejected";
                       document.getElementById("Txt_" + document.getElementById("CntTxt").value).value=""
                       document.getElementById("DecRbLst_" + document.getElementById("CntTxt").value + "_1").checked=false;
                       document.getElementById("ReloadBtn").click();     
                       document.getElementById("EsignRow").className="HideRow";      
                       document.forms(0).detachEvent('onsubmit',fnCallESign);                                       
                    }
                    
                }
                    
                
            }
        }  

        var pattern = document.getElementById("RemarkTxt").value
        pattern = pattern.replace(/\&/g, '*%$#$%*');
        var RepStr1 = pattern.replace(/”/g,"\"")
        var RepStr2 = RepStr1.replace(/“/g,"\"")
        var RepStr3 = RepStr2.replace(/’/g,"\'")
        var RepStr4 = RepStr3.replace(/‘/g,"\'")
        var Remarks = RepStr4.replace(/…/g,"\...")       
        var url="AuditorDec_Ajax.aspx?RgsChildId=" + document.getElementById("RgsChildIdTxt").value + "&Type=" + 1 + "&DecType=" + document.getElementById("DecTxt").value + "&Remark=" + Remarks + "&RgsId=" +document.getElementById("RgsIdTxt").value;
        xmlHttp.open("GET",url,true);
        xmlHttp.send(null);
		}
		
	function FnSubmitDec(RgsId,RgsChildId,Cnt)
    {  

        var Value=""
        var Remark="--"

           
        if(document.getElementById("DecRbLst_" + Cnt + "_1").checked==true)
        {
            Value=document.getElementById("DecRbLst_" + Cnt + "_1").value;
              var obj = document.getElementById("Txt_" + Cnt);
             obj.value = obj.value.replace(/^\s+|\s+$/g, "");
             var feild = obj.value
       
            if (feild.length == 0) {
            alert('Enter Value For Remark(s)/Reason(s)')
            return false;
            }
        }
        else if(document.getElementById("DecRbLst_" + Cnt + "_0").checked==true)
        {
            Value=document.getElementById("DecRbLst_" + Cnt + "_0").value;
        }
//        else if(document.getElementById("DecRbLst_" + Cnt + "_2").checked==true)
//        {
//            if(document.getElementById("Txt_" + Cnt).value=="")
//            {
//                alert('Enter Value For: Remark(s)/Reason(s)')
//                return(false);
//            }
//        }
        else
        {
            alert('Select Decision')
            return(false);
        }
         
        
        Remark=document.getElementById("Txt_" + Cnt).value
       
        document.getElementById("DecTxt").value=Value;
         document.getElementById("RgsChildIdTxt").value=RgsChildId;
         document.getElementById("RgsIdTxt").value=RgsId;
          document.getElementById("RemarkTxt").value=Remark;
          document.getElementById("CntTxt").value=Cnt;
        fnCallESign(RgsChildId,Cnt,1,Value,Remark,'Auditor Acceptance');
        
         if (!Page_ClientValidate())
        	{
                return;
            }
//        
//       var xmlHttp;
//        try 
//        {    
//            //FF, Opera, Safari, Chrome, IE7+
//            xmlHttp = new XMLHttpRequest();  
//        } 
//        catch(e) 
//        {    
//            try 
//            {      
//                //IE6+
//                xmlHttp  = new ActiveXObject("Microsoft.XMLHTTP");    
//            } 
//            catch(e) 
//            {
//                try 
//                {
//                    //IE5+
//                    xmlHttp  = new ActiveXObject("Msxml2.XMLHTTP");
//                } 
//                catch(e) 
//                {
//                    xmlHttp  = null;
//                }
//            }
//        }  

//        if (xmlHttp!=null)
//        {
//            xmlHttp.onreadystatechange=function()
//            {
//                if(xmlHttp.readyState==4)
//                {  
//                    var s = xmlHttp.responseText;
//                     if(s=="1")
//                    {
//                       document.getElementById("EsignRow").className="";
//                       alert('Accepted') 
//                       document.getElementById("Lbl_" + Cnt).innerText="Accepted";
//                       document.getElementById("Txt_" + Cnt).value=""
//                       document.getElementById("DecRbLst_" + Cnt + "_0").checked=true;
//                       document.getElementById("DecRbLst_" + Cnt + "_0").disabled=true;
//                       document.getElementById("DecRbLst_" + Cnt + "_1").disabled=true;
//                       document.getElementById("HtmBtn_" + Cnt).disabled=true;
//                       document.getElementById("Txt_" + Cnt).readOnly=true;
//                       document.getElementById("ReloadBtn").click();
//                    }
//                    else
//                    {
//                         
//                         alert('Rejected')  
//                         document.getElementById("Lbl_" + Cnt).innerText="Rejected";
//                         document.getElementById("Txt_" + Cnt).value=""
//                         document.getElementById("DecRbLst_" + Cnt + "_1").checked=false;
//                         document.getElementById("ReloadBtn").click();                                                  
//                    }
//                    
//                }
//                    
//                
//            }
//        }            
//        var url="AuditorDec_Ajax.aspx?RgsChildId=" + RgsChildId + "&Type=" + 1 + "&DecType=" + Value + "&Remark=" + Remark;
//        xmlHttp.open("GET",url,true);
//        xmlHttp.send(null);
    }
		
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="Table1" runat="server" CssClass="MainTable" HorizontalAlign="center"
            BorderWidth="3" CellSpacing="0" CellPadding="0">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table ID="Table2" runat="server" HorizontalAlign="center" CellPadding="0" CssClass="SubTable"
                        CellSpacing="1" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="6">
                                <asp:Literal ID="SubTitleLtrl" runat="server">Audit List</asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="6">
                                <uc1:SearchCtrl2 id="SearchCtrl1" runat="server">
                                </uc1:SearchCtrl2>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:LinkButton ID="ActLb" Height="100%" runat="server" Width="100%"></asp:LinkButton>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="4"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="MaxRecLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="MaxRecCntLtrl" runat="server">0</asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="RecPerPageLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" runat="server" AutoPostBack="False"
                                    Width="50px">20</asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="PgNoLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="PgNoTxt" CssClass="TxtCls" runat="server" AutoPostBack="False" Width="50px"
                                    MaxLength="5">1</asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="7">
                                <asp:Table ID="DisTable1" runat="server" HorizontalAlign="center" CellPadding="0"
                                    CssClass="SubTable" CellSpacing="1" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell ColumnSpan="6" ID="ValidatorsTd">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                                    ShowMessageBox="True"></asp:ValidationSummary>
                                <asp:Button ID="ReloadBtn" runat="server" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc2:EsignObj ID="EsignObj1" runat="server" Visible="false"></uc2:EsignObj>
                                <asp:TextBox ID="DecTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="RgsChildIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="RemarkTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="CntTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="RgsIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
                <asp:TableCell>
                         <input id="reloadValue" type="hidden" name="reloadValue" value="" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
    
    <script language=javascript>
    
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
    </script>

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

</body>
</html>
