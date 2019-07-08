<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RevAppListPopUp.aspx.vb"
    Inherits="MailConfiguration.RevAppListPopUp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>User Group List</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
    
        function UserGroupDetails(UserGroupId)
        {
            pageURL ="../WorkFlow/UserGroupDetails.aspx?UserGroupId=" + UserGroupId
            SpWinObj = window.open(pageURL,'TemplatePreview',"height=350,width=600,toolbar=no,resizable=false,menubar=no,status=no,scrollbars=yes,top=75,left=75");
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();

        }

    </script>

</head>
<body ms_positioning="GridLayout" onload="document.getElementById('FindTxt').focus()" onblur="document.getElementById('FindTxt').focus()">
    <form id="Form1" method="post" runat="server">
        <table class="MainTable" height="100%" cellspacing="0" cellpadding="0" width="100%"
            align="center" border="0">
            <!-- MAIN HEADER -->
            <tr>
                <td class="MainHead">
                    User Group List</td>
            </tr>
            <tr>
                <td>
                    <table width="100%" cellspacing="0" cellpadding="0" align="center">
                        <tr>
                            <td class="MainTd" colspan="1">
                                <asp:Literal ID="SearchOptionLtrl" runat="server">Search Option</asp:Literal>
                            </td>
                            <td class="MainTd" colspan="3">
                                <asp:RadioButtonList ID="SearchOptionRD" runat="server" RepeatDirection="Horizontal"
                                    CellPadding="0" CssClass="RBList" CellSpacing="0" Height="18px">
                                    <asp:ListItem Value="1" Selected="True">Unique Code</asp:ListItem>
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
                                <asp:TextBox ID="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:TextBox>
                                <asp:Button ID="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
                                    onmouseout="this.className='ButCls'"></asp:Button>
                            </td>
                        </tr>
                        <tr>
                            <td class="MainTd" colspan="4">
                                <div style="overflow: auto; height: 200px; background-color: gray">
                                    <asp:Table ID="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                        CellPadding="0" CssClass="SubTable">
                                    </asp:Table>
                                </div>
                            </td>
                        </tr>
                        <tr class="HideRow">
                            <td id="RBVal">
                            </td>
                            <td>
                                <asp:TextBox ID="RevAppTypeTxt" runat="server"></asp:TextBox></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <!-- MAIN FOOTER -->
            <tr>
                <td class="MainFoot">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 50px"
                        onmouseout="this.className='ButCls'" type="button" value="Ok" onclick="fnCrCloseWin()">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                        onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
                </td>
            </tr>
        </table>
    </form>

    <script language="javascript">
		 
  	function fnCrGetCode(RowCnt)
	{ 	
     
        var KfLableValArr=new Array()
        var KdIdValArr=new Array()
       
            
        for(var k=0;k<<%=RecordCnt%>;k++)
        {
            if(document.getElementById("RBID"+k).checked ==true)
            {
                KfLableValArr.push(document.getElementById("RevAppUCode"+ k).innerHTML)
                KdIdValArr.push(document.getElementById("RevAppID"+ k).innerText)
                document.getElementById("RBVal").value = document.getElementById("RevAppUCode"+ k).innerHTML
            }
        }
        var KfLableVal=KfLableValArr.join("; ")
        var KdIdVal=KdIdValArr.join(",")

        opener.fnSetVal_MailTo(KdIdVal,KfLableVal)
	   	
	}
	
	function fnCrCancel(){
		opener.fnSetVal_MailTo('','')
		window.self.close()
	}
	
	document.oncontextmenu=new Function("return false")

	function fnCrCloseWin(){
	 
	      if(document.getElementById("RBVal").value == undefined)
	      {
	        alert("Select At Least One User Group ")
            return(false);
          }    
		window.self.close()
	}
    </script>

</body>
</html>
