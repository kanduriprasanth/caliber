<%@ Page Language="vb" AutoEventWireup="false" Codebehind="EFormListPopUp.aspx.vb"
    Inherits="EFormIssuance.EFormListPopUp" %>

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
		function TemplatPreview(TemplateId)
		{
	 pageURL ="TemplatePreview.aspx?TemplateId=" + TemplateId
	  SpWinObj = window.open(pageURL,'TemplatePreview',"height=350,width=600,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=75,left=75");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();

        }
        
         function fnWorkFlowPoup(WorkFlowId)
      {
            var pageURL = "../TestDynamicEForm/WorkFlowDetails.aspx?WorkFlowId=" + WorkFlowId + "&AT=G" 
            var features = "height=500,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
            SpWinObj = window.open(pageURL,'TemplatePreview',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
      }
    </script>

</head>
<body ms_positioning="GridLayout" onload="document.getElementById('FindTxt').focus()" onblur="document.getElementById('FindTxt').focus()">
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
                            <tr class="HideRow">
                                <td>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="MainTd">
                                    <asp:Literal ID="SearchOptionLtrl" runat="server">Search Option</asp:Literal>
                                </td>
                                <td class="MainTd" colspan = 3>
                                <asp:RadioButtonList ID="SearchOptionRD" runat="server" RepeatDirection="Horizontal"
                                        CellPadding="0" CssClass="RBList" CellSpacing="0" Height="18px">
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td class="MainTd" colspan="2">
                                    <asp:Literal ID="FindLrl" runat="server">Find</asp:Literal>
                                    <asp:TextBox ID="FindTxt" runat="server" Width="180px" CssClass='TxtCls' MaxLength="25">%</asp:TextBox>
                                </td>
                                <td class="MainTd" colspan="2">
                                    <asp:Literal ID="FetchSizeLtrl" runat="server">Records Limit</asp:Literal>
                                    <asp:TextBox ID="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3" onkeypress="return IsDigit1(event);">50</asp:TextBox>
                                    <asp:Button ID="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
                                        onmouseout="this.className='ButCls'"></asp:Button>
                                </td>
                            </tr>
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
                    <asp:TextBox ID="EMCheckTxt" CssClass="HideRow" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>

    <script language="javascript">

  	function fnCrGetCode(RowCnt)
	{ 
	
		var KfLableVal=document.all("KfLable"+ RowCnt).innerHTML
		var KdIdVal=document.all("KdId"+ RowCnt).innerText
		var KdCodeVal=document.all("KdCODE"+ RowCnt).innerText
		document.getElementById("RBVal").value = KdIdVal
		var WofID=document.all("WofId"+ RowCnt).innerText
		var Valreq=document.all("Valreq"+ RowCnt).innerText
		var ValFunID=document.all("ValFunID"+ RowCnt).innerText
		var WofDesc=document.all("WofDesc"+ RowCnt).innerText
		
		
		
		
		 var plancode="<%=Request.QueryString("WitCode")%>"        
           var plancodeArr = new Array()
           var plancodeArr=plancode.split("/")
           var plancodeArrlen=plancodeArr.length
           var plantype=plancodeArr[plancodeArrlen-1]
            //
            if(plantype.substring(0,2)=="EM")
            {
              if(KfLableVal.substring(0,3)=="EM_")
              {
               opener.fnGetFormVal(KdIdVal,KdCodeVal,KfLableVal,WofID,Valreq,ValFunID,WofID,WofDesc,RowCnt)
               document.getElementById("EMCheckTxt").value = RowCnt
              }
              else
              {
              alert("Select Effectiveness/Monitoring Plan Activity Details Form");
              
              document.getElementById("RBID"+ RowCnt).checked=false
//              if (document.getElementById("EMCheckTxt").value != "")
//              {
//                  document.getElementById("RBID"+ document.getElementById("EMCheckTxt").value).checked = true
//              }
             KfLableVal=""
		            KdCodeVal=""
		            KdIdVal=""
		            opener.fnGetFormVal(KdIdVal,KdCodeVal,KfLableVal,WofID,Valreq,ValFunID,WofID,WofDesc,RowCnt)
            
              }
            }
            else
            {
                if(KfLableVal.substring(0,3)=="EM_")
                 {
		            alert("Effectiveness/Monitoring Plan Activity Details Form Cannot Be Selected For General Action Plans")
		            document.getElementById("RBID"+ RowCnt).checked=false
		            KfLableVal=""
		            KdCodeVal=""
		            KdIdVal=""
		            opener.fnGetFormVal(KdIdVal,KdCodeVal,KfLableVal,WofID,Valreq,ValFunID,WofID,WofDesc,RowCnt)
		    
		         }
		         else
		         opener.fnGetFormVal(KdIdVal,KdCodeVal,KfLableVal,WofID,Valreq,ValFunID,WofID,WofDesc,RowCnt)
		    }
	}
	function fnCrCancel(){
		opener.fnGetFormVal('','','','','','')
		window.self.close()
	}

	//document.oncontextmenu=new Function("return false")

	function fnCrCloseWin(){
	 
	      if(document.getElementById("RBVal").value == undefined)
	      {
            alert("Select Activity Details Form ")
            return(false);
          }   
          
          opener.fnCrformSubmit()
		window.self.close()
	}
    </script>

<script language=javascript>
		
		function IsDigit1(e)  ///Function To check Numeric values
            {
                if(e.shiftKey ==true)
                return false;
                var KeyIdentifierMap =
                {
                    End			: 35,
                    Home		: 36,
                    Left		: 37,
                    Right		: 39,
                    'U+00007F'	: 46		// Delete
                } 
                if ( !e )
                e = event ;

                var AvailableVal = window.event.srcElement.value.indexOf(".")
                var iCode = ( e.keyCode || e.charCode );

                if((iCode == 46) && (AvailableVal != -1))
                return false;
                if((iCode == 46) && (window.event.srcElement.value == ""))
                return false;

                if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
                    iCode = KeyIdentifierMap[ e.keyIdentifier ] ;
                if(iCode ==39 ) return false;
                return (
                    ( iCode >= 48 && iCode <= 57 )		// Numbers
                    || (iCode >= 35 && iCode <= 40)		// Arrows, Home, End
                    || iCode == 8						// Backspace
                    || iCode == 46						// Delete
                    || iCode == 9	                    // Tab
                    )
			    
            
                
            }
            
           function radiochk()
           {
           
           if(<%=request.queryString("RowCnt")%>!="")
            {
           var Rowcnt=<%=request.queryString("RowCnt")%>
                document.getElementById("RBID"+Rowcnt).checked=true
            }
           } 
    radiochk()
            
		</script>
</body>
</html>
