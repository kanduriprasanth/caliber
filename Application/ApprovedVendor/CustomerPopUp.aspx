<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CustomerPopUp.aspx.vb" Inherits="ApprovedVendor.CustomerPopUp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Vendor List</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body onblur="document.getElementById('FindTxt').focus()" onload="document.getElementById('FindTxt').focus()"
		MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">Vendor List</TD>
				</TR>
				<TR>
					<TD>
						<DIV class="MainTd" id="Div1" style="HEIGHT: 20px">
							<table cellSpacing="0" cellPadding="0" width="100%" align="center">
								<tr class="HideRow">
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<TR>
									<td class="MainTd" colSpan="1"><asp:literal id="SearchOptionLtrl" runat="server">Search 
            Option</asp:literal>
									</td>
									<td class="MainTd" colSpan="3"><asp:radiobuttonlist id="SearchOptionRD" Runat="server" RepeatDirection="Horizontal" CellPadding="0"
											cssclass="RBList" CellSpacing="0" Height="18px">
											<asp:ListItem Value="1" Selected="True">Vendor Name</asp:ListItem>
											<asp:ListItem Value="2"> Vendor Code</asp:ListItem>
										</asp:radiobuttonlist></td>
								</TR>
								<tr>
									<td class="MainTd" colSpan="2"><asp:literal id="FindLrl" runat="server">Find</asp:literal>
										<asp:textbox id="FindTxt" runat="server" Width="150px" CssClass="TxtCls">%</asp:textbox></td>
									<td class="MainTd" colSpan="2"><asp:literal id="FetchSizeLtrl" runat="server">Records 
            Limit</asp:literal>
										<asp:textbox id="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:textbox>&nbsp;<asp:button class="ButCls" id="btnFind" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
											runat="server" Text="Display"></asp:button></td>
								</tr>
								<tr>
									<td class="MainTd" colSpan="4">
										<DIV style="OVERFLOW: auto; HEIGHT: 200px; BACKGROUND-COLOR: gray"><asp:table id="ResTab" runat="server" CellPadding="0" CellSpacing="1" Width="100%" CssClass="SubTable"
												BorderWidth="0"></asp:table></DIV>
									</td>
								</tr>
							</table>
						</DIV>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot"><INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 50px" onclick="fnCrCloseWin()"
							onmouseout="this.className='ButCls'" type="button" value="Ok"> <INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 60px" onclick="fnCrCancel()"
							onmouseout="this.className='ButCls'" type="button" value="Cancel">
					</TD>
				</TR>
			</TABLE>
			<asp:TextBox Runat="server" ID="RBVal" CssClass="HideRow"></asp:TextBox>
		</form>
		<SCRIPT language="javascript">
		
		
  var flag=false
  function fnCrGetCode(RowCnt)
	{ 
	var IDList
	var NameList
   
    var CustName=document.all("CustName"+ RowCnt).innerHTML //CustName		      
    var CustId=document.all("CustId"+ RowCnt).innerText //CustuctID	
    var CustCode=document.all("CustCode"+ RowCnt).innerText
    var Category=document.all("Category" + RowCnt).innerText
    var BsaId=document.all("BsaId" + RowCnt).innerText
    var VendCode=document.all("AulId" + RowCnt).innerText
    //For Addetional Details and Item Ids
    var VenItemIds=document.all("VenItemIds" + RowCnt).innerText
    var VenAddDetId=document.all("VenAddDetId" + RowCnt).innerText
    var VenItemStsId=document.all("VenItemStsId" + RowCnt).innerText
    document.getElementById("RBVal").value=CustId
    
    opener.fnCrCustSetToCode(CustId,CustName,CustCode,Category,BsaId,VendCode,VenItemIds,VenAddDetId,VenItemStsId)
			  
	}

	function fnCrCancel(){
		opener.fnCrCustSetToCode('','','','','','','','','')
		window.self.close()
		 
	}
		
	document.oncontextmenu=new Function("return false")
	
	function fnCrCloseWin(){	  
	    if(document.getElementById("RBVal").value == ""){
           alert("Select Vendor")
           return(false);
         } 		
		window.self.close()
	}
	
	
	 
        </SCRIPT>
	</body>
</HTML>
