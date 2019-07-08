<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InchargeList.aspx.vb" Inherits="EFormIssuance.InchargeList" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title><%=MainTitleLtrl.Text%></title>
  		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
		    <script language="javascript" src="../JScript/CustomValidationFuns.js"></script>
		    
		<script language=javascript >
		  
	        function DeptSelPopup()
            {
                var pageURL ="../IssueLogin/DeptPopup.aspx?id=0"
                SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();
            }
            
            function fnSetDeptCode(Id,DeptId,DeptAulID,DeptCode,Deptname)     
            {debugger
                 document.getElementById("DeptIdTxt").value=DeptId
                 document.getElementById("DeptDescTxt").value=DeptCode
                 document.getElementById("DeptDescLab").innerHTML=DeptCode
                 
            }
        </script>
</head>

<body ms_positioning="GridLayout" onload="document.getElementById('FindTxt').focus()" onblur="document.getElementById('FindTxt').focus()">
    <form id="Form1" method="post" runat="server">
        <TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead" style="width: 648px"><asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal></TD>
				</TR>
				<TR>
					<TD style="width: 648px">
						<DIV class="MainTd" style="HEIGHT: 20px" ID="Div1">
							<table width="100%" cellSpacing="0" cellPadding="0" align="center">
								<tr class="HideRow">
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<Tr>
									<td class="MainTd" colspan="1">
										<asp:literal id="SearchOptionLtrl" runat="server">Search Option</asp:literal>
									</td>
									<td class="MainTd" colspan="1">
										<asp:RadioButtonList ID="SearchOptionRD" Runat="server" RepeatDirection="Horizontal" CellPadding="0"
											cssclass="RBList" CellSpacing="0" Height="18px">
										</asp:RadioButtonList>
									</td>
									
									<td class="MainTd" colspan="1">
										<asp:literal id="Literal1" runat="server">Department</asp:literal>
									</td>
									<td class="MainTd" colspan="1">
										<input class='RsnPUP' onclick="DeptSelPopup()" type="button" tabindex="8">
										<asp:Label ID="DeptDescLab" runat="server" Text=""></asp:Label>
										<asp:TextBox ID="DeptDescTxt" runat="server" CssClass="HideRow" Text='' ></asp:TextBox>
                                        <asp:TextBox ID="DeptIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
									</td>
									
									
								</Tr>
								<tr>
									<td class="MainTd" colspan="2">
										<asp:literal id="FindLrl" runat="server">Find</asp:literal>
										<asp:TextBox ID="FindTxt" maxLength="30"  runat="server" Width="180px" CssClass='TxtCls' Text ="%"></asp:TextBox>
									</td>
									<td class="MainTd" colspan="2">
										<asp:literal id="FetchSizeLtrl" runat="server">Records Limit</asp:literal>
										<asp:textbox id="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3" onkeypress="return IsDigit1(event);">50</asp:textbox>
										<asp:Button id="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
											onmouseout="this.className='ButCls'"></asp:Button>
									</td>
								</tr>
								<tr>
									<td class="MainTd" colspan="4">
										<DIV style="OVERFLOW: auto; HEIGHT: 200px; BACKGROUND-COLOR: gray">
											<asp:table id="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1" CellPadding="0"
												CssClass="SubTable"></asp:table></DIV>
									</td>
								</tr>
								<tr class ="HideRow" >
                                    <td  id ="RBVal"></td>
                                    <td>
                                   </td>
                                </tr>
							</table>
						</DIV>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot"><INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 50px" 
							onmouseout="this.className='ButCls'" type="button" value="Ok" onclick="fnCrCloseWin()"> <INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 60px" onclick="fnCrCancel()"
							onmouseout="this.className='ButCls'" type="button" value="Cancel">
					</TD>
				</TR>
			</TABLE>
    </form>

    <script language="javascript">
 
  	function fnCrGetCode(RowCnt)
	{ 
        var UserNameVal=document.all("UserName"+ RowCnt).innerHTML
        var UserCodeVal=document.all("UserCode"+ RowCnt).innerText
        var UserIdVal=document.all("UserId"+ RowCnt).innerText
        
        document.getElementById("RBVal").value = UserIdVal
        
//        if (<%=Request.QueryString("SplValReq")  %> == 1 )
//        {
//          fnCheekuserauthentication(<%=Request.QueryString("IssId") %>,UserIdVal) //<%=Request.QueryString("SplValfunID") %>,
//        }
        
        opener.fnUserVal(UserNameVal,UserCodeVal,UserIdVal )
	}
	function fnCrCancel()
    {
        opener.fnUserVal('','','')
        window.self.close()
        
    }
	
	document.oncontextmenu=new Function("return false")
	function fnCrCloseWin(){
	
	      if(document.getElementById("RBVal").value == undefined)
	      {
            alert("Select User ")
            return(false)
          }  
//          if (<%=Request.QueryString("SplValReq")  %> == 1 )
//          {  
//              if (WrkAllExpMsg !="")
//              {
//                alert(WrkAllExpMsg)
//                opener.fnUserVal('','','')
//                return(false)
//              }  
//         } 
 		window.self.close()
	}
    </script>
    
    <script language=javascript>
		
		function IsDigit1(e)  ///Function To check Numeric values
            {
                if(e.shiftKey ==true)
                return false;
                var KeyIdentifierMap =
                {
                    End			: 35,
                    Home		: 36,
                    Left		: 37,
                    Right		: 39,
                    'U+00007F'	: 46		// Delete
                } 
                if ( !e )
                e = event ;

                var AvailableVal = window.event.srcElement.value.indexOf(".")
                var iCode = ( e.keyCode || e.charCode );

                if((iCode == 46) && (AvailableVal != -1))
                return false;
                if((iCode == 46) && (window.event.srcElement.value == ""))
                return false;

                if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
                    iCode = KeyIdentifierMap[ e.keyIdentifier ] ;
                if(iCode ==39 ) return false;
                return (
                    ( iCode >= 48 && iCode <= 57 )		// Numbers
                    || (iCode >= 35 && iCode <= 40)		// Arrows, Home, End
                    || iCode == 8						// Backspace
                    || iCode == 46						// Delete
                    || iCode == 9	                    // Tab
                    )
			    
            
                
            }
            
		</script>

</body>
</html>
