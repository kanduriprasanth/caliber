<%@ Page Language="vb" AutoEventWireup="false" Codebehind="UserListPopup.aspx.vb"
    Inherits="DashBoard.UserListPopup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
    
     var RowSel =""
    
    function fnCrGetCode()
	{ 
        var Flag=false;
        var UserNameArr = new Array()
        var UserIdArr = new Array()
          for(var k=0;k<<%=RecordCnt%>;k++)
	        {
	            if(document.getElementById("ChkID"+k).checked ==true)
	            {
	                 UserNameArr.push(document.all("UserName"+ k).innerHTML)
	                 UserIdArr.push(document.all("UserId"+ k).innerHTML)
	                 Flag=true;
	            }
	        }
	     	    
	    if(Flag==false)
	      {
            alert("Select At Least One Item")
            return(false);
          }  
	   	var UsersName=UserNameArr.join(",") 
        var UsersId=UserIdArr.join(",") 
               
   	    opener.fnSetUserNames(UsersName,UsersId,'<%=RowCnt%>')
		window.self.close()
	}
	function fnCrCancel(){
		opener.fnSetUserNames('','','<%=RowCnt%>')
		window.self.close();
		 
	}
	function fnCrCloseWin()
	{
	    if(RowSel +"" == "")
        {
        return(false);
        }
		window.self.close()
	}
    
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <table class="MainTable" height="100%" cellspacing="0" cellpadding="0" width="98%"
            align="center" border="3">
            <tr>
                <td class="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal></td>
            </tr>
            <tr>
                <td class="MainTd" colspan="4">
                    <div style="overflow: auto; height: 300px; background-color: gray">
                        <asp:Table ID="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                            CellPadding="0" CssClass="SubTable">
                        </asp:Table>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="MainFoot">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 50px"
                        onclick="fnCrGetCode()" onmouseout="this.className='ButCls'" type="button" value="Ok">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                        onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
