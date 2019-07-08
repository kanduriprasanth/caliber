<%@ Page Language="vb" AutoEventWireup="false" Codebehind="TasksList.aspx.vb" Inherits="WorkTransfer.TasksList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Task Type List</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link href="../TRIMS.css" type="text/css" rel="stylesheet">

    <script language="javascript">
  
    var flag=false
  	
  	function fnCrGetCode()
	{
	    
        var  RecCount=<%=TotalRecCnt %>	

        var  BaseIdArr = new Array()
        var  AulIdArr = new Array()
        var  CodeArr = new Array()
        var  BaseId; 
        var  AulID ;
        if (RecCount>0)
	    {
            for(var k=0;k<RecCount;k++)
	        {
                if(document.getElementById("chk"+k).checked ==true)
                {
                    var  BaseId = document.getElementById("BaseID_"+k).value
                    var  AulID = document.getElementById("AulID_"+k).value
                    var  CodeTxt = document.getElementById("CodeTxt_"+k).value
                    document.getElementById("RBVal").value=BaseId
        	       
                    BaseIdArr.push(BaseId);
                    AulIdArr.push(AulID);        	        
                    CodeArr.push(CodeTxt);        	        
                 }   
	         }
            if ((document.getElementById("RBVal").value == undefined)||(document.getElementById("RBVal").value == ''))
                {
                    alert("Select At Least One Item")
                    return(false);
                } 
            else
                {
                    var BaseIdStr=BaseIdArr.join(",");
                    var AulIDStr=AulIdArr.join(",");
                    var CodeStr=CodeArr.join(",");

                    opener.fnSetVal_Chklist(BaseIdStr,AulIDStr,CodeStr);
                    window.self.close();
                } 
    	 }  
	}

	
	
	document.oncontextmenu=new Function("return false")

	function fnCrCloseWin()
	{
	 
	    if((document.getElementById("RBVal").value == undefined) || (document.getElementById("RBVal").value == ''))
	      {
            alert("Select At Least One Item")
            return(false);
          }    
          else
          {
		    opener.fnSetVal_Chklist('','','')
		    window.self.close();
		  }
	}
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
	
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <table class="MainTable" height="100%" cellspacing="0" cellpadding="0" width="100%"
            align="center" border="3">
            <!-- MAIN HEADER -->
            <tr class="SubHead">
                <td class="MainHead">
                    Task Type List</td>
            </tr>
            <tr>
                <td>
                    <table width="100%" cellspacing="0" cellpadding="0" align="center" class ="SubTable">
                        <tr class="HideRow" >
                        </tr>
                       
                        <tr>
                            <td class="MainTD" colspan="2">
                                <asp:Literal ID="FindLrl" runat="server">Find</asp:Literal>
                                <asp:TextBox ID="FindTxt" runat="server" Width="100px" CssClass='TxtCls' MaxLength="26">%</asp:TextBox>
                            </td>
                            <td class="MainTD">
                                <asp:Literal ID="Literal1" runat="server">Total Records</asp:Literal>
                            </td>
                            <td class="MainTD">
                                <asp:Label ID="MaxRecCntLbl" runat="server"><%=TotalRecCnt %></asp:Label>
                            </td>

                        </tr>
                        
                        
                        <tr >
                        
                                 <td class="MainTD">
                                <asp:Literal ID="FetchSizeLtrl" runat="server">Records Per Page</asp:Literal>
                                <asp:TextBox ID="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" onkeypress="return IsDigit1(event);"
                                    MaxLength="3">50</asp:TextBox>
                            </td>
                            <td class="MainTD">
                                <asp:Literal ID="PgNoLtrl" runat="server">Page No.</asp:Literal>
                                <asp:TextBox ID="PgNoTxt" CssClass="TxtCls" runat="server" AutoPostBack="False" Width="50px"
                                    MaxLength="5" onkeypress="return IsDigit1(event);">1</asp:TextBox>
                                <asp:Button ID="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
                                    onmouseout="this.className='ButCls'"></asp:Button>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="MainTD" colspan="4">
                                <div style="overflow: auto; height: 400px; background-color: gray">
                                    <asp:Table ID="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                        CellPadding="0" CssClass="SubTable">
                                    </asp:Table>
                                </div>
                            </td>
                        </tr>
                        <tr class="HideRow">
                            <td id="RBVal">
                            </td>
                            <td>
                                <asp:TextBox ID="Selvaltxt" CssClass="hideRow" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <!-- MAIN FOOTER -->
            <tr>
                <td class="MainFoot">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 50px"
                        onclick="fnCrGetCode()" onmouseout="this.className='ButCls'" type="button" value="Ok">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                        onclick="fnCrCloseWin()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
