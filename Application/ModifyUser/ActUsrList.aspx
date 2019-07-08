<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ActUsrList.aspx.vb" Inherits="ModifyUser.ActUsrList" %>
<%@ Register TagPrefix="uc1" TagName="SearchCtrl7" Src="SearchCtrl7.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Active User List</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript" src="../JScript/CustomValidationFuns.js"></script>

    <%--<script language="javascript">
        function fnOpenPopUp(UserId)
        {
            pageURL ="RptUserGroupDetailsPopUp.aspx?UserId=" + UserId
            SpWinObj = window.open(pageURL,'USERGROUP',"height=350,width=600,toolbar=no,resizable=false,menubar=no,status=no,scrollbars=yes,top=75,left=75");
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();

        }

    </script>
--%>
</head>
<body ms_positioning="GridLayout" onload="document.getElementById('PgNoTxt').focus()" onblur="document.getElementById('PgNoTxt').focus()">
    <form id="Form1" method="post" runat="server">
        
        
        <table class="MainTable" height="200" cellspacing="0" cellpadding="0" width="720" align="center">
            <!-- MAIN HEADER -->
            <tr>
                <td class="MainHead">
                    Active User(s) List</td>
            </tr>
            <tr>
                <td>                
                    <table id="Table2" width="100%" cellspacing="1" cellpadding="0" align="center"  cssclass="SubTable">
                        <tr>
                            <td>
                                <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" Width="100%" CellPadding="0"
                                    CellSpacing="1" CssClass="SubTable">
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="6">
                                            <uc1:SearchCtrl7 id="SearchCtrl1" runat="server">
                                            </uc1:SearchCtrl7>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:Literal ID="MaxRecLtrl" runat="server">Total Records.</asp:Literal>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:Literal ID="MaxRecCntLtrl" runat="server">0</asp:Literal>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:Literal ID="RecPerPageLtrl" runat="server">Records Per Page.</asp:Literal>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:TextBox ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" runat="server" AutoPostBack="False"
                                                Width="50px">20</asp:TextBox>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:Literal ID="PgNoLtrl" runat="server">Page No.</asp:Literal>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:TextBox ID="PgNoTxt" CssClass="TxtCls" runat="server" AutoPostBack="False" Width="50px"
                                                MaxLength="5">1</asp:TextBox>
                                            &nbsp;
                                            <asp:Button ID="Displaybtn" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
                                                onmouseout="this.className='ButCls'"></asp:Button>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </td>
                        </tr>
                        <%--     <tr>
                            <td class="MainTd" colspan="1">
                                <asp:Literal ID="SearchOptionLtrl" runat="server">Search Option</asp:Literal>
                            </td>
                            <td class="MainTd" colspan="3">
                                <asp:RadioButtonList ID="SearchOptionRD" runat="server" RepeatDirection="Horizontal"
                                    CellPadding="0" CssClass="RBList" CellSpacing="0" Height="18px">
                                    <asp:ListItem Value="1" Selected=True >Unique Code</asp:ListItem>
                                    <asp:ListItem Value="2">Description</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td class="MainTd" colspan="2">
                                <asp:Literal ID="FindLrl" runat="server">Find</asp:Literal>
                                <asp:TextBox ID="FindTxt" runat="server" Width="180px" CssClass='TxtCls' Text="%"
                                    MaxLength="30"></asp:TextBox>
                            </td>
                            <td class="MainTd" colspan="2">
                                <asp:Literal ID="FetchSizeLtrl" runat="server">Records Limit</asp:Literal>
                                <asp:TextBox ID="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3" onkeypress="return IsDigit1(event);">50</asp:TextBox>
                                <asp:Button ID="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
                                    onmouseout="this.className='ButCls'"></asp:Button>
                            </td>
                        </tr>--%>
                        <tr>
                            <td class="MainTd" colspan="4">
                                <asp:Table ID="UsersTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                    CellPadding="0" CssClass="SubTable">
                                </asp:Table>
                            </td>
                        </tr>
                        <%--<%--<tr class="HideRow">
                            <td id="RBVal">
                            </td>
                            <td>
                                
                        </tr>--%>
                    </table>
        </td> </tr>
        <!-- MAIN FOOTER -->
        <%--<tr>
                <td class="MainFoot">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 50px"
                        onmouseout="this.className='ButCls'" type="button" value="Ok" onclick="fnCrCloseWin()">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                        onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
                </td>
            </tr>--%>
        </table>
    </form>

    <script language="javascript">
		 
//  	function fnCrGetCode(RowCnt)
//	{ 	
//	
//            var RevAppIdVal=document.getElementById("RevAppID"+ RowCnt).innerHTML	
//            var RevAppCodeVal=document.getElementById("RevAppCode"+ RowCnt).innerHTML
//            var RevAppUCodeVal=document.getElementById("RevAppUCode"+ RowCnt).innerHTML
//		    var KdDesc=document.getElementById("RevAppDes"+ RowCnt).innerHTML
////		    
////            if(<%=request.QueryString("UserGrpId") %> != 0)
////                {
////                    if (RevAppIdVal != <%=request.QueryString("UserGrpId") %>)
////                        alert("User Group Is Not Authorised") 
////                    else
////                    {
////                      opener.fnRevAppSetToCode(RevAppIdVal,RevAppCodeVal,RevAppUCodeVal)
////                      document.getElementById("RBVal").value = RevAppIdVal
////                    }  
////                }
////           else   
////             {
//                opener.fnRevAppSetToCode(RevAppIdVal,RevAppCodeVal,RevAppUCodeVal)        //RevAppUCodeVal     
//                document.getElementById("RBVal").value = RevAppIdVal
//             //}   
//		   	
//	}
//	function fnCrCancel(){
//		opener.fnRevAppSetToCode('','','')
//		window.self.close()
//	}
//	
//	document.oncontextmenu=new Function("return false")

//	function fnCrCloseWin(){
//	 
//	      if(document.getElementById("RBVal").value == undefined)
//	      {
//            alert("Select User Group ")
//            return(false);
//          }    
//          
//		window.self.close()
//	}
    </script>

    <script language="javascript">
		
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
