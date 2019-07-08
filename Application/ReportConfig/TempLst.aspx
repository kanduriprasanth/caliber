<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TempLst.aspx.vb" Inherits="ReportConfig.TempLst" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title><%=MainTitleLtrl.text %></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

</head>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="tt" EnableViewState="False" Width="98%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                       
                       <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" CssClass="MainTD">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                          <asp:TableRow>
							<asp:TableCell CssClass="MainTD" ID="CategoryTd" style="font-weight:bold" Width="33%"></asp:TableCell>
							<asp:TableCell CssClass="MainTD">
                              <asp:DropDownList ID="CategoryDDl" AutoPostBack=true runat="server" CssClass="MainTD"></asp:DropDownList>
                            </asp:TableCell>
						  </asp:TableRow>
						  
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ID="ReportForTd" runat="server" CssClass="MainTD" Font-Bold=true></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                               <asp:RadioButtonList ID="ReportForRdl" runat=server CssClass="MainTD" RepeatDirection=Horizontal onclick="ShoweFormList()">
							      <asp:ListItem Value=1 Selected=True>Work Item</asp:ListItem>
							      <asp:ListItem Value=2>Action Item</asp:ListItem>
							    </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
            <%--
                         <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ID="WrkTypeTD" runat="server" CssClass="MainTD"  Font-Bold=true></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                            <asp:DropDownList ID="WrkTypeddl" AutoPostBack=true runat =server  Width="200px"></asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>--%>
                        
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                    CellPadding="0" CssClass="SubTable">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" HorizontalAlign =Right >
                                <asp:Button ID="BtnConferm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" ></asp:Button>
                                    
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                        
                        <asp:Button ID="Button1" runat="server" CausesValidation=false ></asp:Button>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ID="TableCell1" ColumnSpan="2">
                    <asp:TextBox ID="EFormTableIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="EFormIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="eFormCodeTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IsuFormCodeTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IsuFormIdTxt" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>

    <script language="javascript">
    
    
    function ShoweFormList()
    {
         if (document.getElementById("CategoryDDl").value =="")
       {  alert ("Select Category")  }
     else
       { document.getElementById("Button1").click() }
    }
      
    var Flag=false
    var flag1=0 
    var EContentID =''
    var EformCode=''
    var IsuContentID =''
    var IsuformCode=''
    
    function fnCheckAll()
    {
    	var isAllChk=document.getElementById("DocChkAll").checked//document.Form1.DocChkAll.checked
    	//alert(isAllChk)
		var Cnt=<%=cnt%>;
		var GlbCnt=<%=GlbCnt%>

	       for(var i=0;i<Cnt;i++)
	       {  
	          //document.all("Chk"+i).checked=isAllChk;
	          document.getElementById("Chk_"+i).checked=isAllChk;
	          if(isAllChk==true) 
	            {
	               EContentID+=","+ document.getElementById ("eFormId"+i).innerHTML
	               EformCode+="#*#"+ document.getElementById ("eFormCode_"+i).innerText
	            }
	       }
	       
	       for(var i=1;i<=GlbCnt;i++)
	       {  
	          //document.all("Chk"+i).checked=isAllChk;
	          document.getElementById("IsuChk_"+i).checked=isAllChk;
	          if(isAllChk==true) 
	            {
	               IsuContentID+=","+ document.getElementById ("IsuFormId"+i).innerHTML
	               IsuformCode+="#*#"+ document.getElementById ("IsuFormCode_"+i).innerText
	            }
	       }
	       
	       
	        if (EContentID!= '') 
	        {
	          EContentID=EContentID.substring(1,EContentID.length)
	          EformCode=EformCode.substring(3,EformCode.length)
	          IsuContentID=IsuContentID.substring(1,IsuContentID.length)
	          IsuformCode=IsuformCode.substring(3,IsuformCode.length)
	          
	          document.getElementById ("EFormIdTxt").value =EContentID
	          document.getElementById ("eFormCodeTxt").value =EformCode
	          document.getElementById ("IsuFormIdTxt").value =IsuContentID
	          document.getElementById ("IsuFormCodeTxt").value =IsuformCode
	        } 
	        else
	        {
	              document.getElementById ("EFormIdTxt").value =""
	              document.getElementById ("eFormCodeTxt").value =""
	        }
	        
	        if(IsuContentID=="")
	        {
	            document.getElementById ("IsuFormIdTxt").value =""
	            document.getElementById ("IsuFormCodeTxt").value =""
	        }
	      	       
	      EContentID =''
	      EformCode=''
	      IsuContentID=''
	      IsuformCode=''
    }

    function fncheck()
    {

        var flag=1
        var Cnt=<%=cnt%>;
        var GlbCnt=<%=GlbCnt%>   
        var Flag1=0  
        for(var i=0;i<Cnt;i++)
	    {
            if (document.getElementById("Chk_"+i).checked==false)	
            {
//                document.getElementById("DocChkAll").checked=false
                flag=0
            }	 
            else 
            {
                Flag1=1
                EContentID +=","+ document.getElementById ("eFormId"+i).innerHTML
                EformCode+="#*#"+ document.getElementById ("eFormCode_"+i).innerText
                document.getElementById ("EFormIdTxt").value = EContentID.substring(1,EContentID.length)
                document.getElementById ("eFormCodeTxt").value = EformCode=EformCode.substring(3,EformCode.length)
            }
	    }
	    
	    if(Flag1==0)
	    {
	        document.getElementById ("EFormIdTxt").value = ""
            document.getElementById ("eFormCodeTxt").value = ""
	    }
	    
	    for(var i=1;i<=GlbCnt;i++)
	    {
            if (document.getElementById("IsuChk_"+i).checked==false)	
            {
                flag=0
            }	 
            else 
            {
                Flag1=1
                IsuContentID+=","+ document.getElementById ("IsuFormId"+i).innerHTML
	            IsuformCode+="#*#"+ document.getElementById ("IsuFormCode_"+i).innerText
                document.getElementById ("IsuFormIdTxt").value=IsuContentID.substring(1,IsuContentID.length)
	            document.getElementById ("IsuFormCodeTxt").value=IsuformCode.substring(3,IsuformCode.length)
            }
	    }
	    
	    if(Flag1==0)
	    {
	        document.getElementById ("IsuFormIdTxt").value = ""
            document.getElementById ("IsuFormCodeTxt").value = ""
	    }
	    
	    EContentID=''
	    EformCode=''
	    IsuContentID=''
	    IsuformCode=''
        if(flag==0)
        {
            if(Flag1==0)
            {
                document.getElementById ("EFormIdTxt").value=''
                document.getElementById ("eFormCodeTxt").value=''
                document.getElementById ("IsuFormIdTxt").value=''
                document.getElementById ("IsuFormCodeTxt").value=''
            }
            //document.Form1.DocChkAll.checked=false
            document.getElementById("DocChkAll").checked=false
        }
        else
        {
            //document.Form1.DocChkAll.checked=true
            document.getElementById("DocChkAll").checked=true
        }
    }
    
    function ValidateChkbox(src,args)
    {
        args.IsValid=true;
        Page_IsValid=true;
        
        if(document.getElementById ("EFormIdTxt").value=="" && document.getElementById ("IsuFormIdTxt").value=="")
        {
            src.errormessage="Select at least one form" ;
            args.IsValid=false;
            Page_IsValid=false;
        }
    }

    function ValidateTemplatesWorkFlow(src,args)
    {
        var str="" 
        args.IsValid=true;
        Page_IsValid=true;
        var flag=0
        var Cnt=<%=cnt%>;   
        var GlbCnt=<%=GlbCnt%>   
        for(var i=0;i<Cnt;i++)
        {
            if (document.getElementById("Chk_"+i).checked==true)
            {
                flag=1
            }
        }
        
        for(var i=0;i<GlbCnt;i++)
        {
            if (document.getElementById("IsuChk_"+i).checked==true)
            {
                flag=1
            }
        }
        
        if(flag==0)
        {
            src.errormessage="<%=ConMessage%>" ;
            args.IsValid=false;
            Page_IsValid=false;  	
        }
    }
    
      function fnOpenCrPopUp(){
 
              SetPopDimensions()
                
                var pageURL = "RptPopUp.aspx"
                var features = "height="+ 400 + ",width=" + PopUpWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + PopUpLeftTopY +  ",left=" + PopUpLeftTopX
                SpWinObj = window.open(pageURL,'SpecCodes',features)
	            if(SpWinObj.opener == null) SpWinObj.opener=self;
	            SpWinObj.focus();
            }
            
        function fnCrSetToCode(KfIdVal,KfLableVal){
             
             document.getElementById("KflabTxt").value=KfLableVal
             document.getElementById("KdIdTxt").value=KfIdVal
        		
        }  


    </script>

</body>
</html>
