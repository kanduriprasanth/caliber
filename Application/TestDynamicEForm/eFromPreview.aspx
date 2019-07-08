<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="eFromPreview.aspx.vb" Inherits="TestDynamicEForm.eFromPreview" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title><%=MainTitleLtrl.Text%></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">



</head>
<body>
        
    <form id="form1" method="post" runat="server">
    <asp:Table ID="Table1" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
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
                        HorizontalAlign="center" ID="Table2">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="HideRow" ColumnSpan="3">
                                <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow CssClass="HideRow">
                        <asp:TableCell CssClass="MainTD" ID="BodyTd" Style="font-weight: bold;"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                          <asp:DropDownList ID="BodyRowsDdL" runat="server" CssClass="TxtCls" MaxLength="50" Width="70px"
                                TabIndex="6" AccessKey="c" AutoPostBack="True">
                                <asp:ListItem Value="2" Selected=True>2</asp:ListItem>
                                <asp:ListItem Value="4">4</asp:ListItem>
                                <asp:ListItem Value="6">6</asp:ListItem>
                           </asp:DropDownList>
                        </asp:TableCell>
                        </asp:TableRow>
                       
                          <asp:TableRow>
                            <asp:TableCell CssClass="SubHeadTd" ID="BodyRowTd" ColumnSpan="2" ></asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DBTabTd" ColumnSpan="2" runat="server">
                                <asp:Table ID="DBTab" runat="server" EnableViewState="False" Width="100%" CellPadding="0"
                                    CellSpacing="1" CssClass="SubTable">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        
                        
                       
                        </asp:Table>
                     <!-----------End of Base table------------->
                </asp:TableCell>
                 
             </asp:TableRow>
             
             <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                            
                                <input type="button" onMouseOver="this.className='ButOCls'" Class='HideRow' onMouseOut="this.className='ButCls'"
				                value="Back"  onclick="Javascript: window.history.back()">
                                <asp:Button ID="BachBtn" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Back" >
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell  CssClass="HideRow">
                            <asp:TextBox id="FieldsCountTxt" runat="server"></asp:TextBox>
                            <asp:TextBox ID="BodyCntTxt" runat="server" ></asp:TextBox>
                            <asp:TextBox ID="CkFlagTXT" runat="server" ></asp:TextBox>
                            <asp:TextBox ID="CtrlIdTxt" runat="server" ></asp:TextBox>
                            <asp:TextBox ID="FldInfoTxt" runat="server" ></asp:TextBox>
                            <asp:TextBox ID="FldDescTxt" runat="server" ></asp:TextBox>
                            <asp:Button ID="Gobtn" runat=server CssClass="HideRow" > </asp:Button>
                            
                            </asp:TableCell>
                        </asp:TableRow>
             
            </asp:Table>
    </form>
</body>

<script language="javascript">
    
    function ReadopenerFields()
    {
       var CtrlidLst
       var CtrlIdLst
       var FldInfolst
       var CtrlId
      document.getElementById("BodyCntTxt").value= opener.window.document.getElementById("BodyRowsDdL").value
      
      if (document.getElementById("BodyCntTxt").value !="") 
      {
          var FieldsCount=opener.window.document.getElementById("FldCountTxt").value
          var CkFlagArr=new Array()
          var FldInfoArr=new Array()
          var FldDescArr=new Array()
          var CtrlIDArr=new Array()
             
          for(var i= 0 ;i<FieldsCount;i++)
          {         
            if(opener.window.document.getElementById("CBox" + i).checked == true)
            {
                CkFlagArr.push(i)
                CtrlId=opener.window.document.getElementById("FldDBID" + i).value
            
//                 if(CtrlId =="5")
//                     CtrlId = "10"
//                  else if (CtrlId =="6")
//                   CtrlId = "11"
//                   
                   CtrlIDArr.push(CtrlId)
                   FldInfoArr.push(opener.window.document.getElementById("FldInfoTxt" + i).value)
                   FldDescArr.push(opener.window.document.getElementById("FieldDesc" + i).value)
            }
          }
          
           document.getElementById("CkFlagTXT").value=CkFlagArr.join(",")
           document.getElementById("CtrlIdTxt").value=CtrlIDArr.join(",")
           document.getElementById("FldInfoTxt").value=FldInfoArr.join("#*#")
           document.getElementById("FldDescTxt").value=FldDescArr.join("#*#")
           
          
          
       }  
        document.getElementById("Gobtn").click()
       
//       else
//       {
//         alert("Selected Body Column Value In eFrom")
//       }
      
    }
    
    
    
    if("<%=Page.IsPostBack%>" == "False")
	{
	   ReadopenerFields()
	   
    }
    
    
</script>
</html>
