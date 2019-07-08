<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="DashBoardMapping.Trn" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'
	function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
	}

	//-->
		
	
    </script>
    
    
    <script language=javascript>
      
        function FnUserGroupPopup()
        { 
            var pageURL="UserGroupPopUp.aspx"
            var PWidth=600
            var PHeight=500
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
            var SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }


       function  fnSetuserGrpValue(UserGrpID,UserGrpCode,UserGrpDesc)
        { 
            document.getElementById("UserGrpCodeTxt").value=UserGrpCode
            document.getElementById("UserGrpNameTxt").value=UserGrpDesc
            document.getElementById("UserGrpNameLbl").innerHTML=UserGrpDesc
        }
        
         function FnUserListpopup()
        { 
            var pageURL="InchargeList.aspx"
            var PWidth=600
            var PHeight=500
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
            var SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }

       function  fnSetuserValue(UserIdVal,UserNameVal,UserCodeVal)
        { 
            document.getElementById("UserIdTxt").value=UserIdVal
            document.getElementById("UserNametxt").value=UserNameVal
            document.getElementById("UserNamelbl").innerHTML=UserNameVal
        }
        
         function FnReadpageCfgList()
        { 
            var pageURL="PageCfgListpopup.aspx"
            var PWidth=600
            var PHeight=500
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
            var SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }


        function SetPageCfgValue(pageCfgIdStr,PageTitleStr)
        { 
            document.getElementById("PageCfgidtxt").value=pageCfgIdStr
            document.getElementById("PageCfgTxt").value=PageTitleStr
            document.getElementById("PageCfglbl").innerHTML=PageTitleStr
            
        }
        
        
        
        
        
        
        
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls"  ReadOnly =true Text="<< System Generated >>"  MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DescTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" onkeypress="taLimit()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                         <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="MappingToTD" runat=server></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                              <asp:RadioButtonList ID="MappingToRdl" runat=server CssClass="MainTD" RepeatDirection=Horizontal  onclick="ChangeCss()"></asp:RadioButtonList>
                               <asp:TextBox CssClass="HideRow" runat="server" ID="MappingToTxt"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                          <asp:TableRow ID="CategoryTr" CssClass="HideRow">
                                <asp:TableCell CssClass="MainTD" ID="CatTd"></asp:TableCell>
                                <asp:TableCell CssClass="MainTD">
                                    <asp:DropDownList  CssClass ="MainTD" runat="server" ID="CategoryList" AutoPostBack="True" Width="200">
                                    </asp:DropDownList>
                                    <asp:Label CssClass="<%=RoleCss%>" runat="server" ID="Categorylbl"></asp:Label>
                                    <asp:TextBox CssClass="HideRow" runat="server" ID="CategoryTxt"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>
                            
                            <asp:TableRow ID="RoleTr" CssClass="HideRow">
                                <asp:TableCell CssClass="MainTD" ID="RoleTd"></asp:TableCell>
                                <asp:TableCell CssClass="MainTD">
                                    <asp:DropDownList  CssClass="MainTD" runat="server" ID="RoleList"  Width="200">
                                        <asp:ListItem Value=''>[Select Role]</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Label CssClass="<%=RoleCss%>" runat="server" ID="RoltLbl"></asp:Label>
                                    <asp:TextBox CssClass="HideRow" runat="server" ID="Roletxt"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>
                            
                            
                        <asp:TableRow ID="UserGrpTR" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="UserGrpTD" runat=server></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                 <input type="button" class="<%=UserGrpCss%>" onclick="FnUserGroupPopup()" />
                                <asp:Label CssClass="MainTD" runat="server" ID="UserGrpNameLbl"></asp:Label>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="UserGrpNameTxt"></asp:TextBox>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="UserGrpCodeTxt"></asp:TextBox>
                                
                            </asp:TableCell>
                        </asp:TableRow>
                                                
                         <asp:TableRow ID="UserTR" CssClass="HideRow" >
                            <asp:TableCell CssClass="MainTD" ID="UserTd" runat=server></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" class="<%=UserCss%>" onclick="FnUserListpopup()" />
                                <asp:Label CssClass="MainTD" runat="server" ID="UserNamelbl"></asp:Label>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="UserNametxt"></asp:TextBox>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="UserIdTxt"></asp:TextBox>
                                
                            </asp:TableCell>
                        </asp:TableRow>
                            
						<asp:TableRow >
                            <asp:TableCell CssClass="MainTD" ID="PageCfgTd" runat=server Text="Page Config List"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" class="RsnPUP" onclick="FnReadpageCfgList()" />
                                <asp:Label CssClass="MainTD" runat="server" ID="PageCfglbl"></asp:Label>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="PageCfgTxt"></asp:TextBox>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="PageCfgidtxt"></asp:TextBox>
                                
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                                <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc1:EsignObj id="EsignObj1" runat="server" visible="false">
                                </uc1:EsignObj>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="IARow" runat="server" CssClass="HideRow">
                <asp:TableCell>
                    <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                        CellSpacing="1" HorizontalAlign="Center">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButSelCls" onMouseOver="this.className='ButSelOCls'"
                                    onMouseOut="this.className='ButSelCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--
