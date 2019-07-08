<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MultiBatchList_DI.aspx.vb" Inherits="IssueLogin.MultiBatchList_DI" %>
<%@ Register TagPrefix="uc2" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>

<head>
    <title><%=MainTitleLtrl.Text%></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<link rel="stylesheet" href="../TRIMS.css">
    	<script language="javascript" src="../JScript/Common2.js"></script>

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
                        <asp:TableRow ID="CodeTr">
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Style="font-weight: bold;width:46%;" ></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" >
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="TxtCls" MaxLength="1" Width="50px" AutoPostBack=true
                                    AccessKey="C" TabIndex="1" onkeypress="IsDigit1(event);"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow CssClass="MainTD">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2" >
                            <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                            HorizontalAlign="center" ID="BatchTab"></asp:Table>
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
                                <input class="<%=BtnCss %>" onmouseover="this.className='ButOCls'" style="width: 50px"
                                onclick="fnSpCloseWin()" onmouseout="this.className='ButCls'" type="button" value="Submit">
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
                        <asp:TextBox ID="BatchDataTXt" runat=server></asp:TextBox>
                        
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
    
   <script language="javascript">
   
   function fnSpCloseWin()
   {
      var BatchCount = document.getElementById("CodeTxt").value
      var BatchNoArr=new Array()
      var BatchSizeArr=new Array()
     /* var MfgDateArr=new Array()
      var ExpDateArr=new Array()
      var ArnoArr=new Array() */
      var MfgDate,ExpDate,DateDiff,ExpMsg,BatchNo,XmlString  //BatchSize,Arno
      
      ThisMonth = <%=ThisMonth%>
      ThisYear = <%=ThisYear%>
      ThisDay = <%=ThisDay%>
      
      var Curreentdate =DateSerialValue(ThisYear,ThisMonth,ThisDay)
      
      ExpMsg=''
      
      if(BatchCount != "" )
      {
        for (var i=0;i<BatchCount;i++)
        { 
          BatchNo=document.getElementById("BatchNoTxt_" + i).value
          BatchSize=document.getElementById("BatchSizeTxt_" + i).value
          
          /*MfgDate=document.getElementById("MfgDate_" + i + ":CalDateVal").value
          ExpDate=document.getElementById("ExpDate_" + i + ":CalDateVal").value
          Arno=document.getElementById("ArNotxt_" + i ).value )*/
          
          if (BatchNo=="") ExpMsg=ExpMsg+ "Enter Value For  : Inventory Lot No. In List - " + (i+1) + "\n"
          if (BatchSize=="") ExpMsg=ExpMsg+ "Enter Value For : Quantity In List- " + (i+1) + "\n"
          
          /*if (MfgDate=="") ExpMsg=ExpMsg+ "Select : Mfg.Date In Batch- " + (i+1) + "-\n"
          if (ExpDate=="") ExpMsg=ExpMsg+ "Select : Exp.Date In Batch- " + (i+1) + "-\n"
          if (Arno=="") ExpMsg=ExpMsg+ "Enter Value For  : A.R.No. In Batch - " + (i+1) + "-\n" 
          
          if (MfgDate!="")
           {
             DateDiff=DateDiffFun(MfgDate,Curreentdate);
             if (DateDiff < 0) ExpMsg=ExpMsg+ "Mfg.Date Must Be Less Than Or Equal To Current Date Of Batch- " + (i+1) + "-\n"
           }
          if ((MfgDate!="") && (ExpDate !=""))
          {
            DateDiff=DateDiffFun(ExpDate,Curreentdate);
            if (DateDiff >= 0) ExpMsg=ExpMsg+ "Exp.Date Must Be Grater Than  Current Date Of Batch- " + (i+1) + "-\n"
            DateDiff=DateDiffFun(ExpDate,MfgDate);
            if (DateDiff >= 0) ExpMsg=ExpMsg+ "Exp.Date Must Be Grater Than  Mfg.Date Of Batch- " + (i+1) + "-\n"
          }*/
          
          if(ExpMsg=='')
          {
              BatchNoArr.push(BatchNo);
              BatchSizeArr.push(BatchSize);
              /*MfgDateArr.push(MfgDate);
              ExpDateArr.push(ExpDate);
              //ArnoArr.push(Arno); */
          } 
        }
       if(ExpMsg=='')
        {
            
            XmlString ="<NewDataSet>"
            
            for (var i=0;i<BatchNoArr.length;i++)
            {
              XmlString  = XmlString + "<MulbatchTab>"
                XmlString  = XmlString + "<SNo>" + " <![CDATA[ " + (i+1) + "]]> " + "</SNo>"
                XmlString  = XmlString + "<BatchNo>" + " <![CDATA[ " + ReplaceSpeCahar(BatchNoArr[i]) + "]]> " + "</BatchNo>"
                XmlString  =XmlString +  "<BatchSize>" + " <![CDATA[ " + ReplaceSpeCahar(BatchSizeArr[i]) + "]]> " + "</BatchSize>"
                /*XmlString = XmlString + "<MfgDate>" + " <![CDATA[ " + MfgDateArr[i] + "]]> " + "</MfgDate>"
                XmlString  = XmlString + "<ExpDate>" + " <![CDATA[ " + ExpDateArr[i] + "]]> " + "</ExpDate>"
                XmlString  = XmlString + "<Arno>" + " <![CDATA[ " + ArnoArr[i] + "]]> " + "</Arno>" */
              XmlString  = XmlString + "</MulbatchTab>"
            }
            
            XmlString = XmlString + "</NewDataSet>"
            
            //opener.SetBatchValue("<%=Request.QueryString("BaseId")%>",<%=Request.QueryString("CtrlId") %>,BatchNoArr,BatchSizeArr,MfgDateArr,ExpDateArr)
            opener.SetBatchValue("<%=Request.QueryString("BaseId")%>","<%=Request.QueryString("CtrlId") %>",XmlString)
            window.self.close()
         }
         else
         {
           alert(ExpMsg)
         }   
      } 
     else
       alert("Enter Value For No.of Lot(s)")
   }
   
   
   function fnCrCancel()
   { 
     var ValueArr=new Array()
     opener.SetBatchValue("<%=Request.QueryString("BaseId")%>","<%=Request.QueryString("CtrlId") %>",'')
     window.self.close()
   }
   
    function ReplaceSpeCahar(Cdata)  // Function to replace special characters "&<" 
   {
    
      Cdata =Cdata.replace("&","&amp;");  
      Cdata=Cdata.replace("<","&lt;");  
      return Cdata
    
   }
   	

   </script>
      
   <script language=javascript>
   
     function LoadBatchDetails()
     {
          if (<%=Request.QueryString("BatchType")%> == "1")
          var BatchData=opener.window.document.getElementById("FLD_"+ "<%=Request.QueryString("BaseId")%>" + "_" + "<%=Request.QueryString("CtrlId") %>").value;
          else 
          var BatchData=opener.window.document.getElementById("<%=Request.QueryString("BaseId")%>" + "_" +"<%=Request.QueryString("CtrlId") %>").value;
          
          document.getElementById("BatchDataTXt") .value=BatchData;
          if (BatchData !="") document.getElementById("CodeTxt").value=0
          Form1.submit();
     }
    
    if("<%=Page.IsPostBack%>" == "False")
	{
	    LoadBatchDetails()
    }
    
    
   </script>
   
   <script language="vbscript">

    function CalculateDate(Value,DateFormat)
	    if value="" or (not (IsNumeric(Value))) then exit function
	    CalculateDate=DateAdd("d",value,FormatDateTime(DateFormat))
	    'CalculateDate= month(CalculateDate) &"/" & day(CalculateDate)  & "/" & year(CalculateDate)
    end function
  	
    function DateDiffFun(CompareCtrlVal,CtrlToCompareVal)
         DateDiffFun= DateDiff("d",CompareCtrlVal,CtrlToCompareVal)
    End function
      	
  	function DateSerialValue(Year,Month,Day)
     DateSerialValue= dateSerial(Year,Month,Day)
    End function
      	
    </script>
    
</body>

</html>
