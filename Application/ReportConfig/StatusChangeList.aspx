<%@ Page Language="vb" AutoEventWireup="false" Codebehind="StatusChangeList.aspx.vb"
    Inherits="ReportConfig.StatusChangeList" %>
    
<%@ Register TagPrefix="uc2" TagName="ESignWebUC" Src="ESignWebUC.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl3.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>StatusChgList</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <SCRIPT language="javascript" src="../JScript/Common2.js"></SCRIPT>
    <script language="javascript" src='../JScript/Common.js'></script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server" ID="Table1" EnableViewState="False">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="CrTopTable">
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="6">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="6">
                                <uc1:SearchCtrl id="SearchCtrl1" runat="server">
                                </uc1:SearchCtrl>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3" Width="50%">
                                <asp:LinkButton ID="ActLb" runat="server" Width="100%" Height="100%" CausesValidation=false></asp:LinkButton>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3" Width="50%">
                                <asp:LinkButton ID="InActLb" runat="server" Width="100%" Height="100%" CausesValidation=false></asp:LinkButton>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="MaxRecLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="MaxRecCntLtrl" runat="server">0</asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="RecPerPageLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RecPerPageTxt" runat="server" Width="50px" CssClass="TxtCls" AutoPostBack="False">10</asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="PgNoLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="PgNoTxt" runat="server" Width="50px" CssClass="TxtCls" AutoPostBack="False">1</asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="DisTable">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <table class="SubTable" cellspacing="1" cellpadding="0" width="100%" align="center">
                        <tr>
                            <td class="MainTD">
                                <span><font color="red" size="2"><b>*</font>Note:</B> For changing Report Status,
                                    Select Status and Give Reason and click "OK" for Each Change&nbsp;and finally click
                                    <u>submit</u></span>
                            </td>
                        </tr>
                    </table>
                </asp:TableCell>
            </asp:TableRow>
           
            <asp:TableRow>
                <asp:TableCell class="MainFoot">
                    <asp:button id="btnSubmit" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
                        runat="server" CssClass="ButCls" Text="Submit"></asp:button><input class="ButCls"
                            onmouseover="this.className='ButOCls'" style="display: none" onmouseout="this.className='ButCls'"
                            type="reset" value="Reset" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow">
                <asp:TableCell runat="server" ID="CVD">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                <asp:TableCell ColumnSpan="2" >
                    <uc2:ESignWebUC id="ESignWebUC1" runat="server">
                    </uc2:ESignWebUC>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">

  function fnStatusChange(Status,RowCnt,ReportID)
  {debugger
    // active To in-Active 
    
    
        if (window.event) {
        var Flag = window.event.srcElement.checked;
        }
        else {
        var Flag = evt.target.checked
        }
        
        if(Flag){
            var rnd = Math.round(Math.random()*1000000)
            var cReturnValue = window.showModalDialog('../Admin/UserAccAthenticSample.aspx?r='+ rnd,'thisTitle','dialogheight=12;dialogwidth=23;help=0;status=0;scroll=0;edge=raised;')
            if((cReturnValue).length>0){
                document.all("RSN"+ ReportID).value=cReturnValue
                return(false);
            }
            else
            {
            if (Status==1){
             document.all("ARPT"+ RowCnt).checked = false
            }
            else if (Status==2){
             document.all("IARPT"+ RowCnt).checked = false
            }
           
            }
        }

//        if(Count>1)
//        document.f1.all("AUSR")(Pos).checked=false;
//        else
//        document.f1.all("AUSR").checked=false;
//        return(false);
					
   
			
				
  }
  
  					
function VbTestchkValid()
{
	
	var IsARPTChecked = false;
    var IsIARPTChecked = false;
    
	if(document.all.item("ARPT",0)!=null)
	{
		if(document.all("ARPT").length==undefined)
		{
			if(document.all("ARPT").checked)
			{
				
				IsAUSRChecked=true;
				
			}
		}
		var intLen = document.all("ARPT").length
		if(intLen>0)
		{
			for(i=0;i<intLen;i++)
			{
				
				if(document.all("ARPT")(i).checked)
				{
					
					IsAUSRChecked = true;
					break;
				}
			}
		}
	}
	if(document.all.item("IARPT",0)!=null)
	{
	
		if(document.all("IARPT").length==undefined)
		{
			if(document.all("IARPT").checked)
			{
				
				IsIAUSRChecked=true;
				
			}
		}
		var intLen1 = document.all("IARPT").length
		if(intLen1>0)
		{
			for(i=0;i<intLen1;i++)
			{
				if(document.all("IARPT")(i).checked)
				{
					
					IsIAUSRChecked = true;
					break;
				}
			}
		}
	}
    
	if(!IsAUSRChecked && !IsIAUSRChecked) //Or if(IsAUSRChecked==false && IsIAUSRChecked==false)
		{
			return false;
		}
 }
	
	/* Esing Activity and button name setting */

var formName = document.forms(0).name
document.body.attachEvent('onblur',fnRestoreESign)
document.body.attachEvent('onfocus',fnRestoreESign)
document.body.attachEvent('onbeforeunload',fnKillESign)
document.all(formName).attachEvent('onsubmit',fnCallESign)

	window.onload = new Function("fnSetEsingActivity('Report Configuration:Status Change Initiation','btnSubmit')")

function Test(src,args){
   var Flag= VbTestchkValid() ;
   if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    }
  	   
 }
 
 
  
</script>

</html>
