<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DBXseriesPopUp.aspx.vb"
    Inherits="DashBoard.DBXseriesPopUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head runat="server">
    <title>Untitled Page</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
    
     var RowSel =""
    
    function fnCrGetCode(RowCnt)
	{ 
	    var TotalRecCnt='<%=TotalRecCnt%>';
        RowSel = RowCnt
        var XseriesName=document.all("XseriesName"+ RowCnt).innerHTML
        var XseriesColID=document.all("XseriesColID"+ RowCnt).innerText
   	    opener.fnSetXseries(XseriesName,XseriesColID,TotalRecCnt)
	}
	
	function fnCrCancel(){
		opener.fnSetXseries('','')
		window.self.close()
		 
	}
	function fnCrCloseWin()
	{
	    if ( (document.getElementById("RBVal").value == undefined) || (document.getElementById("RBVal").value == '') )
	      {
            alert("Select At Least One Item")
            return(false);
          } 
		
		window.self.close()
	}
	
	function fnGetSunCodeValues()
	{
        var KfLableValArr=new Array()
        var KdIdValArr=new Array()
        var Lblvalue=''
        for(var k=0;k<<%=TotalRecCnt%>;k++)
	    {
	        if(document.getElementById("RBID"+k).checked ==true)
	        {
                 Lblvalue=document.all("XseriesName"+ k).innerHTML  
	             KfLableValArr.push(Lblvalue)
	             KdIdValArr.push(document.all("XseriesColID"+ k).innerHTML  )
	             document.getElementById("RBVal").value=Lblvalue
	             
	        }
	    }
	    if (Lblvalue=='') document.getElementById("RBVal").value =Lblvalue
	    
	    if ( (document.getElementById("RBVal").value == undefined) || (document.getElementById("RBVal").value == '') )
	      {
            alert("Select At Least One Item")
            return(false);
          }  
	    
        var KfLableVal=KfLableValArr.join("; ") ;
	    opener.fnSetXseries(KfLableValArr.join("; "),KdIdValArr.join(","),<%=TotalRecCnt%>)
	   // window.self.close();
	}
	
    
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <table class="MainTable" height="100%" cellspacing="0" cellpadding="0" width="98%"
            align="center" border="3">
            <tr>
                <td class="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal></td>
            </tr>
            <tr>
                <td class="MainTd" colspan="4">
                    <div style="overflow: auto; height: 280px; background-color: gray">
                        <asp:Table ID="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                            CellPadding="0" CssClass="SubTable">
                        </asp:Table>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="MainFoot">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 50px"
                        onclick="fnCrCloseWin()" onmouseout="this.className='ButCls'" type="button" value="Ok">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                        onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
                </td>
            </tr>
            
            <tr class="HideRow">
              <td>
                  <asp:TextBox ID="SelColNamesTxt" runat=server></asp:TextBox>
                  <asp:TextBox ID="SelColIDTxt" runat=server></asp:TextBox>
                     <asp:Button id="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
				    onmouseout="this.className='ButCls'"></asp:Button>
              </td>
              <td id="RBVal">
                                </td>
            </tr>
            
        </table>
    </form>
</body>

<script language=javascript>
   function fnReadselSumFlds()
   {
      var XseriesName=opener.window.document.getElementById("SelSumColNamesTxt").value
      var XseriesColID=opener.window.document.getElementById("SelSumColIdsTxt").value
      
      document.getElementById("SelColNamesTxt").value=XseriesName
      document.getElementById("SelColIDTxt").value=XseriesColID
      document.getElementById("btnFind").click();
      
   }
   
   if (("<%=Page.IsPostBack%>" == "False") && ("<%=Request.QueryString("DatasrcId")%>" == "0"))
	{
	   fnReadselSumFlds()
    }
</script>
</html>
