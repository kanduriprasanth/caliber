<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AuditCalanderRpt.aspx.vb" Inherits="AuditReports.AuditCalanderRpt" %>
<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>CreationList</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link href="../TRIMS.css" rel="stylesheet">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <style>
		Text {
color:Black;
height:10px;

}
		</style>
</head>
<body ms_positioning="GridLayout">
    <form id="form1" runat="server">
        <asp:Table ID="Table1" runat="server" CssClass="MainTable" HorizontalAlign="center"
            BorderWidth="0" CellSpacing="0" CellPadding="0">
            <asp:TableRow Height="20" Width="100%">
                <asp:TableCell CssClass="MainHead" Width="100%" ColumnSpan="5">
                    <asp:Literal ID="MainTitleLtrl" runat="server">Audit(s) Schedule</asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow >
            <asp:TableCell >
            <asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
							HorizontalAlign="center" ID="Table3">
							 <asp:TableRow Width="100%">
              <asp:TableCell CssClass="MainTD" >From</asp:TableCell>
                <asp:TableCell CssClass="MainTD">
                   <uc1:CaliberCalender id="Startdate" runat="server"></uc1:CaliberCalender>
                </asp:TableCell >
                <asp:TableCell CssClass="MainTD">To</asp:TableCell>
                <asp:TableCell CssClass="MainTD">
                   <uc1:CaliberCalender id="Enddate" runat="server"></uc1:CaliberCalender>
                </asp:TableCell>
                <asp:TableCell CssClass="MainTD">
                <asp:Button id="Submit" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
										accessKey="C" onMouseOut="this.className='ButCls'" Text="Display"  TabIndex=1></asp:Button>
                </asp:TableCell>
            </asp:TableRow></asp:Table>
            </asp:TableCell>
            </asp:TableRow>
           
            <asp:TableRow Width="100%">
                <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                  
						<asp:Table runat="server" width="100%" CELLPADDING="1" cellspacing="1" CssClass="SubTable" BorderWidth="0" GridLines=Both HorizontalAlign="center" 
                             ID="ColValTab"></asp:Table>
					</asp:TableCell>
			
            </asp:TableRow>
            
            <asp:TableRow ID="IARow" Runat="server" CssClass="HideRow">
					<asp:TableCell ColumnSpan="5">
						<asp:Table ID="IATab" Runat="server" cssClass='SubTable' width="100%" cellpadding="0" cellspacing="1"
							HorizontalAlign="Center"></asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow CssClass="MainFoot" >
					<asp:TableCell ColumnSpan="5">
						<asp:Table runat="server"  width="100%" CELLPADDING="0" cellspacing="0"
							HorizontalAlign="center" ID="Table2" BorderWidth="0">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell ColumnSpan="5" >
									
								</asp:TableCell>
								<asp:TableCell ColumnSpan="5" HorizontalAlign="Right">
									
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
				
        </asp:Table>
       
    </form>
</body>
<script language=javascript>
function RDateValid(src,args){
   var Flag= VbRDateValid() ;
   if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    
  	    }
 }

</script>

<script language=vbscript>
   function VbRDateValid 
    SDate=document.getElementById("Startdate$CalDateVal").value
  if SDate="" then exit function
    EDate=document.getElementById("Enddate$CalDateVal").value
  if EDate="" then exit function
	 
	  SDateArr=split(SDate,"/")
	  EDateArr=split(EDate,"/")
	  
	  SDate=dateSerial(SDateArr(2),SDateArr(0),SDateArr(1))
	  EDate=dateSerial(EDateArr(2),EDateArr(0),EDateArr(1))
	
	DDgap=DateDiff("d", EDate,SDate)
	if DDgap>0 then
	VbRDateValid=false
	else VbRDateValid=true
	end if

end function
</script>
</html>
