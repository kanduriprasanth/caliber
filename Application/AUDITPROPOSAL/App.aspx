<%@ Page Language="vb" AutoEventWireup="false" Codebehind="App.aspx.vb" Inherits="AUDITPROPOSAL.App" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>App</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    
    <link href="../TRIMS.css" rel="stylesheet">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript" src="../JScript/jquery.min.js"></script>

    <script language="javascript">
<!--
 RequestPrefix='<%=me.ClientID%>'
function fnSetToReasons(argValue)//For Remarks
          {   
               document.getElementById('RemarksTxt').value = argValue
          }	
//-->

  function OpenDocument(DocId) 
		    {
			    var yval = parseInt(screen.availHeight) - 100
			    var xval = screen.availWidth-500
			    var pageURL = "../DMSManagement/ViewDocument.aspx?DocId=" + DocId;
			    SpWinObj = window.open(pageURL, 'RepPopUp', "height=" + yval + ",width=" + xval + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=no,top=1,left=1");
			    if (SpWinObj.opener == null) SpWinObj.opener = self;
			    SpWinObj.focus();
		    }  

function FnCheckSts()
{
var AdtDtSts=<%=AdtDtSts%>
    var AdtrStsFlg=<%=AdtrStsFlg%>
    var AdteStsFlg=<%=AdteStsFlg%>
     var sts = "true"

    
 if(<%=AuditType%>==1 && sts=="true")
    {
        if (document.getElementById("Approve_" + 0).checked==true)
        {
            if (AdteStsFlg==2 && AdtrStsFlg==2)
            {
                alert('Auditee(s) And Auditor(s) Acceptance is Pending');
                document.getElementById("Approve_" + 0).checked=false;
                document.getElementById("Approve_" + 1).checked=false;
                document.getElementById("Approve_" + 2).checked=false;
                return false;
            }
            else if(AdteStsFlg==2)
            {
                alert('Auditee(s) Acceptance is Pending');
                document.getElementById("Approve_" + 0).checked=false;
                document.getElementById("Approve_" + 1).checked=false;
                document.getElementById("Approve_" + 2).checked=false;
                return false;
            }
            else if(AdtrStsFlg==2)
            {
                alert('Auditor(s) Acceptance is Pending');
                document.getElementById("Approve_" + 0).checked=false;
                document.getElementById("Approve_" + 1).checked=false;
                
                document.getElementById("Approve_" + 2).checked=false;
                return false;
            }
            else
            {
                document.getElementById("btnConfirm").click();
            }
         }
         else
         {
            document.getElementById("btnConfirm").click();
         }
     }
     else  if (<%=AuditType%>==3 && sts=="true")
     {
        if (document.getElementById("Approve_" + 0).checked==true)
        {
            if(AdtrStsFlg==2)
            {
                alert('Auditor(s) Acceptance is Pending');
                document.getElementById("Approve_" + 0).checked=false;
                document.getElementById("Approve_" + 1).checked=false;
            
                document.getElementById("Approve_" + 2).checked=false;
                return false;
            }
            else
            {
                document.getElementById("btnConfirm").click();
            }
        }
        else
        {
                document.getElementById("btnConfirm").click();
        }
     }
     else
     {
        document.getElementById("btnConfirm").click();
     }
     
}

   function OpenPopUp()
   {
        SetPopDimensions()
        var pageURL = "../AuditReports/AccepReport.aspx?RgsId=" + "<%=Request.QueryString("AId")%>"
        var features = "height= 450,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
        var SpWinObj = window.open(pageURL,'BRMPopup',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
   }
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="Table3" runat="server" CellPadding="0" CellSpacing="0" BorderWidth="3"
            HorizontalAlign="center" CssClass="MainTable" Width="100%" EnableViewState="False">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="AduitTD" ColumnSpan="2">
                                <asp:Table ID="Atab" CssClass="MainTD" runat="server" Width="100%" CellPadding="0"
                                    CellSpacing="0" HorizontalAlign="center" Style="padding-right: 0px; padding-left: 0px;
                                    padding-bottom: 0px; padding-top: 0px">
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Table ID="DataTab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow ID="DataTab2Tr" runat="server" CssClass="HideRow">
                                        <asp:TableCell>
                                            <asp:Table ID="DataTab2" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Table ID="AppStsTab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2">
                                <asp:Table ID="Table4" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="Center">
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD" Width="40%" ID="TableCell1" runat="server">
									Auditor(s) / Auditee(s) Acceptance Log
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
									<input type=button class="RsnPUP" onclick="OpenPopUp()" />
                                        </asp:TableCell>
                                     
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DecisionTd" runat="server">
                                <asp:Literal runat="server" ID="DecisionLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="Approve" runat="server" RepeatDirection="Horizontal" CellPadding="0"
                                    class="RBList" CellSpacing="0" Height="18px">
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="RemarksTd" runat="server">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                                <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
                            </asp:TableCell>
                         </asp:TableRow>
                        <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc1:EsignObj id="EsignObj1" runat="server" visible="true">
                                </uc1:EsignObj>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <input type="button" id="btnConfirm1" onmouseover="this.className='ButOCls'" class='ButCls'
                                    accesskey="C" onmouseout="this.className='ButCls'" onclick="FnCheckSts()" value="Submit"
                                    width="70" />
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70">
                                </asp:Button>
                                
                            <asp:Label runat="server" ID="ChkLbl"></asp:Label>
                           
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButSelCls" onMouseOver="this.className='ButSelOCls'"
                                    onMouseOut="this.className='ButSelCls'" AccessKey="V"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" ID="ValidatorsTd" runat="server">
                                <asp:ValidationSummary ID="ValidationSummary1" Style="z-index: 101; left: 232px;
                                    position: absolute; top: 344px" runat="server" ShowMessageBox="True" ShowSummary="False">
                                </asp:ValidationSummary>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
	  
//			if(document.getElementById("Approve_" + 1)!=null)
//			{
//			    $("#Approve td:nth-child(3)").css("display","none");
//			}
//            if(document.getElementById("Approve_" + 2)!=null)
//			{
//			    $("#Approve td:nth-child(3)").css("display","none");
//			}
//		        
//            $("#Approve td:nth-child(3)").css("display","none");

  if(<%=Request.QueryString("TT")%>==8)
			{
			   // $("#Approve td:nth-child(2)").css("display","none");
			}
			else
			{
			   // $("#Approve td:nth-child(3)").css("display","none");
			}


</script>

</html>
