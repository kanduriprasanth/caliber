<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TemplatePreview.aspx.vb" Inherits="IssueLogin.TemplatePreview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" >

<html>
<head id="Head1" runat="server">
  <title>AuditDisplay</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
    <link rel="stylesheet" href="../eNoteBookEditor/editor/css/fck_editorarea.css">
  
      <script language="javascript" src="../JScript/Common2.js" type="text/javascript"></script>
    <script language="vbscript" src="../JScript/MsWordScript.vbs" type="text/vbscript"></script>
   
</head>

<script language="javascript">

  function AssignFieldsvalues()
    {   
        var FldIdArr=new Array()
        var FldValueArr=new Array()
        
        FldIdArr=document.getElementById("FLDIdListTxt").value.split("#*#");
        FldValueArr=document.getElementById("FieldValuesListTxt").value.split("#*#");
      
        for(var k=0;k<FldIdArr.length;k++)    
        {
           
            var obj = document.all(FldIdArr[k])
            if (obj!=null && FldValueArr[k]!=""){
             if(obj.length)
                {
                    for(var s=0;s<obj.length;s++)
                    {
                        obj[s].innerText=FldValueArr[k]
                    }
                }
                else
                {
                    obj.innerText=FldValueArr[k]
                }       
            }
         // document.getElementById(FldIdArr[k]).innerText=FldValueArr[k]
        }
        
    }
    
   
     function AssignWflowFieldsvalues()
    {   
        var FldIdArr=new Array()
        var FldValueArr=new Array()
        
        FldIdArr=document.getElementById("WorkFlwFldIdLstTxt").value.split(",");
        FldValueArr=document.getElementById("WorkFlwFldValLstTxt").value.split(",");
      
        for(var k=0;k<FldIdArr.length;k++)    
        {
           
            var obj = document.all(FldIdArr[k])
            if (obj !=null && FldValueArr[k] !="")
            {
             if(obj.length)
                {
                    for(var s=0;s<obj.length;s++)
                    {
                        obj[s].innerText=FldValueArr[k]
                    }
                }
                else
                {
                    obj.innerText=FldValueArr[k]
                }       
            }
         // document.getElementById(FldIdArr[k]).innerText=FldValueArr[k]
        }
        
    }
    setTimeout ("AssignFieldsvalues()",500)
   setTimeout ("AssignWflowFieldsvalues()",550)
  </script>
  <body>
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server" Text="Issue Template"></asp:Literal>
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
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                                                                       
                        <asp:TableRow ID="DisplayTr" CssClass ="MainTD">
                            <asp:TableCell CssClass="MainTD"  ID="TableCell2" ColumnSpan =3>
                            <asp:Table ID="DispTbl" runat =server  CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1" HorizontalAlign="center" >
                            </asp:Table>
                          </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            
              <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Left" CssClass="MainFoot">
                            <input type="button" onMouseOver="this.className='ButOCls'" Class='ButCls' onMouseOut="this.className='ButCls'"
				                value="Back" style=" WIDTH: 80px; HEIGHT: 20px" Width="70" onclick="Javascript: window.history.back(-1)">
                               
                            </asp:TableCell>
                        </asp:TableRow>
                               
                 <asp:TableRow CssClass="HideRow">
                   <asp:TableCell>
                       <asp:TextBox ID="FLDIdListTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                        <asp:TextBox ID="FieldValuesListTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                        <asp:TextBox ID="WorkFlwFldIdLstTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                        <asp:TextBox ID="WorkFlwFldValLstTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                        
                   </asp:TableCell>
                 </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>