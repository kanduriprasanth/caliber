<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WorkFlowPopUp.aspx.vb" Inherits="MailConfiguration.WorkFlowPopUp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title><%=MainTitleLtrl.Text%></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
//		function TemplatPreview(TemplateId)
//		{
//	 pageURL ="TemplatePreview.aspx?TemplateId=" + TemplateId
//	  SpWinObj = window.open(pageURL,'TemplatePreview',"height=350,width=600,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=75,left=75");
//        if(SpWinObj.opener == null) SpWinObj.opener=self;
//        SpWinObj.focus();

//        }
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <table class="MainTable" height="100%" cellspacing="0" cellpadding="0" width="100%"
            align="center" border="0">
            <!-- MAIN HEADER -->
            <tr>
                <td class="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal></td>
            </tr>
            <tr>
                <td>
                    <div class="MainTd" style="height: 20px" id="Div1">
                        <table width="100%" cellspacing="0" cellpadding="0" align="center">
                             <tr>
                                <td class="MainTd" colspan="4">
                                        <div style="overflow: auto; height: 200px; background-color: gray">
                                            <asp:table id="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                                CellPadding="0" CssClass="SubTable">
                                            </asp:table></div>
                                </td>
                            </tr>
                            <tr class="HideRow">
                                <td id="RBVal">
                                </td>
                                <td>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <!-- MAIN FOOTER -->
            <tr>
                <td class="MainFoot">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 50px"
                        onmouseout="this.className='ButCls'" type="button" value="Ok" onclick="fnCrCloseWin()">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                        onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
                    <asp:TextBox ID="TemplateType" CssClass="HideRow" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>

    <script language="javascript">

//  	function fnCrGetCode(RowCnt)
//	{ 
//		var KfLableVal=document.all("KfLable"+ RowCnt).innerHTML
//		var KdIdVal=document.all("KdId"+ RowCnt).innerText
//		document.getElementById("RBVal").value = KdIdVal
//			
//		opener.fnGetFormVal(KdIdVal,KdCodeVal,KfLableVal,Wo)
//	}
	
	function fnCrGetCode(RowCnt)
	{
        var KfLableValArr=new Array()
        var KdIdValArr=new Array()
                var Lblvalue
        for(var k=0;k<<%=RecordCnt%>;k++)
	    {
	        if(document.getElementById("RBID"+k).checked ==true)
	        {
	        
	         if(document.all("KdId"+ k).innerText!="0")
	         {  Lblvalue=document.all("KfLable"+ k).innerHTML  + "(" + document.all("EventLbl"+ k).innerText  +")"  }
	         else
	         {Lblvalue= document.all("KfLable"+ k).innerHTML}
	            //KfLableValArr.push(document.all("KfLable"+ k).innerHTML)
	            KfLableValArr.push(Lblvalue)
	            
	            KdIdValArr.push(document.all("KdId"+ k).innerText)
	            document.getElementById("RBVal").value = document.all("KfLable"+ k).innerHTML
	        }
	    }
		    var KfLableVal=KfLableValArr.join("; ")
		    var KdIdVal=KdIdValArr.join(",")
		    
		    opener.fnSetVal_MailTo(KdIdVal,KfLableVal)
	}
	
	
	function fnCrCancel(){
		opener.fnSetVal_MailTo('','')
		window.self.close()
	}

	document.oncontextmenu=new Function("return false")

	function fnCrCloseWin(){
	 
	      if(document.getElementById("RBVal").value == undefined)
	      {
            alert("Select At Least One Group")
            return(false);
          }    
          opener.fnCrformSubmit1()
		window.self.close()
	}
	
	   function UserGroupDetails(UserGroupId)
        {
            pageURL ="../WorkFlow/UserGroupDetails.aspx?UserGroupId=" + UserGroupId
            SpWinObj = window.open(pageURL,'TemplatePreview',"height=350,width=600,toolbar=no,resizable=false,menubar=no,status=no,scrollbars=yes,top=75,left=75");
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();

        }
    </script>

</body>
</html>

