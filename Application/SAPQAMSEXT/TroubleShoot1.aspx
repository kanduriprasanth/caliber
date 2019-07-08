<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TroubleShoot1.aspx.cs" Inherits="SAPQAMSEXT.TroubleShoot1" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Troubleshoot Upload</title>
    <link rel="stylesheet" href="../TRIMS.css">
    <script language = "javascript" src= '../Jscript/jquery.min.js'></script>
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="Table1" Width="97%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server">SAP-QAMS Troubleshoot</asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                        	<asp:TableRow>
								    <asp:TableCell CssClass ="MainTD">
								        Search By
								    </asp:TableCell>
								    <asp:TableCell CssClass ="MainTD"  > 
								    <asp:dropdownlist id="SearchDdl" runat="server" CssClass="TxtCls" MaxLength="5" AccessKey="R"  >
														<asp:ListItem value= 0 Selected=True>--Select--</asp:ListItem>
														<asp:ListItem value=1 >Material Code</asp:ListItem>
														<asp:ListItem value=2>Batch Number</asp:ListItem>
														<asp:ListItem value=3>Plant Number</asp:ListItem>
														<asp:ListItem value= 4>Issue Code</asp:ListItem>
																											
														</asp:dropdownlist>
								    </asp:TableCell  >
								    <asp:TableCell CssClass ="MainTD" ColumnSpan = 5> Like
								            <asp:TextBox runat ="server" ID="SearchTxt" CssClass ="Txtcls" Text ="%" MaxLength =50></asp:TextBox>
								    </asp:TableCell>						    
								    
								</asp:TableRow>
								<asp:Tablerow>
									<asp:TableCell CssClass="MainTD">
										<asp:Literal id="MaxRecLtrl" Runat="server">Total Records</asp:Literal>
									</asp:TableCell>
									<asp:TableCell CssClass="MainTD">
										<asp:Literal id="MaxRecCntLtrl" Runat="server">0</asp:Literal>
									</asp:TableCell>
									<asp:TableCell CssClass="MainTD">
										<asp:Literal id="RecPerPageLtrl" Runat="server">Records per page</asp:Literal>
									</asp:TableCell>
									<asp:TableCell CssClass="MainTD">
										<asp:TextBox ID="RecPerPageTxt" MaxLength="3" Runat="server" Width="30px" CssClass="TxtCls" AutoPostBack="False">20</asp:TextBox>
									</asp:TableCell>
									<asp:TableCell CssClass="MainTD">
										<asp:Literal id="PgNoLtrl" Runat="server">Page No.</asp:Literal>
									</asp:TableCell>
									<asp:TableCell CssClass="MainTD">
										<asp:TextBox ID="PgNoTxt" Runat="server" Width="50px" MaxLength="5" CssClass="TxtCls" AutoPostBack="False">1</asp:TextBox>
									</asp:TableCell>
									<ASP:TableCell CssClass="MainTD" HorizontalAlign="Left">
										<asp:button id="BtnDisplay" cssClass='ButCls' accessKey="C" runat="server" text="Display" Width="70"
											CausesValidation="False"></asp:button>
									</ASP:TableCell>
								</asp:Tablerow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="7">
                                <asp:RadioButtonList ID="SelStatus" runat="server" RepeatDirection="Horizontal" AutoPostBack="true">
                                    <asp:ListItem Value="0" Selected>Upload Again</asp:ListItem>
                                    <asp:ListItem Value="1">Clear From List</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="MainTD">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="7">
                                <asp:Table ID="DisTable" runat="server" HorizontalAlign="center" CellPadding="0"
                                    CssClass="SubTable" CellSpacing="1" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="7">
                                
                                <asp:Button ID="btnStatus" CssClass="ButExCls" runat="server" Text="Update Status"></asp:Button>
                            </asp:TableCell>
                                                   </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell ColumnSpan="6" ID="ValidatorsTd">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />

                                <asp:TextBox ID="SidListTxt" Height="0" Width="0" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>

    <script language="javascript">
<!--
function fnCheckAll(){  
 debugger
	var TestCnt=document.Form1.SidListTxt.value

	
	if(TestCnt==''||TestCnt==0){return(false)}
	
	TestCnt=parseInt(TestCnt)
	var chk=document.Form1.ChkAll.checked
	for(i=1;i<=TestCnt;i++){
	if(TestCnt>1){
	document.Form1.all("ChkSAPBasicID_" + i).checked=chk
	}
	else{document.Form1.all("ChkSAPBasicID_" + i ).checked=chk
	}
	}
 }
// function fnCheck(){
// var TestCnt=document.Form1.SidListTxt.value
// if(TestCnt==''){return(false)}
//	
//	TestCnt=parseInt(TestCnt)
// var chk=document.Form1.ChkAll.checked
// var IsAllChk=true
//   if(TestCnt>1){
//		for(i=1;i<= TestCnt;i++){
//		IsAllChk=document.Form1.all("ChkSAPBasicID_" + i).checked
//		if(IsAllChk==false)
//		 {break;}
//		 
//		}
//	} else{IsAllChk=document.Form1.all("ChkSAPBasicID_" + i).checked}
//	document.Form1.ChkAll.checked=IsAllChk
// }


function FnPageload()
{
                
            if(document.all("SelStatus")[2].checked==true)
            {
                document.getElementById("ExpDtTd").className="HideRow"
                document.getElementById("caltd").className="HideRow"
            }
            else
            {
                document.getElementById("ExpDtTd").className="MainTD"
                document.getElementById("caltd").className="MainTD"
            }
          



}
	
	
	function fncheck(src,args)
	{ debugger
	
	  var Flag=false;
	  var Flag1=false;
	  $(":checkbox").each(function (index, item) {
                     if (item.checked == true) {
                       Flag=true;
                       //$(":checkbox[id='" + ModuleObj + "-" + ival + "']").attr('checked', "checked");
                         return;
                     }
                 })
                 var TestCnt=document.Form1.SidListTxt.value
                if(TestCnt==''){return(false)}
	            errerstring = ""
	            TestCnt=parseInt(TestCnt)
                 for(i=1;i<=TestCnt;i++)
                 {
                  if ( document.Form1.all("ChkSAPBasicID_" + i).checked == true)
                  { 
                        if($.trim(document.getElementById("RemarksTxt_"+i).value) == "")
                        {
                        errerstring = errerstring + "Enter the Remarks" + " " + i + "\n"
                        Flag1=true;
                        }
                  }
                 } 
                 
                 
if(Flag==false||Flag1==true)
{
 if(Flag==false){
errerstring="Select Atleast one record";
  }
src.errormessage=errerstring;
  args.IsValid = false;
  Page_IsValid = false;
  
  }
 
  
  


	}
	
	var taMaxLength = 500
var taMaxLength1 = 50
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
					
	  
		function taCount1() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength1*1){
				taObj.value=taObj.value.substring(0,taMaxLength1*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength1 +" Characters")
			}
			}	
//-->
    </script>

</body>
</html>
