<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ActionPlanList.aspx.vb" Inherits="TestEFormExecution.ActionPlanList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title><%=MainTitleLtrl.Text%></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
  <link rel="stylesheet" href="../TRIMS.css">
  
  

  <script language=javascript>
  
  function IsDigit1(e)  ///Function To check Numeric values
    {
        
       var KeyIdentifierMap =
      {
        End            : 35,
        Home        : 36,
        Left        : 37,
        Right        : 39,
        'U+00007F'    : 46        // Delete
      }
        if ( !e )
            e = event ;
       
        if(e.shift==true)
            return false

      var iCode = ( e.keyCode || e.charCode );

      if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
            iCode = KeyIdentifierMap[ e.keyIdentifier ] ;

      return (
            ( iCode >= 48 && iCode <= 57 )        // Numbers
            || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
            || iCode == 8                        // Backspace
            || iCode == 9                        // Tab.
            )
    }
    
     function FnAllowNumVal()
    {
        var e =event.keyCode
        if(event.ctrlLeft == true){return false}  
        if(event.shiftKey ==true){return false}
               
        else if((e ==8)||(e ==46)||(e ==37)||(e ==39)||(e ==9)||(e ==16)||(e>=96 && e <= 105)) {return true}
        else if(e ==32){return false}
        else if(isNaN(String.fromCharCode(e))) //Validates for Key Data
        {return false}
    }	
    	
     function fnStadardpopup(ActPlnCnt,PlanType)
      {
         var pageURL = "StandrdActPlanpopup.aspx?ActPlnCnt="+ ActPlnCnt + "&PlanType=" + PlanType   
	     var features = "height=450,width=700,toolbar=no,menubar=no,status=no,scrollbars=yes,top=250,left=350"
	     SpWinObj = window.open(pageURL,'StandrdCodes',features)
	     if(SpWinObj.opener == null) SpWinObj.opener=self;
	     SpWinObj.focus();
      }
      
      function SetCaption (ActPlanCnt,Caption)
      {
         document.getElementById("ActPlan_" + ActPlanCnt).value=Caption
      }
      
  </script>
  
  
		
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server" >
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
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Style="font-weight: bold;width:46%;" ></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" >
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="TxtCls" MaxLength="1" Width="50px" AutoPostBack=true
                                    AccessKey="C" TabIndex="1" onkeydown="return FnAllowNumVal()"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow CssClass="MainTD">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2" >
                            <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                            HorizontalAlign="center" ID="ActPlanTable"></asp:Table>
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
                    <asp:Table runat="server"  Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 50px"
                                onclick="fnSpCloseWin()" onmouseout="this.className='ButCls'" type="button" value="Submit">
                                <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                                onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                        <asp:TextBox ID="ActonPlnaTxt" runat=server></asp:TextBox>
                    </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
    
   <script language="javascript">
   
   var taMaxLength = 500

    function taLimit() 
	{
		var taObj=window.event.srcElement;
		if (taObj.value.length==taMaxLength*1) return false;
	}

	function taCount()
	{
		var taObj=window.event.srcElement;			
		if (taObj.value.length>taMaxLength*1){
			taObj.value=taObj.value.substring(0,taMaxLength*1);
			alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Characters")
		}
	}	
   
   function fnSpCloseWin()
   {
        if (!Page_ClientValidate()){
            return;
        }
        var ActCnt = document.getElementById("CodeTxt").value
        var ValueArr=new Array()
      
      if(ActCnt != "" || ActCnt != "0")
      {
        for (var i=0;i<ActCnt;i++)
        { ValueArr.push(document.getElementById("ActPlan_" + i).value)}
      
        opener.setvalue("<%=Request.QueryString("FieldId")%>",<%=Request.QueryString("CtrlId") %>,ValueArr)
        window.self.close()
     } 
     else
     {
       alert("Enter At Least One Action Plan")
     }
   }
   
   function fnCrCancel()
   { 
    var ValueArr=new Array()
     opener.setvalue("<%=Request.QueryString("FieldId")%>",<%=Request.QueryString("CtrlId") %>,'')
     window.self.close()
   }
   	
   	function fnGetActPlans()
	{
	  var ActPln=opener.window.document.getElementById("<%=Request.QueryString("FieldId")%>" +  "_" + <%=Request.QueryString("CtrlId") %>).value
	  
	  if(ActPln!="")
	  {
	   var ActPlnArr =new Array()
	   ActPlnArr=ActPln.split("#*#");
	   for(var Actcnt=0;Actcnt<ActPlnArr.length;Actcnt++)
	   {
	    document.getElementById("ActPlan_"+Actcnt).value=ActPlnArr[Actcnt]
	   }
	  }
	}
	setTimeout("fnGetActPlans()",10)

   </script>
   
   
</body>
</html>