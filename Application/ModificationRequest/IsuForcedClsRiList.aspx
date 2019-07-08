<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="IsuForcedClsRiList.aspx.vb" Inherits="ModificationRequest.IsuForcedClsRiList" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="EsignObj1.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl4.ascx" %>

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
		
		  function ChangeRemrks(RowCnt)
		  {
		    if (document.getElementById("Accept_" + RowCnt + "_0").checked == true)
		    {
		      document.getElementById("Remarks_" + RowCnt ).value="--"
		    }
		    else
		    {
		      document.getElementById("Remarks_" + RowCnt ).value=""
		    }
		  }
		
            function funFclsReinit(RowCnt)
            {
                var ExpMsg =""
                
                if($.trim(document.getElementById("Remarks_" + RowCnt ).value)=="")
                {
                     ExpMsg=ExpMsg +"Enter Value For: Remarks/Reasons" + "\n"

                }

                if (ExpMsg == "")
                { 
                    fnCallESign(11,RowCnt);
                }
                else
                {
                    alert(ExpMsg);
                    return;
                }
            
            }

            function Fn_XMLTableRow(ColName,ColValue,TableName)
            {
                TableName = TableName ? TableName : "DataTable"
                return "<" + TableName + "><ColumnName>" + ColName +"</ColumnName><ColumnValue>" + ColValue +"</ColumnValue></" + TableName + ">";
            }

            function ReplaceSpeCahar(Cdata)  // Function to replace special characters "&<"
            {
                Cdata =Cdata.replace("&","&amp;"); 
                Cdata=Cdata.replace("<","&lt;"); 
                return Cdata
            }

            function Ajax_FclsReinit(RowCnt) //(RowCnt,AceptStatus)
            {

                var Values ='<XmlDS>';
                
                Values+=Fn_XMLTableRow("FlcsRemrks","<![CDATA[" + ReplaceSpeCahar(document.getElementById("ClosureRemrks_"+RowCnt).value) + "]]>")
                Values+=Fn_XMLTableRow("Remarks","<![CDATA[" + ReplaceSpeCahar(document.getElementById("Remarks_"+RowCnt).value) + "]]>")

                Values+= "</XmlDS>";

                var url="../ModificationRequest/FClsApp_Ajax.aspx?Type=2&FclsID=" +  document.getElementById("FclsID_"+RowCnt).value 
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

		
		</script>
	</body>
</HTML>
