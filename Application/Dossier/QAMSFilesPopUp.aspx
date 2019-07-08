<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="QAMSFilesPopUp.aspx.vb"
    Inherits="Dossier.QAMSFilesPopUp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>QAMS Doc. List</title>
    <script src="../JScript/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../JScript/Common2.js"></script>
     <link rel="stylesheet" href="../TRIMS.css">
    <script type="text/javascript">
        function TemplatPreview(TemplateId) {
            pageURL = "TemplatePreview.aspx?TemplateId=" + TemplateId
            SpWinObj = window.open(pageURL, 'TemplatePreview', "height=350,width=600,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=75,left=75");
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();

        }
    </script>
</head>
<body>
    <form autocomplete="off" id="Form1" method="post" runat="server">
    <center>
    <table class="MainTable" align="center">
        <!-- MAIN HEADER -->
        <tr class="MainHead">
            <td>
                <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td>
                <table class="SubTable" align="center">
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
                        <td class="MainTD" style="font-weight: bold">
                            <asp:Literal ID="SearchOptionLtrl" runat="server">Search Option</asp:Literal>
                        </td>
                        <td class="MainTD" colspan="3">
                            <asp:RadioButtonList ID="SearchOptionRD" runat="server" RepeatDirection="Horizontal"
                                CellPadding="0" CssClass="RBList" CellSpacing="0" Height="18px">
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="MainTD" colspan="2" style="font-weight: bold">
                            <asp:Literal ID="FindLrl" runat="server">Find</asp:Literal>
                            <asp:TextBox ID="FindTxt" runat="server" Width="180px" MaxLength="20" CssClass='TxtCls'>%</asp:TextBox>
                        </td>
                        <td class="MainTD" colspan="2" style="font-weight: bold">
                            <asp:Literal ID="FetchSizeLtrl" runat="server">Records Limit</asp:Literal>
                            <asp:TextBox ID="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:TextBox>
                            <asp:Button ID="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
                                onmouseout="this.className='ButCls'"></asp:Button>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <div style="overflow: auto; height: 200px; background-color: gray">
                                <asp:Table ID="ResTab" runat="server" Width="100%" CssClass="SubTable">
                                </asp:Table>
                            </div>
                        </td>
                    </tr>
                    <tr class="HideRow">
                        <td><input type="text" id="RBVal" />
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <!-- MAIN FOOTER -->
        <tr class="MainFoot">
            <td>
                <input class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
                    type="button" value="Ok" onclick="fnCrCloseWin()" />
                <input class="ButCls" onmouseover="this.className='ButOCls'" onclick="fnCrCancel()"
                    onmouseout="this.className='ButCls'" type="button" value="Cancel" />
                <asp:TextBox ID="TemplateType" CssClass="HideRow" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    </center>
    </form>
    <script type="text/javascript">

  	function fnCrGetCode(RowCnt)
	{ 
     var KfLableValArr=new Array()
     var KdIdValArr=new Array()
     var KdCodeVal =new Array()
     var KdDesVal =new Array()
     
    for(var k=0;k<<%=RecordCnt%>;k++)
    {
        if(document.getElementById("RBID"+k).checked ==true)
        {
            KfLableValArr.push($('#KfLable'+ k).text())
            KdIdValArr.push($('#KdId'+ k).text())
            KdDesVal.push($('#KdDes'+ k).text())
            KdCodeVal.push($('#KdCODE'+ k).text())
            document.getElementById("RBVal").value = $('#KdId'+ k).text()
        }
    }
   
        var KfLableVal=KfLableValArr.join(",")
        var KdIdVal=KdIdValArr.join(",")
        var KdDesVal =KdDesVal.join(",")
        var KdCodeVal =KdCodeVal.join(",")
        
        opener.Ret_OpenQAMSPopUp(KdIdVal,KfLableVal,KdDesVal,KdCodeVal)
    }
	
	function fnCrCancel(){
		opener.fnGetFormVal('','','','')
		window.self.close()
	}

	function fnCrGetSchCode(RowCnt)
	{ 
		var KfLableVal=$('#KfLable'+ RowCnt).text()
		var KdIdVal=$('#KdId'+ RowCnt).text()
		var KdCodeVal=$('#KdDes'+ RowCnt).text()
		var KdDesVal=$('#KdCODE'+ RowCnt).text()
		document.getElementById("RBVal").value = KdIdVal
		
		opener.Ret_OpenQAMSPopUp(KdIdVal,KfLableVal,KdDesVal,KdCodeVal)
	}
     
	document.oncontextmenu=new Function("return false")

	function fnCrCloseWin(){
	 
	      if(document.getElementById("RBVal").value == "")
	      {
            alert("Select " + document.getElementById("TemplateType").value + " Template")
            return(false);
          }    
          
		window.self.close()
		opener.Fn_PageReLoad('<%=Request.QueryString("SrcType")%>')
	}
    </script>
</body>
</html>
