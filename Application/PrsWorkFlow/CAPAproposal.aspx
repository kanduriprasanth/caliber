<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CAPAproposal.aspx.vb" Inherits="PrsWorkFlow.CAPAproposal" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="EsignObj1.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
 <script language="javascript" src="../JScript/jquery.min.js"></script>
    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'
	Page_IsValid=true;
	function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
	}
   
   function RestValue()
    {
        document.getElementById("LodeTXT").value="0";
    }

   function FldValidation()
    {
      document.getElementById("LodeTXT").value="1";
      Page_IsValid=true;
      fnCallESign(3); 
    }


	//-->
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow Height="20">
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
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DescTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" onkeypress="taLimit()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="HeaderTAb">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="ActPlnTab" runat="server" CssClass="SubTable" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="center">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ActonReqTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1" ID="ActonReqTd" Style="font-weight: bold"
                                Width="30%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList CssClass="MainTD" runat="server" ID="ActionReqRDL" 
                                    RepeatDirection="Horizontal">
                                    <asp:ListItem Value='Yes'>Yes</asp:ListItem>
                                    <asp:ListItem Value='No'>No</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="CActTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1" ID="CActTd" Style="font-weight: bold"
                                Width="30%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CActTxt" runat="server" CssClass="TxtCls" MaxLength="2" Width="50px"
                                    AutoPostBack="true" TabIndex="3" onkeypress="return IsDigit1(event);"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="CrvActTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="CrvActTab">
                                </asp:Table>
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
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="IARow" runat="server" CssClass="HideRow">
                <asp:TableCell>
                    <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                        CellSpacing="1" HorizontalAlign="Center">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="180"
                                    CausesValidation="false"></asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign="Left">

                                   <asp:Button ID="btnConform" Text="Submit" runat=server CssClass ="HideRow" onMouseOut="this.className='ButexCls'" onMouseOver="this.className='ButexOCls'" />
                                   
                                   <input type=button  class ="ButCls" onMouseOut="this.className='ButCls'" onMouseOver="this.className='ButOCls'"
                                   value="Submit"  onclick="FldValidation()"  />
                                   
                            </asp:TableCell>
                            <asp:TableCell CssClass="Hiderow" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButCls" Height="20px" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign="Right">
                              <input type =button  id="Button1" onMouseOver="this.className='ButexOCls'"
                                    Class='ButexCls' AccessKey="C" onMouseOut="this.className='ButexCls'" value="Status report" onclick="OpenIsueReport()"/>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="IssLogId" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IssTypeId" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ValdString" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ChkBoxIdTXtx" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="LodeTXT" CssClass="HideRow" runat="server" Text="0"></asp:TextBox>
                    <asp:TextBox ID="IsuTyepTxt" CssClass="HideRow" runat="server" Text="0"></asp:TextBox>
                    <asp:TextBox ID="ActPlanInChargeGrpTXt" CssClass="HideRow" runat="server" Text="0"></asp:TextBox>
                    <asp:TextBox ID="UserGriIdTXt" CssClass="HideRow" runat="server" Text="0"></asp:TextBox>
                    <asp:TextBox ID="UserGrpvalueTXt" CssClass="HideRow" runat="server"></asp:TextBox>
                     <asp:TextBox ID="AcpPlanCounttxt" CssClass="HideRow" runat="server"></asp:TextBox>
                    

                    
                    
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--
//document.Form1.CodeTxt.focus()



function ShowConfermationMessage()
    {
        var ConfermationMessage = "<%=ErrerMessage%>"
        
        if(ConfermationMessage != "")
        {
            alert(ConfermationMessage)
            window.navigate("CAPAPrposalList.aspx?Type=1")
            
            return(false);
        }
    }
    
    ShowConfermationMessage()
    


    

    
    function OpenIsueReport()
    { 
        var pageURL = "../CAPAWORKS/WordFormatReport.aspx?Type=1&IsuLogID=" + <%=Request.QueryString("IsuLogID")%> + "&IsuTypeId=" + <%=Request.QueryString("IssTypeId")%>   + "&PrsType=<%=Request.QueryString("PrsType")%>" 
        var features = "height=600,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
        SpWinObj = window.open(pageURL,'SpecCodes',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
     
//-->
</script>





</html>
