<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ChkListPopup.aspx.vb" Inherits="IssueLogin.ChkListPopup" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Check List</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout" >
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="3">
				<!-- MAIN HEADER -->
				<TR class="SubHead">
					<TD class="MainHead">Check List Items</TD>
				</TR>
				<TR>
					<TD>
						<DIV class="MainTd" style="HEIGHT: 20px" ID="Div1">
							<table width="100%" cellSpacing="0" cellPadding="0" align="center">
								<tr class="HideRow">
								</tr>
								<Tr>
									<td class="HideRow" colspan="1">
										<asp:literal id="SearchOptionLtrl" runat="server">Search Option</asp:literal>
									</td>
									<td class="HideRow" colspan="3">
										<asp:RadioButtonList ID="SearchOptionRD" Runat="server" RepeatDirection="Horizontal" CellPadding="0"
											cssclass="RBList" CellSpacing="0" Height="18px">
											<asp:ListItem Value="1" Selected="True">Kf 1</asp:ListItem>
											<asp:ListItem Value="2"> Kf 2</asp:ListItem>
										</asp:RadioButtonList>
									</td>
								</Tr>
								<tr class="HideRow">
									<td class="MainTd" colspan="2">
										<asp:literal id="FindLrl" runat="server">Find</asp:literal>
										<asp:TextBox id="FindTxt" runat="server" Width="100px" CssClass='TxtCls' MaxLength =26>%</asp:TextBox>
									</td>
									<td class="MainTd" colspan="2">
										<asp:literal id="FetchSizeLtrl" runat="server">Records Limit</asp:literal>
										<asp:textbox id="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:textbox>
										<asp:Button id="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
											onmouseout="this.className='ButCls'"></asp:Button>
									</td>
								</tr>
								<tr>
									<td class="MainTd" colspan="4">
										<DIV style="OVERFLOW: auto; HEIGHT: 200px; BACKGROUND-COLOR: gray">
											<asp:table id="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1" CellPadding="0"
												CssClass="SubTable"></asp:table></DIV>
									
									</td>
								</tr>
								 <tr class="HideRow">
                                <td id="RBVal">
                                </td>
                                <td>
                                  <asp:TextBox ID="Selvaltxt" CssClass="hideRow" runat=server></asp:TextBox>
                                </td>
                            </tr>
							</table>
						</DIV>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot"><INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 50px" onclick="fnCrGetCode()"
							onmouseout="this.className='ButCls'" type="button" value="Ok"> <INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 60px" onclick="fnCrCancel()"
							onmouseout="this.className='ButCls'" type="button" value="Cancel">
					</TD>
				</TR>
			</TABLE>
		</form>
		<SCRIPT language="javascript">
 var flag=false
 
document.getElementById("RBVal").value =document.getElementById("Selvaltxt").value

  	function fnCrGetCode()
	{
        var KfLableValArr=new Array()
        var KdIdValArr=new Array()
         var Lblvalue=''
        for(var k=0;k<<%=RecordCnt%>;k++)
	    {
	        if(document.getElementById("RBID"+k).checked ==true)
	        {
                 Lblvalue=document.all("KfLable"+ k).innerHTML  
	             KfLableValArr.push(Lblvalue)
	             KdIdValArr.push(document.all("KfIDLable"+ k).innerHTML  )
	             document.getElementById("RBVal").value=Lblvalue
	             
	        }
	    }
	    if (Lblvalue=='') document.getElementById("RBVal").value =Lblvalue
	    
	    if ( (document.getElementById("RBVal").value == undefined) || (document.getElementById("RBVal").value == '') )
	      {
            alert("Select At Least One Item")
            return(false);
          }  
	    
        var KfLableVal=KfLableValArr.join("; ") + "#*#" + KdIdValArr.join(",");
	    opener.fnSetVal_Chklist(KfLableVal,<%=Saveid %>,"<%=Request.QueryString("BaseID") %>",<%=Request.QueryString("CtrlId") %>);
	    window.self.close();
	}
	
	
	function fnCrCancel(){
		opener.fnSetVal_Chklist('#*#',<%=Saveid %>,"<%=Request.QueryString("BaseID") %>",<%=Request.QueryString("CtrlId") %>)
		window.self.close()
	}

	document.oncontextmenu=new Function("return false")

	function fnCrCloseWin(){
	 
	      if ( (document.getElementById("RBVal").value == undefined) || (document.getElementById("RBVal").value == '') )
	      {
            alert("Select At Least One Item")
            return(false);
          }    
          opener.fnCrformSubmitDoc("<%=Request.QueryString("BaseID") %>","<%=Request.QueryString("CtrlId") %>")
		window.self.close()
	}
	
	
	function getSelectedvalues()
	{
	   var SelectedVal=opener.window.document.getElementById("<%=Request.QueryString("BaseId")%>" + "_" +"<%=Request.QueryString("CtrlId") %>").value + "; ";
	   document.getElementById("Selvaltxt").value=SelectedVal
	    document.getElementById("btnFind").click();
	}
	
	 if("<%=Page.IsPostBack%>" == "False")
	{
	    getSelectedvalues()
    }
    
    
    
		</SCRIPT>
	</body>
</HTML>
