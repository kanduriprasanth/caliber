<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="LocWrkAllTyp2.Trn" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ListSelection" Src="../CaliberCommonCtrls/ListSelection.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
    <script type="text/javascript" src="../JScript/jquery.min.js"></script>

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'

	//-->
	
	
	function fnSetToReasons(argValue){
   
		document.getElementById("RemarksTxt").value = argValue
	}
    </script>
      <script language="javascript">
       function UserGroupDetails(UserGroupId)
        {
            pageURL ="../WorkFlow/UserGroupDetails.aspx?UserGroupId=" + UserGroupId
            SpWinObj = window.open(pageURL,'TemplatePreview',"height=350,width=600,toolbar=no,resizable=false,menubar=no,status=no,scrollbars=yes,top=75,left=75");
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();

        }
    </script>
    <style type="text/css">
    
        .MainTd1 
        {
            
            font-weight:10; 
            Background-Color:#FFFFFF;
            font-family:Verdana,Arial;
            font-size:8pt;
            border:solid #5fa8cf 1 pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
        }
        
        .SubHeadTD
        {
            
            font-weight:300; 
            Background-Color:#dcebf2;
            font-family:Verdana,Arial;
            font-size:8pt;
            border:solid #5fa8cf 1 pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
        }
        
    </style>
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" runat="server">
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
                            <asp:TableCell CssClass="MainTD" ID="DescTd" Width="310px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="HideRow" MaxLength="250" Width="200px"
                                    AccessKey="D" TabIndex="1"></asp:TextBox>
                                <asp:Label CssClass="MainTD" ID="DescLbl" runat="server"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" Enabled="false" runat="server" CssClass="UCTxtCls" MaxLength="25"
                                    Width="200px" AccessKey="C" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="LocTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="LocDdlTd">
                                <asp:DropDownList ID="LocDdl" runat="server" CssClass="TxtCls" MaxLength="25" Width="200px"
                                    AccessKey="C" TabIndex="2" AutoPostBack="true">
                                </asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell CssClass="HideRow" ID="LocLblTd">
                                <asp:Label CssClass="MainTD" ID="LocLbl" runat="server"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="TaskRegTab" CssClass="SubTable" runat="server" Width="100%" CellPadding="0"
                                    CellSpacing="0" HorizontalAlign="center" BorderWidth="0">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%-- <asp:TableRow  CSSClass="HideRow" ID="LocListTr">
									<asp:TableCell CssClass="MainTD"  ColumnSpan=3>
									<uc1:ListSelection id="WrkAllUGrLst"  runat="server" > </uc1:ListSelection>
                                    </asp:TableCell>
							</asp:TableRow>--%>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                                <asp:TextBox ID="ListItemCntTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="LocIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="DisRBLstSelTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="PltUcodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <input type="button" onclick="fnOpenReasons(1),'RemarksTxt'" class='RsnPUP'>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc1:EsignObj id="EsignObj1" runat="server" visible="false">
                                </uc1:EsignObj>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="IARow" runat="server" CssClass="HideRow">
                <asp:TableCell>
                    <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                        CellSpacing="1" HorizontalAlign="Center">
                    </asp:Table>
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
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" onSubmit="ValidateFieldSelection">
                                </asp:Button>
                                 <input type="button" onMouseOver="this.className='ButOCls'" Class='ButCls' accessKey="C"
										onMouseOut="this.className='ButCls'" Value='Back' onclick='return historyback()' Width="70">
                            </asp:TableCell>
                            
                            <asp:TableCell HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButSelCls" onMouseOver="this.className='ButSelOCls'"
                                    onMouseOut="this.className='ButSelCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
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
</body>

<script language="javascript">
    
    function ValidateFieldSelection(src,args)
    { debugger
    
         args.IsValid=true;
        Page_IsValid=true;
        var ListItemCnt=<%=ListItemCnt%>
        var Count=0
         var EnabCount=0
        var j=1
      if(document.getElementById("CodeTxt").value!="" && document.getElementById("LocLbl").value!="")
        {
       for(var i=0;i<ListItemCnt;i++)
       {
                
        if(document.all("RBtn"+ i)[1].checked==true || document.all("RBtn"+ i)[2].checked==true || document.all("RBtn"+ i)[3].checked==true || document.all("RBtn"+ i)[4].checked==true)
         {
          Count= Count+1
         }
          if(document.all("RBtn"+ i)[1].disabled==false || document.all("RBtn"+ i)[2].disabled==false || document.all("RBtn"+ i)[3].disabled==false || document.all("RBtn"+ i)[4].disabled==false)
         {
          EnabCount= EnabCount+1
         }
       }
        if (Count==0 || EnabCount==0) 
        {
        src.errormessage="Select At Least One Item"
        args.IsValid=false;
        Page_IsValid=false;
        }
        }
        else{
       document.getElementById("LocLbl").value=""
       document.getElementById("LocDdl").value=""
       src.errormessage="Select Value For: Location"
        args.IsValid=false;
        Page_IsValid=false;
        }
        }

        function historyback(){
        window.history.back()
        document.getElementById("LocLbl").value=""
        document.getElementById("LocDdl").value=""
       }
        
   function Detach()
    {
    if (typeof(fnCallESign)!= "undefined")
        {
        
            var formName = document.forms(0).name  
            document.all(formName).detachEvent('onsubmit',fnCallESign)
       }
    }
          
       

//<!--
//document.Form1.DescTxt.focus()
//-->
</script>

</html>
