<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MultirefObjPopup.aspx.vb" Inherits="ReportConfig.MultirefObjPopup" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title><%=MainTitleLtrl.text %></title>
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
					<TD class="MainHead"> <asp:Literal ID="MainTitleLtrl" runat="server"> Multi Object Reference List</asp:Literal></TD>
				</TR>
				<TR>
					<TD>
						<DIV class="MainTd" style="HEIGHT: 20px" ID="Div1">
							<table width="100%" cellSpacing="0" cellPadding="0" align="center">
								<tr class="HideRow">
								</tr>
								
								<tr class="MainTD">
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
 
 var LblValue =""
 var TxtValue=""
 
 
document.getElementById("RBVal").value =document.getElementById("Selvaltxt").value

  	function fnCrGetCode()
	{
        var KfLableValArr=new Array()
        var KdIdValArr=new Array()
         var Lblvalue=''
        for(var k=0;k<<%=RecordCnt%>;k++)
	    {
	        if(document.getElementById("ChkID"+k).checked ==true)
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
         LblValue =KdIdValArr.join("; ");
         TxtValue= KfLableValArr.join(",") 
 
	    opener.SetDefaultValue("<%=Request.QueryString("RowCnt") %>",LblValue,TxtValue);
	    window.self.close();
	}
	
	
	function fnCrCancel(){
		opener.SetDefaultValue("<%=Request.QueryString("RowCnt") %>","","");
		window.self.close()
	}

	document.oncontextmenu=new Function("return false")

	function fnCrCloseWin(){
	 
	      if ( (document.getElementById("RBVal").value == undefined) || (document.getElementById("RBVal").value == '') )
	      {
            alert("Select At Least One Item")
            return(false);
          }    
		window.self.close()
	 }
	
    
    
		</SCRIPT>
	</body>
</HTML>
