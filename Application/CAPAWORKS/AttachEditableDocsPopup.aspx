<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AttachEditableDocsPopup.aspx.vb" Inherits="CAPAWORKS.AttachEditableDocsPopup" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
    <title>Document(s) List</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript" src="../JScript/jquery.min.js"></script>
</head>
<body>
    <form autocomplete="off" id="Form1" method="post" runat="server">
    
    <table class="MainTable">
        <!-- MAIN HEADER -->
        <tr class="MainHead">
            <td>
                Document(s) List
            </td>
        </tr>
        <tr class="MainHead" align="center">
            <td style="background-color:White"> 
                <a href="#" id="AEDHref"  onclick='FnAddNewDocument()'>Add New Document</a>
            </td>
        </tr>
        <tr>
            <td>
                <table class="SubTable" align="center" style="width:100%" >
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
                        <td class="MainTD" colspan="1">
                            <asp:Literal ID="SearchOptionLtrl" runat="server">Search Option</asp:Literal>
                        </td>
                        <td class="MainTD" colspan="3">
                            <asp:RadioButtonList ID="SearchOptionRD" runat="server" RepeatDirection="Horizontal" CssClass="RBList">
                                <asp:ListItem Value="1" Selected="True">Document Code</asp:ListItem>
                                <asp:ListItem Value="2">Document Title</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                      <tr>
                        <td class="MainTD" colspan="1">
                            <asp:Literal ID="Literal1" runat="server">Attached By Me</asp:Literal>
                        </td>
                        <td class="MainTD" >
                            <asp:TextBox ID="NoofDaysTxt" runat="server" MaxLength=3 onkeypress="return IsDigit1(event)" Width="30px" CssClass='TxtCls'></asp:TextBox>                           
                            <asp:Literal ID="Literal3" runat="server">Days Before</asp:Literal>
                        </td>
                        <td class="MainTD" colspan="1">
                            <asp:Literal ID="Literal2" runat="server">This Issue Related Documents</asp:Literal>
                        </td>
                        <td class="MainTD" >
                            <asp:CheckBox ID="ThisIssChk" runat="server" />   
                        </td>
                    </tr>
                    <tr>
                        <td class="MainTD" colspan="2">
                            <asp:Literal ID="FindLrl" runat="server">Find</asp:Literal>
                            <asp:TextBox ID="FindTxt" runat="server" Width="180px" CssClass='TxtCls'>%</asp:TextBox>
                        </td>
                        <td class="MainTD" colspan="2">
                            <asp:Literal ID="FetchSizeLtrl" runat="server">Records Limit</asp:Literal>
                            <asp:TextBox ID="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:TextBox>
                            <asp:Button ID="btnFind" runat="server" Text="Display" class="ButCls"></asp:Button>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <div style="overflow-x:hidden; overflow:auto;height:220px;background-color:gray">
                                <asp:Table ID="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                    CellPadding="0" CssClass="SubTable">
                                </asp:Table>
                            </div>
                        </td>
                    </tr>
                    <tr class="HideRow">
                                <td id="RBVal">
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
                <input class="ButCls" onclick="fnCrGetCode()" type="button" value="Ok" />
                <input class="ButCls" onclick="fnCrCancel()" type="button" value="Cancel" />
            </td>
        </tr>
    </table>
   
    </form>
    <script type="text/javascript">
   
    function FnAddNewDocument() {
        
        var pageURL = "AttachEditableDocReg.aspx?Flag=1&RType=" + <%=Request.QueryString("RType")%>  + "&SourceTypeId=" + <%=Request.QueryString("SourceTypeId")%> + "&DocSourceId=" + <%=Request.QueryString("DocSourceId")%>  + "&IsuTransCode=" + "<%=Request.QueryString("IsuTransCode")%>" 
        var yval = screen.availHeight; var xval = screen.availWidth;
        var features = 'height=' + yval + ',width=' + xval + ',toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=0,left=0';
        var SpWinObj = window.open(pageURL, 'DMSPreview', features);
        if (SpWinObj.opener == null)
             SpWinObj.opener = self;
         SpWinObj.focus();
    }

       
</script>

<script type="text/javascript">
    var DocTypId
    var DocTyp
    
    var RecCount = "<%=TotalRecCount %>"
    function fnCrGetCode() {
    
      var DocIdArr= new Array()
      var UniqueCodeArr = new Array()
      var IndexId;
      for ( var i=0;i<RecCount;i++)
      {
        if (document.getElementById("RBID" + i).checked==true)
        {
           //UniqueCodeArr.push($("#UniqueCode" + i).text());
           UniqueCodeArr.push($("#DocTitle" + i).text());
           DocIdArr.push($("#DocId" + i).text());
          IndexId =$("#DocId" + i).text();
        }
         
      }
        $("#RBVal").val(IndexId)
        if ($("#RBVal").val() == ''||$("#RBVal").val()==undefined) {
            //alert("Select Document Type ")
            alert("Select Document Code ")
            return (false);
        }
               
        opener.Ret_SetEditableDMSPopUp(DocIdArr.join(","),UniqueCodeArr.join("$@$"), "<%=Request.QueryString("UParam")%>")
        window.self.close()

    }
    function fnCrCancel() {
        opener.Ret_SetEditableDMSPopUp('', '',  "<%=Request.QueryString("UParam")%>")
        window.self.close()
    }
    document.oncontextmenu = new Function("return false")
    function fnSpCloseWin() {
        if ($("#RBVal").val() == '') {
           // alert("Select Document Type ")
            alert("Select Unique Code ")
            return (false);
        }
       
        window.self.close()
    }
    
     function RefreshList() {
        document.getElementById("btnFind").click();
        }
        
        
        function IsDigit1(e)  ///Function To check Numeric values
        {
        var KeyIdentifierMap =
        {
        End            : 35,
        Home        : 36,
        Left        : 37,
        Right        : 39,
        'U+00007F'    : 46        // Delete
        }
        if ( !e )e = event ;

        if(e.shiftLeft==true)return false

        var iCode = ( e.keyCode || e.charCode );
        if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
        iCode = KeyIdentifierMap[ e.keyIdentifier ] ;

        return (
        ( iCode >= 48 && iCode <= 57 )        // Numbers
        || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
        || iCode == 8                        // Backspace
        || iCode == 9                        // Tab.
        )
        }
    </script>
</body>
</html>
