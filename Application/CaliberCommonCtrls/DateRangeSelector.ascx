<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="DateRangeSelector.ascx.vb" Inherits="CaliberCommonCtrls.DateRangeSelector" %>
<tr  width="100%">
				<td Class="MainTD" runat="server" ID="Tablecell1">Date Range</td>
				<td Class="MainTD" runat="server" ID="Tablecell2">
					<asp:DropDownList id="DateRCHDDl" Runat="server" onChange="DateRangeChange(this);" >
						<asp:ListItem Value="1" Selected="false">This Month</asp:ListItem>
						<asp:ListItem Value="2" Selected="false">This Calendar Year</asp:ListItem>
						<asp:ListItem Value="3" Selected="false">Since 30 Days ago</asp:ListItem>
						<asp:ListItem Value="4" Selected="false">Since 60 Days ago</asp:ListItem>
						<asp:ListItem Value="5" Selected="false">Since 90 Days ago</asp:ListItem>
						<asp:ListItem Value="6" Selected="false">Since 365 Days ago</asp:ListItem>
						<asp:ListItem Value="7" Selected="false">Last Calendar Year</asp:ListItem>
						<asp:ListItem Value="8" Selected="false">Last Fiscal Year</asp:ListItem>
						<asp:ListItem Value="9" Selected="false">This Fiscal Year</asp:ListItem>
						<asp:ListItem Value="10" Selected="false">This Week Plus Next Week</asp:ListItem>
					</asp:DropDownList>
				</td>
			</tr>