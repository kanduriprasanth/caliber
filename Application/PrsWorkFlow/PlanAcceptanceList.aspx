<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PlanAcceptanceList.aspx.vb" Inherits="PrsWorkFlow.PlanAcceptanceList" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="EsignObj1.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl2.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title><%=MainTitleLtrl.Text%></title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<script language="javascript" src="../JScript/jquery.min.js"></script>
			 
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table CELLPADDING="0" CELLSPACING="0" BorderWidth="3" HorizontalAlign="center" cssclass="MainTable"
				runat="server" id="Table1" EnableViewState="False">
				<ASP:TABLEROW Height="20" CssClass="SubHead">
					<ASP:TABLECELL CssClass="MainHead">
						<ASP:Label id="MainTitleLtrl" Runat="server"></ASP:Label>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
				<ASP:TABLEROW>
					<ASP:TABLECELL> <!-----------Base table------------->
						<ASP:TABLE id="CrTopTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">
							<ASP:TABLEROW>
								<ASP:TABLECELL CSSClass="SubHead" ColumnSpan="6">
									<ASP:LabeL id="SubTitleLtrl" runat="server"></ASP:LabeL>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<asp:TableRow>
								<asp:TableCell CSSClass="MainTD" ColumnSpan="6">
									<uc1:SearchCtrl id="SearchCtrl1" runat="server"></uc1:SearchCtrl>
								</asp:TableCell>
							</asp:TableRow>
							<ASP:TABLEROW CssClass="HideRow">
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
									<ASP:LITERAL id="MaxRecCntLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="RecPerPageLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" Runat="server" AutoPostBack="False"
										Width="50px" onkeypress="return IsDigit1(event);" > 20</ASP:TEXTBOX>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="PgNoLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX id="PgNoTxt" CssClass="TxtCls" Runat="server" AutoPostBack="False" Width="50px"
										MaxLength="5" onkeypress="return IsDigit1(event);" >1</ASP:TEXTBOX>&nbsp;&nbsp;&nbsp;&nbsp;
										<ASP:Button id="GoBtn" Runat="server" CssClass="ButCls" Text="Display" Visible="TRUE"></ASP:Button>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW>
								<ASP:TABLECELL ColumnSpan="6">
									<ASP:TABLE id="DevCtrlTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
										cellspacing="1" width="100%"></ASP:TABLE>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
						</ASP:TABLE>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
				
			
                        <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                        <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                            padding-bottom: 0px">
                             <uc1:EsignObj id="EsignObj1" runat="server" visible="false">
                                </uc1:EsignObj>
                        </asp:TableCell>
                    </asp:TableRow>
                    
			</asp:table>
		</form>
		
		<script language=javascript>
		
            function funPlanProsAcp(RowCnt)
            {
            
                AjaxCheckDuration(document.getElementById("IsuLogID_"+RowCnt).value,"SubmitBtn_" + RowCnt,"PropActPlan",RowCnt)
              
            }

            function PropActPlan(ReturnValue,RowCnt)
            {
                if(ReturnValue==0)
                {
                    funPlanProsAcp1(RowCnt)
                } 
            }
    
            function funPlanProsAcp1(RowCnt)
            {
                var ExpMsg =""
                var Remarks=$.trim(document.getElementById("Remarks_" + RowCnt).value);
                if (document.getElementById("Accept_" + RowCnt + "_1").checked== false && document.getElementById("Accept_" + RowCnt + "_0").checked== false ) 
                {
                     ExpMsg="Select Value For : Accept" 
                }
                else if (document.getElementById("Accept_" + RowCnt + "_1").checked== true)
                {
                    if (Remarks=="")
                    {
                         ExpMsg="Enter Value For : Remark(s) / Reason(s)"
                    }
                    else
                    {
                         AceptStatus=false
                    }
                }

                if (ExpMsg == "")
                { fnCallESign(5,RowCnt); }
                else
                { alert(ExpMsg); return; }
            }
            
            
            
            function Fn_XMLTableRow(ColName,ColValue,TableName)
            {
                TableName = TableName ? TableName : "DataTable"
                return "<" + TableName + "><ColumnName>" + ColName +"</ColumnName><ColumnValue>" + ColValue +"</ColumnValue></" + TableName + ">";
            }

            function ReplaceSpeCahar(Cdata)  // Function to replace special characters "&<"
            {
            
                if(Cdata!="")
                {
                Cdata =Cdata.replace("&","&amp;"); 
                Cdata=Cdata.replace("<","&lt;"); 
                return Cdata
                }
                else
                return '---'
            }

            function Ajax_ApproveAcp(RowCnt) //(RowCnt,AceptStatus)
            {

                var Values ='<XmlDS>';
   
                var AcpDecision
                if (document.getElementById("Accept_" + RowCnt + "_1").checked==true)          // No   
                {AcpDecision=2 }
                else if (document.getElementById("Accept_" + RowCnt + "_0").checked==true)     // Yes        
                {AcpDecision=1 }

                if($.trim(document.getElementById("Remarks_"+RowCnt).value)=="")
                    document.getElementById("Remarks_"+RowCnt).value="---"
                    
                Values+=Fn_XMLTableRow("AcceptStatus","<![CDATA[" + AcpDecision + "]]>")
                Values+=Fn_XMLTableRow("Remarks","<![CDATA[" + ReplaceSpeCahar(document.getElementById("Remarks_"+RowCnt).value) + "]]>")
                Values+=Fn_XMLTableRow("IsuLogID","<![CDATA[" + document.getElementById("IsuLogID_"+RowCnt).value + "]]>")

                Values+= "</XmlDS>";

                var url="../PrsWorkFlow/PoposeAcp_Ajax.aspx?Type=1&PlanId=" +  document.getElementById("PlanID_"+RowCnt).value 
                if (window.XMLHttpRequest)
                { 
                    reqXML = new XMLHttpRequest(); 
                }
                else if(window.ActiveXObject)
                {
                    reqXML = new ActiveXObject("Microsoft.XMLHTTP"); 
                }
                if(reqXML)
                {
                    reqXML.open("POST", url, true);
                    reqXML.setRequestHeader("Content-Type", "text/xml");
                    reqXML.send("<?xml version='1.0' encoding='UTF-8'?>" + Values);
                    reqXML.onreadystatechange = function()
                    {
                        if(reqXML.readyState==4)
                        {
                            var Time="abc"
                            Time=reqXML.responseText
                            if (Time="1")
                            {
//                                document.getElementById("Accept_" + RowCnt + "_0").setAttribute("disabled","disabled")
//                                document.getElementById("Accept_" + RowCnt + "_1").setAttribute("disabled","disabled")
//                                document.getElementById("Remarks_" + RowCnt).setAttribute("disabled","disabled")
//                                document.getElementById("Remarks_" + RowCnt).setAttribute("disabled","disabled")
//                                document.getElementById("Button_" + RowCnt).innerHTML="<input id='SubmitBtn_" + RowCnt + "' name='SubmitBtn_" + RowCnt + "' type='Button' class='ButCls' value='Submit' disabled=disabled/>"
                                document.getElementById("GoBtn").click();
                            } 
                            else 
                            alert("Exception Occured")
                            xmlhttp =null;
                        }
                    }
                }
                else
                {
                    alert("Your browser does not support Ajax");
                }
            }


        
            function FnCheckRepeat()
            {
            Detach();
            }

            function Detach()
            {
            var formName = document.forms(0).name
            document.forms(0).detachEvent('onsubmit',fnCallESign)
            }

	var taMaxLength = 250;

    function taLimit() 
	{
		var taObj=window.event.srcElement;
		if (taObj.value.length==taMaxLength*1) return false;
	}

	function taCount()
	{
		var taObj=window.event.srcElement;			
		if (taObj.value.length>taMaxLength*1){
			taObj.value=taObj.value.substring(0,taMaxLength*1);
			alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Characters")

            }
            
            //CheckMIn3Char ()
            if (taObj.value.length !="") {
                taObj.detachEvent('onchange', CheckMIn3Char)
                taObj.attachEvent('onchange', CheckMIn3Char)
                                 
            }
	}
		</script>

	</body>
</HTML>
