<%@ Page Language="vb" AutoEventWireup="false" Codebehind="IsuForcedClsAppList.aspx.vb"
    Inherits="ModificationRequest.IsuForcedClsAppList" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="EsignObj1.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl4.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.Text%>
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
   
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript" src="../JScript/jquery.min.js"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="Table1" EnableViewState="False">
            <asp:TableRow Height="20" CssClass="SubHead">
                <asp:TableCell CssClass="MainHead">
                    <asp:Label ID="MainTitleLtrl" runat="server"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="6">
                                <asp:Label ID="SubTitleLtrl" runat="server"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="6">
                                <uc1:SearchCtrl id="SearchCtrl1" runat="server">
                                </uc1:SearchCtrl>
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
                                <asp:Literal ID="MaxRecCntLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="RecPerPageLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" runat="server" AutoPostBack="False"
                                    Width="50px" onkeypress="return IsDigit1(event);"> 20</asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="PgNoLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="PgNoTxt" CssClass="TxtCls" runat="server" AutoPostBack="False" Width="50px"
                                    MaxLength="5" onkeypress="return IsDigit1(event);">1</asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="GoBtn" runat="server" CssClass="ButCls" Text="Display" Visible="TRUE">
                                </asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="DevCtrlTable" runat="server" HorizontalAlign="center" CellPadding="0"
                                    CssClass="SubTable" CellSpacing="1" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
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
    </form>

    <script language="javascript">
		
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
		
            function funFclsApproval(RowCnt)
            {
                var ExpMsg =""

                
                if (document.getElementById("Accept_" + RowCnt + "_0").checked==false && document.getElementById("Accept_" + RowCnt + "_1").checked==false && document.getElementById("Accept_" + RowCnt + "_2").checked==false) 
                {

                  ExpMsg=ExpMsg + "Select Value For :Decision" + "\n"

                }
                
                if (document.getElementById("Accept_" + RowCnt + "_0").checked==true || document.getElementById("Accept_" + RowCnt + "_2").checked==true)
                {

                    if($.trim(document.getElementById("Remarks_" + RowCnt ).value)=="")
                    {
                         ExpMsg=ExpMsg +"Enter Value For: Remark(s)/Reason(s)" + "\n"

                    }

                }

               
                if (ExpMsg == "")
                { 
                    fnCallESign(10,RowCnt);
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

            function Ajax_ApproveAcp(RowCnt) //(RowCnt,AceptStatus)
            {

                var Values ='<XmlDS>';

                var AppDecision
                 if (document.getElementById("Accept_" + RowCnt + "_0").checked==true) 
                {
                     AppDecision=2
                }

                if (document.getElementById("Accept_" + RowCnt + "_1").checked==true) 
                {
                     AppDecision=3
                }

                if (document.getElementById("Accept_" + RowCnt + "_2").checked==true) 
                {
                     AppDecision=4
                }
                
                Values+=Fn_XMLTableRow("AcceptStatus","<![CDATA[" + AppDecision + "]]>")
                Values+=Fn_XMLTableRow("Remarks","<![CDATA[" + ReplaceSpeCahar(document.getElementById("Remarks_"+RowCnt).value) + "]]>")

                Values+= "</XmlDS>";
                
                var Appcount=(document.getElementById("Appreq_"+RowCnt).value)-(document.getElementById("AppCom_"+RowCnt).value);
                 
                 if(Appcount>0)
                  Appcount=Appcount-1;                
                
                var url="../ModificationRequest/FClsApp_Ajax.aspx?Type=1&FclsID=" +  document.getElementById("FclsID_"+RowCnt).value + "&IsulogId=" +  document.getElementById("IsulogId_"+RowCnt).value + "&Appcount=" + Appcount  
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
</html>
