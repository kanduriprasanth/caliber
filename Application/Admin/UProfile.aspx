<%@ Page Language="vb" AutoEventWireup="false" Codebehind="UProfile.aspx.vb" Inherits="Admin.UProfile" %>

<%@ Register TagPrefix="uc1" TagName="ESignWebUC" Src="ESignWebUC.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>UProfile</title>
    <link href="../TRIMS.css" type="text/css" rel="stylesheet">
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    

    <script language="javascript" src='../JScript/Common.js'></script>
    <SCRIPT language="javascript" src='../JScript/jquery.min.js '></SCRIPT>
				
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
        <table class="MainTable" height="200" cellspacing="0" cellpadding="0" width="550"
            align="center" border="0">
            <!-- MAIN HEADER -->
            <tr>
                <td class="MainHead">
                    User Profile</td>
            </tr>
            <tr>
                <td style="padding-bottom: 0px">
                    <table class="SubTable" cellspacing="1" cellpadding="0" width="100%" align="center">
                        <tr>
                            <td class="SubHead">
                                User Profile Setting</td>
                        </tr>
                        <tr>
                            <td class="MainTD">
                                <asp:Label runat="server" ID="Label7" Style="padding-left: 5px" Width="80">Category</asp:Label>
                                <asp:DropDownList runat="server" ID="CategoryList" AutoPostBack="True" Width="200" >
                                    <asp:ListItem Value=''>[Select Category]</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator3" runat="server" Display="Dynamic"
                                    ErrorMessage="Select Category" ControlToValidate="CategoryList">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="MainTD">
                                <asp:Label runat="server" ID="Label1" Style="padding-left: 5px" Width="80">Role</asp:Label>
                                <asp:DropDownList runat="server" ID="RoleList" AutoPostBack="True" Width="200">
                                    <asp:ListItem Value=''>[Select Role]</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" Display="Dynamic"
                                    ErrorMessage="Select Role" ControlToValidate="RoleList">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="MainTD">
                                <asp:Label runat="server" ID="Label2" Style="padding-left: 5px" Width="80">User Name</asp:Label>
                                <asp:DropDownList runat="server" ID="UserList" AutoPostBack="True" Width="200">
                                    <asp:ListItem Value=''>[Select User]</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator2" runat="server" Display="Dynamic"
                                    ErrorMessage="Select User Name" ControlToValidate="UserList">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <table class="SubTable" style="border-right: #555555 1px double; border-top: #555555 1px double;
                        border-left: #555555 1px double; border-bottom: #555555 1px double" cellspacing="0"
                        cellpadding="0" width="100%" align="center" border="0">
                        <tr>
                            <td class="SubHead">
                                List Of Home Screen Menu / Sub Menu Items</td>
                        </tr>
                        <tr>
                            <td class="SubHeadTD" style="padding-left: 0px">
                                <asp:Literal ID="UPLiteral" runat="server"></asp:Literal>
                            </td>
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
                                <asp:Label runat="server" ID="Label3" Style="padding-left: 1px" Width="140">Remark(s) / Reason(s)				
                                </asp:Label>
                            </td>
                            <td class="MainTD">
                                <asp:TextBox ID="Reasons" CssClass="TxtCls" TextMode="MultiLine" runat="server" Width="280"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator4" runat="server" Display="Dynamic"
                                    ErrorMessage="Enter Remark(s) / Reason(s)" ControlToValidate="Reasons">*</asp:RequiredFieldValidator>
                                <input type="button" onclick="fnOpenReasons(1)" class='RsnPUP' title='Click for Standard Reason'>
                                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
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
        <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="True"
            ShowSummary="False"></asp:ValidationSummary>
        <uc1:ESignWebUC ID="ESignWebUC1" runat="server"></uc1:ESignWebUC>
        <asp:CustomValidator ID="Customvalidation" name="Customvalidation" runat="server"
            ClientValidationFunction="ClientValidation"></asp:CustomValidator>

        <script language="javascript">
