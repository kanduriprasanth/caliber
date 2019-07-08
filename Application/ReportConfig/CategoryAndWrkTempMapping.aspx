<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CategoryAndWrkTempMapping.aspx.vb" Inherits="ReportConfig.CategoryAndWrkTempMapping" %>


<%@ Register TagPrefix="uc2" TagName="ListSelection" Src="../CaliberCommonCtrls/ListSelection.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title><%=MainTitleLtrl.text %></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

</head>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="tt" EnableViewState="False" Width="98%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                       
                       <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" CssClass="MainTD">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                          <asp:TableRow>
							<asp:TableCell CssClass="MainTD" ID="CategoryTd" style="font-weight:bold" Width="33%"></asp:TableCell>
							<asp:TableCell CssClass="MainTD">
                              <asp:DropDownList ID="CategoryDDl" AutoPostBack=true runat="server" CssClass="MainTD"></asp:DropDownList>
                              
                            </asp:TableCell>
						  </asp:TableRow>
						  
						    <asp:TableRow ID="Templatestr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <uc2:ListSelection id="Templates" runat="server">
                                </uc2:ListSelection>
                            </asp:TableCell>
                           </asp:TableRow>
                           
        
                        
                        <asp:TableRow ID="ResTabTr" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                    CellPadding="0" CssClass="SubTable">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" HorizontalAlign =left >
                                <asp:Button ID="BtnConferm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" ></asp:Button>
                            </asp:TableCell>
                           
                            
                            
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                        
                        <asp:Button ID="Button1" runat="server" CausesValidation=false ></asp:Button>
                       
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ID="TableCell1" ColumnSpan="2">
                    <asp:TextBox ID="WorktemIdList" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>

    <script language =javascript >
          
          
  function ValidateListControl(src,args)
   {
        args.IsValid=true;
        Page_IsValid=true;
        
        if (document.getElementById("CategoryDDl").value != ""){
        
        var SelStandordFields = document.getElementById("Templates_OptValues").value
        
        if(SelStandordFields=="")
        {
            src.errormessage= "Select At Least One Template"
            args.IsValid=false;
            Page_IsValid=false;
            return false;
        }
       } 
   }
   
   
    
  
   
   
   
  
    </script>

</body>
</html>