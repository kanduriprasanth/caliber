<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="XseiresValueSet.aspx.vb" Inherits="ReportConfig.XseiresValueSet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head id="Head1" runat="server">
    <title> <%=MainTitleLtrl.Text%></title>
    <link rel="stylesheet" href="../TRIMS.css" />
    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript" src="../JScript/jquery.min.js"></script>
    
     <script type='text/javascript' src='../JScript/jquery.simplemodal.js'></script>
     <link type='text/css' href='basic.css' rel='stylesheet' media='screen' />
    
     <script language="javascript">
  
            function IsValid(Exstval)
            {
                  var ErrerStr="" 
                  var val=document.getElementById ("DrillDownTxt").value 
                  if(isNaN(val)==true)
                    document.getElementById ("DrillDownTxt").value=0;
                    val=1;
                  if (val>25 || val<=0)
                  {
                    ErrerStr="Number of Drilldown levels Must  Be Greater Than 0 And Less Than Or Equal To 25 ";
                    
                  }
                 if (ErrerStr != "") 
                  {
                    alert(ErrerStr);
                    document.getElementById ("DrillDownTxt").value=Exstval;
                  }
                 else
                 {
                      if(val=="")
                      {
                        document.getElementById ("DrillDownTxt").value=Exstval;
                      }
                      form1.submit();
                 }
                             
            }
            
            
            
//            function SetDropdwonVlaue(RowCnt)
//            {
//                var e = document.getElementById("StdXSeries" + RowCnt);
//                var ColumnName =e.options[e.selectedIndex].text;
//                document.getElementById("AliesName" + RowCnt).value=ColumnName
//            }
    	
    </script>
    
</head>
<body>
    <form id="form1" runat="server">
    <asp:Table ID="tt2" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
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
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                                                
                      
                        
                        <asp:TableRow CssClass="MainTD">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="XSeriesTab">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow >
                            <asp:TableCell >
                                    <div id="DisplayValueDiv" style="overflow-y:scroll; height:400;" runat="server" class="HideRow"></div>
                            </asp:TableCell>
                         </asp:TableRow>
                                                      
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        
                           
            
                        <asp:TableRow>
                            <asp:TableCell>
                                <input class="<%=BtnCss %>" onmouseover="this.className='ButOCls'" style="width: 60px"
                                onclick="SaveSeriesValue()" onmouseout="this.className='ButCls'" type="button" value="Submit">
                                <input class="<%=BtnCss %>" onmouseover="this.className='ButOCls'" style="width: 60px"
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
                    <asp:TextBox ID="ObjectIdTxt" runat="server"></asp:TextBox>
                     <asp:TextBox ID="IsuTypeTxt" runat="server"  ></asp:TextBox>
                     <asp:TextBox ID="ObjectTypeTxt" runat="server"  ></asp:TextBox>
                      <asp:TextBox ID="SelUserFldTxt" runat=server></asp:TextBox>
                    <asp:TextBox ID="SelFldColnameTxt" runat=server></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
           
        </asp:Table>
     </form>
    
    <script language="javascript">
   
    function fnCrCancel()
   { 
     var ValueArr=new Array()
    opener.SetXSeriesValue('','','')
     window.self.close()
   }
   
    
    function SaveSeriesValue() 
    {
     
       var ExpMsg=""
       var ItemCount = document.getElementById("DrillDownTxt").value 
       
       var SeriesAliesName= new Array()
       var SeriesColumnAname= new Array()
       var SeriesDDLname= new Array()
       
       var lbl =""
       
       for (var ItemCnt=0;ItemCnt<ItemCount;ItemCnt++)
       {
        if(document.getElementById("StdXSeries" + ItemCnt).value=="" && $.trim(document.getElementById("AliesName" + ItemCnt).value)=="") 
         {
             ExpMsg=ExpMsg + "Select X Series Columns" + (ItemCnt+1) + " Row" +  "\n -"
             ExpMsg=ExpMsg + "Enter Alies Name" + (ItemCnt+1) + " Row" +  "\n -"
          }
       else if(document.getElementById("StdXSeries" + ItemCnt).value=="") 
        {
            ExpMsg=ExpMsg + "Select X Series Columns" + (ItemCnt+1) + " Row" +  "\n -"
       
        }
       else if($.trim(document.getElementById("AliesName" + ItemCnt).value)=="") 
        {
           ExpMsg=ExpMsg + "Enter Alies Name" + (ItemCnt+1) + " Row" +  "\n -"
        }
        
        else 
         {
             var e = document.getElementById("StdXSeries" + ItemCnt);
             var ColumnName =e.options[e.selectedIndex].text;
             
            SeriesAliesName.push(document.getElementById("AliesName" + ItemCnt).value)
            SeriesColumnAname.push(e.options[e.selectedIndex].value)
            SeriesDDLname.push(ColumnName)
            
            lbl=e.options[e.selectedIndex].value
         }
         
       }
        if (ExpMsg == "")
            {
                var ObjIdVale=SeriesAliesName.join("#*#")
                var ObjColVale=SeriesColumnAname.join("#*#")
                var DrlSelColum=SeriesDDLname.join("#*#")
                
                opener.SetXSeriesValue(ObjIdVale,ObjColVale,DrlSelColum)
                window.self.close();
           }
           else
           {
             alert(ExpMsg.substring(0,ExpMsg.length-3))
           } 
       
    }
    
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



    function CheckuserField()
    {
    
         if (<%=Request.QueryString("StatusFlag") %> == "1")
         {
          var SelUserFld=opener.window.document.getElementById("SelUserFldTxt").value;
          var SelFldColname=opener.window.document.getElementById("SelFldColnameTxt").value;
          
              if (SelUserFld != '')
              {
                document.getElementById("SelUserFldTxt").value=SelUserFld
                document.getElementById("SelFldColnameTxt").value=SelFldColname
                form1.submit();
              }
         }
         else if (<%=Request.QueryString("StatusFlag") %> == "2")  
         {debugger
           var DrlAliesName=opener.window.document.getElementById("DrlAliesNameTxt").value;
           var DrlSelCoumn=opener.window.document.getElementById("DrlSelCoumnTxt").value;
               if (DrlAliesName != '')
              {
                document.getElementById("SelUserFldTxt").value=DrlSelCoumn
                document.getElementById("SelFldColnameTxt").value=DrlAliesName
                form1.submit();
              }
          
         }
       
    }
    
    
     if("<%=Page.IsPostBack%>" == "False")
	{
	    CheckuserField()
	    
    }
    
    </script>
</body>
</html>