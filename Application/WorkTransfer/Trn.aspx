<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="WorkTransfer.Trn" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<%@ Register TagPrefix="uc2" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
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

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
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
                            <asp:TableCell CssClass="SubHead" ColumnSpan="3">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:TextBox ID="CodeTxt" runat="server" Enabled="FALSE" CssClass="UCTxtCls" MaxLength="30"
                                    Width="200px" AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DescTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" onkeypress="taLimit()"
                                    onkeyup="taCount()" Width="200px" TextMode="MultiLine" Rows="2" AccessKey="C"
                                    TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:Label ID="IsuCatLbl" runat="server"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:DropDownList ID="IsuCatDDL" runat="server" EnableViewState="true" onchange="ReoveDAta()">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="TaskTypesListTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="TaskTypesPopUpFn()" class='HideRow' tabindex="3" >
                            
                                <asp:TextBox ID="TaskTypeIDTxt" runat="server" CssClass="HideRow" Text="9"></asp:TextBox>
                                <asp:TextBox ID="TaskTypeNameTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="TaskTYpeIsAPP" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:Label ID="TaskTypeNameLab" runat="server" Text=""></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell ID="WrkBlongsToTd" CssClass="MainTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <input type="button" onclick="FromUserPopUpFn(1)" class='RsnPUP' tabindex="3" >
                               <asp:TextBox ID="UserIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="UserNameTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:Label ID="UserNameLbl" runat="server" Text=""></asp:Label>
                              
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow ID="AppCountTr" CssClass="HideRow">
                            <asp:TableCell ID="AppCountTD" CssClass="MainTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                             <asp:TextBox ID="AppCountTxt" runat="server" CssClass="TxtCls" MaxLength="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="TasksListTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="TaskListPopUpFn()" class='RsnPUP' tabindex="3" >
                                <asp:TextBox ID="TasksListCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="TasksListIDTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:Label ID="TasksListLbl" runat="server" Text=""></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="WrkAssignToTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <input type="button" onclick="FromUserPopUpFn(2)" class='RsnPUP' tabindex="3" >
                               <asp:TextBox ID="AsstoUserIDTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="AsstoUserNameTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:Label ID="AsstoUserNamelbl" runat="server" Text=""></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="TaskTblTr">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="TaskTbl">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ValidUpToTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <uc2:CaliberCalender id="ValidUpToTdDate" runat="server">
                                </uc2:CaliberCalender>
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
            <asp:TableRow>
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButCls" Height="20px" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
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
//document.getElementById('CodeTxt').focus()

   var taMaxLength = 200
    var PWidth=600
    var PHeight=600
    
    var PHeight1=700
    var PWidth1=1000


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
		
		
		function FnCheckUser(src,args)
		{
		    args.IsValid=true;
            Page_IsValid=true;
            
		    var User1=document.getElementById ("UserIdTxt").value;
		    var User2=document.getElementById ("AsstoUserIDTxt").value;
		    
		    if(User1!=""&&User2!="")
		    {
		        if (User1==User2)
		        {
		            src.errormessage="Work Transfer From and Work Transfer To Must Be Different";
		            args.IsValid=false;
                    Page_IsValid=false;
    		    		    
		        }
		     }   
		    var formName = document.forms(0).name
		}	
		
					
