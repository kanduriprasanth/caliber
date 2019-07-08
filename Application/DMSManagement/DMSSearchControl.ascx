<%@ Control Language="C#" AutoEventWireup="true" Codebehind="DMSSearchControl.ascx.cs"
    Inherits="DMSManagement.DMSSearchControl" %>
<asp:Table ID="DMSSearTbl" runat="server" CssClass="SubTable" CellPadding="0" CellSpacing="1"
    Width="100%">
    <asp:TableRow>
        <asp:TableCell ColumnSpan="3">
            <asp:Table ID="SearchTbl" runat="server" CssClass="SubTable" CellPadding="0" CellSpacing="1"
                Width="100%">
            </asp:Table>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow ID="RepositoryTypeTr" runat="server" CssClass="HideRow">
        <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="RepositoryTypeTd" Width="220px">
        Document Repository Type</asp:TableCell>
        <asp:TableCell CssClass="MainTD" ColumnSpan =2>
            <asp:DropDownList ID="RepositoryTypeDdl" runat="server">
            </asp:DropDownList>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Literal ID="PgNoLtrl" runat="server">Page No.</asp:Literal>
            <asp:TextBox ID="PgNoTxt" CssClass="TxtCls" runat="server" AutoPostBack="False" Width="50px"
                MaxLength="5">1</asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:Literal ID="FetchSizeLtrl" runat="server">Records Limit</asp:Literal>
            <asp:TextBox ID="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:TextBox>
        </asp:TableCell>
        <asp:TableCell HorizontalAlign="Right">
            <asp:Button ID="Button1" runat="server" Text="Display" OnClick="Button1_Click" CausesValidation="false"
                onMouseOver="this.className='ButOCls'" Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" />
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell ColumnSpan="3">
            <div style="overflow-x: hidden; overflow-y: auto; height: 200px; background-color: gray">
                <asp:Table ID="DispTbl" runat="server" CssClass="SubTable" CellPadding="0" CellSpacing="1"
                    Width="100%">
                </asp:Table>
            </div>
        </asp:TableCell>
    </asp:TableRow>
</asp:Table>
<input type="Text" id="SelTextTxt" class="HideRow" />
<input type="Text" id="SelValTxt" class="HideRow" />

<script language="javascript">
  $(':checkbox').click(function(){
    var DocIdArr   = [];
    var DocCodeArr = [];
    var DocDescArr = [];
    $(':checkbox:checked[id^=DMSRBID]').each(function(i){
        var RCnt = $(this).val()
      DocIdArr[i]   = $("#DocId"   + RCnt).text();
      DocCodeArr[i] = $("#DocCode" + RCnt).text();
      DocDescArr[i] = $("#DocDesc" + RCnt).text();
    });
    $("#SelValTxt").val(DocIdArr.join(","));
    $("#SelTextTxt").val(DocCodeArr.join(","));
    opener.Ret_OpenDMSPopUp(DocIdArr.join(","),DocCodeArr.join("$@$"),DocDescArr.join("$@$"),"<%=Request.QueryString["UParam"]%>")
  });
    
</script>

