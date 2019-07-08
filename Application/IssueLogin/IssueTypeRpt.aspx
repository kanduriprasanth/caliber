<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="IssueTypeRpt.aspx.vb" Inherits="IssueLogin.IssueTypeRpt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" >

<html>
<head id="Head1" runat="server">
  <title><%=MainTitleLtrl.Text%></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
    <link rel="stylesheet" href="../eNoteBookEditor/editor/css/fck_editorarea.css">
  
      <script language="javascript" src="../JScript/Common2.js" type="text/javascript"></script>
    <script language="vbscript" src="../JScript/MsWordScript.vbs" type="text/vbscript"></script>
   
</head>


<body>
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow Height="20" CssClass="HideRow">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                              <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow CssClass="HideRow">
                        <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                       <asp:Panel id="HeaderDiv"  runat="server" Width="100%" HorizontalAlign="Left"  EnableViewState="False">
					   </asp:Panel>
                        </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="DisplayTr" CssClass ="MainTD">
                            <asp:TableCell CssClass="MainTD"  ID="TableCell2" ColumnSpan =3>
                            <asp:Table ID="DispTbl" runat =server  CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1" HorizontalAlign="center" >
                            </asp:Table>
                          </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow CssClass="HideRow">
                        <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                        <asp:Panel id="FooterDiv" runat="server" Width="100%" HorizontalAlign="Left" EnableViewState="False"></asp:Panel>
                        </asp:TableCell>
                        </asp:TableRow>
                         
                        
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            
             <asp:TableRow>
                <asp:TableCell>
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell ColumnSpan="2">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Left" CssClass="MainFoot">
                               <input id="BtnPrint" onclick="TpltPrintPre('Print')" type="button" value="Print"  onMouseOver="this.className='ButOCls'"
            Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Width="100px"/>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
                               
                 <asp:TableRow CssClass="HideRow">
                   <asp:TableCell>
                       <asp:TextBox ID="FLDIdListTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                        <asp:TextBox ID="FieldValuesListTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                        <asp:TextBox ID="WorkFlwFldIdLstTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                        <asp:TextBox ID="WorkFlwFldValLstTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                        
                   </asp:TableCell>
                 </asp:TableRow>
            
        </asp:Table>
    </form>
</body>
</html>
