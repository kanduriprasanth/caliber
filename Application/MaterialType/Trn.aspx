<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="MaterialType.Trn" %>

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

    <script language="javascript">
    
	RequestPrefix='<%=me.ClientID%>'
	function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
	}
	
//------------
 function noCopyMouse(e) {
        var isRight = (e.button) ? (e.button == 2) : (e.which == 3);
       
        if(isRight) {
            return false;
        }
    }

 function IsDigit2(e,Value)  ///Function To check Numeric values onblur Event if copied and paste Alphabets
    {
        FnLengthChk()
        FnLengthChk2()
        var AvailableVal = window.event.srcElement.value;   
        if(isNaN(AvailableVal)==true || AvailableVal=='')
        window.event.srcElement.value="";
    }
   


    function noCopyKey(e) {
        var forbiddenKeys = new Array('c','x','v');
        var keyCode = (e.keyCode) ? e.keyCode : e.which;
        var isCtrl;


        if(window.event)
            isCtrl = e.ctrlKey
        else
            isCtrl = (window.Event) ? ((e.modifiers & Event.CTRL_MASK) == Event.CTRL_MASK) : false;
   

        if(isCtrl) {
            for(i = 0; i < forbiddenKeys.length; i++) {
                if(forbiddenKeys[i] == String.fromCharCode(keyCode).toLowerCase()) {
                    return false;
                }
            }
        }
     
    }
   
   //for Requalification Frequency---
       function IsDigit1(e)  ///Function To check Numeric values
       {
            if(isNaN(document.getElementById("RequalTxt").value))
            {
                document.getElementById("RequalTxt").value = ""
                return false
            }
        if(e.shiftKey ==true)
        return false;
        var KeyIdentifierMap =
        {
            End            : 35,
            Home        : 36,
            Left        : 37,
            Right        : 39,
            'U+00007F'    : 46        // Delete
        }
        if ( !e )
        e = event ;

        var AvailableVal = window.event.srcElement.value.indexOf(".")
        var iCode = ( e.keyCode || e.charCode );

        if((iCode == 46) && (AvailableVal != -1))
        return false;
        if((iCode == 46) && (window.event.srcElement.value == ""))
        return false;

        if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
            iCode = KeyIdentifierMap[ e.keyIdentifier ] ;
        if(iCode ==39 ) return false;
        return (
            ( iCode >= 48 && iCode <= 57 )        // Numbers
            || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
            || iCode == 8                        // Backspace
            || iCode == 46                        // Delete
            || iCode == 9                        // Tab
            )
 
    }
//------------	
    
//for Tolerance Period---
       function IsDigitTol1(e)  ///Function To check Numeric values
       {
            if(isNaN(document.getElementById("TolTxt").value))
            {
                document.getElementById("TolTxt").value = ""
                return false
            }
        if(e.shiftKey ==true)
        return false;
        var KeyIdentifierMap =
        {
            End            : 35,
            Home        : 36,
            Left        : 37,
            Right        : 39,
            'U+00007F'    : 46        // Delete
        }
        if ( !e )
        e = event ;

        var AvailableVal = window.event.srcElement.value.indexOf(".")
        var iCode = ( e.keyCode || e.charCode );

        if((iCode == 46) && (AvailableVal != -1))
        return false;
        if((iCode == 46) && (window.event.srcElement.value == ""))
        return false;

        if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
            iCode = KeyIdentifierMap[ e.keyIdentifier ] ;
        if(iCode ==39 ) return false;
        return (
            ( iCode >= 48 && iCode <= 57 )        // Numbers
            || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
            || iCode == 8                        // Backspace
            || iCode == 46                        // Delete
            || iCode == 9                        // Tab
            )
 
    }
//-----------------------

    function CustomValidFreq(src,args)
    {
        if(document.getElementById("TolTxt").value == "" || parseInt(document.getElementById("TolTxt").value)==0)
        {
            args.IsValid=true;
        }
        else
        {
            if(document.getElementById("TolFreqDDL").value != "")
            {
                args.IsValid=true;
            }
            else
            {
                args.IsValid=false;
            }
        }
    }

			
function FnLengthChk()
{
    if(document.getElementById("FreqDDL").value==3)
    {
        if(parseInt(document.getElementById("RequalTxt").value)>20)
        {
            alert('Maximum re-qualification Frequency for year type frequency is 20');
            document.getElementById("RequalTxt").value="";
        }
    }
    
    if(document.getElementById("FreqDDL").value==2)
    {
        if(parseInt(document.getElementById("RequalTxt").value)>240)
        {
            alert('Maximum re-qualification Frequency for month type frequency is 240');
            document.getElementById("RequalTxt").value="";
        }
    }
    
    if(document.getElementById("FreqDDL").value==1)
    {
        if(parseInt(document.getElementById("RequalTxt").value)>7000)
        {
            alert('Maximum re-qualification Frequency for day type frequency is 7000');
            document.getElementById("RequalTxt").value="";
        }
    }
}

