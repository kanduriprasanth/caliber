<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ReportFormConfiguration.aspx.vb"
    Inherits="ReportConfig.ReportFormConfiguration" %>

<%@ Register TagPrefix="uc2" TagName="ListSelection" Src="../CaliberCommonCtrls/ListSelection.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
    <link rel="stylesheet" href="MaskStyles.css" />
    <script language="javascript" src="MaskJScript.js"></script>

    

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
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CategoryTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="CategoryDDl" runat="server" CssClass="MainTD" AutoPostBack=true onchange="ShowMask()">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <uc2:ListSelection id="Eforms" runat="server">
                                </uc2:ListSelection>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" ID="FormTab" CssClass="SubTable" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="center">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Button ID="Formbtn" runat="server" CssClass="ButexCls" Text="Refresh Display"
                                    CausesValidation="false" />
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                                <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                               
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
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="HideRow" Height="20px" onMouseOver="this.className='ButexOCls'"
                                    onMouseOut="this.className='ButexCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                                    
                                    <asp:Button ID="BtnNext" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
                                    AccessKey="C" onMouseOut="this.className='ButCls'" Text ="Next" ></asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:CustomValidator ID="CustVal" runat="server" ClientValidationFunction="validateListSelDisp"></asp:CustomValidator>
                     <asp:CustomValidator ID="CustomValidator1" runat="server"></asp:CustomValidator>
                    <asp:TextBox runat="server" ID="Counttxt"></asp:TextBox>
                       <asp:TextBox runat="server" ID="OldFormldIdLst"></asp:TextBox>
                    <asp:TextBox ID="RecInsTxt" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
<script language=javascript>

function validateListSelDisp(src,args)
    {
        args.IsValid=true;
        Page_IsValid=true;
          var ExpMsg=''

        if(CheckSelected() == false) { ExpMsg=ExpMsg+ "Click Refresh Button" + "\n-" }
           
        
        if(ExpMsg != '')
        {
            src.errormessage= ExpMsg.substring(0,ExpMsg.length-2) 
            args.IsValid=false;
            Page_IsValid=false;
        }
    }
    
    function validateListSel(src,args)
    {
        args.IsValid=true;
        Page_IsValid=true;
          var ExpMsg=''
          
       var SelFldCnt =0
       
       var SelStandordFields = document.getElementById("Eforms"+"_OptValues").value
       
       if(SelStandordFields!="")
       {
       
           if(document.getElementById("CategoryDDl").value!="")
           {
               var TotalFormCnt=<%=TotalFormCnt%>
               for(var i=0;i<TotalFormCnt;i++)
               {  
                   if (document.getElementById("valchk"+i).checked==true)
                   {
                    SelFldCnt=1
                    break;
                   }
               }
               
               if (SelFldCnt==0)
               {
                src.errormessage= "Select At Least One Form Name"
                args.IsValid=false;
                Page_IsValid=false;
               }
           }
       
       }
    }   
          
          
    function CheckSelected()
  	{
  	    var PreStandordFields = "<%=Eforms.ListItemValues%>"
  	    document.getElementById("OldFormldIdLst").value="<%=Eforms.ListItemValues%>"
  	    var SelStandordFields = document.getElementById("Eforms"+"_OptValues").value
  	     	    
  	    var PreStandordFieldsArr = new Array()
        var SelStandordFieldsArr = new Array()
       
        PreStandordFieldsArr = PreStandordFields.split(",")
        SelStandordFieldsArr = SelStandordFields.split(",")
       
        if(SelStandordFields != "")
        {
            if(PreStandordFieldsArr.length != SelStandordFieldsArr.length )
            {
                return false;        
            }
            else
            {
                for(var k=0;k<SelStandordFieldsArr.length;k++)
                {
                    if((","+PreStandordFields+",").indexOf(SelStandordFieldsArr[k]) == -1)
                    {
                        return false
                        break;
                    }
                }
            }
        }
        return true;     
  	}
    
    
    function fnCheckAll()
    {
    	var isAllChk=document.getElementById("DocChkAll").checked
    	
		var TotalFormCnt=<%=TotalFormCnt%>
       for(var i=0;i<TotalFormCnt;i++)
       {  
         var Obj= document.getElementById("HidenChk"+i)
         if (Obj == null)
         {
          document.getElementById("valchk"+i).checked=isAllChk;
         }
       }
    }


   function CheckFormSelection()
   {
       
        
   } 
   
   function ValidateListControl(src,args)
   {
         args.IsValid=true;
        Page_IsValid=true;
        
        if(document.getElementById("CategoryDDl").value!="")
        {
            var SelStandordFields = document.getElementById("Eforms_OptValues").value
            
            if(SelStandordFields=="")
            {
                src.errormessage= "Select At Least One Form"
                args.IsValid=false;
                Page_IsValid=false;
                return false;
            }
        }
   }
   
   function FnChecksts()
   {
     var TotalFormCnt=<%=TotalFormCnt%>
       for(var i=0;i<=TotalFormCnt;i++)
       {  
         var Obj= document.getElementById("valchk"+i)
         if (Obj != null)
         {
           if(document.getElementById("valchk"+i).checked==false)
           {
              document.getElementById("DocChkAll").checked=false;
              break;
           }
           else
           {
              document.getElementById("DocChkAll").checked=true;
           }
         }
       }
   } 
   
   function FnCheckstsAll()
   {
     var TotalFormCnt=<%=TotalFormCnt%>
       for(var i=0;i<TotalFormCnt;i++)
       {  
         var Obj= document.getElementById("HidenChk"+i)
         if (Obj != null)
         {
           if(document.getElementById("valchk"+i).checked==true)
           {
              document.getElementById("DocChkAll").checked=true;
           }
           else
           {
              document.getElementById("DocChkAll").checked=false;
           }
         }
         else
         {
            if(document.getElementById("DocChkAll")!=null)
            {
                document.getElementById("DocChkAll").checked=false;
            }
         }
       }
   } 
   
   setTimeout("FnCheckstsAll()",500)
   
</script>
</html>
