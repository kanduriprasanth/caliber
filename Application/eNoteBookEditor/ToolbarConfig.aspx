<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ToolbarConfig.aspx.vb"
    Inherits="eNoteBookEditor.ToolbarConfig" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head runat="server">
    <title>Toolbar Configuration</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
 </head>
<body>
    <form id="form1" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow Height="20px" runat="server">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>

            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="Center" ID="Table1">
                        <asp:TableRow CssClass="HideRow" Height="0px">
                            <asp:TableCell runat="server"></asp:TableCell>
                            <asp:TableCell runat="server"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="CodeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="DescTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    onkeypress="taLimit()" onkeyup="taCount()" AccessKey="D" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" CssClass="MainTD">
                                <asp:Table ID="ToolsListTab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="Center">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="Center" ID="Table2" BorderWidth="0px">
                        <asp:TableRow CssClass="HideRow" Height="0px">
                            <asp:TableCell ColumnSpan="2"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot" ColumnSpan="2">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Width="70px"></asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0px">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd" runat="server">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="CommandsIdLstTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="CommandsLstTxt" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
    var Flag=false
    var flag1=0 
    var CommandsID =''
    var CommandsLst =''
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
	        CommandsID+=","+ document.getElementById ("CommandId"+i).innerHTML;
	       CommandsLst+="#*#"+ document.getElementById ("Command"+i).innerHTML;
	       }
            CommandsID=CommandsID.substring(1,CommandsID.length);
            CommandsLst=CommandsLst.substring(3,CommandsLst.length);
            document.getElementById ("CommandsIdLstTxt").value =CommandsID;
            document.getElementById ("CommandsLstTxt").value =CommandsLst;
	       }
	       else
	       {
	       document.getElementById ("CommandsIdLstTxt").value ='';
	       document.getElementById ("CommandsLstTxt").value ='';
	       }
	      CommandsID ='';
	      CommandsLst ='';
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
                CommandsID +=","+ document.getElementById ("CommandId"+i).innerHTML
                CommandsLst +="#*#"+ document.getElementById ("Command"+i).innerHTML
                
                document.getElementById ("CommandsIdLstTxt").value = CommandsID.substring(1,CommandsID.length)
                document.getElementById ("CommandsLstTxt").value = CommandsLst.substring(3,CommandsLst.length)
            }
	    }
	    CommandsID='';
	    CommandsLst='';
        if(flag==0)
        {
            if(Flag1==0)
            {
                document.getElementById ("CommandsIdLstTxt").value='';
                document.getElementById ("CommandsLstTxt").value='';
            }
            document.getElementById("DocChkAll").checked=false
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
            src.errormessage="Select Project!" ;
            args.IsValid=false;
            Page_IsValid=false;  	
        }
    }

</script>

<script language="javascript">
<!--
    document.getElementById("CodeTxt").focus()

var taMaxLength = 250
		function taLimit() {
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		}

		function taCount() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength*1){
				taObj.value=taObj.value.substring(0,taMaxLength*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Characters")
			}
			}
//-->
</script>

</html>