//Added by P Suresh  -Start-
function FnLengthChk2()
{
    if(document.getElementById("TolFreqDDL").value==3)
    {
        if(parseInt(document.getElementById("TolTxt").value)>20)
        {
            alert('Maximum Tolerance period for year type frequency is 20');
            document.getElementById("TolTxt").value="";
        }
    }
}

function CustomValid2(src,args)
{
    if(document.getElementById("TolFreqDDL").value==3)
    {
        if(parseInt(document.getElementById("TolTxt").value)>20)
        {
            document.getElementById("TolTxt").value="";
            args.IsValid=false;
        }
    }
}

function CheckNotZero(src,args)
{
    if(parseInt(document.getElementById("TolTxt").value)==0)
    {
            //document.getElementById("TolTxt").value="";
            args.IsValid=false;
    }
}

function TolPeriodchk(src,args)
{
    if((document.getElementById("TolFreqDDL").value==1 || document.getElementById("TolFreqDDL").value==2 || document.getElementById("TolFreqDDL").value==3) && document.getElementById("TolTxt").value=="")
    {
            args.IsValid=false;
    }
}
//Added by P Suresh  -END-

function CustomValidYear(src,args)
{
    if(document.getElementById("FreqDDL").value==3)
    {
        if(parseInt(document.getElementById("RequalTxt").value)>20)
        {
            document.getElementById("RequalTxt").value="";
            args.IsValid=false;
        }
    }
}

function CustomValidMnth(src,args)
{
    if(document.getElementById("FreqDDL").value==2)
    {
        if(parseInt(document.getElementById("RequalTxt").value)>240)
        {
            document.getElementById("RequalTxt").value="";
            args.IsValid=false;
        }
    }
}

function CustomValidDay(src,args)
{
    if(document.getElementById("FreqDDL").value==1)
    {
        if(parseInt(document.getElementById("RequalTxt").value)>7000)
        {
            document.getElementById("RequalTxt").value="";
            args.IsValid=false;
        }
    }
}

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
                            <asp:TableCell CssClass="SubHead" ColumnSpan="5">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CatTD" ColumnSpan="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="4">
                                <asp:RadioButtonList ID="CatRBL" runat="server" RepeatDirection="Horizontal" CssClass="RBList">
                                    <asp:ListItem Value=1>Material</asp:ListItem>
                                    <asp:ListItem Value=2>Service</asp:ListItem>
                                    <asp:ListItem Value=3>Product</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" ColumnSpan="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="4">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls"  MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeAbbTd" ColumnSpan="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="4">
                                <asp:TextBox ID="CodeAbbTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    AccessKey="a" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DescTd" ColumnSpan="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="4">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ReQualTd" ColumnSpan="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1" Width="200px">
                                <asp:TextBox ID="RequalTxt" runat="server" AccessKey="D"  CssClass="TxtCls"  MaxLength="4" onblur='IsDigit2(event,0);' onkeypress="return IsDigit1(event)" onMouseOut="return IsDigit1(event)" onmousedown='return noCopyMouse(event);' onkeydown='return noCopyKey(event);' TabIndex="3" Width="50px"></asp:TextBox>&nbsp;&nbsp;
                                <asp:DropDownList ID="FreqDDL" runat="server" Width="100px" TabIndex="4">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="1">Day(s)</asp:ListItem>
                                    <asp:ListItem Value="2">Month(s)</asp:ListItem>
                                    <asp:ListItem Value="3">Year(s)</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                             <%--Added by P Suresh -Start---%>
                            <asp:TableCell CssClass="MainTD" ID="TolTd" ColumnSpan="1" Width="120px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TolSignTd" ColumnSpan="1" HorizontalAlign="Center"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:TextBox ID="TolTxt" runat="server" AccessKey="D" CssClass="TxtCls"  MaxLength="2"  onblur='IsDigit2(event,0);' onkeypress="return IsDigitTol1(event)" onMouseOut="return IsDigitTol1(event)" onmousedown='return noCopyMouse(event);' onkeydown='return noCopyKey(event);' TabIndex="3" Width="50px"></asp:TextBox>&nbsp;&nbsp;
                                <asp:DropDownList ID="TolFreqDDL" runat="server" Width="100px" TabIndex="4">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="1">Day(s)</asp:ListItem>
                                    <asp:ListItem Value="2">Month(s)</asp:ListItem>
                                    <asp:ListItem Value="3">Year(s)</asp:ListItem>
                                </asp:DropDownList>                             
                            </asp:TableCell>
                        </asp:TableRow>
                         <%--Added by P Suresh -END---%>
                        <asp:TableRow CssClass="HideRow">
                        <asp:TableCell CssClass="MainTD" ID="GradeTd" ColumnSpan="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="4">
                                <asp:TextBox ID="GradeTxt" runat="server" CssClass="TxtCls" Text="--" MaxLength="250" Width="200px" AccessKey="D" TabIndex="5"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="4">
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
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

    <script language="javascript">

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
						
</script>

</html>
