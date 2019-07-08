<%@ Page Language="vb" EnableViewState="false" AutoEventWireup="false" Codebehind="EffectedDocpoup.aspx.vb"
    Inherits="TestEFormExecution.EffectedDocpoup" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.Text%>
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1" />
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    <link rel="stylesheet" href="../TRIMS.css" />

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>

    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />

    <script language="javascript">
  

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
            function IsValid(cnt,Exstval)
            {
              var ErrerStr="" 
              var val=document.getElementById ("WorkItemsCntTxt_" + cnt).value 
              if (val>25 || val<=0)
              {
               
                ErrerStr="No. Of Items must  be grater than 0 and less than or equal to 25 ";
                              
              }
             if (ErrerStr != "") 
              {
                alert(ErrerStr);
                document.getElementById ("WorkItemsCntTxt_" + cnt).value=Exstval;
              }
             else
             {
              if(val=="")
              {
                 document.getElementById ("WorkItemsCntTxt_" + cnt).value=Exstval;
              }
              Form1.submit();
             }
                         
            }
    	
    </script>

</head>
<body ms_positioning="GridLayout">
    <form autocomplete="off" id="Form1" method="post" runat="server">
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
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="MainTD">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="DocumentTab">
                                </asp:Table>
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
                                <input class="<%=BtnCss %>" onmouseover="this.className='ButOCls'" style="width: 50px"
                                onclick="RaiseActionPlan()" onmouseout="this.className='ButCls'" type="button" value="Submit">
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
                    <asp:TextBox ID="DocDataTXt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="SelDocNameLatTXt" runat="server" onfocusOut ></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>

    <script language="javascript">
   
    function RaiseActionPlan()
    {
        if (Page_ClientValidate())
        {
         var SelDocCount = <%=SelDocCount %>
         var Count =0
         XmlString ="<NewDataSet>"
         
         for (var DocCnt=0;DocCnt < SelDocCount ; DocCnt ++)
         {
           var InsCount =document.getElementById("WorkItemsCntTxt_" +DocCnt ).value
           for (var i=0;i<InsCount;i++)
           {
                XmlString  = XmlString + "<MulbatchTab>"
                XmlString  = XmlString + "<SNo>" + " <![CDATA[ " + (Count+1) + "]]> " + "</SNo>"
                XmlString  = XmlString + "<DocName>" + " <![CDATA[ " + document.getElementById("EffectedDoc_" + DocCnt + "_" + i).innerText + "]]> " + "</DocName>"
                XmlString  =XmlString +  "<DocDesc>" + " <![CDATA[ " + ReplaceSpeCahar(document.getElementById("Description_" + DocCnt + "_" + i).value) + "]]> " + "</DocDesc>"
                XmlString  = XmlString + "<InchargeDesc>" + " <![CDATA[ " + document.getElementById("InchargeTxt_" + DocCnt + "_" + i ).value + "]]> " + "</InchargeDesc>"
                XmlString  = XmlString + "<Incharge>" + " <![CDATA[ " + document.getElementById("Incharge_" + DocCnt + "_" + i ).value + "]]> " + "</Incharge>"
                XmlString  = XmlString + "<InsCount>" + " <![CDATA[ " + InsCount + "]]> " + "</InsCount>"
                XmlString  = XmlString + "</MulbatchTab>"
                Count +=1
           }
         }
            
        XmlString = XmlString + "</NewDataSet>" 
        opener.SetDocumentValue("<%=Request.QueryString("BaseId")%>","<%=Request.QueryString("CtrlId") %>",XmlString)
        window.self.close()
        }
    }
   
   function fnCrCancel()
   { 
     var ValueArr=new Array()
     opener.SetDocumentValue("<%=Request.QueryString("BaseId")%>","<%=Request.QueryString("CtrlId") %>",'')
     window.self.close()
   }
   
    function ReplaceSpeCahar(Cdata)  // Function to replace special characters "&<" 
   {
    
      Cdata =Cdata.replace("&","&amp;");  
      Cdata=Cdata.replace("<","&lt;");  
      return Cdata
    
   }
   	

    </script>

    <script language="javascript">
   
    function getSelectedDocumnets()
    {
        var DocData=''
        var SelDocNameLst=''
        if (<%=Request.QueryString("ListType")%> == "1")
        {
            SelDocNameLst=opener.window.document.getElementById("FLD_"+ "<%=Request.QueryString("BaseId")%>" + "_" + "<%=Request.QueryString("CtrlId") %>").value;
            DocData=opener.window.document.getElementById("DocData_" + "FLD_"+ "<%=Request.QueryString("BaseId")%>" + "_" + "<%=Request.QueryString("CtrlId") %>").value;
        }
        else
        {
            SelDocNameLst=opener.window.document.getElementById("<%=Request.QueryString("BaseId")%>" + "_" +"<%=Request.QueryString("CtrlId") %>").value;
            DocData=opener.window.document.getElementById("DocData_" + "<%=Request.QueryString("BaseId")%>" + "_" +"<%=Request.QueryString("CtrlId") %>").value;
        }
        document.getElementById("DocDataTXt") .value=DocData;
        document.getElementById("SelDocNameLatTXt") .value=SelDocNameLst;

        Form1.submit();
    }
    
    if("<%=Page.IsPostBack%>" == "False")
	{
	    getSelectedDocumnets()
    }
    
    var Cnt;
   
     function InchargeSelection(Dount,ItemCnt) //Grpname
    {
      Cnt=Dount + "_" + ItemCnt
      
        var pageURL ="../EFormIssuance/RevAppListPopUp.aspx?DeptName=<%=Request.QueryString("DeptName")%>&Grpname=ACP_%"
        SpWinObj = window.open(pageURL,'UserCode',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus(); 
    }
    
    function fnRevAppSetToCode(UsrGrpIdVal,UsrGrpCodeVal,UsrGrpUCodeVal)
    { 
                      
        document.getElementById("InchargeTxt_" + Cnt).value=UsrGrpUCodeVal
        document.getElementById("Value_" + Cnt).innerHTML=UsrGrpUCodeVal
        document.getElementById("Incharge_" + Cnt).value=UsrGrpIdVal
               
    }
    
    </script>

</body>
</html>

