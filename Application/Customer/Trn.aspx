<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="Customer.Trn" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>

	<HEAD>
		<title>Trn</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
		
	    <script language="javascript">
	    <!--
	    RequestPrefix='<%=me.ClientID%>'
	    //--- Validation for Check box list ------
	    function CheckBoxValidation(src,args){
		       args.IsValid=false
		       if(document.getElementById('CustomerTypeChk_0').checked==true || document.getElementById('CustomerTypeChk_1').checked==true || document.getElementById('CustomerTypeChk_2').checked==true)
		       {
	        	    args.IsValid=true;
		       }
	    }
    	
        function fnSetToReasons(argValue){
		    document.getElementById('RemarksTxt').value = argValue
	    }
	    //-->
    	
	    function SHowHide()
	    {
	        if(<%=TrnType%>==1)
	        {
	            if(document.getElementById("UcodeRbl_0").checked==true)
	            {
	                document.getElementById("CodeTr").className=""
	                document.getElementById("CodeTxt").value=""
	            }
	            else
	            {
	                document.getElementById("CodeTr").className="HideRow"
	                document.getElementById("CodeTxt").value="[System Generated]"
	            }
	        }
	    }
        //Restricting Special Characters

function RestrictSpecialChar(src, args) {
               args.IsValid=true;
               Page_IsValid=true;
    var exp = document.getElementById("DescTxt").value

    //Below line will have the special characters that is not allowed you can add if you want more for some characters you need to add escape sequence
    var r = new RegExp("[,$#*+'^&!/[]", "g");

    if (exp.match(r) != null) {
               args.IsValid=false;
               Page_IsValid=false;
        return false;
    }
}
function RestrictSpecialCharacters(src, args) {
               args.IsValid=true;
               Page_IsValid=true;
            if (document.getElementById('UcodeRbl_0').checked==true){
            
          
    var exp = document.getElementById("CodeTxt").value

    //Below line will have the special characters that is not allowed you can add if you want more for some characters you need to add escape sequence
    var r = new RegExp("[,$#*+'^&!/[]", "g");

    if (exp.match(r) != null) {
               args.IsValid=false;
               Page_IsValid=false;
        return false;
    } }
    else{
    return true;
    }
    }

	    </script>
		
	</HEAD>
	
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="tt" CELLPADDING="0" CELLSPACING="0" BorderWidth="3" HorizontalAlign="center"
				cssclass="MainTable"  runat="server">
				<asp:TableRow Height="20">
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainTitleLtrl" Runat="server"></asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<!-----------Base table------------->
						<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
							HorizontalAlign="center" ID="Table1">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CSSClass="SubHead" ColumnSpan="2">
									<asp:Literal id="SubTitleLtrl" runat="server"></asp:Literal>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="DescTd" ></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="DescTxt" runat="server" CssClass="TxtCls" MaxLength="50" Width="200px" AccessKey="D"  TabIndex=1></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="UcodeTypeTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:RadioButtonList ID="UcodeRbl" runat="server" onclick="SHowHide()" CssClass="RBList" RepeatDirection="Horizontal">
									    <asp:ListItem Value="1">User Defined</asp:ListItem>
									    <asp:ListItem Value="2">System Generated</asp:ListItem>
									</asp:RadioButtonList>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow ID="CodeTr">
								<asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="CodeTxt"  runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
                          
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="CustomerTypeTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:checkboxlist cssclass=rblist id="CustomerTypeChk" RepeatDirection="Horizontal" runat="server">
									</asp:checkboxlist></asp:TableCell>
							</asp:TableRow>
							
							  <asp:TableRow ID="TableRow1">
                                <asp:TableCell ID="SubCatTD" CssClass="MainTD"></asp:TableCell>
                                <asp:TableCell CssClass="MainTD">
                                    <asp:TextBox ID="SubCatTxt" runat="server" AccessKey="C" CssClass="TxtCls" MaxLength="200"
                                        TabIndex="2" Width="200px"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>
                            
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="CPersonTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="CPersonTxt" runat="server" CssClass="TxtCls" MaxLength="100" Width="200px" AccessKey="D"></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="AddLine1Td"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="AddLine1Txt" runat="server" CssClass="TxtCls" MaxLength="100" Width="200px" AccessKey="D"></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="AddLine2Td"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="AddLine2Txt" runat="server" CssClass="TxtCls" MaxLength="100" Width="200px" AccessKey="D"></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="AddLine3Td"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="AddLine3Txt" runat="server" CssClass="TxtCls" MaxLength="100" Width="200px" AccessKey="D"></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="CityTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="CityTxt" runat="server" CssClass="TxtCls" MaxLength="100" Width="200px" AccessKey="D"></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="StateTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="StateTxt" runat="server" CssClass="TxtCls" MaxLength="100" Width="200px" AccessKey="D"></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="CountryTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="CountryTxt" runat="server" CssClass="TxtCls" MaxLength="100" Width="200px" AccessKey="D"></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="ZipTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="ZipTxt" runat="server" CssClass="TxtCls" MaxLength="20" Width="200px" AccessKey="D"></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="PhoneTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="PhoneTxt" runat="server" CssClass="TxtCls" OnkeyUp="ValidPhone()"  MaxLength="20" Width="200px" AccessKey="D"></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="FaxTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="FaxTxt" runat="server" CssClass="TxtCls" OnkeyUp="ValidFax()" MaxLength="20" Width="200px" AccessKey="D"></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="EMailTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="EMailTxt" runat="server" CssClass="TxtCls" MaxLength="100" Width="200px" AccessKey="D"></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							
						    <asp:TableRow ID="RemarksRow" Runat="server" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD">
									<asp:Literal Runat="server" ID="RemarksLtrl"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" TextMode="MultiLine"
										Rows="2" AccessKey="R"></asp:TextBox>
									<INPUT type="button" onclick="fnOpenReasons(1),'RemarksTxt'" class='RsnPUP'>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow ID="EsignRow" Runat="server" CssClass="HideRow">
								<asp:TableCell ColumnSpan="2" style="PADDING-RIGHT:0px;PADDING-LEFT:0px;PADDING-TOP:0px;PADDING-BOTTOM:0px">
									<uc1:EsignObj id="EsignObj1" runat="server" visible="false"></uc1:EsignObj>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
						<!-----------End of Base table------------->
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow ID="IARow" Runat="server" CssClass="HideRow">
					<asp:TableCell>
						<asp:Table ID="IATab" Runat="server" cssClass='SubTable' width="100%" cellpadding="0" cellspacing="1"
							HorizontalAlign="Center"></asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow CssClass="MainFoot">
					<asp:TableCell>
						<asp:Table runat="server" width="100%" CELLPADDING="0" cellspacing="0"
							HorizontalAlign="center" ID="Table2" BorderWidth="0">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell>
									<asp:Button id="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
										accessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70"></asp:Button>
								</asp:TableCell>
								<asp:TableCell HorizontalAlign="Right">
									<asp:HyperLink ID="Hlink" Runat="server" CssClass="ButSelCls" onMouseOver="this.className='ButSelOCls'"
										onMouseOut="this.className='ButSelCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow CssClass="HideRow" Height="0">
					<asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
						<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table>
		</form>
	</body>
	
	<script language=javascript>
    <!--
	    //document.getElementById('DescTxt').focus()

    function emailValidation(src,args)
	    {
		    //test if valid email address, must have '@' and '.'.
		    var flag=0	
		    var str = document.getElementById('EMailTxt').value		
    		
		    if(str=='--' || str==''){		
		       flag =0
		    }
		    else{			
		      if(str.indexOf("@")==-1)			
			    flag=1
		      else if(str.indexOf(".")==-1)			
			    flag=1
		      else if(str.indexOf("@")!=str.lastIndexOf("@"))			
			    flag=1
		      else if(str.indexOf(".@")>0 || str.indexOf("@.")>0)			
			    flag=1
		      else if(str.indexOf("..")>0)			
			    flag=1
		      else if( (str.lastIndexOf("@") == (str.length-1)) || (str.indexOf("@") == 0) || (str.lastIndexOf(".") == (str.length-1)) || (str.indexOf(".") == 0) )	
			    flag=1
		    }
		     if(flag==1){
               args.IsValid=false;
               Page_IsValid=false;
             } 
	    }

    //-->
	
	function ValidPhone()
	{
	    //	 var val= document.getElementById("PhoneTxt").value
    //	var KC = window.event.keyCode
    	
    //	if (isNaN(val) && KC!=44 && KC!=45)
    //	{
    //	alert("Enter Numerical Values Only")
	    //	document.getElementById("PhoneTxt").value="";
	    //	document.getElementById("PhoneTxt").focus()
    //	
    //	}
	}	
		
		
	function ValidFax()
	{

	    //	var val= document.getElementById("FaxTxt").value
    	 
    //	if (isNaN(val))
    //	{
    //	alert("Enter Numerical Values Only")
    //	forms(0).FaxTxt.value="";
    //	forms(0).FaxTxt.focus()
    //	}
    }	
	
	setTimeout("SHowHide()",100)
	
	</script>
	
</HTML>
