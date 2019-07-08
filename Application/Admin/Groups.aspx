<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Groups.aspx.vb" Inherits="Admin.Groups" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Caliber QAMS</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		
		<link rel="stylesheet" href="Custom.css">
	</HEAD>
	<body BGCOLOR="#8f8f8f" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE WIDTH="550" HEIGHT="400" BGCOLOR="#ffffff" ALIGN="center" BORDER="0" CELLSPACING="0"
				CELLPADDING="0" STYLE="BORDER-RIGHT:#000000 2px solid; PADDING-RIGHT:10pt; BORDER-TOP:#000000 0px solid; PADDING-LEFT:10pt; BORDER-LEFT:#000000 0px solid; BORDER-BOTTOM:#000000 2px solid">
				<TR height="75">
					<TD Colspan="2" align="center">
						<SPAN class="RptHead">Groups</SPAN><HR size="1">
					</TD>					
				</TR>
				<TR>
					<TD valign="top" width="50%">
						<A style='WIDTH:220px' Href="JavaScript:window.navigate('TGroupReg.aspx')" class="RptLink"
							onMouseOver="className='RptOLink'" onMouseOut="className='RptLink'">Register Group</A><BR>
						<BR>
						<A style='WIDTH:220px' Href="JavaScript:window.navigate('SubGroupReg.aspx')" class="RptLink"
							onMouseOver="className='RptOLink'" onMouseOut="className='RptLink'">Register Subgroup</A><BR>
						<BR>					
						
						<A style='WIDTH:220px' Href="JavaScript:window.navigate('SubgroupToGroup.aspx')" class="RptLink"
							onMouseOver="className='RptOLink'" onMouseOut="className='RptLink'">Assign Subgroups To Groups</A><BR>
						<BR>
						<A style='WIDTH:220px' Href="JavaScript:window.navigate('SubgroupToUsers.aspx')" class="RptLink"
							onMouseOver="className='RptOLink'" onMouseOut="className='RptLink'">Assign Users To Subgroup</A><BR>
						<BR>						
						<A style='WIDTH:220px' Href="JavaScript:window.navigate('EditSubgroupUsers.aspx')" class="RptLink"
							onMouseOver="className='RptOLink'" onMouseOut="className='RptLink'">Edit / Change Subgroup Assignment</A><BR>
						<BR>
					</TD>
					<TD valign="top" align="right">
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>