<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="Product.Trn" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Trn</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'

	//-->
	function fnSetToReasons(argValue){

	    document.getElementById("RemarksTxt").value = argValue
	}
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="tt" CELLPADDING="0" CELLSPACING="0" BorderWidth="0" HorizontalAlign="center"
				cssclass="MainTable"  runat="server">
				<asp:TableRow Height="20">
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
								<asp:TableCell CssClass="MainTD" ID="DescTd" WIDTH="310px"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="DescTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" AccessKey="D"  TabIndex=1></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="CodeTxt"  runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								  <asp:dropdownlist id="PltNoDdl" runat="server" CssClass="HideRow" MaxLength="5" AccessKey="R" AutoPostBack ="true" >
														<asp:ListItem value=0  >--Select--</asp:ListItem>
														<asp:ListItem value=1 Selected=True>L001</asp:ListItem>
														<asp:ListItem value=2>L002</asp:ListItem>
														<asp:ListItem value= 3>L003</asp:ListItem>
														<asp:ListItem value=4>L004</asp:ListItem>
														<asp:ListItem value=5>L005</asp:ListItem>
														<asp:ListItem value=6>L006</asp:ListItem>
														<asp:ListItem value=7>L007</asp:ListItem>
														<asp:ListItem value=8>L008</asp:ListItem>
														<asp:ListItem value=9>L009</asp:ListItem>
														<asp:ListItem value=10>L010</asp:ListItem>
														<asp:ListItem value=11>L011</asp:ListItem>
														<asp:ListItem value=12>L012</asp:ListItem>
														<asp:ListItem value=13>L013</asp:ListItem>
														<asp:ListItem value=14>L014</asp:ListItem>
														<asp:ListItem value=15>L015</asp:ListItem>
														<asp:ListItem value=16>L016</asp:ListItem>
														<asp:ListItem value=17>L017</asp:ListItem>
														<asp:ListItem value=18>L018</asp:ListItem>
														<asp:ListItem value=19>L019</asp:ListItem>
														<asp:ListItem value=20>L020</asp:ListItem>
														<asp:ListItem value=21>L021</asp:ListItem>
														<asp:ListItem value=22>L022</asp:ListItem>
														<asp:ListItem value=23>L023</asp:ListItem>
														<asp:ListItem value=24>L024</asp:ListItem>
														<asp:ListItem value=25>L025</asp:ListItem>
														<asp:ListItem value=26>1000</asp:ListItem>
														</asp:dropdownlist>
                                                    <asp:TextBox ID="SAPPltNo" runat="server" CssClass="HideRow" MaxLength="4" Width="80px"
                                                         AccessKey="C" TabIndex="3"></asp:TextBox>
                                                    <asp:Button ID="GetFromSAPBut" runat="server" onMouseOver="this.className='ButselOCls'"
                                                         Class='HideRow' AccessKey="C" onMouseOut="this.className='ButselCls'" Text=" Get From SAP " Width="170"  CausesValidation ="false" />
                                                     </asp:Button>
                                                     <input type ="button" id= "SAPButton" onclick ='fncheckPltId()' onMouseOver="this.className='ButselOCls'"  class='<%=StyleClass%>'   onMouseOut="this.className='ButselCls'" Value=" Get From SAP " />
                                                      <asp:label runat="server" id="SAPStatus" visible="false"  ForeColor="red" text="No Record From SAP<br>"></asp:label>
                                  <asp:label runat="server" id="ErrorSts" visible="false"  ForeColor="red" text="Unable To Connect to SAP<br>"></asp:label>
								</asp:TableCell>
                                    
							</asp:TableRow>
							 
                         <asp:TableRow ID="SAPPlantTR" CssClass = "HideRow">
                            <asp:TableCell CssClass="MainTD" ID="SAPPlantTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                 <asp:Label ID="SAPPlantLbl" runat="server"  ></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="GenericNameTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="GenericNameTxt"  runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow CssClass = "HideRow">
								<asp:TableCell CssClass="MainTD" ID="RTPeriodTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="RTPeriodTxt"  runat="server" CssClass="TxtCls" MaxLength="4" Width="200px" AccessKey="C" TabIndex=2 >0</asp:TextBox>
									<asp:Label  CssClass="MainTD" ID="DaysLbl" runat="server"></asp:Label>
								</asp:TableCell>
							</asp:TableRow>
						    <asp:TableRow ID="RemarksRow" Runat="server" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD">
									<asp:Literal Runat="server" ID="RemarksLtrl"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" TextMode="MultiLine"
										Rows="2" AccessKey="R"></asp:TextBox>
									<INPUT type="button" onclick="fnOpenReasons(1),'RemarksTxt'" class='RsnPUP'>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow ID="EsignRow" Runat="server" CssClass="HideRow">
								<asp:TableCell ColumnSpan="2" style="PADDING-RIGHT:0px;PADDING-LEFT:0px;PADDING-TOP:0px;PADDING-BOTTOM:0px">
									<uc1:EsignObj id="EsignObj1" runat="server" visible="false"></uc1:EsignObj>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
						<!-----------End of Base table------------->
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow ID="IARow" Runat="server" CssClass="HideRow">
					<asp:TableCell>
						<asp:Table ID="IATab" Runat="server" cssClass='SubTable' width="100%" cellpadding="0" cellspacing="1"
							HorizontalAlign="Center"></asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell CssClass="MainFoot">
						<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="0"
							HorizontalAlign="center" ID="Table2" BorderWidth="0">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainFoot">
									<asp:Button id="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
										accessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70"></asp:Button>
								</asp:TableCell>
								<asp:TableCell CssClass="MainFoot" HorizontalAlign="Right">
									<asp:HyperLink ID="Hlink" Runat="server" CssClass="ButCls" Height="20px" onMouseOver="this.className='ButOCls'"
										onMouseOut="this.className='ButCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
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
			</asp:table>
		</form>
		
	</body>
	<script language=javascript>
<!--
	    document.getElementById("DescTxt").focus()
//-->
</script>

<script language ="javascript" >

function fncheckPltId()
{       var Message = ""
        if (document.getElementById("SAPPltNo").value == '' || document.getElementById("CodeTxt").value == '')
        { 
             if (document.getElementById("CodeTxt").value == '')
            {
                Message = Message + "\n- " + "Enter Value For: Unique Code"
            }
            if (document.getElementById("SAPPltNo").value == '')
            {
                Message = Message + "\n- " + "Select Value For: SAP Plant Code"
            }
            
            
            alert(Message)
        }
        else
        {
               document.getElementById("GetFromSAPBut").click();
        }
}

    function Detach()
    { 
        if (typeof(fnCallESign)!= "undefined")
        {debugger
             var formName = document.forms(0).name  
            document.forms(0).detachEvent('onsubmit',fnCallESign)
        }
       
    }
</script>
	</HTML>
