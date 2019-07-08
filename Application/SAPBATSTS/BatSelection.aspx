<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="BatSelection.aspx.vb" Inherits="SAPBATSTS.BatSelection" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>Batch Selection</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">


   
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
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
                                <asp:Literal ID="SubTitleLtrl" runat="server"> Batch Selection</asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                       <asp:TableRow >
                            <asp:TableCell CssClass="MainTD" ID="UserTd">Select Batch Number</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input id="UsertBtn" type="button" class='RsnPUP' tabindex="2" onclick="fnOpenPopUp()" />
                                <asp:Label ID="ProdLbl" runat="server" Text=""></asp:Label> &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                                <asp:Label ID="BatLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="BatIdTxt" runat="server" CssClass="HideRow" ></asp:TextBox>
                                <asp:TextBox ID="BatUcodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="ProdDescTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                 <asp:TextBox ID="ProdCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                         
                       
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="SAPuserIDTd">SAP Plant No</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="SAPPltTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:Label ID="SAPPltLbl" runat="server" Text=""></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal runat="server" ID="RemarksLtrl"> Remarks</asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                               
                            </asp:TableCell>
                        </asp:TableRow>
                        
                    </asp:Table>
                    <!-----------End of Base table------------->
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
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Next" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="HideRow" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButCls" Height="20px" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                                <asp:RequiredFieldValidator ID = "UserIDReq" runat ="server" ControlToValidate = "BatIdTxt" ErrorMessage ="Select Batch Number" />
                                <asp:RequiredFieldValidator ID = "SAPID" runat ="server" ControlToValidate = "SAPPltTxt" ErrorMessage ="Enter Plant No" />
                        
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">

    function fnOpenPopUp()
        {            
            var pageURL = "BatchListPop.aspx"
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }	
			
	    function fnsetUservalue(BatID,PrdCode,PrdDesc,BatNo,SAPPltcode)	
	    {
	    debugger
	        document.getElementById ("BatIdTxt").value= BatID  
	        document.getElementById ("ProdCodeTxt").value= PrdCode  
	        document.getElementById ("ProdLbl").innerHTML= PrdDesc + "(" +  PrdCode  + ")"
	        document.getElementById ("ProdDescTxt").value= PrdDesc  
	        document.getElementById ("BatUcodeTxt").value= BatNo  
	        document.getElementById ("BatLbl").innerHTML= BatNo
	        document.getElementById ("SAPPltTxt").value= SAPPltcode  
	        document.getElementById ("SAPPltLbl").innerHTML= SAPPltcode
    	
	    }
	     </script>
</html>
