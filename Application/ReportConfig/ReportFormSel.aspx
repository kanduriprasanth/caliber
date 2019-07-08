<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ReportFormSel.aspx.vb" Inherits="ReportConfig.ReportFormSel" %>

<%@ Register TagPrefix="uc2" TagName="ListSelection" Src="../CaliberCommonCtrls/ListSelection.ascx" %>

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
                              <asp:Label ID="Categorylbl" runat=server CssClass="HideRow"></asp:Label>
                            </asp:TableCell>
						  </asp:TableRow>
						  
						  <asp:TableRow>
							<asp:TableCell CssClass="MainTD" ID="ReportTypeTd" style="font-weight:bold" Width="33%"></asp:TableCell>
							<asp:TableCell CssClass="MainTD">
                              <asp:Label ID="ReporTypeLbl" runat=server CssClass="HideRow"></asp:Label>
                            </asp:TableCell>
						  </asp:TableRow>
						  
                        
                        <asp:TableRow ID="ResTabTr" >
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
                            <asp:TableCell ColumnSpan="1" HorizontalAlign =Left >
                                <input type=button id="BackButton" value='Back' Class='ButCls' onclick="window.history.back();" 
                                onMouseOver="this.className='ButOCls'" onMouseOut="this.className='ButCls'"  />
                            </asp:TableCell>
                            
                             <asp:TableCell ColumnSpan="1" HorizontalAlign=Right  >
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
                
                    <asp:TextBox ID="EFormIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FormCtrlIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FormSeqIDTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FormTypeIDTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IsuFormIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox runat="server" ID="Counttxt"></asp:TextBox>
                    <asp:TextBox runat="server" ID="WorktemIdList"></asp:TextBox>
                    
                    
                    
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>

    <script language =javascript >
    
    var flag
    var EFormID 
    var ISuFormID 
    var FormType 
    var FormTypeLst
    var CtrlType
    var SeqID

    
    function fnCheckAll()
    {
    	var isAllChk=document.getElementById("DocChkAll").checked
		
		var GlbCnt=<%=GlbCnt%>
        flag=1   
        EFormID =''
        ISuFormID =''
        FormType =''
        FormTypeLst=''
        CtrlType=''
        SeqID=''
	      
	    for(var i=1;i<=GlbCnt;i++)
        {  
          document.getElementById("Chk_"+i).checked=isAllChk;
          if(isAllChk==true) 
            {
                FormType=document.getElementById ("FormType"+i).value
                FormTypeLst = FormTypeLst + ',' + FormType
                
                if (FormType==1) {
                  ISuFormID=ISuFormID + ',' + document.getElementById ("FormId"+i).value 
                 } 
                else if (FormType==2) {
                  EFormID=EFormID + ',' + document.getElementById ("FormId"+i).value
                  CtrlType=CtrlType + ',' + document.getElementById ("CtrlID"+i).value
                  SeqID=SeqID + ',' + document.getElementById ("Seqid"+i).value 
                 } 
            }
        }
	       
	        
        if(FormType=="")
        {
            document.getElementById ("FormCtrlIdTxt").value = ''
            document.getElementById ("FormSeqIDTxt").value = ''
            document.getElementById ("FormTypeIDTxt").value = ''
            document.getElementById ("EFormIdTxt").value = ''
            document.getElementById ("IsuFormIdTxt").value = ''
        }
        
        else
        {
            document.getElementById ("FormCtrlIdTxt").value = CtrlType.substring(1,CtrlType.length)
            document.getElementById ("FormSeqIDTxt").value = SeqID.substring(1,SeqID.length)
            document.getElementById ("FormTypeIDTxt").value = FormTypeLst.substring(1,FormTypeLst.length)
            document.getElementById ("EFormIdTxt").value = EFormID.substring(1,EFormID.length)
            document.getElementById ("IsuFormIdTxt").value = ISuFormID.substring(1,ISuFormID.length)
        }
	     
    }
    

    function fncheck()
    {
        
        var GlbCnt=<%=GlbCnt%>   
       
         flag=1  
         EFormID =''
         ISuFormID =''
         FormType =''
         FormTypeLst=''
         CtrlType=''
         SeqID=''
         
        for(var i=1;i<=GlbCnt;i++)
	    {
            if (document.getElementById("Chk_"+i).checked==false)	
            {
                flag=0
            }	 
            else 
            {
                FormType=document.getElementById ("FormType"+i).value
                FormTypeLst = FormTypeLst + ',' + FormType
                
                if (FormType==1) {
                  ISuFormID=ISuFormID + ',' + document.getElementById ("FormId"+i).value 
                 } 
                else if (FormType==2) {
                  EFormID=EFormID + ',' + document.getElementById ("FormId"+i).value
                  CtrlType=CtrlType + ',' + document.getElementById ("CtrlID"+i).value
                  SeqID=SeqID + ',' + document.getElementById ("Seqid"+i).value 
                 } 
               
            }
	    }
	    
	    if(FormTypeLst=='')
	    {
	        document.getElementById ("FormCtrlIdTxt").value = ''
            document.getElementById ("FormSeqIDTxt").value = ''
            document.getElementById ("FormTypeIDTxt").value = ''
            document.getElementById ("EFormIdTxt").value = ''
            document.getElementById ("IsuFormIdTxt").value = ''
            
            document.getElementById("DocChkAll").checked=false
	    }
	    else
	    {
            document.getElementById ("FormCtrlIdTxt").value = CtrlType.substring(1,CtrlType.length)
            document.getElementById ("FormSeqIDTxt").value = SeqID.substring(1,SeqID.length)
            document.getElementById ("FormTypeIDTxt").value = FormTypeLst.substring(1,FormTypeLst.length)
            document.getElementById ("EFormIdTxt").value = EFormID.substring(1,EFormID.length)
            document.getElementById ("IsuFormIdTxt").value = ISuFormID.substring(1,ISuFormID.length)
            
            document.getElementById("DocChkAll").checked=true
	    }
	    
    }
    
    function validateListSel(src,args)
    {
        args.IsValid=true;
        Page_IsValid=true;
        
        if(document.getElementById ("FormTypeIDTxt").value=="")
        {
            src.errormessage="Select at least one form" ;
            args.IsValid=false;
            Page_IsValid=false;
        }
    }
    
    
    </script>

</body>
</html>