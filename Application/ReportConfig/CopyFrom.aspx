<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CopyFrom.aspx.vb" Inherits="ReportConfig.CopyFrom" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.text %>
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script type="text/javascript" src="../JScript/jquery.min.js"></script>

    <link href="../Plugins/ColorPicer/colorpicker.css" rel="stylesheet" type="text/css" />

    <script src="../Plugins/ColorPicer/colorpicker.js" type="text/javascript"></script>
  
</head>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="tt" EnableViewState="False" Width="98%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server">Existing List</asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" CssClass="SubHead">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="FilRw">
                            <asp:TableCell CssClass="MainTd">
                                <asp:Table ID="EscTable" runat="server" HorizontalAlign="center" CellPadding="0"
                                    CssClass="SubTable" CellSpacing="1" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" HorizontalAlign="left">
                                <input type=button id="Ok" onclick="FnOk()" value="Ok" class="ButCls" />
                                <input type=button id="Close" onclick="FnClose()" value="Cancel" class="ButCls" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:Button ID="Button1" runat="server" CausesValidation="false"></asp:Button>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ID="TableCell1" ColumnSpan="2">
                <asp:TextBox ID="ValTxt" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
        <script language=javascript>
        
//          function FnGetVal(id,rwnum)
//          {            
//             var DeptDesc;
//             DeptDesc=document.getElementById("DeptDesc"+rwnum).innerHTML;
//             document.getElementById("ValTxt").value=id;
//             opener.AssignVal(document.getElementById("ValTxt").value,DeptDesc);
          //}
            
          function FnOk()
          { 
               var DeptDesc;          
               $("[id^='Rb_']").each(function(index) {
                 if(this.checked==true)
                  {
                     DeptDesc=document.getElementById("DeptDesc"+index).innerHTML;
                     document.getElementById("ValTxt").value=document.getElementById("DeptId"+index).innerHTML;
                     opener.AssignVal(document.getElementById("ValTxt").value,DeptDesc);
                  }                                          
                  
                });
                                 
             if(document.getElementById("ValTxt").value!="")
             {                
                opener.PageRefresh();
                window.self.close();
             }
             else
             {
                alert('Select At Least One Record');
             }
          }
          
          function FnClose()
          {
                opener.AssignVal('','');  
                opener.PageRefresh();
                window.self.close();                       
          }
                      
        </script>
    </form>
</body>
</html>


