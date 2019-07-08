<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl1.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MyWorkItems.aspx.vb" Inherits="WorkTransfer.MyWorkItems" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title><%=MainTitleLtrl.Text%></title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table CELLPADDING="0" CELLSPACING="0" BorderWidth="3" HorizontalAlign="center" cssclass="MainTable"
				runat="server" id="Table1" EnableViewState="False"  Width="98%">
				<ASP:TABLEROW Height="20">
					<ASP:TABLECELL CssClass="MainHead">
						<ASP:LITERAL id="MainTitleLtrl" Runat="server"></ASP:LITERAL>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
				<ASP:TABLEROW>
					<ASP:TABLECELL> <!-----------Base table------------->
						<ASP:TABLE id="CrTopTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">
							<ASP:TABLEROw CssClass="HideRow">
								<ASP:TABLECELL CSSClass="SubHead" ColumnSpan="6">
									<ASP:LITERAL id="SubTitleLtrl" runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<asp:TableRow>
								<asp:TableCell CSSClass="MainTD" ColumnSpan="6">
									<uc1:SearchCtrl id="SearchCtrl1" runat="server"></uc1:SearchCtrl>
								</asp:TableCell>
							</asp:TableRow>
							<ASP:TABLEROW CSSClass="HideRow">
								<ASP:TABLECELL CssClass="MainTD" ColumnSpan="2">
									<ASP:LINKBUTTON id="ActLb" Height="100%" Runat="server" Width="100%"></ASP:LINKBUTTON>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD" ColumnSpan="4"></ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="MaxRecLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="MaxRecCntLtrl" Runat="server">0</ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="RecPerPageLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" Runat="server" AutoPostBack="False"
										Width="50px" onkeypress="return IsDigit1(event);">20</ASP:TEXTBOX>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="PgNoLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX id="PgNoTxt" CssClass="TxtCls" Runat="server" AutoPostBack="False" Width="50px"
										MaxLength="5" onkeypress="return IsDigit1(event);">1</ASP:TEXTBOX>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW>
								<ASP:TABLECELL ColumnSpan="6">
									<ASP:TABLE id="DisTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
										cellspacing="1" width="100%"></ASP:TABLE>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
						</ASP:TABLE>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
				
            
             
            <asp:TableRow  ID="FooterTR" CssClass="HideRow">
               <asp:TableCell >
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 50px"
                        onclick="fnCrGetCode()" onmouseout="this.className='ButCls'" type="button" value="Ok">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                        onclick="fnCrCloseWin()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
               </asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow CssClass="HideRow" >
             <asp:TableCell id="RBVal">
               
             </asp:TableCell>
             
            </asp:TableRow>
            
            <asp:TableRow CssClass="HideRow">
				  <asp:TableCell >
				    <asp:TextBox runat=server ID="RecCountTxt" ></asp:TextBox>
				  </asp:TableCell>
				</asp:TableRow>
					              
					              
            
			</asp:table>
			
		</form>
		
		<script language=javascript>
		
		function RasiSeAlert(DepWrklst)
		{
		  var ExpMsg
		  ExpMsg= "This Work  Is Depends on " + DepWrklst + "Work Item(s) \n"
		  ExpMsg = ExpMsg+ "Must Complete The work Item(s) Execution"
		  alert( ExpMsg )
		}
		
		
		 
        function fnWorkFlowPoup(WorkFlowId)
        {
        var pageURL = "../TestDynamicEForm/WorkFlowDetails.aspx?WorkFlowId=" + WorkFlowId + "&AT=G" 
        var features = "height=500,width=700,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
        SpWinObj = window.open(pageURL,'TemplatePreview',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
        }

            

        function fnCrGetCode()
        {
    	    
            var  RecCount=<%=TotalRecCnt %>
            var  AulIdArr = new Array()
            var  BaseIdArr = new Array()
            
            
            if (RecCount>0)
            {
                for(var k=0;k<RecCount;k++)
                {
                    if(document.getElementById("chk_"+k).checked ==true)
                    {
                        
                        var  AulID = document.getElementById("WrkAulID_"+k).value
                        var BaseID=document.getElementById("WrkBaseID_" +k).value
                        
                        document.getElementById("RBVal").value=AulID
                        AulIdArr.push(AulID); 
                        BaseIdArr.push(BaseID);    	        
                         	        
                     }   
                 }
                if ((document.getElementById("RBVal").value == undefined)||(document.getElementById("RBVal").value == ''))
                    {
                        alert("Select At Least One Item")
                        return(false);
                    } 
                else
                    {
                        var AulIDStr=AulIdArr.join(",");
                        var BaseIdStr=BaseIdArr.join(",")
                        opener.fnSetVal_Chklist(AulIDStr,BaseIdStr);
                        window.self.close();
                    } 
	         }  
        }

	
	
	    document.oncontextmenu=new Function("return false")

	    function fnCrCloseWin()
	    {
		        opener.fnSetVal_Chklist('','')
		        window.self.close();
		     
	    }      
            
        </script>
        
      <script language =javascript>

 if ("<%=Page.IsPostBack %>" == "False")
{
	  if  ( ("<%=Request.QueryString("ListType") %>" == "2") && (document.getElementById("RecCountTxt").value == "0") )
	  {
    	  setTimeout("UpdateWrkTraStatus()",20) ;
	  } 
}  

	  
	 

  function UpdateWrkTraStatus()
              {
                        
                var recary = new Array();
                var Time = "abc"
                var xmlhttp;
                try 
                {
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                catch (ex) 
                {
                    try 
                    {
                        xmlhttp = new ActiveXObject("MSxml2.XMLHTTP");
                    }
                    catch (ex)
                    {
                        try
                        {
                            xmlhttp = new XmlHttpRequest();
                        }
                        catch (ex)
                        {
                            alert("please update the webbrowser");
                        }
                    }
                }
                xmlhttp.onreadystatechange = function()
                 {
                    if (xmlhttp.readystate == 4)
                     {
                        Time = xmlhttp.ResponseText
                        xmlhttp = null;   
                        window.navigate("TransferedWorks.aspx")
                       
                     }
                }       
                 var url = "UpdateWRKTRA_AJAX.aspx?WrkTraAulID=" +  <%=Request.QueryString("WrkTraAulID")%>
                xmlhttp.open("POST", url, true);
                xmlhttp.send(null);
              }    
              
              

	   
	</script>
	
		
	</body>
</HTML>
