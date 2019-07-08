<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="ItemMaster.Trn" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
    
    <script language="javascript" src="../JScript/jquery.min.js"></script>

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'
	function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
	}

function RefreshPage()
{
    Form1.submit();
}

//Restricting Copy paste
function noCopyKey(e) {
    var forbiddenKeys = new Array('c', 'x', 'v');
    var keyCode = (e.keyCode) ? e.keyCode : e.which;
    var isCtrl;


    if (window.event)
        isCtrl = e.ctrlKey
    else
        isCtrl = (window.Event) ? ((e.modifiers & Event.CTRL_MASK) == Event.CTRL_MASK) : false;


    if (isCtrl) {
        for (i = 0; i < forbiddenKeys.length; i++) {
            if (forbiddenKeys[i] == String.fromCharCode(keyCode).toLowerCase()) {
                return false;
            }
        }
    }
}

function noCopyMouse(e) {
    var isRight = (e.button) ? (e.button == 2) : (e.which == 3);

    if (isRight) {
        return false;
    }
}
//-----------------

    function IsDigit(e)  ///Function To check Numeric values And Allow , Also
    {
        var KeyIdentifierMap =
                {
                    End: 35,
                    Home: 36,
                    Left: 37,
                    Right: 39,
                    'U+00007F': 46        // Delete
                }
        if (!e)
            e = event;

        if (e.altKey || e.ctrlKey || e.shiftKey)
            return false;

        var iCode = (e.keyCode || e.charCode);

        if (!iCode && e.keyIdentifier && (e.keyIdentifier in KeyIdentifierMap))
            iCode = KeyIdentifierMap[e.keyIdentifier];
        if (iCode == 39) return false;
        return (
                    (iCode >= 48 && iCode <= 57)        // Numbers
                    || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
                    || iCode == 8                        // Backspace
                    || iCode == 44                        // Delete
                    || iCode == 9                        // Tab.
                )
    }

//To Bind Item Category
	function FnBindCategory() {
		if (document.getElementById("ItemTpeDDL").value != "")
		{
		    document.getElementById("ItemTypeIdTxt").value = document.getElementById("ItemTpeDDL").value
		    document.getElementById("TmpSubmit").click();
		}
		else
		{
		    document.getElementById("TypCatTr").className = "HideRow"
		}
	}
//---------------------
	//-->

	//Restricting Special Characters

	function RestrictSpecialChar(src, args) {
	    args.IsValid = true;
	    Page_IsValid = true;
	    var exp = document.getElementById("DescTxt").value

	    //Below line will have the special characters that is not allowed you can add if you want more for some characters you need to add escape sequence
	    var r = new RegExp("[,$#*+'^&!/[]", "g");

	    if (exp.match(r) != null) {
	        args.IsValid = false;
	        Page_IsValid = false;
	        return false;
	    }
	}
	function RestrictSpecialCharacters(src, args) {
	    args.IsValid = true;
	    Page_IsValid = true;
	    var exp = document.getElementById("CodeTxt").value

	    //Below line will have the special characters that is not allowed you can add if you want more for some characters you need to add escape sequence
	    var r = new RegExp("[,$#*+'^&!/[]", "g");

	    if (exp.match(r) != null) {
	        args.IsValid = false;
	        Page_IsValid = false;
	        return false;
	    }
	}

    </script>
    
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
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
                            <asp:TableCell CssClass="MainTD" ID="ItemTypeTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="ItemTpeDDL" runat="server" Width="200px" onchange="FnBindCategory()" ></asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" ID="TypCatTr">
                            <asp:TableCell CssClass="MainTD" ID="TypeCategoryTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TypCatValTd">
                                <%--<asp:TextBox ID="TypCatTxt" runat="server" CssClass="UCTxtCls" MaxLength="250" Width="200px" Enabled="false"></asp:TextBox>--%>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DescTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" MaxLength="250"  Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls"  MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ItemDescTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="ItemDescTxt" runat="server" AccessKey="D" CssClass="TxtCls"  MaxLength="250"  TabIndex="3" Width="200px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD">
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
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="">
                                </asp:Button>
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
                    <asp:TextBox ID="ItemTypeIdTxt" runat="server"></asp:TextBox>
                    <asp:Button ID="TmpSubmit" runat="server" CausesValidation="false" UseSubmitBehavior="false"/>
                </asp:TableCell>
                <asp:TableCell>
                         <input id="reloadValue" type="hidden" name="reloadValue" value="" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--
document.getElementById('CodeTxt').focus()

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

  <script type="text/javascript">
       jQuery(document).ready(function()
        {
                var d = new Date();
                d = d.getTime();
                if (jQuery('#reloadValue').val().length == 0)
                {
                        jQuery('#reloadValue').val(d);
                        jQuery('body').show();
                }
                else
                {
                        jQuery('#reloadValue').val('');
                        location.reload();
                }
        });
</script>

</html>
