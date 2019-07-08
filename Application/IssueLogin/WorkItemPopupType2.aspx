<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WorkItemPopupType2.aspx.vb"
    Inherits="IssueLogin.WorkItemPopupType2" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.Text%>
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript" src="../JScript/CustomValidationFuns.js"></script>
    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />
    <script type="text/javascript" language="javascript" src="../JScript/jquery-1.6.3.min.js" ></script>
    <script type="text/javascript" language="javascript" src="../JScript/Date.js" ></script>

 <style type="text/css">

.watermarkOn
{
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 11px;
    margin: 0px;
    padding:3px;
    border: 0px none;
    width: 130px; 
    Height: 20px;   
    background-image:url('../IMAGES/textbg.png');   
    background-repeat:no-repeat; 
    /*color: #C0C0C0; */
	font-style: italic;
}


.RoundedTxt
{
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 11px;
    margin: 0px;
    padding: 3px;
    border: 0px none;
    width: 130px; 
    Height: 20px;   
    background-image:url('../IMAGES/textbg.png');   
    background-repeat:no-repeat;    
}
    
    
 </style>
    
 <script language="javascript">
        $(document).ready(function () {
            $("[id^='TimeDurationTxt_']").bind('paste', function() {
                return false;
            })
        });

    function fnCheckAll()
    {
        var TestCnt=<%=TestCnt%>
        var ChkBoxId
        var chk=document.getElementById("TestChkAll").checked

        for(var i=1;i<=TestCnt;i++)
        {
            var ObjIns = document.getElementById("Chk"+i)
            if (ObjIns !=null)
            {
                if(!ObjIns.disabled) 
                {
                    if(ObjIns.className != "HideRow")
                        ObjIns.checked=chk
                }
            }
        }
    }

  function handleMaskOpener()
    {
        if(document.getElementById("FlagValTxt"))
        {
            
        }
        else
        {
            window.setTimeout("ChaosePopup()",600)
        }
    }
    function ChaosePopup()
    {
        if (typeof(window.parent.window.CloseFunctionality) == "function")
        {
            window.parent.window.CloseFunctionality()
        }
    }


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
           if (e.altKey || e.ctrlKey || e.shiftKey)
                return false;
 

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
        
        
        
       function IsDigit2(e)  ///Function To check Numeric values And Allow , Also
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

           if (e.altKey || e.ctrlKey || e.shiftKey)
                return false;

            var iCode = ( e.keyCode || e.charCode );

            if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
            iCode = KeyIdentifierMap[ e.keyIdentifier ] ;
            if(iCode == 39 ) return false;
            return (
                ( iCode >= 48 && iCode <= 57 )        // Numbers
                || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
                || iCode == 8                        // Backspace
                || iCode == 44                        // Delete
                || iCode == 9                        // Tab.
            )
        }
        
    function CtrlValidation(src,args)
      {  
           args.IsValid=false;
           Page_IsValid=false;  
           
           var str =""
           var RowCountArr=new Array()
           var TestCnt=<%=TestCnt%>
           var ChkBoxId =""
           var RowCount =""
           
          
            for(i=1;i<=TestCnt;i++)
            {
                ChkBoxId="Chk"+i
                var obj=document.getElementById(ChkBoxId)
                if (obj!=null) {
                if(document.getElementById(ChkBoxId).checked==true){ RowCount += "," + i }
                }
            }
            if(RowCount=="") {src.errormessage = "Select Atleast One Work Item" }   
             else
              {
                args.IsValid=true;
                Page_IsValid=true;  	
              }        
       }     
        
 </script>

                   
</head>

 <body onload="$(document).ready(getdate);" >

    <form id="Form1" method="post" runat="server">
        
        <asp:Table ID="Table1" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal> 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="ResTab">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
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
                        
    <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc1:EsignObj id="EsignObj1" runat="server" visible="false">
                                </uc1:EsignObj>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                                 
                                 <input type=button onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" value="Submit" onclick="CheckAssignTo()" />
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit" >
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="HideRow" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButCls" Height="20px" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">    
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="FlagValTxt" runat="server" Text="0" ></asp:TextBox>
                    <asp:TextBox ID="HolidayListTxt" runat="server"  CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="ExpMessageTxt" runat="server"  CssClass="HideRow" ></asp:TextBox>                    
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
    
</body>

 </html>