document.getElementById('CodeTxt').focus()

var taMaxLength = 250
		function taLimit() {
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		}

		function taCount() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength*1){
				taObj.value=taObj.value.substring(0,taMaxLength*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Characters")
			}
			}		
			
			
//-->
</script>

<script language=javascript>

	function ChangeCss()
	{
	
	  if (document.getElementById("MappingToRdl_0").checked==true) // To  Role 
	  {
	    document.getElementById("CategoryTr").className=""
	    document.getElementById("RoleTr").className=""
	    
	    document.getElementById("UserGrpTR").className="HideRow"
	    document.getElementById("UserGrpNameLbl").innerHTML=""
        document.getElementById("UserGrpNameTxt").value=""
        document.getElementById("UserGrpCodeTxt").value=""
        
        document.getElementById("UserTR").className="HideRow"
         document.getElementById("UserNamelbl").innerHTML=""
        document.getElementById("UserNametxt").value=""
        document.getElementById("UserIdTxt").value=""
        
        
	  }
	  
	  if (document.getElementById("MappingToRdl_1").checked==true) // To  Group 
	  {
            document.getElementById("CategoryTr").className="HideRow"
            document.getElementById("CategoryList").value=""

            document.getElementById("RoleTr").className="HideRow"
            document.getElementById("RoleList").value=""

            document.getElementById("UserGrpTR").className=""

            document.getElementById("UserTR").className="HideRow"
            document.getElementById("UserNamelbl").innerHTML=""
            document.getElementById("UserNametxt").value=""
            document.getElementById("UserIdTxt").value=""
	      
	  }
	  
	  if (document.getElementById("MappingToRdl_2").checked==true) // to user 
	  {
        document.getElementById("CategoryTr").className="HideRow"
        document.getElementById("CategoryList").value=""

        document.getElementById("RoleTr").className="HideRow"
        document.getElementById("RoleList").value=""

        document.getElementById("UserGrpTR").className="HideRow"
        document.getElementById("UserGrpNameLbl").innerHTML=""
        document.getElementById("UserGrpNameTxt").value=""
        document.getElementById("UserGrpCodeTxt").value=""


        document.getElementById("UserTR").className=""
	  }
	  
	}		


  function ValidateControls(src,args)
  {
        args.IsValid=true;
        Page_IsValid=true;
        var ErrerStr=""
       
        
     if (document.getElementById("MappingToRdl_0").checked==true) // To  Role 
	  {
	    if (<%=TransType %> ==1)
	    {
            if (document.getElementById("CategoryList").value=="")
                ErrerStr =ErrerStr + 'Select Value For: Category ' +  "  \n -"
            if (document.getElementById("RoleList").value=="")
                ErrerStr =ErrerStr + 'Select Value For: Role ' +  "  \n -"
        }
        else
	    {
            if (document.getElementById("CategoryTxt").value=="")
                ErrerStr =ErrerStr + 'Select Value For: Category ' +  "  \n -"
            if (document.getElementById("Roletxt").value=="")
                ErrerStr =ErrerStr + 'Select Value For: Role ' +  "  \n -"
        }       
         
	  }
	  
	  if (document.getElementById("MappingToRdl_1").checked==true) // To  Group 
	  { 
	     if (document.getElementById("UserGrpCodeTxt").value=="")
	     ErrerStr =ErrerStr + 'Select Value For: User Group ' +  "  \n -"
	  }
	  
	  if (document.getElementById("MappingToRdl_2").checked==true) // to user 
	  {
        if (document.getElementById("UserIdTxt").value=="")
        ErrerStr =ErrerStr + 'Select Value For: User ' +  "  \n -"
	  }
	  

	   
      if (document.getElementById("PageCfgidtxt").value=="")
        ErrerStr =ErrerStr + 'Select Value For: Page Configuration List ' +  "  \n -"
	  
	  
	  
	  if (ErrerStr!='')
	  {
            src.errormessage=ErrerStr.substring(0,ErrerStr.length-3)
            args.IsValid=false;
            Page_IsValid=false;
            
	  }
        
        
  }
  
</script>

</html>
