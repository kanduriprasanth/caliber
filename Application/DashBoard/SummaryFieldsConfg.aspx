<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SummaryFieldsConfg.aspx.vb" 
Inherits="DashBoard.SummaryFieldsConfg" %>

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
						  
                       
                        <asp:TableRow ID="RptTypeRw" >
                            <asp:TableCell ID="RptTypeTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:RadioButtonList ID="RptTypRbl" runat="server"  AutoPostBack=true RepeatDirection="Horizontal" CssClass="RBList"
                                    >
                                    <asp:ListItem Value="1" >Issue Login</asp:ListItem>
                                    <asp:ListItem Value="2">Efrom</asp:ListItem>
                                    <asp:ListItem Value="3">Issue Closure</asp:ListItem>
                                   <%-- <asp:ListItem Value="4">Action Plan</asp:ListItem>--%>
                                    
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
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
                    <%--<asp:TextBox ID="EFormTableIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="EFormIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="eFormCodeTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IsuFormCodeTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IsuFormIdTxt" runat="server"></asp:TextBox>--%>
                    <asp:TextBox ID="FormIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FormCodeTxt" runat="server"></asp:TextBox>
                    
                    
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>

    <script language="javascript">
    
    
//    function ShoweFormList()
//    {
//         if (document.getElementById("CategoryDDl").value =="")
//       {  alert ("Select Category")  }
//     else
//       { document.getElementById("Button1").click() }
//    }
      
    var Flag=false
    var flag1=0 
    var FormIDList =''
    var FormCodelist=''
    
    
    function fnCheckAll()
    {
    	var isAllChk=document.getElementById("DocChkAll").checked//document.Form1.DocChkAll.checked
    	//alert(isAllChk)
		var Cnt=<%=cnt%>;
		
	       for(var i=0;i<Cnt;i++)
	       {  
	          document.getElementById("Chk_"+i).checked=isAllChk;
	          if(isAllChk==true) 
	            {
	               FormIDList+=","+ document.getElementById ("FormId"+i).innerHTML
	               FormCodelist+="#*#"+ document.getElementById ("FormCode_"+i).innerText
	            }
	       }
	       
	        if (FormIDList!= '') 
	        {
	          FormIDList=FormIDList.substring(1,FormIDList.length)
	          FormCodelist=FormCodelist.substring(3,FormCodelist.length)
	          
	          document.getElementById ("FormIdTxt").value =FormIDList
	          document.getElementById ("FormCodeTxt").value =FormCodelist
	          
	        } 
	        else
	        {
	              document.getElementById ("FormIdTxt").value =""
	              document.getElementById ("FormCodeTxt").value =""
	        }
	        
	        	      	       
	      FormIDList =''
	      FormCodelist=''
	     
    }

    function fncheck()
    {

        var flag=1
        var Cnt=<%=cnt%>;
        
        var Flag1=0  
        for(var i=0;i<Cnt;i++)
	    {
            if (document.getElementById("Chk_"+i).checked==false)	
            {
                flag=0
            }	 
            else 
            {
                Flag1=1
                FormIDList +=","+ document.getElementById ("FormId"+i).innerHTML
                FormCodelist+="#*#"+ document.getElementById ("FormCode_"+i).innerText
                document.getElementById ("FormIdTxt").value = FormIDList.substring(1,FormIDList.length)
                document.getElementById ("FormCodeTxt").value = FormCodelist.substring(3,FormCodelist.length)
            }
	    }
	    
	    if(Flag1==0)
	    {
	        document.getElementById ("FormIdTxt").value = ""
            document.getElementById ("FormCodeTxt").value = ""
	    }
	    
	    
	      FormIDList =''
	      FormCodelist=''
	    
        if(flag==0)
        {
            if(Flag1==0)
            {
                document.getElementById ("FormIdTxt").value = ""
                document.getElementById ("FormCodeTxt").value = ""
            }
            
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
        
        fncheck()
        
        if(document.getElementById ("FormIdTxt").value=="")
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
        for(var i=0;i<Cnt;i++)
        {
            if (document.getElementById("Chk_"+i).checked==true)
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
    
      
            
       

    </script>

</body>
</html>
