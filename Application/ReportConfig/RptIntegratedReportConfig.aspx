<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RptIntegratedReportConfig.aspx.vb" Inherits="ReportConfig.RptIntegratedReportConfig" %>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title><%=MainTitleLtrl.text %></title>
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
                            <asp:TableCell CssClass="MainTD" ColumnSpan=2 HorizontalAlign=left  BackColor=lightyellow  > 
                                <b><U>Selection Criteria of Main Report</U></b> <br />
                                a.	‘Issue Category’  Option Should be Selected As  ‘All’. <br />
                                b.	Integration  Option Should be   Selected as ‘Yes’.

                             
                            </asp:TableCell>  
                            </asp:TableRow>   
							     <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan=2 HorizontalAlign=center > 
                                  Main Report <INPUT type=button title='Click here'  name=Popup class=RsnPUP Height=20px id=MRbn_0 onclick=MainReport_Popup() > 
                             <asp:TextBox id="MainReprotID" CssClass="HideRow" runat="server" ></asp:TextBox>
                             <asp:TextBox id="MainReprotName" CssClass="HideRow" runat="server" ></asp:TextBox>
                             <asp:Label id="MainReprotNameLbl" CssClass="MainTD" runat="server" ></asp:Label>
                            </asp:TableCell>  
                            </asp:TableRow>     
                            
                                 <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan=2 HorizontalAlign=left  BackColor=lightyellow  > 
                                <b><U>Selection Criteria of Sub Report(s)</U></b> <br />
                                a.	Sub- Report   filter settings should have   minimum filter settings  that of Main Report.<br />
                                b.	The Common Filter settings should be Non-Editable in Sub Report.<br />
                                c.	Sub-Report should have   minimum  Drilldown settings that of Main Report.<br />
                                d.	The Common Drilldown settings should be same in Sub Report.<br />
                                e.	Trend Settings Should be Same in Main and Sub Report.<br />
                                f.  ‘Report View’ Selection Should be Same In  Main and Sub-Reports.<br />
                                g.  Integration Option Should be Selected as ‘No’. 

                             
                            </asp:TableCell>  
                            </asp:TableRow>                  
                         <asp:TableRow>
                            <asp:TableCell CssClass="MainTD"  ColumnSpan=2> 
                                   <asp:Table ID="IssueCatTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                    CellPadding="0" CssClass="SubTable">
                                    <asp:TableRow>
                                    <asp:TableCell CssClass="SubHeadTD" Width="70px">S. No.</asp:TableCell>
                                     <asp:TableCell CssClass="SubHeadTD"  ColumnSpan="1" Width="200px" >Issue Category</asp:TableCell>
                                    <asp:TableCell CssClass="SubHeadTD" Width="400px" >Sub Report </asp:TableCell>
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
		
 function MainReport_Popup(){
 var pageURL="RptMainReportList.aspx"
            var PWidth=900
            var PHeight=500
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height)/2; 
            var SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
    
 }
  function LoadReportIntegration(SelReportID,SelReportName,SelReportCode){
  
  document.getElementById("MainReprotID").value=SelReportID
   document.getElementById("MainReprotName").value=SelReportName
   document.getElementById("MainReprotNameLbl").innerText=SelReportName
   
   document.forms(0).submit()
 
          
                       
  }
  

 
 function SubReport_Popup(Cnt){
     var MainRprtId =document.getElementById("MainReprotID").value
     if (MainRprtId==''){
     alert("Select Main Report")
     return(false)
     }
    var CatID=document.getElementById("CategoryID" + Cnt).value
     
     var pageURL="RptSubReportList.aspx?MainRprtId=" + MainRprtId  + "&CatID=" + CatID +"&SrcCnt=" + Cnt
 
            var PWidth=600
            var PHeight=500
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
            var SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
    
 }
 function LoadSubReportIntegration(SelReportID,SelReportName,SelReportCode,SrcCnt){
     document.getElementById("SubReprotID" + SrcCnt).value=SelReportID
   document.getElementById("SubReprotNameLbl" + SrcCnt).innerText=SelReportName
    document.getElementById("SubReprotName" + SrcCnt).value=SelReportID
  
 }
 
 function Ajax_Submit(Cnt){
     var MainRprtId =document.getElementById("MainReprotID").value
     if (MainRprtId==''){
     alert("Select Main Report")
     return(false)
     }
   
   var SubRprtId =document.getElementById("SubReprotID" + Cnt).value
      if (SubRprtId==''){
     alert("Select Sub Report")
     return(false)
     }
     
     var CatID=document.getElementById("CategoryID" + Cnt).value
     
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
                        alert("Sub Report Registred")
                        
                      } 
                    else if (ReturnVal==2)
                      {
                        alert("Sub Report Updated")
                        
                      } 
                     else 
                       alert("Exception Occured")
                       
                  xmlhttp =null;
                }
            }
             var url="RptSubReport_Reg_Ajax.aspx?MainRprtId=" + MainRprtId  + "&CatID=" + CatID + "&SubRprtId=" + SubRprtId
            xmlhttp.open("POST",url,true);
            xmlhttp.send(null);
  
}

		</script>
	</body>
</html>
