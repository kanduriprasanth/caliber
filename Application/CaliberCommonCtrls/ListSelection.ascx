<%@ Control Language="vb" AutoEventWireup="false" Codebehind="ListSelection.ascx.vb" Inherits="CaliberCommonCtrls.ListSelection"  %>
<script language="javascript" src="../CaliberCommonCtrls/ListSelection.js"></script>
<table cellSpacing="0" cellPadding="0" width="100%" align="center" border="0" valign="top"
	style="BORDER-RIGHT:2px groove; BORDER-TOP:2px groove; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove">
	<TR class="MainTD" style="BACKGROUND-COLOR: lightslategray">
		<TD colspan="5" style="HEIGHT:5px"></TD>
	</TR>
	<TR>
		<TD style="WIDTH:5px"></TD>
		<TD colspan="3" class="ListSubHead" style="HEIGHT:5px" align="center"><asp:Literal Id="ListHeaderTitle" Runat="server"></asp:Literal></TD>
		<TD style="WIDTH:5px"></TD>
	</TR>
	<TR class="MainTD">
		<TD style="WIDTH:5px"></TD>
		<td class="SubHeadTD" align="center" style="WIDTH:46%; BACKGROUND-COLOR:#afc794">
			<asp:Label id="RightLabel1" runat="server" Font-Bold="True">Available Item(s)</asp:Label></td>
		<TD style="WIDTH:27px">&nbsp;</TD>
		<td class="SubHeadTD" align="center" style="WIDTH:46%; BACKGROUND-COLOR:#afc794">
			<asp:Label id="LeftLabel1" runat="server" Font-Bold="True">Selected Item(s)</asp:Label></td>
		<TD style="WIDTH:5px"></TD>
	</TR>
	<TR class="MainTD" style="PADDING-RIGHT:0px;PADDING-LEFT:0px;PADDING-BOTTOM:0px;PADDING-TOP:0px">
		<TD></TD>
		<td align="right">
			<asp:listbox id="LeftListBox" ondblclick="LeftSelectDblClick(this.id)" Width="100%" runat="server"
				AutoPostBack="False" Rows="7" EnableViewState="True"></asp:listbox>
		</td>
		<td align="center">
			<INPUT id="button1" onclick="SelectallRight(this.id)" type="button" name="button1" runat="server"
				Style='BORDER-TOP-WIDTH:1px; BACKGROUND-POSITION:center 50%; BORDER-LEFT-WIDTH:1px; BACKGROUND-IMAGE:url(../IMAGES/f-last.gif); BORDER-BOTTOM-WIDTH:1px; WIDTH:19px; CURSOR:hand; HEIGHT:21px; BACKGROUND-COLOR:#d3d1c9; BORDER-RIGHT-WIDTH:1px'><BR>
			<INPUT id="button2" onclick="LeftSelectDblClick(this.id)" type="button" name="button2"
				runat="server" Style='BORDER-TOP-WIDTH:1px; BACKGROUND-POSITION:center 50%; BORDER-LEFT-WIDTH:1px; BACKGROUND-IMAGE:url(../IMAGES/f-next.gif); BORDER-BOTTOM-WIDTH:1px; WIDTH:19px; CURSOR:hand; HEIGHT:21px; BACKGROUND-COLOR:#d3d1c9; BORDER-RIGHT-WIDTH:1px'><BR>
			<INPUT id="button3" onclick="RightSelectDblClick(this.id)" type="button" name="button3"
				runat="server" Style='BORDER-TOP-WIDTH:1px; BACKGROUND-POSITION:center 50%; BORDER-LEFT-WIDTH:1px; BACKGROUND-IMAGE:url(../IMAGES/f-prev.gif); BORDER-BOTTOM-WIDTH:1px; WIDTH:19px; CURSOR:hand; HEIGHT:21px; BACKGROUND-COLOR:#d3d1c9; BORDER-RIGHT-WIDTH:1px'><BR>
			<INPUT type="button" onclick="SelectallLeft(this.id)" id="button4" name="button4" runat="server"
				Style='BORDER-TOP-WIDTH:1px; BACKGROUND-POSITION:center 50%; BORDER-LEFT-WIDTH:1px; BACKGROUND-IMAGE:url(../IMAGES/f-first.gif); BORDER-BOTTOM-WIDTH:1px; WIDTH:19px; CURSOR:hand; HEIGHT:21px; BACKGROUND-COLOR:#d3d1c9; BORDER-RIGHT-WIDTH:1px'>
		</td>
		<td align="left">
			<asp:ListBox id="RightListBox" runat="server" Rows="7" Width="100%" ondblclick="RightSelectDblClick(this.id)"
				AutoPostBack="False" EnableViewState="True"></asp:ListBox>
		</td>
		<TD></TD>
	</TR>
	<TR class="MainTD">
		<TD colspan="5" style="HEIGHT:5px; BACKGROUND-COLOR:lightslategray"></TD>
	</TR>
	<TR style="DISPLAY:none">
		<td colspan="5" style="BACKGROUND-COLOR: lightslategray">
			<asp:TextBox id="OptValues" runat="server" Height="0" Width="0"></asp:TextBox>
			<asp:TextBox id="OptTexts" runat="server" Height="0" Width="0"></asp:TextBox></td>
	</TR>
</table>
	<script type="text/javascript">
	
	function SetData<%=me.ClientID%>()
	{
	    var OptValuesLst ="<%=OptValues.ClientID%>"
	    var LeftListBoxId ="<%=LeftListBox.ClientID%>"
	    var RightListBoxId ="<%=RightListBox.ClientID%>"
	    var SelIdLst = document.getElementById(OptValuesLst).value;
	    var OptionsToDelete = new Array();
	    if(SelIdLst != "")
	    {
	        SelIdLst = "," + SelIdLst + ","
	        var LeftListBoxControl= document.getElementById(LeftListBoxId)
	        var RightListBoxControl= document.getElementById(RightListBoxId)
	        
	        var LeftListBoxItemCnt = LeftListBoxControl.length 
	        for(var i=0;i<LeftListBoxItemCnt;i++)
	        {
    	        var OldOption = LeftListBoxControl[i];
    	        if(SelIdLst.indexOf("," + OldOption.value + ",") != -1)
    	        {
    	            var NewOption = document.createElement("OPTION");
    	            OptionsToDelete.push(OldOption);
    	            NewOption.text = OldOption.text;
    	            NewOption.value = OldOption.value;
    	            RightListBoxControl.add(NewOption);
    	        }
	        }
	        if(OptionsToDelete.length >0)
	        {
	            for(var i=0;i<OptionsToDelete.length;i++)
	            {
	                LeftListBoxControl.removeChild(OptionsToDelete[i]);
	            }
	        }
	    }
	}
    setTimeout("SetData<%=me.ClientID%>()",600);
	
    </script>
