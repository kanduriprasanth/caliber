<%@ Control Language="vb" AutoEventWireup="false" Codebehind="Header.ascx.vb" Inherits="QAMS300BL.Header"  %>
<script type="text/javascript" >
				function fnGoHome(){window.location='Login.aspx'}
				function fnSignOut(){window.location='Login.aspx'}
				
</script>
<TABLE WIDTH="100%" ALIGN="center" BORDER="0" CELLSPACING="0" CELLPADDING="0" style="Background-image:url('Images/top_bg.png');  ">
	<TR>
		<TD valign="top" style=" PADDING-RIGHT:0px; BORDER-TOP:2px groove; PADDING-LEFT:5px;  BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove; width: 811px;" >
			<img src="./Images/QMS_Title.jpg" alt="" />
			
			</TD>
			<TD>
			<A class="Acls" onMouseOver="className='AHover'" onMouseOut="className='Acls'" accesskey="H"  Href="JavaScript:fnGoHome()" title="Home Alt + H"><IMG Border="0" src="Images/home_n.png" onmouseover="this.src='Images/home_o.png'" onmouseout="this.src='Images/home_n.png'"></A>&nbsp;
												<A class="Acls" onMouseOver="className='AHover'" onMouseOut="className='Acls'" Href="JavaScript:window.history.go()"
													title="Refresh F5"><IMG Border="0" src="Images/refresh_n.png" onmouseover="this.src='Images/refresh_o.png'" onmouseout="this.src='Images/refresh_n.png'"></A>&nbsp; <A target="_parent" class="Acls" onMouseOver="className='AHover'" onMouseOut="className='Acls'"
													accesskey="X" Href="JavaScript:fnSignOut()" title="SignOut Alt + X"><IMG Border="0" src="Images/signout_n.png" onmouseover="this.src='Images/signout_o.png'" onmouseout="this.src='Images/signout_n.png'" ></A>
			</TD>
			</TR>
			<tr height="30px">
                            <td colspan="2" width="80%"  style="border-right: 0; background-image: url('Images/strip_3.png');">
                            </td>                            
                        </tr>
			
		 
</TABLE>
        <%--<table width="100%" height="100%" align="center" border="0" cellspacing="0" cellpadding="0">
            <tr height="55" style="height: 55px;">
                <!--1st TR-->
                <td width="100%">
                    <table width="100%" height="100%" align="center" border="0" cellspacing="0" cellpadding="0">
                        <tr valign="bottom" style="background-image: url('Images/top_bg.png'); height: 36px;
                            border-right: 0px;">
                            <!--<td style="Background-image:url('Images/logostrip_1.gif');background-repeat:no-repeat;background-color:#50b436;">
						
						</td>-->
                            <td width="30%" style="border-right: 0px;">
                                <!--[if IE 6]>
                                <img alt="" src="../Images/QMS_Title.jpg" />                                     
                            <![endif]-->
                                <!--[if !IE 6]>
                                <img alt="" src="../Images/QMS_Title.png" />                                 
                            <![endif]-->
                            </td>
                            <td align="center" style="border-left: 0px; border-right: 0px; background-color: #50b436;">
                                <span style="font-size: 9pt; color: #fff; font-family: Arial; letter-spacing: 0px;
                                    font-variant: small-caps; font-weight: bold">Plant :</span>
                                <asp:Label ID="lblPlantName" Style="font-size: 9pt; color: #fff; font-family: Georgia,Garamond;
                                    letter-spacing: 1px; font-variant: small-caps" runat="server">xioxioxio</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                                <span style="font-size: 9pt; color: #fff; font-family: Arial; letter-spacing: 1px;
                                    font-variant: small-caps; font-weight: bold">Current User :</span>
                                <asp:Label ID="lblUserName" Style="font-size: 9pt; color: #fff; font-family: Arial;
                                    letter-spacing: 1px; font-variant: small-caps" runat="server">xioxioxio</asp:Label>
                            </td>
                            <td style="border-left: 0px;">
                                    <!--<A  onMouseOver="className='AHover'" accesskey="p" Href="JavaScript:getplant()" title="PlantSelection Alt + P" ><IMG Border="0" src="Images/lab_n.png" onmouseover="this.src='Images/lab_o.png'" onmouseout="this.src='Images/lab_n.png'"></A>&nbsp;-->
                                    <A  onMouseOver="className='AHover'"  accesskey="S" Href="JavaScript:window.history.back();" title="Back Script Alt + S"><IMG Border="0" src="Images/back_n.png" onmouseover="this.src='Images/back_o.png'" onmouseout="this.src='Images/back_n.png'"></A>&nbsp;
                                    <A target="bodyFrame" accesskey="H" Href="BodyHome.aspx" title="Home Alt + H"><IMG Border="0" src="Images/home_n.png" onmouseover="this.src='Images/home_o.png'" onmouseout="this.src='Images/home_n.png'"></A>&nbsp;
                                    <A Href="JavaScript:fnRefresh()" accesskey="R"  title="Refresh"><IMG Border="0" src="Images/refresh_n.png" onmouseover="this.src='Images/refresh_o.png'" onmouseout="this.src='Images/refresh_n.png'"></A>&nbsp;                                
                                    <A  ><IMG Border="0" style="cursor:hand" onclick="ReLogin()" title="Session Rebuild" src="Images/rebuild_n.png" onmouseover="this.src='Images/rebuild_o.png'" onmouseout="this.src='Images/rebuild_n.png'"></A>
                                    <A target="_parent" accesskey="X" Href="RIndex.aspx" title="SignOut Alt + X"><IMG Border="0" src="Images/signout_n.png" onmouseover="this.src='Images/signout_o.png'" onmouseout="this.src='Images/signout_n.png'" ></A>                                 
                            </td>
                        </tr>
                        <tr height="30px">
                            <td colspan="2" width="80%"  style="border-right: 0; background-image: url('Images/strip_3.png');">
                            </td>                            
                        </tr>
                    </table>
                </td>
            </tr>
            <!--1st TR-->
            <!--Body-->
            
        </table>--%>
        

