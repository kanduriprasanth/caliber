<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UIStatusChg.aspx.vb" Inherits="UcodeGen.UIStatusChg" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Untitled Page</title>
    <link href="../TRIMS.css" rel="stylesheet" type="text/css" />  
    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript" >
        function f1() {
            opener.fnPageRefresh()
            window.close();
        }
	</script>
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead" ID="MainTitleTd">
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow CssClass="MainTD" Height="0">
                            <asp:TableCell CssClass="MainTD">Remark(s) / Reason(s)</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                          
                                  <asp:TextBox runat="server" id="Reasons" class="TxtCls" onkeypress="taLimit()" onkeyup="taCount()"
                                       TextMode="MultiLine" style="width: 250px">      </asp:TextBox> 
                                        
                            </asp:TableCell>
                        </asp:TableRow>
                        
           <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                    padding-bottom: 0px">
                    <uc1:EsignObj id="EsignObj1" runat="server" visible="false">
                    </uc1:EsignObj>
                </asp:TableCell>
            </asp:TableRow>
                        
                        
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell CssClass="MainFoot">
                    <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                        CssClass='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit"
                        Width="70"></asp:Button>
                
                   <input class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="button" value="Cancel" style="WIDTH:50px" onclick="window.close()" />
							
                </asp:TableCell>
            </asp:TableRow>
            
                 <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="ProtocolFieldKeys" Style="display: none" Width="0" Height="0" runat="server">
                    </asp:TextBox>
                    <asp:TextBox ID="ProtocolFieldNames" Style="display: none" Width="0" Height="0" runat="server">
                    </asp:TextBox>
                    <asp:TextBox ID="ProtocolFieldbndto" Style="display: none" Width="0" Height="0" runat="server">
                    </asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            
        </asp:Table>
    </form>
    
        <script language="javascript">
            debugger
            //TEXTAREA VALIDATIONS FOR THE LENGHT
            var taMaxLength = 200
            function taLimit() {
                var taObj = window.event.srcElement;
                if (taObj.value.length == taObj.maxLength * 1) return false;
            }

            function taCount() {
                var taObj = window.event.srcElement;
                if (taObj.value.length > taMaxLength * 1) {
                    taObj.value = taObj.value.substring(0, taMaxLength * 1);
                    alert("Characters exceeding limit\nMaximum Lenght: " + taMaxLength + " Chars")
                }
                //if (visCnt) visCnt.innerText=taObj.maxLength-taObj.value.length;
            }

            function fnpsw_Init() {
                //window.returnValue = ""
                //pswTitle.innerText = window.dialogArguments
                document.Form1.Reasons.focus()
            }

            function fnCheckAuthentication() {
                if ((document.Form1.Reasons.value).length <= 1) {
                    alert("Enter Remark(s) / Reason(s)")
                    document.Form1.Reasons.focus()
                    return (false);
                }
            }

        </script>


</body>
</html>