<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ItemSelection.ascx.vb" Inherits="Admin.ItemSelection" %>
<TABLE style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; WIDTH: 100%; BORDER-BOTTOM: medium none"
	cellSpacing="0" align="center">
	<tr class="tdhead">
		<TD class="tdbody" width="5%" height="21">&nbsp;</TD>
		<td class="thead1" align="center" colSpan="3"><asp:label id="Title" Width="100%" runat="server"></asp:label></td>
		<TD class="tdbody" width="5%" height="21">&nbsp;</TD>
	</tr>
	<TR>
		<TD class="tdbody" width="5%" height="21">&nbsp;</TD>
		<TD class="tdbody" align="center" width="41%" height="21"><asp:label id="Label3" runat="server">Select From</asp:label></TD>
		<TD class="tdbody" width="51" height="21"></TD>
		<TD class="tdbody" align="center" width="41%" height="21"><asp:label id="Label2" runat="server">Selected</asp:label></TD>
		<TD width="5%" height="21">&nbsp;</TD>
	</TR>
	<TR>
		<td class="tdbody" width="5%">&nbsp;</td>
		<TD class="tdbody" align="center" width="40%"><asp:listbox id="ItemsAvailable" Width="100%" runat="server" CssClass="txtcls" SelectionMode="Multiple"
				AutoPostBack="True" Rows="5"></asp:listbox></TD>
		<TD class="tdbody" align="center" width="51"><asp:button id="MoveRightAll" Width="85%" runat="server" CssClass="bmout" Height="65%" CausesValidation="False"  onmouseover="className='BMover'" onmouseout="className='BMout'" 
				Font-Names="Garamond" Text=">>" Font-Bold="True"></asp:button><asp:button id="MoveRight" Width="85%" runat="server" CssClass="bmout" Height="65%" CausesValidation="False"  onmouseover="className='BMover'" onmouseout="className='BMout'" 
				Font-Names="Garamond" Text=">" Font-Bold="True"></asp:button><asp:button id="MoveLeft" Width="85%" runat="server" CssClass="bmout" Height="65%" CausesValidation="False"  onmouseover="className='BMover'" onmouseout="className='BMout'" 
				Font-Names="Garamond" Text="<" Font-Bold="True"></asp:button><asp:button id="MoveLeftAll" Width="85%" runat="server" CssClass="bmout" Height="65%" CausesValidation="False" onmouseover="className='BMover'" onmouseout="className='BMout'" 
				Font-Names="Garamond" Text="<<" Font-Bold="True"></asp:button></TD>
		<TD class="tdbody" width="40%"><asp:listbox id="ItemsSelected" Width="100%" runat="server" CssClass="txtcls" AutoPostBack="True"
				Rows="5"></asp:listbox></TD>
		<TD class="tdbody" width="5%">&nbsp;</TD>
	</TR>
</TABLE>
