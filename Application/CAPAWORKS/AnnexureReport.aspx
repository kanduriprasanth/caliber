<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AnnexureReport.aspx.vb" Inherits="CAPAWORKS.AnnexureReport" %>
<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx"  %>
<%@ Register TagPrefix="uc2" TagName="Footer" Src="../CaliberCommonCtrls/ReportFooter.ascx"  %>
<%@ Register TagPrefix="uc3" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript">
    
    fnIssueReport 
    
   function fnIssueReport(IsuLogId,IsuTypeId,PrsType)
  {
        var pageURL = "WordFormatReport.aspx?RptType=1&Type=2&IsuLogID="  +IsuLogId + "&IsuTypeId=" +IsuTypeId + "&RepType=2" + "&PrsType=PrsType"
        var features = "height=900,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
        SpWinObj = window.open(pageURL,'SpecCodes',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
  }
  
  
      
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="2" CellSpacing="2" BorderWidth="3" HorizontalAlign="center"
             runat="server" ID="Table1" EnableViewState="False" Width="920">
            <asp:TableRow>
                <asp:TableCell>
                    <%--<asp:Label ID="MainTitleLtrl" runat="server"></asp:Label>--%>
                    <uc1:Header id="Header1" runat="server"></uc1:Header>
                    
                </asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow>
             <asp:TableCell>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </br>
             </asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow>
            
            
            <%-- <!-----------header Pannel-------------> --%>
                <asp:TableCell >
                   <asp:Panel id="HeaderDiv" runat="server" Width="920" HorizontalAlign="Left" EnableViewState="False">
                          
                            <asp:Table id="H1" Width="950" Runat="server" BorderWidth="0" CELLSPACING="1" CELLPADDING="1">
                           
                            <asp:TableRow>
                             <asp:TableCell HorizontalAlign=Center Width="965" ID="HeaderDivTD" runat=server Style="font-weight:bold;text-align:center;"></asp:TableCell>
                              <%--<asp:TableCell Width="287" HorizontalAlign=Right ID="RefNoTd" runat=server></asp:TableCell>--%>
                           		
                               <%-- <asp:TableCell  HorizontalAlign="Center" style="Width:720;font-size:16;font-weight:bold;Padding:0px;Background-color:white;text-align:center"></asp:TableCell>
                                --%>
                            </asp:TableRow>
                            </asp:Table>
                    </asp:Panel>
               
                
                
               <%--  <!-----------Body Pannle table------------->--%>
    	     
    	       
    	       <asp:Panel id="BodyDiv" runat="server" Width="955" HorizontalAlign="Left" EnableViewState="False">
    	       
                     <asp:Table ID="CrTopTable" Width="965" runat="server" BorderColor="black"  CellPadding="0"
                        CssClass="SubTable" CellSpacing="0" >
                        
                                      
                        <asp:TableRow>
                            <asp:TableCell CssClass="HideRow" ColumnSpan="8">
                                 <ASP:LabeL id="SubTitleLtrl" runat="server"></ASP:LabeL>
                            </asp:TableCell>
                        </asp:TableRow>
                    
                        <ASP:TABLEROW>
                            <ASP:TABLECELL CSSClass="HeadTD" ColumnSpan="8">
                            <ASP:LabeL id="SearchLbl" runat="server" Text="&nbsp;Search"></ASP:LabeL>
                            </ASP:TABLECELL>								            
                        </ASP:TABLEROW>
							           
					    <ASP:TABLEROW>
					    
					     <%--Report Tyep DDl--%>
					     
				            <ASP:TABLECELL CSSClass="MainTD" ColumnSpan="1">
					            <ASP:LabeL id="RptTypelabl" runat="server" ></ASP:LabeL>
				            </ASP:TABLECELL>
				            <ASP:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:DropDownList ID="ReportTypeDDL" runat="server" CssClass="MainTD" onclick="fnChangeCss()">
                                </asp:DropDownList>
				            </ASP:TableCell>
				            
				            <%--Ref No --%>
				            
				            <ASP:TABLECELL CSSClass="MainTD" ColumnSpan="1">
					            <ASP:LabeL id="RefNolbl" runat="server" Text="Ref. No. like"></ASP:LabeL>
				            </ASP:TABLECELL>
				            <ASP:TABLECELL CSSClass="MainTD" ColumnSpan="5">
					            <ASP:TEXTBOX id="IsuCodeTxt" runat="server" Text="%"></ASP:TEXTBOX>
				            </ASP:TABLECELL>
				            
			            </ASP:TABLEROW>		
							            
			            <ASP:TableRow>
			            
			             <%--Department --%>
				            
				            <ASP:TABLECELL CSSClass="MainTD" ColumnSpan="1">
					            <ASP:LabeL id="Departmentlbl" runat="server" Text="Department like"></ASP:LabeL>
				            </ASP:TABLECELL>
				            <ASP:TABLECELL CSSClass="MainTD" ColumnSpan="1">
					            <%--<ASP:DROPDOWNLIST id="DeptDDl" runat="server"  Width="210px" EnableViewState="true"></ASP:DROPDOWNLIST>--%>
					             <ASP:TEXTBOX id="Depttxt" runat="server" Text="%"></ASP:TEXTBOX>
				            </ASP:TABLECELL>
				            
				            <%--Login Date --%>
				            
				           <ASP:TABLECELL CSSClass="MainTD" ColumnSpan="1">
					            <ASP:LabeL id="InitBetwnLbl" runat="server" Text="Initiated Between"></ASP:LabeL>
				            </ASP:TABLECELL>
				            <ASP:TABLECELL CSSClass="MainTD" ColumnSpan="5">
					            <uc1:CaliberCalender id="FromDate" runat="server"></uc1:CaliberCalender>
                                And
                                <uc1:CaliberCalender id="ToDate" runat="server">
                                </uc1:CaliberCalender>
				            </ASP:TABLECELL>
			              
			            </ASP:TableRow>
							            
			             <ASP:TableRow ID="CustomerTR" CssClass="HideRow">
			            
			             <%--Customer --%>
				            
				            <ASP:TABLECELL CSSClass="MainTD" ColumnSpan="1">
					            <ASP:LabeL id="LabeL1" runat="server" Text="Customer like"></ASP:LabeL>
				            </ASP:TABLECELL>
				            <ASP:TABLECELL CSSClass="MainTD" ColumnSpan="7">
					            <%--<ASP:DROPDOWNLIST id="DeptDDl" runat="server"  Width="210px" EnableViewState="true"></ASP:DROPDOWNLIST>--%>
					             <ASP:TEXTBOX id="CustomerLike" runat="server" Text="%"></ASP:TEXTBOX>
				            </ASP:TABLECELL>
			              
			            </ASP:TableRow>
							            
							                             
                         <asp:TableRow>
                         
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="MaxRecLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="MaxRecCntLtrl" runat="server">0</asp:Literal>
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="RecPerPageLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RecPerPageTxt" CssClass="TxtCls" runat="server" AutoPostBack="False"
                                    Width="50px" onkeypress="return IsDigit1(event);" MaxLength="4">10</asp:TextBox>
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="PgNoLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="PgNoTxt" CssClass="TxtCls" MaxLength="2" runat="server" AutoPostBack="False" Width="50px" onkeypress="return IsDigit1(event);">1</asp:TextBox>
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                         	    <asp:button id="GoBtn" Runat="server" CssClass="ButCls" Text="Display" Visible="TRUE" ></asp:button>
                           </asp:TableCell>
                        
                         </asp:TableRow>
                         
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="8">
                                <asp:Table ID="RptTable" runat="server" HorizontalAlign="center" CellPadding="0"
                                    CssClass="SubTable" CellSpacing="1" Width="965">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                    </asp:Table>
                 </asp:Panel>
                 
                 <%----- Footer Pannle--%>
                 
                <asp:Panel id="FooterDiv" runat="server" Width="955" HorizontalAlign="Left" EnableViewState="False">
                    <asp:Label id="F1" Width="955" Runat="server"></asp:Label>
                    <asp:Table id="F2" Width="955" Runat="server" BorderWidth="0" CELLSPACING="1" CELLPADDING="1">
                        <asp:TableRow>
                            <asp:TableCell style="Width:260px;font-size:12;font-bold:true;Padding:0px;Background-color:white"></asp:TableCell>
                            <asp:TableCell style="Width:260px;font-size:12;font-bold:true;Padding:0px;Background-color:white"></asp:TableCell>
                            <asp:TableCell style="Width:200px;font-size:12;font-bold:true;Padding:0px;Background-color:white"></asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <BR>
                    <asp:Table id="F3" Width="800" Runat="server" BorderWidth="0" CELLSPACING="1" CELLPADDING="1"></asp:Table>
                </asp:Panel>
                <asp:TextBox runat="server" height="0" width="0" id="HeaderObjIDs" text="H,H1"></asp:TextBox>
				<asp:TextBox runat="server" height="0" width="0" id="HeaderObjTypes" text="P,TN"></asp:TextBox>
				<asp:TextBox runat="server" height="0" width="0" id="BodyObjIDs" text="RptTable"></asp:TextBox>
				<asp:TextBox runat="server" height="0" width="0" id="BodyObjTypes" text="TN"></asp:TextBox>
				<asp:TextBox runat="server" height="0" width="0" id="BodyObjTabHeadRows" text="1,1"></asp:TextBox>
				<asp:TextBox runat="server" height="0" width="0" id="FooterObjIDs" text="F1,F3"></asp:TextBox>
				<asp:TextBox runat="server" height="0" width="0" id="FooterObjTypes" text="P,TN"></asp:TextBox>
                 
                </asp:TableCell>
            </asp:TableRow>
            
            
            <%--------- Print Row ----------%>
            
            <asp:TableRow>
					<asp:TableCell style="TEXT-ALIGN:center">
						<uc3:CaliberPrintCtrl id="CaliberPrintCtrl1" runat="server"></uc3:CaliberPrintCtrl>
					</asp:TableCell>
				</asp:TableRow>
        </asp:Table>
    </form>
   
    <script language=javascript>
    anxrptflg=1
    function fnChangeCss()
    {
      if (document.getElementById("ReportTypeDDL").value == "3")
      {document.getElementById("CustomerTR").className="MainTD"}
      else
      {document.getElementById("CustomerTR").className="HideRow"}
    }
    </script>
</body>
</html>
