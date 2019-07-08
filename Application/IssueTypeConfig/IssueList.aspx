<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="IssueList.aspx.vb" Inherits="IssueTypeConfig.IssueList" %>

<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl2.ascx" %>
<%@ Register TagPrefix="uc4" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx"  %>
<%@ Register TagPrefix="uc2" TagName="Footer" Src="../CaliberCommonCtrls/ReportFooter.ascx"  %>
<%@ Register TagPrefix="uc3" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx"  %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" >
<html>
<head>
    <title><%=MainTitleLtrl.Text%></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">


function FnRptConfigSelLstPopUp()
{
    var pageURL;
    pageURL ="ReportConfigPopUp.aspx"

    SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
}
	     
function fnRptConfigVal(RptConfigId,RptConfigDes)
{
    document.getElementById("RptConfigIdTxt").value=RptConfigId
    document.getElementById("RptConfigDesTxt").value=RptConfigDes
    document.getElementById("RptConfigDesTxtLab").innerHTML =RptConfigDes

 }
 
    </script>

</head>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="Table1" EnableViewState="False" Width="100%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead" ColumnSpan="6">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="6">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell  ColumnSpan =2 CssClass="MainTD" Style="font-weight: bold;" ID="RptConfigTd" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan =4>
                            <input type="button" onclick="FnRptConfigSelLstPopUp()" class='RsnPUP' tabindex="3">
                                <asp:Label ID="RptConfigDesTxtLab" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="RptConfigDesTxt" runat="server" CssClass="HideRow" ></asp:TextBox>
                                <asp:TextBox ID="RptConfigIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="6">
                                <uc1:searchctrl id="SearchCtrl1" runat="server">
                                </uc1:searchctrl>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:LinkButton ID="ActLb" Height="100%" runat="server" Width="100%" CausesValidation="false"></asp:LinkButton>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="4"></asp:TableCell>
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
                                <asp:TextBox ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" runat="server" AutoPostBack="False"
                                    Width="50px">10</asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="PgNoLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="PgNoTxt" CssClass="TxtCls" runat="server" AutoPostBack="False" Width="50px"
                                    MaxLength="5">1</asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="DisTable" runat="server" HorizontalAlign="center" CellPadding="0"
                                    CssClass="SubTable" CellSpacing="1" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                      
                    </asp:Table>
                    </asp:TableCell>
                        </asp:TableRow>
                        
            <asp:TableRow>
                <asp:TableCell CssClass="MainFoot" ColumnSpan="2">
                    <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                        Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="150">
                    </asp:Button>
                </asp:TableCell>
            </asp:TableRow>
            
            
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ID="TableCell1" ColumnSpan="2">
                    <asp:TextBox ID="IssueAulIdTxt" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
       
    </form>

    <script language="javascript">
    var Flag=false
    var flag1=0 
    var EContentID =''
    function fnCheckAll()
    {
    	var isAllChk=document.getElementById("DocChkAll").checked
		var Cnt=<%=LstCnt%>;

	       for(var i=0;i<Cnt;i++)
	       {
	            document.getElementById("Chk"+i).checked=isAllChk;
	       }
	       
	       //Additional code for getting the e Content ids
	       if(isAllChk==true)
	       {
	        for(var i=0;i<Cnt;i++)
	       {
	        EContentID+=","+ document.getElementById ("IssAulID"+i).innerHTML
	       }
	       EContentID=EContentID.substring(1,EContentID.length)
	       document.getElementById ("IssueAulIdTxt").value =EContentID
	       }
	       else
	       {
	       document.getElementById ("IssueAulIdTxt").value =''
	       }
	      EContentID =''
    }

    function fncheck()
    {

        var flag=1
        var Cnt=<%=LstCnt%>;   
        var Flag1=0  
        for(var i=0;i<Cnt;i++)
	    {
            if (document.getElementById("Chk"+i).checked==false)	
            {
                flag=0
            }	 
            else 
            {
                Flag1=1
                EContentID +=","+ document.getElementById ("IssAulID"+i).innerHTML
                document.getElementById("IssueAulIdTxt").value = EContentID.substring(1,EContentID.length)
            }
	    }
	    EContentID=''
        if(flag==0)
        {
            if(Flag1==0)
            {
                document.getElementById ("IssueAulIdTxt").value=''
            }
            document.getElementByIdDocChkAll.checked=false
        }
        else
        {
            document.getElementById("DocChkAll").checked=true
        }
    }

    function ValidateTemplatesWorkFlow(src,args)
    {
        var str="" 
        args.IsValid=true;
        Page_IsValid=true;
        var flag=0
         var Cnt=<%=LstCnt%>;   
        for(var i=0;i<Cnt;i++)
        {
            if (document.getElementById("Chk"+i).checked==true)
            {
                flag=1
            }
        }
        if(flag==0)
        {	
            src.errormessage="Select Batch!" ;
            args.IsValid=false;
            Page_IsValid=false;  	
        }
    }

    </script>

</body>
</html>
