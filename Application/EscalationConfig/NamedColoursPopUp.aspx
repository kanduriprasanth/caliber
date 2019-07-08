<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="NamedColoursPopUp.aspx.vb" Inherits="EscalationConfig.NamedColoursPopUp" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Colors List</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css"> 
	 
	</HEAD>
	<body MS_POSITIONING="GridLayout" onload="document.getElementById('FindTxt').focus()" onblur="document.getElementById('FindTxt').focus()">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="3">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">Color List</TD>
				</TR>
				<TR>
					<TD>
						<DIV class="MainTd" style="HEIGHT: 20px" ID="Div1">
							<table width="100%" cellSpacing="0" cellPadding="0" align="center">
								<tr class="HideRow">
									<td></td>
									<td id="RBVal"></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td class="MainTd" colspan="2">
										<asp:literal id="FindLrl" runat="server">Quick Local Search </asp:literal>
										<asp:TextBox id="FindTxt" runat="server" onkeyup ="doSearch()" Width="180px" MaxLength="20" CssClass='TxtCls'></asp:TextBox>
									</td>
		
								</tr>
								<tr>
									<td class="MainTd" colspan="4">
										<DIV style="OVERFLOW: auto; HEIGHT: 400px; BACKGROUND-COLOR: gray">
											<asp:table id="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1" CellPadding="0"
												CssClass="SubTable"></asp:table></DIV>
									</td>
								</tr>
							</table>
						</DIV>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR class="MainFoot">
					<TD ><INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 50px" onclick="fnCrCloseWin()"
							onmouseout="this.className='ButCls'" type="button" value="Ok"> <INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 60px" onclick="fnCrCancel()"
							onmouseout="this.className='ButCls'" type="button" value="Cancel">
					</TD>
				</TR>
			</TABLE>
		</form>
		 <script language="javascript">

        function doSearch() { 
            var searchText = document.getElementById('FindTxt').value;
            var targetTable = document.getElementById('ResTab');
            var targetTableColCount;

            //Loop through table rows
            for (var rowIndex = 0; rowIndex < targetTable.rows.length; rowIndex++) {
                var rowData = '';

                //Get column count from header row
                if (rowIndex == 0) {
                    targetTableColCount = targetTable.rows.item(rowIndex).cells.length;
                    continue; //do not execute further code for header row.
                }

                //Process data rows. (rowIndex >= 1)
                for (var colIndex = 0; colIndex < targetTableColCount; colIndex++) {
                    rowData += targetTable.rows.item(rowIndex).cells.item(colIndex).innerText.replace(/ /g, '');
                }

                //If search term is not found in row data
                //then hide the row, else show
                rowData = rowData.toLowerCase();
                searchText = searchText.replace(/ /g, '');

                if (rowData.indexOf(searchText.toLowerCase()) == -1) {
                    targetTable.rows(rowIndex).className = 'HideRow';
                }
                else {
                    targetTable.rows(rowIndex).className = 'MainTD';
                }
            }
        }

       
    </script>
    		    <style>
   .SubDivCss{
	width:200px;
	height:25px;
	cursor:pointer;
	border:1px solid #000;
}
    </style>
    
		<SCRIPT language="javascript">
 
function fnCrCancel(){

	 	opener.SetColSelValues('')
		window.self.close()
	}

	function fnCrGetCode(RowCnt)
	{  
	    var KfLableVal=document.all("KfLable"+ RowCnt).innerHTML
		var KdIdVal=document.all("KdId"+ RowCnt).innerText
		document.getElementById("RBVal").value = KdIdVal
		
		opener.SetColSelValues(KfLableVal)
	}
     
	document.oncontextmenu=new Function("return false")

	function fnCrCloseWin(){
	
	      if(document.getElementById("RBVal").value == undefined)
	      {
            alert("Select Color")
            return(false);
          }    
		window.self.close()
	}
		</SCRIPT>
	</body>
</HTML>

