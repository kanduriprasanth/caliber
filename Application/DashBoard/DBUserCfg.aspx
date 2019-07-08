<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DBUserCfg.aspx.vb" Inherits="DashBoard.DBUserCfg" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>DBUserCfg</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/Common2.js"></script>

    <script type="text/javascript">
		 function fnOpenUserList(RowCnt){
		 
		   var SelUsrIdList=''; // For Already Selected Users
		   var ChartLvls=$("#ChartLvlsTxt").val();
		   for(i=0;i<ChartLvls;i++)
		    {
    		   var SelUserIds=$("#SelUserIdstxt"+i).val();	    
		        if(i!=RowCnt&&SelUserIds!='')
		         {
		           SelUsrIdList+=SelUserIds+",";
		         }		        
		    }
		   
            var RoleId=document.getElementById("RoleList").value;
            var pageURL = "UserListPopup.aspx?RoleId="+RoleId+"&RowCnt="+RowCnt+"&SelUsrIdList="+SelUsrIdList;
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj=null;
            SpWinObj = window.open(pageURL,'UserListPopup',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();		 
          }			
          
           function fnSetUserNames(UsersName,UsersId,RowCnt){
           
            document.getElementById("SelUserNameslbl"+RowCnt).innerHTML=UsersName;
            document.getElementById("SelUserNamestxt"+RowCnt).value=UsersName;
            document.getElementById("SelUserIdstxt"+RowCnt).value=UsersId; 
            
            if(document.getElementById("UserIdList").value!=""){
            document.getElementById("UserIdList").value+=','+ UsersId;}
            else{
            document.getElementById("UserIdList").value=UsersId;
         
            }           
        }
          function fnOpenChartPopup(RowCnt){
            
            var pageURL = "ConfgdChartPopup.aspx?RowCnt="+RowCnt;
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj=null;
            SpWinObj = window.open(pageURL,'ConfgdChartPopup',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();		 
          }			
          
           function fnSetCharts(ObjNames,ObjIDs,RowCnt){
            document.getElementById("ChartNamelbl"+RowCnt).innerHTML=ObjNames;
            document.getElementById("ChartNametxt"+RowCnt).value=ObjNames;
            document.getElementById("ChartIdTxt"+RowCnt).value=ObjIDs; 
                  
        }
        function fnCheckCat(){
            var CatId=document.getElementById("CategoryList").value;
            var RoleId=document.getElementById("RoleList").value;     
           if(CatId==""&&RoleId==""){
             alert("Please select Category and Role");
           }
           else if(CatId!=""&&RoleId==""){
             alert("Please select Role");
           }
            else if(CatId==""&&RoleId!=""){
             alert("Please select Category");
           }           
        }
        
        function fnShowChartlvls(RowCnt){
            
            var ChartReq=$('input[name="UsrSelRBL'+RowCnt+'"]:checked').val();
            if(ChartReq==1){
                document.getElementById("UsrPopupTr"+RowCnt).className="HideRow";
                document.getElementById("SelUserIdstxt"+RowCnt).value="0";            
                document.getElementById("SelUserNamestxt"+RowCnt).value="";            
                document.getElementById("SelUserNameslbl"+RowCnt).innerText="";            
            }
            else if(ChartReq==2){
             document.getElementById("UsrPopupTr"+RowCnt).className="MainTD";
            }
        }
        
            function fnRemSelXCol(RowCnt)
            {        
                var Drilldwnlvls=$("#ChartLvlsTxt").val();         
                var select=document.getElementById('ChartTypeDDl'+RowCnt).value;

                for (i=0;i<Drilldwnlvls;i++) {
                    var selected=document.getElementById('ChartTypeDDl'+i).value;
                    if(i!=RowCnt&&select!=''&&select==selected)
                     {
                       alert("Already selected");
                       document.getElementById('ChartTypeDDl'+RowCnt).value="";
                     }	
                }
            }
    </script>

    <head runat="server">
        <title>Untitled Page</title>
    </head>
    <body>
        <form id="Form1" method="post" runat="server">
            <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
                CssClass="MainTable" runat="server">
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
                                <asp:TableCell CssClass="MainTD" ID="CatTd"></asp:TableCell>
                                <asp:TableCell CssClass="MainTD">
                                    <asp:DropDownList runat="server" ID="CategoryList" AutoPostBack="True" Width="200">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="Requiredfieldvalidator3" runat="server" Display="Dynamic"
                                        ErrorMessage="Select Value For: Category" ControlToValidate="CategoryList">*</asp:RequiredFieldValidator>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell CssClass="MainTD" ID="RoleTd"></asp:TableCell>
                                <asp:TableCell CssClass="MainTD">
                                    <asp:DropDownList runat="server" ID="RoleList" AutoPostBack="True" Width="200">
                                        <asp:ListItem Value=''>[Select Role]</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" Display="Dynamic"
                                        ErrorMessage="Select Value For: Role" ControlToValidate="RoleList">*</asp:RequiredFieldValidator>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="SetToAllUsrsTd" Width="250px">Set to All Users</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="SetToAllUsrsRB" runat="server" CssClass="RBList" RepeatDirection="Horizontal"
                                    onclick="fnShowChartlvls()">
                                    <asp:ListItem Value="1" Text="Yes" Selected="true"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="No"></asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow ID="ChartTr" CssClass="HideRow"> 
                                <asp:TableCell CssClass="MainTD" ID="ChartTd">Chart</asp:TableCell>
                                <asp:TableCell CssClass="MainTD">
                                    <asp:DropDownList runat="server" ID="ChartDDl" Width="100">
                                    </asp:DropDownList>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow ID="ChartLvlsTr" >
                                <asp:TableCell CssClass="MainTD" ID="UsrLvlsTd">No of Chart Levels</asp:TableCell>
                                <asp:TableCell CssClass="MainTD">
                                    <asp:TextBox ID="ChartLvlsTxt" runat="server" CssClass="TxtCls" MaxLength="1" onblur="fnCheckCat()" AutoPostBack="true"
                                        Width="50px" AccessKey="D" TabIndex="3"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell ColumnSpan="2">
                                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                        HorizontalAlign="center" ID="UsrLvlsTab">
                                    </asp:Table>
                                    <asp:TextBox ID="UserIdList" runat="server" CssClass="HideRow" MaxLength="1" AutoPostBack="true"
                                        Width="50px" AccessKey="D" TabIndex="3"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                                <asp:TableCell CssClass="MainTD">
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
                                    <uc1:esignobj id="EsignObj1" runat="server" visible="false"></uc1:esignobj>
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
                <asp:TableRow CssClass="MainFoot">
                    <asp:TableCell>
                        <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                            ID="Table2" BorderWidth="0">
                            <asp:TableRow CssClass="HideRow" Height="0">
                                <asp:TableCell></asp:TableCell>
                                <asp:TableCell></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                        Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit">
                                    </asp:Button>
                                </asp:TableCell>
                                <asp:TableCell CssClass="HideRow" HorizontalAlign="Right">
                                    <asp:HyperLink ID="Hlink" runat="server" CssClass="ButSelCls" Height="20px" onMouseOver="this.className='ButSelOCls'"
                                        onMouseOut="this.className='ButSelCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow CssClass="HideRow" Height="0">
                    <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                            ShowMessageBox="True"></asp:ValidationSummary>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </form>
    </body>
</html>
