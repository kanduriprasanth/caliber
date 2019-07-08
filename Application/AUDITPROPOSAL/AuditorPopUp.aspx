<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AuditorPopUp.aspx.vb" Inherits="AUDITPROPOSAL.AuditorPopUp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Auditor List</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
		function FnOpenDocument(DocId)
		{
            var yval = parseInt(screen.availHeight) - 100
            var xval = screen.availWidth-500
            
            var pageURL = "../DMSManagement/ViewDocument.aspx?DocId=" + DocId;
            SpWinObj = window.open(pageURL, 'RepPopUp', "height=" + yval + ",width=" + xval + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=no,top=1,left=1");
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();
            
        }
        function AttachPopUp(UsrIds,r)
        {
            var pageURL = "AttachPopUP.aspx?UsrIds=" + UsrIds  + "&r=" + r 
            var features = "height= 450,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
            var SpWinObj = window.open(pageURL,'BRMPopup',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
    </script>

</head>
<body ms_positioning="GridLayout" onload="document.getElementById('FindTxt').focus()" onblur="document.getElementById('FindTxt').focus()">
    <form id="Form1" method="post" runat="server">
        <table class="MainTable" height="100%" cellspacing="0" cellpadding="0" width="100%"
            align="center" border="3">
            <!-- MAIN HEADER -->
            <tr>
                <td class="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal></td>
            </tr>
            <tr>
                <td>
                    <div class="MainTd" style="height: 20px" id="Div1">
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
                                <td class="MainTd" style="font-weight:bold" Width="200px">
                                    <asp:Literal ID="SearchOptionLtrl" runat="server">Search Option</asp:Literal>
                                </td>
                                <td class="MainTd" colspan = 3  Width="450px">
                                <asp:RadioButtonList ID="SearchOptionRD" runat="server" RepeatDirection="Horizontal"
                                        CellPadding="0" CssClass="RBList" CellSpacing="0" Height="18px">
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td class="MainTd"  style="font-weight:bold ">
                                    <asp:Literal ID="FindLrl" runat="server">Find</asp:Literal>
                                    <asp:TextBox ID="FindTxt" runat="server" Width="150px" MaxLength="20" CssClass='TxtCls'>%</asp:TextBox>
                                </td>
                                <td class="MainTd" style="font-weight:bold ">
                                    <asp:Literal ID="FetchSizeLtrl" runat="server" >Records Limit</asp:Literal>
                                    <asp:TextBox ID="FetchSizeTxt" runat="server" Width="100px" CssClass="TxtCls" MaxLength="3">50</asp:TextBox>
                                    <asp:Button ID="btnFind" runat="server" Text="Display"  Width="65px" class="ButCls" onmouseover="this.className='ButOCls'"
                                        onmouseout="this.className='ButCls'"></asp:Button>
                                </td>
                            </tr>
                            <tr>
                                <td class="MainTd" colspan="4">
                                        <div style="overflow: auto; height: 200px; background-color: gray">
                                            <asp:table id="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                                CellPadding="0" CssClass="SubTable">
                                            </asp:table></div>
                                </td>
                            </tr>
                            <tr class="HideRow">
                                <td><input type=text runat="server"  id="RBVal" />
                                </td>
                                <td>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <!-- MAIN FOOTER -->
            <tr class="MainFoot">
                <td >
                    <input class="ButCls" onmouseover="this.className='ButOCls'" 
                        onmouseout="this.className='ButCls'" type="button" value="Ok" onclick="fnCrCloseWin()">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" 
                        onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
                    <asp:TextBox ID="TemplateType" CssClass="HideRow" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>

    <script language="javascript">

  	function fnCrGetCode(RowCnt)
	{ 
     var KfLableValArr=new Array()
     var KdIdValArr=new Array()
     var KdCodeVal =new Array()
     
    for(var k=0;k<<%=RecordCnt%>;k++)
    {
        if(document.getElementById("RBID"+k).checked ==true)
        {
            KfLableValArr.push(document.all("KfLable"+ k).innerHTML)
            KdIdValArr.push(document.all("KdId"+ k).innerText)
            KdCodeVal.push(document.all("KdCODE"+ k).innerText)
            
            document.getElementById("RBVal").value = document.all("KdId"+ k).innerHTML
        }
    }
   
        var KfLableVal=KfLableValArr.join(";")
        var KdIdVal=KdIdValArr.join(",")
        var KdCodeVal =KdCodeVal.join(",")
        var DeptCnt=<%=DeptCnt%>
        var PrcsCnt=<%=PrcsCnt%>
        document.getElementById("RBVal").value=KdIdVal
        opener.fnGetAuditorListVal(KdIdVal,KdCodeVal,KfLableVal,CheckListRowCnt)
    }
	
	function fnCrCancel(){
		opener.fnGetAuditorVal('','','',<%=DeptCnt%>,<%=PrcsCnt%>)
		window.self.close()
	}



	function fnCrGetAuditorCode(RowCnt)
	{  
//		var KfLableVal=document.all("KfLable"+ RowCnt).innerHTML
//		var KdIdVal=document.all("KdId"+ RowCnt).innerText
//		var KdCodeVal=document.all("KdCODE"+ RowCnt).innerText
        var KfLableValArr=new Array()
        var KdIdValArr=new Array()
        var KdCodeVal =new Array()
     
		var DeptCnt=<%=DeptCnt%>
        var PrcsCnt=<%=PrcsCnt%>
        
        for(var k=0;k<<%=RecordCnt%>;k++)
        {
            if(document.getElementById("RBID"+k).checked ==true)
            {
                KfLableValArr.push(document.all("KfLable"+ k).innerHTML)
                KdIdValArr.push(document.all("KdId"+ k).innerText)
                KdCodeVal.push(document.all("KdCODE"+ k).innerText)
                
                document.getElementById("RBVal").value = document.all("KdId"+ k).innerHTML
            }
        }
    
		var KfLableVal=KfLableValArr.join(" , ")
        var KdIdVal=KdIdValArr.join(",")
        var KdCodeVal =KdCodeVal.join(",")
		document.getElementById("RBVal").value=KdIdVal
		opener.fnGetAuditorVal(KdIdVal,KdCodeVal,KfLableVal,DeptCnt,PrcsCnt)
	}
     
	document.oncontextmenu=new Function("return false")

	function fnCrCloseWin(){
	    var KfLableValArr=new Array()
        var KdIdValArr=new Array()
        var KdCodeVal =new Array()
	      for(var k=0;k<<%=RecordCnt%>;k++)
        {
            if(document.getElementById("RBID"+k).checked ==true)
            {
                KfLableValArr.push(document.all("KfLable"+ k).innerHTML)
                KdIdValArr.push(document.all("KdId"+ k).innerText)
                KdCodeVal.push(document.all("KdCODE"+ k).innerText)
                
                document.getElementById("RBVal").value = document.all("KdId"+ k).innerHTML
            }
        }
    
		var KfLableVal=KfLableValArr.join(" , ")
        var KdIdVal=KdIdValArr.join(",")
        var KdCodeVal =KdCodeVal.join(",")
		document.getElementById("RBVal").value=KdIdVal
		
	  
	      if(document.getElementById("RBVal").value == "")
	      {
	        if(<%=Request.QueryString("AdtType")%>==2)
	        {
	            alert("Select At Least One Authorized User")
	        }
	        else
	        {
	            alert("Select At Least One Auditor")
	        }            
            return(false);
          }    
		window.self.close()
	}
    </script>

</body>
</html>

