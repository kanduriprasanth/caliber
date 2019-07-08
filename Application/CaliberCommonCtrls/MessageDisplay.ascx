<%@ Control Language="vb" AutoEventWireup="false" Codebehind="MessageDisplay.ascx.vb" Inherits="CaliberCommonCtrls.MessageDisplay"  %>
<LINK href="../TRIMS.CSS" rel="stylesheet">
<script language="javascript">
<!--

function GoBack(){

window.history .back () ;
				 
				
			}	
//-->
</script>

		<%--Added for refreshing the screen of Modification and Status change Confirmation message--%>
		<script language=javascript >		
		setTimeout("PageNavigate()",3000)
		
		function PageNavigate()
		{
		  var Message="<%= Session("MessageString") %>"
		   if ( Message.indexOf("AType=M") !=-1 || Message.indexOf("AType=C") !=-1 )
		     location.reload("../BodyHome.aspx")
		}
		</script>
<br>
<br>
<TABLE class="maintable" id="Table1" cellSpacing="0" cellpadding =0 style="HEIGHT:150px; width:520px"
	align="center">
	<tr class="MainHead">
		<td align="left" colSpan="4">&nbsp;<asp:label id="Label1" runat="server"  Font-Names="Verdana" Font-Size="15px" ForeColor="black">&nbsp;Caliber QAMS</asp:label>&nbsp;<asp:label id="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="12px"
				ForeColor="black"></asp:label></td>
	</tr>
	<TR class="MainTD"   >
		<TD align="left" width="16%" >&nbsp;
			<asp:image id="img1" BorderStyle="None" Runat="server"></asp:image></TD>
		<TD align="left" width="84%"><asp:label id="lblMessage" runat="server"></asp:label>&nbsp;&nbsp;</TD>
	</TR>
	<tr height="25"  class="MainFoot">
		<TD class="maintd1" colSpan="4">
			<div align="left">&nbsp;&nbsp; <input type="button" id="Back1" runat="server" onclick="GoBack()" value="Back" class="butcls">
				&nbsp;
				<asp:Button id="Button2" runat="server" Text="Home" Width="55px" CssClass="butcls"></asp:Button>&nbsp;
				<asp:Button id="NextPage" runat="server" Text="Next" Visible="False" Width="55px" CssClass="butcls" OnClientClick="GoBack()"></asp:Button></div>
		</TD>
	</tr>
</TABLE>