//-->

 function FnValidUpto(src, args) {
            Page_IsValid = true;
            args.IsValid = true;
            var flag = valid();
            if (flag == false) {
                src.errormessage = "Valid Upto Date Must be Greater Than or Equal to Current Date";
                args.IsValid = false;
                Page_IsValid = false;

            }
        }
        
        function ReoveDAta()
        {
          CleartaskList()
        }
    
   function ClearFromuser()
   {
    document.getElementById("UserIdTxt") .value=""
    document.getElementById("UserNameTxt") .value=""
    document.getElementById("UserNameLbl").innerHTML=""
   }
   
   function CleartaskList()
   {
      document.getElementById("TasksListCodeTxt").value=""
      document.getElementById("TasksListIDTxt").value=""
      document.getElementById("TasksListLbl").innerHTML=""
   }
   
    function FromUserPopUpFn(srcFrom)
    {
        var pageURL="UsersListPopup.aspx?srcFrom=" +srcFrom
        var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
        var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
        SpWinObj = window.open(pageURL,'SpecCodes',"height="+ PHeight +",width="+ PWidth +",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    function fnSetUserName(UserID,UserName,srcFrom)
    {
       if (srcFrom ==1)
       {
         
        document.getElementById("UserIdTxt") .value=UserID
        document.getElementById("UserNameTxt") .value=UserName
        document.getElementById("UserNameLbl").innerHTML=UserName
            CleartaskList()        
       }
       
       if (srcFrom==2)
       {        
           document.getElementById("AsstoUserIDTxt") .value=UserID
        document.getElementById("AsstoUserNameTxt") .value=UserName
        document.getElementById("AsstoUserNamelbl").innerHTML=UserName
       } 
    }
    

        
    
     function TaskListPopUpFn()
    {
        var ExpMsg=''
        
        var IsuCatID=document.getElementById("IsuCatDDL").value
        var UserId=document.getElementById("UserIdTxt").value
 
        if ( IsuCatID=="")
        ExpMsg= ExpMsg  + 'Select Value  For: Issue Category' + '\n'

        if (UserId =="")
        ExpMsg= ExpMsg  + 'Select Value  For: Work Transfer From' + '\n'
     
       
        if (ExpMsg == '')
        {
        
        
            var pageURL ="../WorkTransfer/MyWorkItems.aspx?PrsType=" + IsuCatID + "&UserID=" +  UserId + "&Type=2&ListType=1&SelListCodes=" + document.getElementById("TasksListCodeTxt").value
            
            var ScreenLeft = parseInt(window.screen.width-PWidth1) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight1)/2; 
            SpWinObj = window.open(pageURL,'SpecCodes',"height="+ PHeight1 +",width="+ PWidth1 +",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft);
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        else
        {
            alert(ExpMsg);
        }
    }
    
    
    function fnSetVal_Chklist(AulIDStr,BaseIdStr)
    {
      document.getElementById("TasksListCodeTxt").value=AulIDStr
      document.getElementById("TasksListIDTxt").value=BaseIdStr
      
      if (AulIDStr!='')
      {
        document.getElementById("TasksListLbl").innerHTML ="<span class='MainTD' style='color:Blue;cursor:hand' onclick='TaskListPreview()'>Preview</span>"
      }
      else
      {
         document.getElementById("TasksListLbl").innerHTML=""
      }
    
    }
    
    function TaskListPreview()
    {
        var IsuCatID=document.getElementById("IsuCatDDL").value
        var UserId=document.getElementById("UserIdTxt").value
        var TsakTypeLst =document.getElementById("TasksListCodeTxt").value
        if (TsakTypeLst != '')
        {
        
      
                var pageURL ="../WorkTransfer/MyWorkItems.aspx?PrsType=" + IsuCatID + "&UserID=" +  UserId + "&Type=2&ListType=3&SelListCodes=" +  TsakTypeLst   
                var ScreenLeft = parseInt(window.screen.width-PWidth1) /2;
                var ScreenTop = parseInt(window.screen.height-PHeight1)/2; 
                SpWinObj = window.open(pageURL,'SpecCodes',"height="+ PHeight1 +",width="+ PWidth1 +",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft);
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();
        } 
            
    }
    
</script>

<script language="vbscript">
		
	function valid()
	
	Thismonth=<%=Thismonth %>
	Thisday=<%=Thisday %>
	Thisyear=<%=Thisyear %>
	today=dateserial(Thisyear,Thismonth,Thisday)
	valid=true
	str=document.getElementById("ValidUpToTdDate_CalDateVal").value
	if str="" then exit function
	stDateAry=split(str,"/")
	stDateVal=dateserial(stDateAry(2),stDateAry(0),stDateAry(1))
	DDgap=DateDiff("d",stDateVal,today)
	if DDgap>0 then
	valid=false
	end if
	end function
</script>

</html>