<!--
	function fnSetToReasons(argValue){
		document.getElementById('Reasons').value = argValue
	}
	function SetEsign()
	{
	 if(($('#CategoryList').attr('selectedIndex'))!=0&&($('#RoleList').attr('selectedIndex'))!=0&&($('#UserList').attr('selectedIndex'))!=0)
	 	 document.all("ESignWebUC1_ESEnabled").value=1;
	}
	
  function ShowHide(objName)  {
		var IsMenuAction = document.all("T"+ objName).className
		if(IsMenuAction == "hide"){
			document.all("T"+ objName).className = "show";
			document.all("B"+ objName).className="up"
			
			document.all("MM"+ objName).className='MainTDOver'
		}else{
			document.all("T"+ objName).className = "hide";
			document.all("B"+ objName).className="down"
			document.all("MM"+ objName).className='MainTD'
		}
		/*
		if(document.getElementById(objName) !=null){
			var MenLen = document.all(objName).length
			if(isNaN(MenLen)) MenLen=0
			if(MenLen>0){
				for(i=0;i<MenLen;i++){
					var menID = document.all(objName)(i).value
					if(document.getElementById("SM"+ menID) !=null){
						if(IsMenuAction=="hide"){
							document.all("ST"+ menID).className = "show";
							document.all("SB"+ menID).className="up"
						}else{		
							document.all("ST"+ menID).className = "hide";
							document.all("SB"+ menID).className="down"
						}
					}		
				}
			}else{
				var menID = document.all(objName).value
				if(document.getElementById("SM"+ menID) !=null){
					if(IsMenuAction=="hide"){
						document.all("ST"+ menID).className = "show";
						document.all("SB"+ menID).className="up"
					}else{		
						document.all("ST"+ menID).className = "hide";
						document.all("SB"+ menID).className="down"
					}
				}
			}
		}//if*/
  }


	
	function ShowSubHide(objName)  {		
		if(document.all("ST"+ objName).className == "hide"){
			document.all("ST"+ objName).className = "show";
			document.all("SB"+ objName).className="up"
		}else{		
			document.all("ST"+ objName).className = "hide";
			document.all("SB"+ objName).className="down"
		}
	}	
	

