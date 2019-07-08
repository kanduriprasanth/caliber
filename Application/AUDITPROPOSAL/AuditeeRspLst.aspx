<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AuditeeRspLst.aspx.vb" Inherits="AUDITPROPOSAL.AuditeeRspLst" %>
<%@ Register TagPrefix="uc2" TagName="EsignObj" Src="EsignObj1.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SearchCtrl2" Src="SearchCtrl2.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>AuditeeAccLst</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="../TRIMS.css" rel="stylesheet">
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
		    
		    var xmlHttp;
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
                    }
                    else
                    {
                         
                         alert('Rejected')  
                         document.getElementById("Lbl_" + document.getElementById("CntTxt").value).innerText="Rejected";
                         document.getElementById("Txt_" + document.getElementById("CntTxt").value).value=""
                         document.getElementById("DecRbLst_" + document.getElementById("CntTxt").value + "_1").checked=false;
                         document.getElementById("ReloadBtn").click();     
                         document.getElementById("EsignRow").className="HideRow";                                             
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
        var url="AuditorDec_Ajax.aspx?RgsChildId=" + document.getElementById("RgsChildIdTxt").value + "&Type=" + 2 + "&DecType=" + document.getElementById("DecTxt").value + "&Remark=" + Remarks + "&RgsId=" + document.getElementById("RgsIdTxt").value;
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
        fnCallESign(RgsChildId,Cnt,2,Value,Remark,'Auditee Acceptance');
        
         if (!Page_ClientValidate())
        	{
                return;
            }
        
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
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="Table1" runat="server" cssclass="MainTable" HorizontalAlign="center" BorderWidth="3"
				CELLSPACING="0" CELLPADDING="0">
				<ASP:TABLEROW Height="20">
					<ASP:TABLECELL CssClass="MainHead">
						<ASP:LITERAL id="MainTitleLtrl" Runat="server"></ASP:LITERAL>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
				<ASP:TABLEROW>
					<ASP:TABLECELL> <!-----------Base table------------->
						<ASP:TABLE id="Table2" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">
							<ASP:TABLEROW>
								<ASP:TABLECELL CSSClass="SubHead" ColumnSpan="6">
									<ASP:LITERAL id="SubTitleLtrl" runat="server">Audit List</ASP:LITERAL>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW>
								<ASP:TABLECELL CSSClass="MainTD" ColumnSpan="6">
									<uc1:SearchCtrl2 id="SearchCtrl1" runat="server"></uc1:SearchCtrl2>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW CSSClass="HideRow">
								<ASP:TABLECELL CssClass="MainTD" ColumnSpan="2">
									<ASP:LINKBUTTON id="ActLb" Height="100%" Runat="server" Width="100%"></ASP:LINKBUTTON>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD" ColumnSpan="4"></ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="MaxRecLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="MaxRecCntLtrl" Runat="server">0</ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="RecPerPageLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" Runat="server" AutoPostBack="False"
										Width="50px">20</ASP:TEXTBOX>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="PgNoLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX id="PgNoTxt" CssClass="TxtCls" Runat="server" AutoPostBack="False" Width="50px"
										MaxLength="5">1</ASP:TEXTBOX>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW>
								<ASP:TABLECELL ColumnSpan="7">
									<ASP:TABLE id="DisTable1" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
										cellspacing="1" width="100%"></ASP:TABLE>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell ColumnSpan="6" ID="ValidatorsTd">
									<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
									<asp:Button ID="ReloadBtn" runat="server" />
									<asp:TextBox ID="DecTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="RgsChildIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="RemarkTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="CntTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="RgsIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc2:EsignObj id="EsignObj1" runat="server" visible="false">
                                </uc2:EsignObj>
                            </asp:TableCell>
                        </asp:TableRow>
						</ASP:TABLE>
					</ASP:TABLECELL>
                     <asp:TableCell>
                         <input id="reloadValue" type="hidden" name="reloadValue" value="" />
                </asp:TableCell>
				</ASP:TABLEROW>
			</asp:table></form>
			
			
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
</HTML>

