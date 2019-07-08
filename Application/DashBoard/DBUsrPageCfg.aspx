<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DBUsrPageCfg.aspx.vb" Inherits="DashBoard.DBUsrPageCfg" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title><%=MainTitleLtrl.text %></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
  
    <script language="javascript" src="../JScript/Common2.js"></script>

      <script language=javascript>
      
        function FnReadRptCfgList()
        { 
            var pageURL="ReportListpopup.aspx?SelectedIds=" + document.getElementById("ReportIdList").value
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
							 <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Width="250px" runat=server> </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt"  runat="server" CssClass="UCTxtCls"  ReadOnly =true Text="<< System Generated >>" MaxLength="50" Width="200px"
                                    AccessKey="C" TabIndex="1" ></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DescTd" runat=server></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" onkeypress="taLimit()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ReportListTd" runat=server></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                            
                                 <input type="button" class="RsnPUP" onclick="FnReadRptCfgList()" />
                                <asp:Label CssClass="MainTD" runat="server" ID="ReportNameListLbl"></asp:Label>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="ReportNameListtxt"></asp:TextBox>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="ReportIdList"></asp:TextBox>
                                
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
				
                <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                    padding-bottom: 0px">
                    <uc1:EsignObj id="EsignObj1" runat="server" visible="true">
                    </uc1:EsignObj>
                </asp:TableCell>
                </asp:TableRow>
			</asp:table></form>
		<script language="javascript">
<!--

document.getElementById('CodeTxt').focus()

var taMaxLength = 500
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
	</body>
</html>
