<%@ Page CodeBehind="HomeFrame.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="QAMS300BL.HomeFrame" %>
<HTML>
<FRAMESET Name="mainFrame" cols="0,*">
	<FRAME Name="menuFrame" ID="menuFrame" FRAMEBORDER=0 scrolling=YES SRC="MenuScroll.aspx" bordercolor="#9cbdff" noresize=true  style="Border-style:double;border-width:1px;Border-color:Gray;Border-Left:none;"></FRAME>
	        <FRAMESET Name="mainFrame1" cols="*,175">
	            <FRAME Name="bodyFrame"  ID="bodyFrame" FRAMEBORDER=0 SCROLLING=Auto SRC="BodyHome.aspx"></FRAME>	
	            <FRAME Name="RightFrame" ID="RightFrame" SRC="RightPane.aspx" FRAMEBORDER=1 bordercolor="#9cbdff" noresize=false ></FRAME>
            </FRAMESET>
</FRAMESET>

<SCRIPT language=javascript>
function fnToggleFrame(){		
}

function fnOpenRightPane(){
window.frames.mainFrame1.cols='*,175'
}
function fnCloseRightPane(){
window.frames.mainFrame1.cols='*,0'
}

</SCRIPT>
</HTML>
