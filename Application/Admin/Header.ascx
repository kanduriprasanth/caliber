<%@ Control Language="vb" AutoEventWireup="false" Codebehind="Header.ascx.vb" Inherits="Admin.Header"  %>

			<script language=javascript>
				function fnGoHome(){window.navigate('../Login.aspx')}
				function fnSignOut(){window.navigate('../Login.aspx')}
				
			</script>
			<TABLE WIDTH="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0" style="Background-image:url('Images/top_bg.gif');  ">
	<TR>
		<TD valign="top" style=" PADDING-RIGHT:0px; BORDER-TOP:0px groove; PADDING-LEFT:5px;  BORDER-LEFT:0px groove; BORDER-BOTTOM:0px groove; width: 811px;" >
			<!--[if IE 6]>
                <img alt="" src="../Images/QMS_Title.jpg" />                                     
            <![endif]-->
                <!--[if !IE 6]>
                <img alt="" src="../Images/QMS_Title.png" />                                 
            <![endif]-->
			</TD>
			 
			<TD style=" PADDING-LEFT:90px;" >
			<A class="Acls" onMouseOver="className='AHover'" onMouseOut="className='Acls'" accesskey="H"
													Href="JavaScript:fnGoHome()" title="Home Alt + H"><IMG Border="0" src="Images/home_n.gif" onmouseover="this.src='Images/home_o.gif'" onmouseout="this.src='Images/home_n.gif'"></A>&nbsp;
												<A class="Acls" onMouseOver="className='AHover'" onMouseOut="className='Acls'" Href="JavaScript:window.history.go()"
													title="Refresh F5"><IMG Border="0" src="Images/refresh_n.gif" onmouseover="this.src='Images/refresh_o.gif'" onmouseout="this.src='Images/refresh_n.gif'"></A>&nbsp; <A target="_parent" class="Acls" onMouseOver="className='AHover'" onMouseOut="className='Acls'"
													accesskey="X" Href="JavaScript:fnSignOut()" title="SignOut Alt + X"><IMG Border="0" src="Images/signout_n.gif" onmouseover="this.src='Images/signout_o.gif'" onmouseout="this.src='Images/signout_n.gif'" ></A>
			</TD>
			</TR>
			
		 
</TABLE>