<%@ Page Language="vb" AutoEventWireup="false" Codebehind="USERMap.aspx.vb" Inherits="SAPBATSTS.USERMap" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>User Map</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/Common2.js"></script>
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
                                <asp:Literal ID="SubTitleLtrl" runat="server">  </asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="UserTd">QAMS UserID</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input id="UsertBtn" type="button" class='<%=StyleClass%>' tabindex="2" onclick="fnOpenPopUp()" />
                                <asp:Label ID="UserLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="UserTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="UserLoginTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="UserNameTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="SAPuserIDTd">SAP UserID</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="SAPuserIDTxt" runat="server" CssClass="TxtCls" MaxLength="30" Width="200px"
                                    TabIndex="5"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow ID = "ActiveStsTR">
                            <asp:TableCell CssClass="MainTD" ID="ActiveStatus">Active</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                 <asp:RadioButtonList runat ="server" ID ="ActStsRbl" RepeatDirection="Horizontal" CssClass ="MainTD" >
                                 <asp:ListItem Value="1"  >Yes</asp:ListItem>
                            <asp:ListItem Value="2">No</asp:ListItem>
                            </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="MainTd">
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal runat="server" ID="RemarksLtrl"> Remarks</asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R" onkeypress='taLimit()' onkeyup='taCount()'></asp:TextBox>
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
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit"
                                    Width="70"></asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="HideRow" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButCls" Height="20px" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc1:EsignObj id="EsignObj1" runat="server" visible="true">
                                </uc1:EsignObj>
                                 
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:RequiredFieldValidator ID="UserIDReq" runat="server" ControlToValidate="UserTxt"
                        ErrorMessage="Select Value For: QAMS UserID" />
                    <asp:RequiredFieldValidator ID="SAPID" runat="server" ControlToValidate="SAPuserIDTxt"
                        ErrorMessage="Enter Value For: SAP UserID" />
                    <asp:RequiredFieldValidator ID="Remarks" runat="server" ControlToValidate="RemarksTxt"
                        ErrorMessage="Enter Value For: Remarks" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">

    function fnOpenPopUp()
        {            
            var pageURL = "UserListPop.aspx"
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }	
			
	    function fnsetUservalue(LoginID,UserLogin,UserName)	
	    {
	     
	        document.getElementById ("UserTxt").value= LoginID  
	        document.getElementById ("UserLoginTxt").value= UserLogin  
	        document.getElementById ("UserLbl").innerHTML= UserName + "(" +  UserLogin  + ")"
	        document.getElementById ("UserNameTxt").value= UserName  
	        if (LoginID == '')
	        {
	            document.getElementById ("UserLbl").innerHTML = ''
	        }
	        
    	
	    }
	    
             var taMaxLength = 250
            var taMaxLength1 = 50
		function taLimit() {
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		}

		function taCount() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength*1){
				taObj.value=taObj.value.substring(0,taMaxLength*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Characters")
			}
			}		
					
	  
</script>

</html>
