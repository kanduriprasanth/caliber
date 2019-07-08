<%@ Page Language="vb" AutoEventWireup="false" Codebehind="GProfile.aspx.vb" Inherits="Admin.GProfile" %>
<%@ Register TagPrefix="uc1" TagName="ESignWebUC" Src="ESignWebUC.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>GProfile</title>
    <link href="../TRIMS.css" type="text/css" rel="stylesheet">
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    
    <script type="text/javascript">
    document.oncontextmenu=new Function("return false");
    </script>
    <script language="javascript" src='../JScript/Common.js'></script>
    <script language="javascript" src='../JScript/jquery.min.js'></script>

	 <style>
		.hide { DISPLAY: none; BACKGROUND-COLOR: #cccccc }
	.show { DISPLAY: block; BACKGROUND-COLOR: #cccccc }
		.down { BORDER-TOP-WIDTH: 1px; BACKGROUND-POSITION: center 30%; BORDER-LEFT-WIDTH: 1px; BACKGROUND-IMAGE: url(../Images/plus.gif); BORDER-BOTTOM-WIDTH: 1px; WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 15px; BORDER-RIGHT-WIDTH: 1px }
	.up { BORDER-TOP-WIDTH: 1px; BACKGROUND-POSITION: center 30%; BORDER-LEFT-WIDTH: 1px; BACKGROUND-IMAGE: url(../Images/minus.gif); BORDER-BOTTOM-WIDTH: 1px; WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 15px; BORDER-RIGHT-WIDTH: 1px }
	.chkCls { BORDER-RIGHT: 2px groove; BORDER-TOP: 2px groove; BORDER-LEFT: 2px groove; WIDTH: 18px; BORDER-BOTTOM: 2px groove; HEIGHT: 18px; BACKGROUND-COLOR: orange }
	.MainTDOver { PADDING-LEFT: 2px; FONT-SIZE: 9pt; FONT-FAMILY: Arial; BACKGROUND-COLOR: #ffdab9 }
	LABEL.lblSubMenu { BORDER-RIGHT: #999999; BORDER-TOP: #999999; BORDER-LEFT: #999999; WIDTH: 90%; BORDER-BOTTOM: #999999 1px solid }
		</style>
</head>
<body ms_positioning="GridLayout">
    <form id="f1" name="f1" method="post" runat="server" onsubmit="return fnCallESign();">
        <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="True"
            ShowSummary="False"></asp:ValidationSummary>
        <table class="MainTable" height="200" cellspacing="0" cellpadding="0" width="550"
            align="center" border="0">
            <!-- MAIN HEADER -->
            <tr>
                <td class="MainHead">
                    <asp:Literal ID="MainHeadLtrl" runat="server"></asp:Literal></td>
            </tr>
            <tr>
                <td style="padding-bottom: 0px">
                    <table class="SubTable" cellspacing="1" cellpadding="0" width="100%" align="center">
                        <tr>
                            <td class="SubHead">
                                <asp:Literal ID="SubHeadLtrl" runat="server"></asp:Literal></td>
                        </tr>
                        <tr>
                            <td class="MainTD">
                                <asp:Label runat="server" ID="CatLbl" Style="padding-left: 5px" Width="80"></asp:Label>
                                <asp:DropDownList runat="server" ID="CategoryList" AutoPostBack="True" onChange="DisableEsign()" Width="200">
                                    <asp:ListItem Value=''>[Select Category]</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="CatErrMsg" runat="server" Display="Dynamic" ControlToValidate="CategoryList">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="MainTD">
                                <asp:Label runat="server" ID="RoleLbl" Style="padding-left: 5px" Width="80"></asp:Label>
                                <asp:DropDownList runat="server" ID="RoleList" AutoPostBack="True" onChange="DisableEsign()" Width="200">
                                    <asp:ListItem Value=''>[Select Role]</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RoleErrMsg" runat="server" Display="Dynamic" ControlToValidate="RoleList">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr id="GpTR" runat="server">
                <td valign="top">
                    <table class="SubTable" style="border-right: #555555 1px double; border-top: #555555 1px double;
                        border-left: #555555 1px double; border-bottom: #555555 1px double" cellspacing="0"
                        cellpadding="0" width="100%" align="center" border="0">
                        <tr>
                            <td class="SubHead">
                                <asp:Literal ID="ListOfHomeScrnMenuSubMenuItemsLtrl" runat="server"></asp:Literal></td>
                        </tr>
                        <tr>
                            <td class="SubHeadTD" style="padding-left: 0px">
                                <asp:Literal ID="GPLiteral" runat="server"></asp:Literal></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table style="border-right: 2px groove; border-top: 2px groove; border-left: 2px groove;
                        border-bottom: 2px groove" cellspacing="0" cellpadding="0" width="100%" align="center"
                        border="0">
                        <tr>
                            <td class="MainTD" width="140px">
                                <asp:Label runat="server" ID="ReasonLbl" Style="padding-left: 1px" Width="140"></asp:Label>
                            </td>
                            <td class="MainTD">
                                <asp:TextBox ID="Reasons" CssClass="TxtCls" TextMode="MultiLine" runat="server" Width="280"
                                    onkeypress="taLimit()" onkeyup="taCount()"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ReasonErrMsg" runat="server" Display="Dynamic" ControlToValidate="Reasons">*</asp:RequiredFieldValidator>
                                <input type="button" onclick="fnOpenReasons(1)" class='RsnPUP' title='Click for Standard Reasons'>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <!-- MAIN FOOTER -->
            <tr>
                <td class="MainFoot">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="ButCls" onMouseOver="this.className='ButOCls'"
                        onmouseout="this.className='ButCls'" Width="60" OnClientClick="SetEsign()"></asp:Button>
                    <input class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
                        type="reset" value="Reset" style="display: none">
                </td>
            </tr>
        </table>
        <uc1:ESignWebUC ID="ESignWebUC1" runat="server"></uc1:ESignWebUC>
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow>
                <asp:TableCell ID="ValidatorsTd"></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>

    

<script type="text/javascript">
        //To Get the Icon left Side replace "append" with "Prepend"
        //For on load show set "ShowCls" for the first row else set "HideCls"
        $(document).ready(function () {
            $(".ShowCls, .HideCls").each(function (index, item) {
                $(this).find('td:last-child').append('<span class="' + ($(this).hasClass("ShowCls") ? 'SouthToggleIcon' : 'EastToggleIcon') + '">&nbsp;&nbsp;&nbsp;&nbsp;</span>');
                $(this).next().css("display", ($(this).hasClass("ShowCls") ? 'block' : 'none'))
            })
            $(".ShowCls, .HideCls").click(function () {
                $(this).find("span").addClass("EastToggleIcon").toggleClass("SouthToggleIcon", "EastToggleIcon");
                $(this).toggleClass("ShowCls", "HideCls");
                $(this).next().css("display", ($(this).hasClass("ShowCls") ? 'block' : 'none'));
            });
        });
    </script>
    <script type="text/javascript">
    //<![CDATA[
        function fnSetToReasons(argValue) {
            document.getElementById("Reasons").value = argValue
        }
        function FnSubmit(src, args) {
            if (document.getElementById("CategoryList").value == "" || document.getElementById("CategoryList").value == "") {
                //src.errormessage="Enter Value For: Column Test Observation " 
                Page_IsValid = false;
                args.IsValid = false;
                return false;
            } else {
                Page_IsValid = true;
                args.IsValid = true;
                return true;
            }
        }

        //SHOWING AND HIDING OF MENUS	
        function ShowHide(objName) {
            var IsMenuAction = document.getElementById("T" + objName).className
            document.getElementById("T" + objName).className = IsMenuAction == "hide" ? "show" : "hide";
            document.getElementById("B" + objName).className = IsMenuAction == "hide" ? "up" : "down";
            document.getElementById("MM" + objName).className = IsMenuAction == "hide" ? 'MainTDOver' : 'MainTD';
        }

        function ShowSubHide(objName) {
            if (document.getElementById("ST" + objName).className == "hide") {
                document.getElementById("ST" + objName).className = "show";
                document.getElementById("SB" + objName).className = "up"
            } else {
                document.getElementById("ST" + objName).className = "hide";
                document.getElementById("SB" + objName).className = "down"
            }
        }

        //////////////////////////////////////////////////////////////////////////////////////////////////////
        //SELECT 'SELECT ALL' CHECK BOX ALL CHILD BOXES ARE SELECTED
        function SelectBlock(objName) {
            var flag = document.getElementById("SA" + objName).checked;
            if (flag == true) {
                $("#SA" + objName).closest("table").find(":checkbox").attr('checked', "checked");
            }
            else {
                $("#SA" + objName).closest("table").find(":checkbox").removeAttr('checked');
            }
        }

        function fnCHKClick(modID, ival,Eobj) {//debugger
          var HasSubItems =true;
          if(typeof(Eobj)== 'object')
          {
            if($("table[id='" + modID + "_" + ival + "']").length==0) //if($(":checkbox[id='" + modID + "-" + ival + "'][class='CHKALLCls']").length==0)
            {
            HasSubItems = false;
            }
          }
          if(HasSubItems==true){
            fnCheckSubItems("" + modID + "", ival);

            //document.getElementById("SA" + modID).checked = true
            var jqSelLst = $(":checkbox[id='" + modID + "-" + ival + "']").closest("table");

            }
            $("#SA" + modID).removeAttr('checked');
            var inst = $("#SA" + modID).closest("table")
            if ($(inst).find(":checkbox:not(#SA" + modID + ")").length == $(inst).find(":checked").length) {
                $("#SA" + modID).attr('checked', "checked");
            }
            
        }

        function fnCheckSubItems(objName, ival) {
         
            var flag = document.getElementById(objName + "-" + ival).checked;
            var jqSelLst = $(":checkbox[id='" + objName + "-" + ival + "']").closest("table");
            if (jqSelLst.length > 0) {
                if ($(jqSelLst).find('table').length > 0) {
                    if ($.contains(jqSelLst[0], document.getElementById(objName + "-" + ival)) == true) {
                        if (flag == true) {
                            $(jqSelLst[0]).find(":checkbox").attr('checked', "checked");
                        }
                        else {
                            $(jqSelLst[0]).find(":checkbox").removeAttr('checked');
                        }
                    }
                }
                else {
                    if ($.contains(jqSelLst[0], document.getElementById(objName + "-" + ival)) == false) {
                        if (flag == true) {
                            $(jqSelLst[0]).find(":checkbox").attr('checked', "checked");
                        }
                        else {
                            $(jqSelLst[0]).find(":checkbox").removeAttr('checked');
                        }
                    }
                }
                 }  
        }

        //SubMenus Checked Then its Parent Menu is cheked else if none of the submenu is checked then the parent menu is unchecked.
        function fnCheck(ModuleObj, ival, MenObj,Eobj) {//debugger

            var jqSelLst = $(":checkbox[id='" + ModuleObj + "-" + ival + "']").closest("table") //$($(":checkbox[id='" + ModuleObj + "-" + ival + "']").closest("table").parents('table')[0]); //parents('table')[0];
            if (jqSelLst.length > 0) {
                        $(":checkbox[id='" + ModuleObj + "-" + ival + "']").removeAttr('checked');
                $(jqSelLst[0]).find(":checkbox").each(function (index, item) {
                    if (item.checked == true) {
                      $(":checkbox[id='" + ModuleObj + "-" + ival + "']").attr('checked', "checked");
                        return;
                    }
                })
              }  
           // }
           $("#SA" + ModuleObj).attr('checked', "checked");
           
           $(":checkbox[id^='" + ModuleObj + "-"+ "']").each(function (index, item) {
                    if (item.checked == false) {
                      $("#SA" + ModuleObj).removeAttr('checked');
                        return;
                    }
                })
//                if ($("#SA" + ModuleObj).closest("table").find(":checkbox").length == $("#SA" + ModuleObj).closest("table").find(":checked").length + 1) {
//                    $("#SA" + ModuleObj).attr('checked', "checked");
//                }
//                else {
//                    $("#SA" + ModuleObj).removeAttr('checked');
//                }
        }

        function fnOnloadSet() {
            if (document.getElementById("SelAllList") == null) return (false);
            var SelAllList = document.getElementById("SelAllList").value
            var RoleID = document.getElementById("RoleList")[document.getElementById("RoleList").selectedIndex].value
            if (SelAllList != "" && RoleID != "") {
                SelAllListAry = new Array()
                SelAllListAry = SelAllList.split(",")

                $("[id^='Modulekeys']").each(function (index, item) {
                    var modID = item.value;
                    if (SelAllListAry[index] == "True")
                        document.getElementById("SA" + modID).checked = true
                    else
                        document.getElementById("SA" + modID).checked = false
                })
            }
        }

        fnOnloadSet()
    //]]>
    
    	 
//	   function Rolecheck(){
//           if($('#RoleList option').length==1)
//           $('select#CategoryList').attr('selectedIndex', 0);
//            }
//       setTimeout("Rolecheck()",300)
//       
	function fnSetToReasons(argValue){
		document.getElementById('Reasons').value = argValue
	}
	function SetEsign()
	{
	 document.getElementById("ESignWebUC1_ESEnabled").value=1;
	}
	function DisableEsign()
	{
	 document.all("ESignWebUC1_ESEnabled").value="0";

	}
	function FnSubmit(src,args)
	{
	if(document.all("CategoryList").value=="" || document.all("CategoryList").value==""){
	
	       //src.errormessage="Enter Value For: Column Test Observation " 
	        Page_IsValid=false;
		    args.IsValid=false;	
		    return(false);
	}else{
	
	        Page_IsValid=true;
		    args.IsValid=true;	
		    return(true);
	}
	}
	
	/* Esing Activity and button name setting */
	window.onload = new Function("fnSetEsingActivity('Global Profile Setting','btnSubmit');fnOnloadSet()")
	window.onbeforeunload = new Function("fnCloseObject();fnKillESign()")
	window.onblur = new Function("fnRestoreESign()")
	window.onfocus = new Function("fnRestoreESign()")
	window.onerror = "return true;"
	//-->
	var taMaxLength = 200
	function taLimit() {
	    var taObj = window.event.srcElement;
	    if (taObj.value.length == taObj.maxLength * 1) return false;
	}

	function taCount() {
	    var taObj = window.event.srcElement;
	    if (taObj.value.length > taMaxLength * 1) {
	        taObj.value = taObj.value.substring(0, taMaxLength * 1);
	        alert("Characters exceeding limit\nMaximum Lenght: " + taMaxLength + " Chars")
	    }
	    //if (visCnt) visCnt.innerText=taObj.maxLength-taObj.value.length;
	}	
		
    </script>

</body>
</html>