//////////////////////////////////////////////////////////////////////////////////////////////////////
  //SELECT 'SELECT ALL' CHECK BOX ALL CHILD BOXES ARE SELECTED
  function SelectBlock(objName)
  {
		var flag=document.all("SA"+ objName).checked;
				
		if(document.getElementById(objName)!=null){
			var len = document.all(objName).length
			if(isNaN(len)) len=0
			if(len>1){
				for(i=0;i<len;i++)
				if(document.all(objName)(i).disabled==false)
				document.all(objName)(i).checked=flag
			}else{
				if(document.all(objName).disabled==false)
				document.all(objName).checked=flag
			}
		}
		
		if(document.getElementById(objName) !=null){
			var MenLen = document.all(objName).length
			if(isNaN(MenLen)) MenLen=0
			if(MenLen>0){
				for(i=0;i<MenLen;i++){
					var menID = document.all(objName)(i).value
					if(document.getElementById("SM"+ menID) !=null){
						var SubMenLen = document.all("SM"+ menID).length
						if(isNaN(SubMenLen)) SubMenLen=0
						if(SubMenLen>0){
							for(j=0;j<SubMenLen;j++)
							document.all("SM"+ menID)(j).checked=flag;
						}else{
						document.all("SM"+ menID).checked=flag;
						}
					}		
				}
			}else{
					var menID = document.all(objName).value
					if(document.getElementById("SM"+ menID) !=null){
						var SubMenLen = document.all("SM"+ menID).length
						if(isNaN(SubMenLen)) SubMenLen=0
						if(SubMenLen>0){
							for(j=0;j<SubMenLen;j++)
							document.all("SM"+ menID)(j).checked=flag;
						}else{
						document.all("SM"+ menID).checked=flag;
						}
					}
			}
		}//if
	}

  
  function fnCHKClick(modID,ival){
		var modLen = document.all(""+ modID +"").length
		fnCheckSubItems(""+ modID +"",ival)
		if(modLen>1){
			for(i=0;i<modLen;i++){
				if(document.all(""+ modID +"")(i).checked==false){
					document.all("SA"+ modID).checked=false;
					return(false);
				}
			}
		}else{
			if(document.all(""+ modID +"").checked==false){
				document.all("SA"+ modID).checked=false;
				return(false);
			}
		}
		document.all("SA"+ modID).checked=true
  }
  
	function fnCheckSubItems(objName,ival){
		if(document.getElementById(objName) !=null){
			var MenLen = document.all(objName).length
			if(isNaN(MenLen)) MenLen=0
			if(MenLen>0){
				var menID = document.all(objName)(ival).value
				var flag = document.all(objName)(ival).checked
				if(document.getElementById("SM"+ menID) !=null){
					var SubMenLen = document.all("SM"+ menID).length
					if(isNaN(SubMenLen)) SubMenLen=0
					if(SubMenLen>0){
						for(j=0;j<SubMenLen;j++)
						document.all("SM"+ menID)(j).checked=flag;
					}else{
					document.all("SM"+ menID).checked=flag;
					}
				}
			}else{
					var menID = document.all(objName).value
					var flag = document.all(objName).checked					
					if(document.getElementById("SM"+ menID) !=null){
						var SubMenLen = document.all("SM"+ menID).length
						if(isNaN(SubMenLen)) SubMenLen=0
						if(SubMenLen>0){
							for(j=0;j<SubMenLen;j++)
							document.all("SM"+ menID)(j).checked=flag;
						}else{
						document.all("SM"+ menID).checked=flag;
						}
					}
			}
		}//if
	}		 
   
   
   //SubMenus Checked Then its Parent Menu is cheked else if none of the submenu is checked then the parent menu is unchecked. 
   function fnCheck(ModuleObj,ival,MenObj){
		
		if(document.getElementById(""+ ModuleObj +"") != null){
			var menLen = document.all("SM"+ MenObj +"").length
			if(isNaN(menLen)) menLen = 0;
			var moduleLen = document.all(""+ ModuleObj +"").length
			if(isNaN(moduleLen)) moduleLen = 0;
			
			if(menLen>1){
				for(i=0;i<menLen;i++){
					if(document.all("SM"+ MenObj +"")(i).checked){
						if(moduleLen>1)
						document.all(""+ ModuleObj +"")(ival).checked = true;
						else
						document.all(""+ ModuleObj +"").checked = true;
						return(false);
					}
				}
			}else{
				if(document.all("SM"+ MenObj +"").checked){
					if(moduleLen>1)
					document.all(""+ ModuleObj +"")(ival).checked = true;
					else
					document.all(""+ ModuleObj +"").checked = true;
					return(false);
				}
			}
			if(moduleLen>1)
			document.all(""+ ModuleObj +"")(ival).checked = false;
			else
			document.all(""+ ModuleObj +"").checked = false;
		}
   }
    
     
 function fnOnloadSet() {
	if(document.getElementById("SelAllList")==null) return(false);
	
	var SelAllList = document.getElementById("SelAllList").value
	var RoleID = document.getElementById("RoleList")(document.getElementById("RoleList").selectedIndex).value
	if(SelAllList!="" && RoleID!=""){
		SelAllListAry = new Array()		
		SelAllListAry = SelAllList.split(",")
		
		for(i=0;i<SelAllListAry.length;i++){
			if(SelAllListAry.length>1)
			var modID = parseInt(document.all('Modulekeys')[i].value)
			else
			var modID = parseInt(document.getElementById("Modulekeys").value)
			
			if(SelAllListAry[i]=="True")
			document.all("SA"+ modID).checked=true
			else
			document.all("SA"+ modID).checked=false
		}
	}
  }  
	/* Esing Activity and button name setting */
	window.onload = new Function("fnSetEsingActivity('User Profile Setting','btnSubmit');fnOnloadSet()")
	
	window.onerror = "return true;"
//-->

		  //For Disabling Right Click
		//context menu		//contextMenu


//Disable right click

//var message="";

/////////////////////////////////////

 

if (document.layers){

document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;

}else{

document.onmouseup=clickNS;document.oncontextmenu=clickIE;

document.oncontextmenu=new Function("return false")

document.body.oncontextmenu= contextMenu

document.body.onselectstart=DisableCopy

}

	
        </script>

        <script type="text/javascript">
		
		function  ClientValidation(src,args)
		{ 
		
		 args.IsValid=true;
            Page_IsValid=true; 
		   if ($(":checkbox[checked]").length=="0")
		   {
		
            src.errormessage="Select atleast one Menu for the selected user" 
	        document.all("ESignWebUC1_ESEnabled").value=1           
            args.IsValid=false;
            Page_IsValid=false;
            return(false)
		   }
		}
		
        </script>

    </form>
</body>
</html>
