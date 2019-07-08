<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RulesListPopup.aspx.vb" Inherits="AuditObservation.RulesListPopup" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>
        <%=MainTitleLtrl.Text%>
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/jquery.min.js"></script>

    <script language="javascript">
    function fnCrCancel()
    {
		opener.Ret_OpenRuleTypePopUp('','','','','',"<%=Request.QueryString("IdSuffix")%>")
		//Ret_OpenRuleTypePopUp(RuleTypeId,RuleId,RuleTypeDesc,RupeDesc,IdSuffix)
        window.self.close()
	}
	
	document.oncontextmenu=new Function("return false")
	
	function fnSpCloseWin()
	{
        if( document.getElementById("TableIdTxt").value == "")
        {
            alert("Select Rule")
            return(false);
        }
        window.self.close()
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
                    <a accesskey="S" class="AHover" href="JavaScript:window.history.back();" onmouseover="className='AHover'"
                        title=" Back ">
                        <img border="0" onmouseout="this.src='../Images/back_n.gif'" onmouseover="this.src='../Images/back_o.gif'"
                            src="../Images/back_o.gif" /></a>&nbsp;
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal></td>
            </tr>
            <tr>
                <td>
                    <table width="100%" cellspacing="0" cellpadding="0" align="center">
                        <tr class="HideRow">
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="MainTd" colspan="1">
                                <asp:Literal ID="SearchOptionLtrl" runat="server">Search Option</asp:Literal>
                            </td>
                            <td class="MainTd" colspan="3">
                                <asp:RadioButtonList ID="SearchOptionRD" runat="server" RepeatDirection="Horizontal"
                                    CellPadding="0" CssClass="RBList" CellSpacing="0" Height="18px">
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td class="MainTd" colspan="2">
                                <asp:Literal ID="FindLrl" runat="server">Find</asp:Literal>
                                <asp:TextBox ID="FindTxt" MaxLength="30" runat="server" Width="180px" CssClass='TxtCls'>%</asp:TextBox>
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
                                <asp:TextBox ID="TableIdTxt" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <!-- MAIN FOOTER -->
            <tr>
                <td class="MainFoot">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 50px"
                        onclick="fnSpCloseWin()" onmouseout="this.className='ButCls'" type="button" value="Ok" />
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                        onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel" />
                        <input type =text id="SelListTxt" style="display:none"/>
                </td>
            </tr>
        </table>
    </form>
</body>
<script language=javascript >

//  $(':checkbox').click(function(){

//       // this.checked =true;
//        var RuleTypeId,RuleTypeDesc,RuleId,RupeDesc;
//        RuleTypeId = $("#ENBID"+ $(this).val()).text();
//        //ENBAulId = $("#ENBAULID"+ $(this).val()).text();
//        RuleTypeDesc = $("#ENBDesc"+ $(this).val()).text();
//        RuleId = $("#SecIdID"+ $(this).val()).text();
//        RupeDesc = $("#SecDes"+ $(this).val()).text();

//        $("#SelListTxt").val(RuleTypeId);

//		//Ret_OpenRuleTypePopUp(RuleTypeId,RuleId,RuleTypeDesc,RupeDesc,IdSuffix)
//        opener.Ret_OpenRuleTypePopUp(RuleTypeId,RuleId,RuleTypeDesc,RupeDesc,"<%=Request.QueryString("IdSuffix")%>")

//  });
  
function fnCrGetCode(RowCnt)
{ 
    var RuleTypeDescArr=new Array()
    var RuleTypeIdArr =new Array()
    var RuleIdArr=new Array()
    var RuleDescArr =new Array()
    var RuleTypeRuleDescArr=new Array()
    var flag=false;
    var RTFlag=false;
     
    for(var k=0;k<<%=Cnt%>;k++)
    {
        if(document.getElementById("RBID"+k).checked ==true)
        {
            if (RTFlag==false)
            {
                RuleTypeIdArr.push(document.all("ENBID"+ k).innerText) 
                RuleTypeDescArr.push(document.all("ENBDesc"+ k).innerHTML)
                RTFlag=true
            }
            RuleIdArr.push(document.all("SecIdID"+ k).innerText)    
            RuleDescArr.push(document.all("SecDes"+ k).innerText)
            RuleTypeRuleDescArr.push(document.all("ENBDesc"+ k).innerHTML + " : " + document.all("SecDes"+ k).innerText)
            document.getElementById("TableIdTxt").value = "1"
            flag=true;
        }
        else
        {
            if(flag==true)
            {
                 document.getElementById("TableIdTxt").value = "1"
            }
            else
            {
                 document.getElementById("TableIdTxt").value = ""
            }
        }
    }

    var RuleTypeId=RuleTypeIdArr.join(",")
    var RuleId=RuleIdArr.join(",")
    var RuleTypeDesc=RuleTypeDescArr.join(",")
    var RuleDesc=RuleDescArr.join(", ")
    var RuleTypeRuleDesc=RuleTypeRuleDescArr.join(",")
    
    opener.Ret_OpenRuleTypePopUp(RuleTypeId,RuleId,RuleTypeDesc,RuleDesc,RuleTypeRuleDesc,"<%=Request.QueryString("IdSuffix")%>")
}

</script> 
</html>

