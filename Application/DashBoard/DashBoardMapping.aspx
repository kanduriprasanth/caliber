<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DashBoardMapping.aspx.vb" Inherits="DashBoard.DashBoardMapping" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title><%=MainTitleLtrl.text %></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/jquery-1.6.3.min.js"></script>

    <script language="javascript" src="../JScript/Common2.js"></script>

      <script language=javascript>
      
        function FnReadRptCfgList()
        { 
            var pageURL="ReportListpopup.aspx"
            var PWidth=600
            var PHeight=500
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
            var SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }


        function SetReportListValues(ReportIDs,ReportNameStr)
        { 
            document.getElementById("ReportIdList").value=ReportIDs
            document.getElementById("ReportNameListtxt").value=ReportNameStr
            document.getElementById("ReportNameListLbl").innerHTML=ReportNameStr
            
        }
        
        
        
      </script>
        
</head> 
    
    
 <body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post"  runat="server">
			<asp:table id="tt" runat="server"  cssclass="MainTable" HorizontalAlign="center"
				CELLSPACING="0" CELLPADDING="0" BorderWidth="3">
				<asp:TableRow>
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
							
							 <asp:TableRow CssClass="HideRow">
                                    <asp:TableCell CssClass="MainTD" ID="CodeTd" Width="250px" runat=server> </asp:TableCell>
                                    <asp:TableCell CssClass="MainTD">
                                        <asp:TextBox ID="CodeTxt"  runat="server" CssClass="TxtCls" MaxLength="50" Width="200px"
                                            AccessKey="C" TabIndex="1" ></asp:TextBox>
                                    </asp:TableCell>
                             </asp:TableRow>
                        
                         <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="MappingToTD" runat=server></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                              <asp:RadioButtonList ID="MappingToRdl" runat=server CssClass="MainTD" onclick="ChangeCss()"></asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                          <asp:TableRow ID="CategoryTr" CssClass="HideRow">
                                <asp:TableCell CssClass="MainTD" ID="CatTd"></asp:TableCell>
                                <asp:TableCell CssClass="MainTD">
                                    <asp:DropDownList runat="server" ID="CategoryList" AutoPostBack="True" Width="200">
                                    </asp:DropDownList>
                                </asp:TableCell>
                            </asp:TableRow>
                            
                            <asp:TableRow ID="RoleTr" CssClass="HideRow">
                                <asp:TableCell CssClass="MainTD" ID="RoleTd"></asp:TableCell>
                                <asp:TableCell CssClass="MainTD">
                                    <asp:DropDownList runat="server" ID="RoleList" AutoPostBack="True" Width="200">
                                        <asp:ListItem Value=''>[Select Role]</asp:ListItem>
                                    </asp:DropDownList>
                                </asp:TableCell>
                            </asp:TableRow>
                            
                            
                        <asp:TableRow ID="UserGrpTR" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="UserGrpTD" runat=server></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                 <input type="button" class="RsnPUP" onclick="FnUserGroupPopup()" />
                                <asp:Label CssClass="MainTD" runat="server" ID="UserGrpNameLbl"></asp:Label>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="UserGrpNameTxt"></asp:TextBox>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="UserGrpIdTxt"></asp:TextBox>
                                
                            </asp:TableCell>
                        </asp:TableRow>
                                                
                         <asp:TableRow ID="UserTR" CssClass="HideRow" >
                            <asp:TableCell CssClass="MainTD" ID="UserTD" runat=server></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" class="RsnPUP" onclick="FnUserListpopup()" />
                                <asp:Label CssClass="MainTD" runat="server" ID="UserNamelbl"></asp:Label>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="UserNametxt"></asp:TextBox>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="UserIdTxt"></asp:TextBox>
                                
                            </asp:TableCell>
                        </asp:TableRow>
                            
						<asp:TableRow >
                            <asp:TableCell CssClass="MainTD" ID="PageCfgTd" runat=server></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" class="RsnPUP" onclick="FnPageconfiguration()" />
                                <asp:Label CssClass="MainTD" runat="server" ID="Label1"></asp:Label>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="TextBox1"></asp:TextBox>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="TextBox2"></asp:TextBox>
                                
                            </asp:TableCell>
                        </asp:TableRow>
                        
							
						</asp:Table>
						
						
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow  CssClass="MainFoot">
					<asp:TableCell>
						<asp:Table runat="server" width="100%" CELLPADDING="0" cellspacing="0"
							HorizontalAlign="center" ID="Table2" BorderWidth="0">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell ColumnSpan="2">
									<asp:Button id="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
										accessKey="C" onMouseOut="this.className='ButCls'" Text="Submit" ></asp:Button>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow CssClass="HideRow" Height="0">
					<asp:TableCell ID="ValidatorsTd">
						<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table></form>
			
<script language="javascript">



		</script>
	</body>
</html>
