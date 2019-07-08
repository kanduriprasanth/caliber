<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RptColumnCfg.aspx.vb" Inherits="ReportConfig.RptColumnCfg" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Column Configuration</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
  
    <script language="javascript" src="../JScript/Common2.js"></script>
 
        
   </head> 
    
    
 <body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post"  runat="server">
			<asp:table id="tt" runat="server"  cssclass="MainTable" HorizontalAlign="center"
				CELLSPACING="0" CELLPADDING="0" BorderWidth="3">
				<asp:TableRow>
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainTitleLtrl" Runat="server">Column Configuration</asp:Literal>
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
                            <asp:TableCell CssClass="MainTD" ColumnSpan=2 HorizontalAlign=left  BackColor=lightyellow  > 
                                <b><U>Selection Criteria of Column Config. Report(s)</U></b> <br />
                                a. Config. Type should be column list type.<br />
                                b. Special Filter -01 : Initiation Department (Login User) should not be checked  .<br />
                                c. Special Filter -02 : Should select a list page.<br />
                                d. Drill Down(s) And Trend(s) Count Must be 0.<br />
                                
                            </asp:TableCell>  
                            </asp:TableRow>                  
                         <asp:TableRow>
                            <asp:TableCell CssClass="MainTD"  ColumnSpan=2> 
                                   <asp:Table ID="IssueCatTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                    CellPadding="0" CssClass="SubTable">
                                    <asp:TableRow>
                                    <asp:TableCell CssClass="SubHeadTD" Width="70px">S. No.</asp:TableCell>
                                     <asp:TableCell CssClass="SubHeadTD"  ColumnSpan="1" Width="200px" >Issue Category</asp:TableCell>
                                    <asp:TableCell CssClass="SubHeadTD" Width="400px" >Column Config. Report </asp:TableCell>
                                      <asp:TableCell CssClass="SubHeadTD" Width="100px" ></asp:TableCell>
                                   
                                    </asp:TableRow>
                                    
                                </asp:Table>
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
		
 function SubReport_Popup(Cnt,ListCount,ListId){
    
      var ControlId = Cnt + '.' + ListCount
    var CatID=document.getElementById("CategoryID" + ControlId).value
     
     var pageURL="RptColumnCfgPopUp.aspx?CatID=" + CatID + "&SrcCnt=" + ControlId + "&ListId=" + ListId
 
            var PWidth=600
            var PHeight=500
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
            var SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
    
 }
 function LoadSubReportIntegration(SelReportID,SelReportName,SelReportCode,SrcCnt){
        document.getElementById("ReprotID" + SrcCnt).value=SelReportID
        document.getElementById("ReprotNameLbl" + SrcCnt).innerText=SelReportName + '(' + SelReportCode + ')'
        document.getElementById("ReprotName" + SrcCnt).value=SelReportName + '(' + SelReportCode + ')'
  
 }
 
 function Ajax_Submit(Cnt,ListCount){
     
    var ControlId = Cnt + '.' + ListCount
    
   var ReportID =document.getElementById("ReprotID" + ControlId).value
      if ( ReportID == '0' || ReportID == '' ){
     alert("Select Report")
     return(false)
     }
     
     var CatID=document.getElementById("CategoryID" + ControlId).value
      var ListID=document.getElementById("ColCfgLst" + ControlId).value
     
              var xmlhttp;
            try
            {
                xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
            }
            catch(ex)
            {
                try 
                {
                    xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
                }
                catch(ex)
                {
                    try
                    {
                        xmlhttp=new XmlHttpRequest();
                    }
                    catch(ex)
                    {
                        alert("please update the webbrowser");
                    }
                }
            }
            xmlhttp.onreadystatechange=function()
            {
                if(xmlhttp.readystate==4)
                {
                    var ReturnVal="abc"
                    ReturnVal=xmlhttp.ResponseText
                    if (ReturnVal==1)
                      {
                        alert("Column Configuration Is Registered")
                        
                      } 
                    else if (ReturnVal==2)
                      {
                        alert("Column Configuration Is Updated")
                        
                      } 
                     else 
                       alert("Exception Occured")
                       
                  xmlhttp =null;
                }
            }
             var url="RptColCfg_Reg_Ajax.aspx?CatID=" + CatID + "&ReportID=" + ReportID  + "&ListID=" + ListID
            xmlhttp.open("POST",url,true);
            xmlhttp.send(null);
  
}

		</script>
	</body>
</html>