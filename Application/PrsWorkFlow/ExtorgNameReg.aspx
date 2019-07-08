<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ExtorgNameReg.aspx.vb" Inherits="PrsWorkFlow.ExtorgNameReg" %>

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
                            <asp:TableCell CssClass="SubHead" ColumnSpan="5">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        
				      <asp:TableRow>
				      
                        <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="ExtOrgTypeTD"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                          <asp:Label ID="ExtorgTypelab" runat=server CssClass="MainTD"></asp:Label>
                          <asp:TextBox ID="ExtorgTypetxt" runat=server CssClass="HideRow" ></asp:TextBox>
                        </asp:TableCell>
                          
                       <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="NameofExtOrg"></asp:TableCell>
                       <asp:TableCell CssClass="MainTD">
                             <asp:TextBox ID="NameofExtOrgTXt" runat=server CssClass="NameofExtOrgTxt" MaxLength=100 Width="200px"></asp:TextBox>
                       </asp:TableCell>
                        
                       <asp:TableCell CssClass="MainTD">
                            <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit"
                                Width="70"></asp:Button>
                       </asp:TableCell>
                        
                    </asp:TableRow>
                    
                     <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan=5>
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="ExtOrgNameTab">
                                </asp:Table>
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
                <asp:TableCell CssClass="MainFoot" ColumnSpan=2 >
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow >
                             <asp:TableCell CssClass="MainFoot" ColumnSpan=2>
                                <asp:Button ID="SubmitBtn" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit">
                                </asp:Button>
                                
                                
                            </asp:TableCell>
                        </asp:TableRow>
                        
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                        <asp:TextBox ID="FldIdLstTxt" CssClass="HideRow" runat=server></asp:TextBox>
                        <asp:TextBox ID="WitFldIdLstTxt" CssClass="HideRow" runat=server></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language=javascript>

function taLimit() 
	{
		var taObj=window.event.srcElement;
		if (taObj.value.length==taObj.MaxLength*1) return false;
	}

	function taCount()
	{
		var taObj=window.event.srcElement;			
		if (taObj.value.length>taObj.MaxLength*1){
			taObj.value=taObj.value.substring(0,taObj.MaxLength*1);
			alert("Characters exceeding limit\nMaximum Length: "+ taObj.MaxLength +" Characters")
		}
	}	
	
 
 var FldIdArr =new Array()
 var WitFldIdArr=new  Array()
 
 var FldCount ="<%=FldCount %>"
 var WitFldCount = "<%=WitFldCount %>"
 var ExpMessgae =""
 
 function getCheckFldIds(src,args)
 {
    var FldCnt=getCheckEdFieldCount()
    var WitFldCnt=getCheckWitFldCount()
     
    if ((WitFldCount != 0) &&  (WitFldCnt == 0)){ ExpMessgae= ExpMessgae + "Select At Least One Standard Work Item Field" + '\n-' }
    if ((FldCount != 0) &&  (FldCnt == 0)) { ExpMessgae=ExpMessgae+ "Select At Least One Standard Login Fields" + '\n-' }
  
   if (ExpMessgae !="")
   {
      src.errormessage=ExpMessgae.substring(0,ExpMessgae.length-3)
      args.IsValid=false;
      Page_IsValid=false;
   }
   else
   {
      document.getElementById("FldIdLstTxt").value=FldIdArr.join(",");
      document.getElementById("WitFldIdLstTxt").value=WitFldIdArr.join(",");
   }  
 }
 
 function getCheckEdFieldCount()
 {
    var FldbaseID 
    var FldCnt=0 
    if (FldCount != 0)
     {
           for(var i=0;i<FldCount;i++)
           {
              FldbaseID=document.getElementById("FlDIDTxt_" + i).value;
              if(document.getElementById("FldID_" + FldbaseID).checked==true ) { FldIdArr.push(FldbaseID); FldCnt= FldCnt+1; } 
           }
     }
      return FldCnt;
 }


 function getCheckWitFldCount()
 {
  
    var WitFldbaseID 
    var WitFldCnt=0 
    if (WitFldCount != 0)
     {
           for(var i=0;i<WitFldCount;i++)
           {
              WitFldbaseID=document.getElementById("WitFlDIDTxt_" + i).value;
              if(document.getElementById("WitFldID_" + WitFldbaseID).checked==true ) { WitFldIdArr.push(WitFldbaseID); WitFldCnt= WitFldCnt+1; } 
           }
     }
      return WitFldCnt;
 }

 
 function fnCheckColSel(BaseID)
 {
   var FldCnt=getCheckEdFieldCount()
   if (FldCnt > 7 ) 
   { 
     alert("Field Selection Should  Be Less Than or  equal to 7");
     document.getElementById("FldID_" + BaseID).checked=false
   }
 }
 
 
 function ChangeToActiveStatus(RowCnt,OrgNameID)
 {  AjaxChangeOrgTypeStatus(RowCnt,OrgNameID,1) }
 
 function ChangeToDeactiveStatus(RowCnt,OrgNameID)
 {  AjaxChangeOrgTypeStatus(RowCnt,OrgNameID,2) }
 
 function AjaxChangeOrgTypeStatus(RowCnt,OrgNameID,Type)
   {
     var recary = new Array(); 
      
        var xmlhttp;
        try
        { 
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        catch(ex)
        {
            try 
            {
                xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
            }
            catch(ex)
            {
                try
                {
                    xmlhttp=new XmlHttpRequest();
                }
                catch(ex)
                {
                    alert("please update the webbrowser");
                }
            }
        }
        xmlhttp.onreadystatechange=function()
        {
            if(xmlhttp.readystate==4)
            {
                var Time="abc"
                Time=xmlhttp.ResponseText
                
                if (Time==1)
                {
                  if (Type ==1)
                  {
                    document.getElementById("ActiveBtn_" + RowCnt).setAttribute("disabled",true,1)
                     document.getElementById("InActiveBtn_" + RowCnt).setAttribute("disabled",false,1)
                     
                     
                  }
                  else
                  {
                     document.getElementById("ActiveBtn_" + RowCnt).setAttribute("disabled",false,1)
                     document.getElementById("InActiveBtn_" + RowCnt).setAttribute("disabled",true,1)
                  }
                }
                xmlhttp =null;
            }
        }
         var url="ChangeorgTypeStatus.aspx?OrgNameID=" +  OrgNameID + "&Type=" + Type  + "&RegType=2"
        xmlhttp.open("POST",url,true);
        xmlhttp.send(null);
    }
                
              
 
 
</script>

</html>
