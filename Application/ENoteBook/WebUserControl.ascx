<%@ Control Language="vb" AutoEventWireup="false" Codebehind="WebUserControl.ascx.vb"
    Inherits="ENoteBook.WebUserControl" %>
<asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
    HorizontalAlign="center" ID="SecTable">
    <asp:TableRow CssClass="HideRow" Height="0">
        <asp:TableCell></asp:TableCell>
        <asp:TableCell></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell CssClass="SubHead"  Width="200px">
            <asp:Literal ID="SectionTitleLtrl" runat="server"></asp:Literal>
        </asp:TableCell>
        <asp:TableCell CssClass="SubHead" HorizontalAlign="Right">
            <asp:Button ID="btnRemove" CausesValidation=false   runat="server" Text="Remove" Class='ButCls' onMouseOver="this.className='ButOCls'"
                onMouseOut="this.className='ButCls'" />
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell CssClass="MainTD"  Style="font-weight: bold;"  ID="SecDescTd"  Width="200px"></asp:TableCell>
        <asp:TableCell CssClass="MainTD">
            <asp:TextBox ID="SecDescTxt" runat="server" CssClass="TxtCls" MaxLength="25" Width="200px"
                AccessKey="D" TabIndex="1"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell CssClass="MainTD" Style="font-weight: bold;"  ID="SecCodeTd"  Width="200px"></asp:TableCell>
        <asp:TableCell CssClass="MainTD">
            <asp:TextBox ID="SecCodeTxt" runat="server" CssClass="TxtCls" MaxLength="25" Width="200px"
                AccessKey="D" TabIndex="1"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell CssClass="MainTD" Style="font-weight: bold;"  ID="HeaderRBtnTd"  Width="200px"></asp:TableCell>
        <asp:TableCell CssClass="MainTD">
            <asp:RadioButtonList ID="HeaderRBtn" CssClass="RBList" onclick="SecHeaderSelVisFn(this.id)"
                runat="server" RepeatDirection="Horizontal">
            </asp:RadioButtonList>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow ID="HeaderTr" CssClass="HideRow">
        <asp:TableCell ID="HeaderTd" Style="font-weight: bold;"   Width="200px"></asp:TableCell>
        <asp:TableCell CssClass="MainTD">
            <asp:TextBox ID="HeaderTxt"  contenteditable="false" runat="server" CssClass="TxtCls"
                MaxLength="25" Width="200px" AccessKey="D" TabIndex="1"></asp:TextBox>
            <input type="button" runat="server" CausesValidation =false id="HeaderPopupBtn" class="RsnPUP" onclick="SectionHFTPopUpFn(this.id,'Header')" />
            <asp:TextBox ID="HeaderIdTxt" contenteditable="false" runat="server" CssClass="HideRow"></asp:TextBox>
            <asp:TextBox ID="HeaderAulIdTxt" contenteditable="false" runat="server" CssClass="HideRow"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell ID="FooterRBtnTd" Style="font-weight: bold;"  CssClass="MainTD"  Width="200px"></asp:TableCell>
        <asp:TableCell CssClass="MainTD">
            <asp:RadioButtonList ID="FooterRBtn" CssClass="RBList" onclick="SecFooterSelVisFn(this.id)"
                runat="server" RepeatDirection="Horizontal">
            </asp:RadioButtonList>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow ID="FooterTr" CssClass="HideRow">
        <asp:TableCell ID="FooterTd" Style="font-weight: bold;"   Width="200px"></asp:TableCell>
        <asp:TableCell CssClass="MainTD">
            <asp:TextBox ID="FooterTxt" contenteditable="false" runat="server" CssClass="TxtCls"
                MaxLength="25" Width="200px" AccessKey="D" TabIndex="1"></asp:TextBox>
            <input type="button" id="FooterPopupBtn" runat="server" class="RsnPUP" onclick="SectionHFTPopUpFn(this.id,'Footer')" />
            <asp:TextBox ID="FooterIdTxt" contenteditable="false" runat="server" CssClass="HideRow"></asp:TextBox>
            <asp:TextBox ID="FooterAulIdTxt" contenteditable="false" runat="server" CssClass="HideRow"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow CssClass ="HideRow">
        <asp:TableCell></asp:TableCell>
        <asp:TableCell CssClass="MainTD">
            <asp:TextBox ID="SectionIdTxt" runat="server" CssClass="TxtCls" MaxLength="25" Width="200px"
                AccessKey="D" TabIndex="1" Text ="0"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    
</asp:Table>
