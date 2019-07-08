<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SAPGetDetails.aspx.vb" Inherits="StoringBatchParticulars.SAPGetDetails" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<%@ Register TagPrefix="uc2" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html  >
<head runat="server">
    <title>Batch Details</title>
     <link rel="stylesheet" href="../TRIMS.css">
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
</head>
<body>
     <form id="Form1" method="post" runat="server">
        <asp:Table ID="MainTable" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
             <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server">Batch Particulars</asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                 <!-----------Base table------------->
                   <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="DisTable">
                         <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server">Get Detials from SAP</asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                          <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ProductTd"> Product/Material </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input id="ProductBtn" type="button" class='RsnPUP' tabindex="2" onclick="fnOpenPopUp()" />
                                <asp:Label ID="ProductLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="ProductTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="ProductUcodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="BatchTD"> Batch Number </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="BatchTxt" runat="server" CssClass="UCTxtCls" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="3"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="PlantTD"> Plant Number </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="PlantTxt" runat="server" CssClass="UCTxtCls" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="3"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        </asp:Table>
                  <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="FootTable" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOSelCls'"
                                    Class='ButSelCls' AccessKey="C" onMouseOut="this.className='ButSelCls'" Text="Get From SAP" Width="120" >
                                </asp:Button>
                                <asp:label runat="server" id="SAPStatus" visible="false"  ForeColor="red" text="No Record From SAP<br>"></asp:label>
                            </asp:TableCell>
                           </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            </asp:Table>
            
    </form>
</body>
<script language="javascript">
  function fnOpenPopUp()
        {            
            var pageURL = "ProductPopup.aspx"
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }	
			
	    function fnsetproductvalue(Baseid,Ucode)	
	    {
	        document.getElementById ("ProductTxt").value= Baseid  
	        document.getElementById ("ProductUcodeTxt").value= Ucode  
	        document.getElementById ("ProductLbl").innerHTML= Ucode  
    	
	    }	
		
</script>
</html>
