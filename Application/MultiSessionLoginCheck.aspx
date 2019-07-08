<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MultiSessionLoginCheck.aspx.vb" Inherits="QAMS300BL.MultiSessionLoginCheck" %>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Strict//EN">
<html>
	<head>
		<title>Multi Session Login Check</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="TRIMS.css"> 
</head>
<body MS_POSITIONING="GridLayout">
		<form id="Form2" method="post" runat="server">
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
			<asp:table CELLPADDING="0" CELLSPACING="0" BorderWidth="0"  HorizontalAlign="center" cssclass="MainTable"
				WIDTH="600" runat="server" id="Table1">
				<ASP:TABLEROW Height="20">
					<ASP:TABLECELL CssClass="MainHead">
						<ASP:LITERAL id="MainTitleLtrl" Runat="server" Text="Current Logged In Session Information"></ASP:LITERAL>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
				<ASP:TABLEROW>
					<ASP:TABLECELL> <!-----------Base table------------->
						<ASP:TABLE id="CrTopTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">
						
							
							 <asp:TableRow id = "LoinDetTr">
                            <asp:TableCell id = "LoinDetTd" CSSClass="MainHead" ColumnSpan="6">
                            <asp:table id="LoinDetTable" CELLPADDING="0" CELLSPACING="1" BorderWidth="0" cssclass="SubTable"
                            WIDTH="100%" runat="server"></asp:table>	
                            </asp:TableCell>
                            </asp:TableRow>	
                            
                 	<asp:TableRow>
					<asp:TableCell CssClass="MainFoot" HorizontalAlign="Center">
						<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="0"
							HorizontalAlign="center" ID="Table2" BorderWidth="0">
							<asp:TableRow>
								<asp:TableCell id = "MainFootTd" ForeColor="red" Height="25px"  Font-Size="10pt" CssClass="MainTD"  HorizontalAlign="Center" >
										</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainFoot" HorizontalAlign="Center">
									<asp:Button id="yes" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
										accessKey="C" onMouseOut="this.className='ButCls'" Text="Yes" Width="70"></asp:Button>
									<asp:Button id="no" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
										accessKey="C" onMouseOut="this.className='ButCls'" Text="No" Width="70"></asp:Button>
								<asp:Button id="Ok" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
										accessKey="C" onMouseOut="this.className='ButCls'" Text="Ok" Width="70"></asp:Button>
								
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
							</asp:TableCell>
							</asp:TableRow>
							
						 	<asp:TableRow CssClass="HideRow" Height="0">
					      <asp:TableCell ColumnSpan="6" ID="ValidatorsTd">
						<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
                        <asp:TextBox ID="AllBtnDisablingTxt" runat="server" CssClass="HideRow" >0</asp:TextBox>
					</asp:TableCell>
				</asp:TableRow>
						</ASP:TABLE>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
			</asp:table>
		</form>
			<SCRIPT LANGUAGE="javascript">
   	function winclose(decision)
   	{
     
        	if(decision == 1 )
        	{
        	//   window.history=""          
		       // window.close()
			
        	}
        	else
        	{
        	try
        	{
                if(window.parent.parent.name=='CaliberQAMS')
                {
                    window.parent.parent.navigate("../Login.aspx");
                  window.close();
                }
                else
                {
               window.open('../Login.aspx','CaliberQAMS')
               window.close();
                }
       }
       catch(e)
       {
   
          window.parent.navigate("../Login.aspx");
       }
      
        		//window.close();
        	}

}

//For Disabling all Home Screen buttons like Home,PlantSelection,Refresh,SessionRebuild,Back,SignOut etc.

function MyclickFun() { alert('You Cannot Perform any other operations.Please Click OK') }


function DisableAllButtons() {
    //var myEl = window.parent.parent.document.getElementById("PlantSelA")
    var myE2 = window.parent.parent.document.getElementById("BackA")
    var myE3 = window.parent.parent.document.getElementById("HomeA")
    var myE4 = window.parent.parent.document.getElementById("RefreshA")
    var Rebuild = window.parent.parent.document.getElementById("ReBuildA")
    var myE6 = window.parent.parent.document.getElementById("SignouthrefID")

    if ((myE6 != null) && (document.getElementById("AllBtnDisablingTxt").value == 1)) {

       // myEl.href = "javascript:alert('You Cannot Perform any other operations.Please Click OK')";
        myE2.href = "javascript:alert('You Cannot Perform any other operations.Please Click OK')";
        myE3.href = "javascript:alert('You Cannot Perform any other operations.Please Click OK')";
        myE4.href = "javascript:alert('You Cannot Perform any other operations.Please Click OK')";
        Rebuild.href = "javascript:alert('You Cannot Perform any other operations.Please Click OK')";
        myE6.href = "javascript:alert('You Cannot Perform any other operations.Please Click OK')";

     } else { document.getElementById("AllBtnDisablingTxt").value = 0; } 
}

DisableAllButtons()


   	</SCRIPT>
	</body>

</html>
