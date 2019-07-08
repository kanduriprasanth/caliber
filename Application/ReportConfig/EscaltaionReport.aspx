<%@ Page Language="vb" AutoEventWireup="false" Codebehind="EscaltaionReport.aspx.vb"
    Inherits="ReportConfig.EscaltaionReport" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.text %>
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script type="text/javascript" src="../JScript/jquery.min.js"></script>

    <link href="../Plugins/ColorPicer/colorpicker.css" rel="stylesheet" type="text/css" />

    <script src="../Plugins/ColorPicer/colorpicker.js" type="text/javascript"></script>
    
    <script language="javascript">
    
        function FnOpenHelpDoc()
        {
            var pageURL = "HelpDocEsc.aspx"
            var features = "height=650,width=950,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
    
    </script>
    
    <style type="text/css">
        HelpCss	{	
	        background-image:url(Help-icon.png);
	    }	
    </style>

</head>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="tt" EnableViewState="False" Width="98%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" CssClass="SubHead">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ID="AreaTd" CssClass="MainTD" Font-Bold="true" Width="35%">Area
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="AreaDDL" runat="Server" AutoPostBack="true" Width="200px">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Style="font-weight: bold" Width="35%">Unique Code</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" Width="200px" MaxLength="30" CssClass="UCTxtCls"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DescTd" Style="font-weight: bold" Width="35%">Description</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" Width="200px" MaxLength="250" CssClass="TxtCls"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHeadTD" ID="FilColTd" Style="font-weight: bold" ColumnSpan="2"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="FilRw" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTd" ColumnSpan="2">
                                <asp:Table ID="FilTable" runat="server" HorizontalAlign="center" CellPadding="0"
                                    CssClass="SubTable" CellSpacing="1" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="EscLvlTd" Style="font-weight: bold" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="NoOfEscTxt" style="vertical-align:middle;" runat="server" onkeydown="return FnAllowNumVal()" onblur="FnCheckFilter1()"
                                    AutoPostBack="true" CssClass="TxtCls" MaxLength="1" Width="50px"></asp:TextBox> &nbsp;&nbsp;
                                    <asp:Image ID="HelpImg" style="vertical-align:middle;" runat="server" ImageUrl="Help-icon.png" ToolTip="Click icon for help" onclick="FnOpenHelpDoc()" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTd" ColumnSpan="2" BackColor="white">
                                <asp:Table ID="EscTable" runat="server" HorizontalAlign="left" CellPadding="0" CssClass="SubTable"
                                    CellSpacing="1" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
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
                            <asp:TableCell ColumnSpan="2" HorizontalAlign="left">
                                <asp:Button ID="BtnConferm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" Text="Submit" onMouseOut="this.className='ButCls'">
                                </asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:Button ID="Button1" runat="server" CausesValidation="false"></asp:Button>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ID="TableCell1" ColumnSpan="2">
                    <asp:TextBox ID="FilColDispName" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FilColDBName" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FilColDTypeName" runat="server"></asp:TextBox>
                    <asp:TextBox ID="DisplayColTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IsuFormIdTxt" runat="server"></asp:TextBox>
                    <asp:Button ID="rfrshBtn" CausesValidation="false" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>

    <script language="javascript">
    
    function FnOpenPopUp(i,j)
    {
            var pageURL = "PopUp.aspx?i="+ i + "&j="+j 
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
    }
    
    function FnAssignVal(Op,Val,i,j)
    {
           document.getElementById("Optxt_" + i + '_' + j).value=Op;
           document.getElementById("txt_" + i + '_' + j).value=Val;
           document.getElementById("VLbl_" + i + '_' + j).innerHTML='@Today ' + Op + Val;
    }
       
    
    function FnOpenUsrPopup(i,j,Type)
    {
            var pageURL = "UsrPopUp.aspx?i="+ i + "&j="+j + "&Type=" + 0
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
    }
    
    function FnAssignUsrVal(Id,Desc,i,j)
    {
           document.getElementById("Optxt_" + i + '_' + j).value=Desc;
           document.getElementById("txt_" + i + '_' + j).value=Id;
           document.getElementById("VLbl_" + i + '_' + j).innerHTML=Desc;
    }
    
    function FnOpenUsrGrpPopup(i,j,Type)
    {
            var pageURL = "UsrGrpPopUp.aspx?i="+ i + "&j="+j + "&Type=" + 0
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
    }
    
    function FnAssignUsrGrpVal(Id,Desc,i,j)
    {
           document.getElementById("Optxt_" + i + '_' + j).value=Desc;
           document.getElementById("txt_" + i + '_' + j).value=Id;
           document.getElementById("VLbl_" + i + '_' + j).innerHTML=Desc;
    }
    
    
    
    function FnColorpick(i,j){

 $('.SubDivCss').ColorPicker({
        color: '#cc00ff',
        onShow: function (colpkr) {
            $(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            $(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb, ele) {
      
            var Cnt = ele.id.replace("ColLab", "")
            $("#ColorTxt_" + Cnt).val('#' + hex);
            $("#" + Cnt + "ColLab").css('backgroundColor', '#' + hex);
        },
        onSubmit: function (hsb, hex, rgb, ele) {
            $(ele).ColorPickerHide();
        }
    });
    }
    
        function FnAllowNumVal()
        {
            var e =event.keyCode
            if(event.ctrlLeft == true){return false}
            if(event.shiftLeft == true){return false}
            else if((e ==8)||(e ==46)||(e ==37)||(e ==39)||(e ==9)||(e ==16)||(e>=96 && e <= 105)) {return true}
            else if(e ==32){return false}
            else if(isNaN(String.fromCharCode(e))) //Validates for Key Data
            {return false}
            
            if(e==48)
            {
                alert('Enter greater than zero numeric value');
                document.getElementById("NoOfEscTxt").value="";
                return false
            }
            
        }
    
        function FnCheckFilter(src,args)
        {
            args.IsValid=true;
            Page_IsValid=true;
        
            document.getElementById("FilColDispName").value="";
            document.getElementById("FilColDBName").value="";
            document.getElementById("FilColDTypeName").value ="";
            document.getElementById("DisplayColTxt").value="";
            var ToTalColNo=<%=ToTalColNo%>
            for(var i=0; i<ToTalColNo-1; i++)
            {
                if(document.getElementById("DispChk_" + i).checked==true)
                {
                    document.getElementById("DisplayColTxt").value +="," + document.getElementById("ColName_" + i).innerHTML;
                }
            }
            if(document.getElementById("DisplayColTxt").value=="")
            {
                args.IsValid=false;
                Page_IsValid=false;
                src.errormessage='Select at least one Display Column';
                return false;
            }
        }
        
        function FnCheckFilter1()
        {
        
            document.getElementById("FilColDispName").value="";
            document.getElementById("FilColDBName").value="";
            document.getElementById("FilColDTypeName").value ="";
            document.getElementById("DisplayColTxt").value="";
            var ToTalColNo=<%=ToTalColNo%>
            for(var i=0; i<ToTalColNo-1; i++)
            {
                if(document.getElementById("DispChk_" + i).checked==true)
                {
                    document.getElementById("DisplayColTxt").value +="," + document.getElementById("ColName_" + i).innerHTML;
                }
            }
            if(document.getElementById("DisplayColTxt").value=="" && document.getElementById("NoOfEscTxt").value!="")
            {
                alert('Select at least one Display Column');
                document.getElementById("NoOfEscTxt").value="";
                return false;
            }
        }
        
        function FnDisplayCheck()
        {
            var ToTalColNo=<%=ToTalColNo%>
            var flag=false;
            for(var i=0; i<ToTalColNo-1; i++)
            {
                if(document.getElementById("DispChk_" + i).checked==true)
                {
                    flag=true;
                    break;
                }
            }
            if(flag==false)
            {
                document.getElementById("DisplayColTxt").value=""
                document.getElementById("NoOfEscTxt").value=""
                document.getElementById("rfrshBtn").click();
            }
        }
        
        function FnFilterCheck()
        {
            var ToTalColNo=<%=ToTalColNo%>
            var flag=false;
            for(var i=0; i<ToTalColNo-1; i++)
            {
                if(document.getElementById("FilChk_" + i).checked==true)
                {
                    flag=true;
                    break;
                }
            }
            if(flag==false)
            {
                document.getElementById("FilColDispName").value=""
                document.getElementById("NoOfEscTxt").value=""
                document.getElementById("rfrshBtn").click();
            }
        }
        
        function fnOpenUgpPopUp(icnt,jcnt)
	    {
	        var pageURL = "UgpPopup.aspx?Type=1&icnt=" + icnt + "&jcnt=" + jcnt
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
	    }
	    
	    function fnCrSetUgpCode(BaseId,UgpDesc,icnt,jcnt)
        {
             document.getElementById("UgpLbl_" + icnt + "_" + jcnt).innerHTML=UgpDesc
             document.getElementById("UgpIdTxt_" + icnt + "_" + jcnt).value=BaseId
             document.getElementById("UgpTxt_" + icnt + "_" + jcnt).value=UgpDesc
        }
        
    </script>

</body>
</html>
