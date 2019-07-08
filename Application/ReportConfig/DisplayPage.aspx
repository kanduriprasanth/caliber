<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DisplayPage.aspx.vb" Inherits="ReportConfig.DisplayPage" %>

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
                            <asp:TableCell CssClass="MainTD" ID="AreaTd" Style="font-weight: bold" Width="35%">Area</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="AreaDDL" runat=server AutoPostBack=true Width="250px"></asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="FilRw" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTd" ColumnSpan="2">
                                <asp:Table ID="DIspTable" runat="server" HorizontalAlign="center" CellPadding="0"
                                    CssClass="SubTable" CellSpacing="1" Width="100%">
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
                                <input type=button id="Ok" onclick="FnOk()" class='ButCls' value="Ok" /> 
                                <input type=button id="Cancel" onclick="FnCancel()" class='ButCls' value="Cancel" />
                                <asp:TextBox ID="Txt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>

    <script language="javascript">
    
        function FnDisplayCheck()
        {
            var ToatlCnt=<%=ToatlCnt%>
            var DispColArr=new Array();
            var DispColDBArr=new Array();
            var DispColTabArr=new Array();
            var DispColDTypeArr=new Array();
            var AreaArr=new Array();
            
            for(var i=0; i<ToatlCnt-1; i++)
            {
                if(document.getElementById("DispChk_" + i).checked==true)
                {
                    DispColArr.push(document.getElementById("ColName_" + i).innerHTML);
                    DispColDBArr.push(document.getElementById("ColDBName_" + i).innerHTML);
                    DispColTabArr.push(document.getElementById("ColTabName_" + i).innerHTML);
                    DispColDTypeArr.push(document.getElementById("ColDType_" + i).innerHTML);
                    AreaArr.push(document.getElementById("Area_" + i).innerHTML);
                }
            }
            
            var DispCol=DispColArr.join(",")
            var DispColDB=DispColDBArr.join(",")
            var DispColTab=DispColTabArr.join(",")
            var DispColDType=DispColDTypeArr.join(",")
            var AreaVal=AreaArr.join(",")
            
            document.getElementById("Txt").value=DispCol;
            
            opener.FnAssignFnOpenDispVal(DispCol,DispColDB,DispColTab,DispColDType,AreaVal,"<%=AreaDesc%>",<%=ival%>);
        }
        
        function FnOk()
        {
              if(document.getElementById("AreaDDL").value == "")
	          {
	            alert("Select Area")
                return(false);
              } 
              if(document.getElementById("Txt").value == "")
	          {
	            alert("Select At Least One Display Column")
                return(false);
              }   
		    window.self.close()
        }
        
        function FnCancel()
        {
            opener.FnAssignFnOpenDispVal('','','','','','','')
		    window.self.close()
        }
   
        function fnCheckAll()
        {
    	    var isAllChk=document.getElementById("SelAllchk").checked//document.Form1.DocChkAll.checked
		    var Cnt=<%=ToatlCnt%>;

           for(var i=0;i<Cnt;i++)
           {
                document.getElementById("DispChk_"+i).checked=isAllChk;
           }
           FnDisplayCheck()
        }
    
    </script>

</body>
</html>

