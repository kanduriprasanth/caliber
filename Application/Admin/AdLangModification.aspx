<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AdLangModification.aspx.vb"
    Inherits="Admin.AdLangModification" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Caption Modification</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
    
        function CheckCheckbox(cnt)
        {
            if(document.getElementById("Chk_" + cnt).checked==true)
            {
                document.getElementById("CapNameTxt_" + cnt).removeAttribute("disabled",false)
                document.getElementById("RsnTxt_" + cnt).removeAttribute("disabled",false)
                document.getElementById("Submt_" + cnt).removeAttribute("disabled",false)
            }
            else
            {
                document.getElementById("CapNameTxt_" + cnt).setAttribute("disabled","disabled")
                document.getElementById("RsnTxt_" + cnt).setAttribute("disabled","disabled")
                document.getElementById("Submt_" + cnt).removeAttribute("disabled","disabled")
            }

            if(document.getElementById("CapNameTxt_" + cnt).value!=document.getElementById("ExtCapNameTxt_" + cnt).value)
            {
                document.getElementById("Submt_" + cnt).removeAttribute("disabled",false)
            }
            else
            {
                document.getElementById("Submt_" + cnt).removeAttribute("disabled","disabled")
            }
        }

        function FnAjaxSubmit(reccnt)
        {
            if(document.getElementById("CapNameTxt_" + reccnt).value == document.getElementById("ExtCapNameTxt_" + reccnt).value)
            {
                alert('Please change the caption name');
                return false;
            }
            
            if(document.getElementById("CapNameTxt_" + reccnt).value == "" && document.getElementById("RsnTxt_" + reccnt).value == "")
            {
                alert('Enter Value For: Caption Name and Remark(s)/Reason(s)');
                return false;
            }
            
            if(document.getElementById("CapNameTxt_" + reccnt).value == "")
            {
                alert('Enter Value For: Caption Name');
                return false;
            }
            
            if(document.getElementById("RsnTxt_" + reccnt).value == "")
            {
                alert('Enter Value For: Reason');
                return false;
            }
                        
            if(document.getElementById("LangDDL").value == "")
            {
                alert('Select Value For: Language Type');
                return false;
            }
            
            var url="CationUpdateAjax.aspx"

            var PlanXmlRow = "<XmlDS>";

            PlanXmlRow += "<DataTable>";
            PlanXmlRow += "<CaptionID>" + document.getElementById("CapId_" + reccnt).innerHTML + "</CaptionID>";
            PlanXmlRow += "<CaptionName>" + document.getElementById("CapNameTxt_" + reccnt).value + "</CaptionName>";
            PlanXmlRow += "<Reasons>" + document.getElementById("RsnTxt_" + reccnt).value + "</Reasons>";
            PlanXmlRow += "<LanguageType>" + document.getElementById("LangDDL").value + "</LanguageType>";
            PlanXmlRow += "<ExtCapName>" + document.getElementById("ExtCapNameTxt_" + reccnt).value + "</ExtCapName>";
            
            PlanXmlRow += "</DataTable>";

            PlanXmlRow += "</XmlDS>";

            if (window.XMLHttpRequest)
            { 
                reqXML = new XMLHttpRequest(); 
            }
            else if(window.ActiveXObject)
            {
                reqXML = new ActiveXObject("Microsoft.XMLHTTP"); 
            }

            if (reqXML)
            {
                reqXML.open("POST", url, true);
                reqXML.setRequestHeader("Content-Type", "text/xml");
                reqXML.send("<?xml version='1.0' encoding='UTF-8'?>" + PlanXmlRow);

                reqXML.onreadystatechange=function()
            {
            if(reqXML.readyState==4)
            {  
                var s = reqXML.responseText;
                   
                if(s=="1")
                {
                   alert('Caption Updated');
                   document.getElementById("CapNameTxt_" + reccnt).removeAttribute("disabled",false)
                   document.getElementById("RsnTxt_" + reccnt).removeAttribute("disabled",false)
                   document.getElementById("Submt_" + reccnt).removeAttribute("disabled",false)  
                   document.getElementById("ExtCapNameTxt_" + reccnt).value=document.getElementById("CapNameTxt_" + reccnt).value         
                }
                else
                {
                    alert('Updation Faild');
                    document.getElementById("CapNameTxt_" + reccnt).removeAttribute("disabled",false)
                    document.getElementById("RsnTxt_" + reccnt).removeAttribute("disabled",false)
                    document.getElementById("Submt_" + reccnt).removeAttribute("disabled",false)
                }
                
            }
               
            }
            }            

            else
            {
            alert("Your browser does not support Ajax");
            }
        }
    
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="Table1" EnableViewState="False">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="7">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="SrchByTd">
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="SrchRbl" runat="server" RepeatDirection="Horizontal" CssClass="RBList">
                                    <asp:ListItem Value="1" Text="Caption Name"></asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="SrchTxtTd">
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="4">
                                <asp:TextBox ID="SrchTxt" runat="server" CssClass="TxtCls" Text="%" Width="250px" MaxLength="25"></asp:TextBox>
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
                            <asp:TableCell CssClass="MainTD">
                              <asp:Button ID="DisplayBtn" runat="server" Text="Display" CssClass="ButCls" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="LangTypeTD">
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="6">
                                <asp:DropDownList ID="LangDDL" runat="server" Width="200px">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="English">English</asp:ListItem>
                                    <asp:ListItem Value="Arabic">Arabic</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="7">
                                <asp:Table ID="DisTable" runat="server" HorizontalAlign="center" CellPadding="0"
                                    CssClass="SubTable" CellSpacing="1" Width="100%">
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
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow CssClass="MainFoot">
                            <asp:TableCell ColumnSpan="7">
                               
                            </asp:TableCell>
                        </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
