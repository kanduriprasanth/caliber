<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MainHeader.aspx.vb" Inherits="QAMS300BL.MainHeader" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Strict//EN">

<BODY leftmargin=0 rightmargin=0 bottommargin=0 topmargin=0>
<TABLE WIDTH="100%" HEIGHT="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">						
<TR><TD style="Background-image:url('IMAGES/LIMSbar.gif');background-repeat:no-repeat;Padding-left:5px;border-style:groove;Border-width:2px;Background-color:#526598;Padding-Right:0px;">						
		<TABLE WIDTH="100%" HEIGHT="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">
		<TR><TD>&nbsp;</TD>
			<TD Width="30%">									
					<TABLE WIDTH="100%" HEIGHT="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0"	style="Padding-right:5px;padding-bottom:0px;">
					<TR><TD align="right">
						<SPAN style="font-family:Georgia,Garamond;font-size:9pt;Letter-Spacing:1px;font-variant:small-caps;Color:#FFFFFF;">
						Login User:</SPAN>
						<asp:Label ID=lblUserName Runat=server style="font-family:Georgia,Garamond;font-size:9pt;Letter-Spacing:1px;font-variant:small-caps;Color:Yellow;">xioxioxioxio</asp:Label>
					</TD></TR>
					<TR><TD valign="bottom" align="right">
							<TABLE WIDTH="100%" HEIGHT="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0">
							<TR><TD align="right" style="font-size:10pt;Height:18px;">
								<A target="bodyFrame" class=Acls onMouseOver="className='AHover'" onMouseOut="className='Acls'" accesskey=H Href="BodyHome.aspx" title="Home Alt + H"><IMG Border=0 src="Images/Home.gif"></A>&nbsp;
								<A class=Acls onMouseOver="className='AHover'" onMouseOut="className='Acls'" Href="JavaScript:window.history.go()" title="Refresh F5"><IMG Border=0 src="Images/Refresh.gif"></A>&nbsp;
								<A target=_parent  class=Acls onMouseOver="className='AHover'" onMouseOut="className='Acls'" accesskey=X Href="Login.aspx" title="SignOut Alt + X"><IMG Border=0 src="Images/Signout.gif"></A>
							</TD></TR>
							</TABLE>
					</TD></TR>
					</TABLE>											
		</TD></TR>
		</TABLE>					
</TD></TR>
</TABLE>

		<DIV id='MenuInfo' name='MenuInfo' style="POSITION:absolute;TOP:8px;RIGHT:180px;Z-INDEX:2000;Padding:2px;Background-color:Menu;Border-style:outset;Border-width:2px;font-size:7pt;font-family:Microsoft Sans Serif;width:200px;" onDblClick="this.style.display='none';" title="Double click on to hide">
		<SPAN style="width:50px;">Module</SPAN><B>:</B><SPAN id=ModuleName style="Padding-left:2px;">Chemical</SPAN><br>
		<SPAN style="width:50px;">Menu</SPAN><B>:</B><SPAN id=MenuName style="Padding-left:2px;">Chemical Reg</SPAN><br>
		<SPAN style="width:50px;">Sub Menu</SPAN><B>:</B><SPAN id=SubMenuName style="Padding-left:2px;">---</SPAN>
		</DIV>
</BODY>