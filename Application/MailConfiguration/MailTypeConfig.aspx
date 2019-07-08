<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MailTypeConfig.aspx.vb" Inherits="MailConfiguration.MailTypeConfig" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title><%=MainTitleLtrl.Text%></title>
  		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<script language="javascript" src="../JScript/jquery.min.js"></script>
		
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
                            <asp:TableCell CssClass="HideRow" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                           
                        <asp:TableRow >
                           <asp:TableCell CssClass="MainTD" ID="TypeTD" Style="font-weight: bold; width:31%;"></asp:TableCell>
                           <asp:TableCell CssClass="MainTD" >
                            <asp:DropDownList ID="TypeDDl" runat="server" CssClass="MainTD" AutoPostBack=true>
                             <asp:ListItem  Value=""><< select >> </asp:ListItem>
                             <asp:ListItem  Value="1">To User</asp:ListItem>
                             <asp:ListItem  Value="2">To Group</asp:ListItem>
                            </asp:DropDownList>
                           </asp:TableCell>
                        </asp:TableRow>
                        
                        
                          <asp:TableRow >
                           <asp:TableCell CssClass="MainTD" ID="Inchargetd" Style="font-weight: bold; width:31%;"></asp:TableCell>
                           <asp:TableCell CssClass="MainTD" >
                            <input type="button" onclick="InchargeSelection()" class='RsnPUP' tabindex="9">
                                <asp:Label ID="UserNameLab" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="UserIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="UserNameTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                
                           </asp:TableCell>
                        </asp:TableRow>
                        
                        
                         <asp:TableRow >
                           <asp:TableCell CssClass="MainTD" ID="MailTD" Style="font-weight: bold; width:31%;"></asp:TableCell>
                           <asp:TableCell CssClass="MainTD" >
                              <asp:TextBox ID="MailTxt" runat="server" CssClass="TxtCls" MaxLength="50" Width="200px"
                                    AccessKey="C" TabIndex="1" ></asp:TextBox>
                           </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID ="UserMalIDTabTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="UserMalIDListTab">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID ="GrpMailIdTR" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="GroupMailIdLstTab">
                                </asp:Table>
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
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit"></asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                        <asp:TextBox ID="TypeIdTxt" runat="server" CssClass="HideRow" MaxLength="50" Width="200px"
                                    AccessKey="C" TabIndex="1" ></asp:TextBox>
                        <asp:TextBox ID="UserGrpCodeTxt" runat="server" CssClass="HideRow" MaxLength="50" Width="200px"
                                    AccessKey="C" TabIndex="1" ></asp:TextBox>
                                     
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>


<script language=javascript>

function MailTypeModify(RowCnt, MailTypeID, Status)
{
  if (document.getElementById("Status"+RowCnt ).value == "1")
  {
    document.getElementById("TypeIdTxt").value=MailTypeID;
    document.getElementById("TypeDDl").value=document.getElementById("MailType" + RowCnt).value;
    document.getElementById("UserIdTxt").value=document.getElementById("InchargeID" + RowCnt).value;
    document.getElementById("UserNameTxt").value=document.getElementById("InchargeName" + RowCnt).value;
    document.getElementById("UserNameLab").innerHTML=document.getElementById("InchargeName" + RowCnt).value;
    document.getElementById("MailTxt").value=document.getElementById("EmailAdd" + RowCnt).value;
    document.getElementById("UserGrpCodeTxt").value=document.getElementById("InchargeCode" + RowCnt).value;
    
  }
  else
  {
    alert("Change The Status In-Active To Active ");
  }
}

function AjaxStatusChange(RowCnt, MailTypeID) {
    var Status = $("#Status" + RowCnt).val();
    //window.event.srcElement.style.color="SkyBlue"           
        $.ajax({
            url: 'MAilCfgTypeStatusChange_Ajax.aspx',
            cache: false,
            //type: "POST",
            //dataType: "html",
            data: "MailTypeID=" + MailTypeID + "&Status=" + Status,
            success: function (data) {
                var s = data;
                if (s == "1") {
                    $("#StatusTd" + RowCnt).text("Active");
                    document.getElementById("StatusTd" + RowCnt).style.color = "Green";
                    $("#Status" + RowCnt).val(1);
                }
                else if (s == "0") {
                    $("#StatusTd" + RowCnt).text("In-Active");
                    document.getElementById("StatusTd" + RowCnt).style.color = "Red"
                    $("#Status" + RowCnt).val(0);
                }
            }
            ,
            error: function (xhr, errorType) {
                var Error = xhr.responseText;
                alert(Error);
            }
        });
    }
    

    function InchargeSelection() 
    {
        var pageURL;
        if (document.getElementById("TypeDDl").value != "")
        {
            pageURL ="InchargeList.aspx?Type="  +document.getElementById("TypeDDl").value
            var PWidth=600
            var PHeight=460
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
            SpWinObj = window.open(pageURL,'UserCode',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        else
        {
          alert("Select Type")
        }
     }   
     
    function fnUserVal(UserName,UserCode,UserId)
    {
        document.getElementById("UserNameLab").innerHTML =UserName
        document.getElementById("UserNameTxt").value =UserName
        document.getElementById("UserIdTxt").value=UserId
        document.getElementById("UserGrpCodeTxt").value=UserCode
        
       // document.getElementById("MailTxt").value=MailID
    }
    
</script>


</html>