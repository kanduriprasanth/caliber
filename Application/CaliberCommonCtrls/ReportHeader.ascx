<%@ Control Language="vb" AutoEventWireup="false" Codebehind="ReportHeader.ascx.vb" Inherits="CaliberCommonCtrls.ReportHeader"  %>
<table width="100%">
	<tr class="HideRow">
		<td class="MainTd"></td>
	</tr>
	<tr>
		<td class="MainTd" align="left" width="5%">&nbsp;&nbsp;<img src="../IMAGES/CompanyLogo.jpg"></td>
		<td align="right"><b><br><%=replace(Session("CompanyAddr"),vbcrlf, "<BR>")%></b></td>
	</tr>
</table>
