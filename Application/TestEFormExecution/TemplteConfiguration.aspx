<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TemplteConfiguration.aspx.vb" Inherits="TestEFormExecution.TemplteConfiguration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">

<html>
<head runat="server">
    <title><%=MainTitleLtrl.Text%></title>
    <link rel="stylesheet" href="../TRIMS.css" />
    <link rel="stylesheet" href="../eNoteBookEditor/editor/css/fck_editorarea.css">
      
    <script language="javascript" src="../JScript/Common2.js"></script>
         
</head>

<script language="javascript">

  function AssignFieldsvalues()
    {   
        var TemFldIdArr=new Array()
        var BodyFldIdArr=new Array()
        var BodyFldValArr=new Array()
        var TpltUniqueIdTxt="<%=TpltUniqueIdTxt%>"
        var TemFldIdLst="<%=TemFldIdLst%>"
        var BodyFldIdLst="<%=BodyFldIdLst%>"
        var BodyFldValLst="<%=BodyFldValLst%>"
        
        TemFldIdArr=TemFldIdLst.split("#*#");
        BodyFldIdArr=BodyFldIdLst.split(",");
        BodyFldValArr=BodyFldValLst.split(",");
      
        for(var k=0;k<TemFldIdArr.length;k++)        
        {
         for(var i=0;i<BodyFldIdArr.length;i++)
         {
            if(TemFldIdArr[k].substring(TpltUniqueIdTxt.length)==BodyFldIdArr[i])
            {
                var obj = document.all(TemFldIdArr[k])
                if(obj.length)
                {
                    for(var s=0;s<obj.length;s++)
                    {
                        obj[s].innerText=BodyFldValArr[i] 
                    }
                }
                else
                {
                    obj.innerText=BodyFldValArr[i] 
                }
              //document.getElementById(TemFldIdArr[k]).innerText=BodyFldValArr[i] 
              break
            }
         }
          
        }
    }
    setTimeout ("AssignFieldsvalues()",200)
    
</script>


<body>
    <form id="form1" runat="server">
     <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
     
            CssClass="MainTable" Width="98%" runat="server">
             <asp:TableRow ID="TableRow1" Height="20px" runat="server">
                <asp:TableCell ID="TableCell1" CssClass="MainHead" runat="server">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                    </asp:TableCell>
               </asp:TableRow>
               
               <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ColumnSpan="2" style="background-color:White">
                       <asp:Panel id="HeaderDiv"  runat="server" Width="100%" HorizontalAlign="Left"  style="background-color:White"  EnableViewState="False">
					   		         		</asp:Panel>
                        </asp:TableCell>
                        </asp:TableRow>
                        
              <asp:TableRow ID="TableRow6" runat="server">
                      <asp:TableCell CssClass="MainTD">
                       <asp:Table ID="EFormTempTable" runat="server" CssClass="SubTable" CellPadding="0" Width =100%
                         CellSpacing="0" BackColor="white" BorderColor =white  style=' border-right: medium none; border-top: medium none; border-left: 0px; width: 100%; border-bottom: medium none; border-collapse: collapse; background-color: white;Width:100%;'>
                    </asp:Table>
                      </asp:TableCell>
              </asp:TableRow>
              
               <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ColumnSpan="2" style="background-color:White">
                        <asp:Panel id="FooterDiv" runat="server" Width="100%" HorizontalAlign="Left" EnableViewState="False" style="background-color:White"></asp:Panel>
                        </asp:TableCell>
                        </asp:TableRow>
                        
              <asp:TableRow >
               <asp:TableCell CssClass="MainFoot">
                  <input type="button" onMouseOver="this.className='ButOCls'" Class='ButCls' onMouseOut="this.className='ButCls'"
				                value="Back" style=" WIDTH: 80px; HEIGHT: 20px" Width="70" onclick="Javascript: window.history.back(-1)">
               </asp:TableCell>
              </asp:TableRow>
      </asp:Table>
    
    </form>
</body>
</html>
