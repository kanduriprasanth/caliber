<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="IsuRegPopup.aspx.vb" Inherits="IssueLogin.IsuRegPopup" %>
<%@ Register TagPrefix="uc11" TagName="calibercalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title><%=MainTitleLtrl.Text%></title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/jquery-1.6.3.min.js"></script>
    
    <script language="javascript" src="../JScript/Common2.js"></script>

	</HEAD>
	<body MS_POSITIONING="GridLayout" >
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="3">
				<!-- MAIN HEADER -->
				<TR class="SubHead">
					<TD class="MainHead"><asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal></TD>
				</TR>
				<TR>
					<TD>
						<DIV class="MainTd" style="HEIGHT: 20px" ID="Div1">
							<table width="100%" cellSpacing="0" cellPadding="0" align="center">
								<tr class="HideRow">
								</tr>
								<Tr>
									<td class="<%=SrhCssClass %>" colspan="1">
										<asp:literal id="SearchOptionLtrl" runat="server">Search Option</asp:literal>
									</td>
									<td colspan="3" class="<%=SrhCssClass %>">
										<asp:RadioButtonList ID="SearchOptionRD" Runat="server" RepeatDirection="Horizontal" CellPadding="0"
											cssclass="RBList" CellSpacing="0" Height="18px" onclick="ChangeCss()">
										</asp:RadioButtonList>
									</td>
								</Tr>
								<tr>
									<td class="MainTd" colspan="2" id="SearchTD">
										<asp:literal id="FindLrl" runat="server">Find</asp:literal>
										<asp:TextBox id="FindTxt" runat="server" Width="100px" CssClass='TxtCls' MaxLength =26>%</asp:TextBox>
									</td>
									
									<td class="HideRow" colspan="3" id="DateTD">
										Initiated Between&nbsp;&nbsp;&nbsp;&nbsp;<uc11:calibercalender id="FromDate" runat="server"></uc11:calibercalender>
                                        And
                                        <uc11:CaliberCalender id="ToDate" runat="server">
                                        </uc11:CaliberCalender>
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
                                </td>
                            </tr>
							</table>
						</DIV>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot"><INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 50px" onclick="fnCrCloseWin()"
							onmouseout="this.className='ButCls'" type="button" value="Submit"> <INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 60px" onclick="fnCrCancel()"
							onmouseout="this.className='ButCls'" type="button" value="Cancel">
					</TD>
					
				</TR>
			</TABLE>
		</form>
		<SCRIPT language="javascript">
		
		
		
		function ChangeCss()
		{
		  if (document.getElementById("SearchOptionRD_2").checked==true)
		  {
		    document.getElementById("SearchTD").className="HideRow"
		    document.getElementById("DateTD").className="MainTD"
		    SearchTD
		    DateTD
		  }
		  else
		  {
		    document.getElementById("DateTD").className="HideRow"
		    document.getElementById("SearchTD").className="MainTD"
		  }
		}
		
		ChangeCss()
		
    var flag=false
  	
   function fnCrGetCode(RowCnt)
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
	    
	        var KfLableVal=KfLableValArr.join("; ") + "#*#" + KdIdValArr.join(",")
		    opener.fnSetIssueRefs(KfLableVal,"<%=Request.QueryString("BaseID") %>",<%=Request.QueryString("CtrlId") %>)
	}
	
	
	function fnCrCancel(){
		opener.fnSetIssueRefs('#*#',"<%=Request.QueryString("BaseID") %>",<%=Request.QueryString("CtrlId") %>)
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
	
        </SCRIPT>
	</body>
</HTML>