<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="EscalationConfig.Trn" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Trn</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
		    <script language="javascript" src="../JScript/jquery.min.js"></script> 
		<script language="javascript">
	<!--
 RequestPrefix='<%=me.ClientID%>'

//-->

function fnSetToReasons(argValue){
   
		document.getElementById('RemarksTxt').value = argValue
	}
		</script>
		    <style>
   .SubDivCss{
	width:20px;
	height:15px;
	/*float:left;*/
	cursor:pointer;
	border:1px solid #000;
	/*margin:1px;*/
}
    </style>
		 <script language="javascript">
		 
		 	var ColTxtIdVal,ColLabIdVal,ColLabTxtIdVal,ColLblIdDisplay;	
function FnRevAppColPopUp(ColTxtId,Seq,ColLabId)
{// 
ColTxtIdVal=ColTxtId
ColLabIdVal =ColLabId
ColLblIdDisplay= "ColLab_" + Seq
//ColLabTxtIdVal=ColLabTxtId


    var pageURL;
    pageURL ="NamedColoursPopUp.aspx"
    var SpWinObj;
    var PWidth=600
    var PHeight=600
    var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
    var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
    SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
}

function SetColSelValues(Col)
{// 
    document.getElementById(ColTxtIdVal).value =Col
   document.getElementById(ColLblIdDisplay).innerText =Col
    document.getElementById(ColLabIdVal).style.backgroundColor = Col
  }
function SetEventVal()
{
    
}
	function EscalationNodePopUp(i,j,EscCrt)
{//     
    if(EscCrt=='')
    {
     alert("Select Value for: Escalation Criteria")
     return false
    }
    else
    {
        var pageURL;
        pageURL ="EscalationNodePopUp.aspx?i=" + i + "&j=" + j + "&EscCrt=" + EscCrt

        SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=650,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
      }
    }
        
    function fnGetEscalationVal(KdIdVal,KdCodeVal,KfLableVal,i,j)
     {
      document.getElementById("EscNodIdTxt_" + i + j).value=KdIdVal
      document.getElementById("EscNodCTxt_" + i + j).value=KdCodeVal
      document.getElementById("EscNodTxt_" + i + j).value=KfLableVal
      document.getElementById("EscNodLbl_" + i + j).innerText=KfLableVal
     }

		 </script>
 <script type="text/javascript">
       jQuery(document).ready(function()
        {
                var d = new Date();
                d = d.getTime();
                if (jQuery('#reloadValue').val().length == 0)
                {
                        jQuery('#reloadValue').val(d);
                        jQuery('body').show();
                }
                else
                {
                        jQuery('#reloadValue').val('');
                        location.reload();
                }
        });
   </script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="tt" CELLPADDING="0" CELLSPACING="0" BorderWidth="3" HorizontalAlign="center"
				cssclass="MainTable" WIDTH="98%" runat="server">
				<asp:TableRow Height="20">
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainTitleLtrl" Runat="server"></asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<!-----------Base table------------->
						<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
							HorizontalAlign="center" ID="Table1">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CSSClass="SubHead" ColumnSpan="2">
									<asp:Literal id="SubTitleLtrl" runat="server"></asp:Literal>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Width="40%"></asp:TableCell>
                            <asp:TableCell ID="CodeTextTd" CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                            </asp:TableRow>
														
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="DescTd" ></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="DescTxt" runat="server" CssClass="TxtCls" onkeypress="taLimit()" onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D"  TabIndex=3></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							
						    <asp:TableRow ID="EscCrtTr"> 
                               <asp:TableCell CssClass="MainTD" ID="EscCrtTd" Width="40%"></asp:TableCell>
                                <asp:TableCell CssClass="MainTD" ID="EscCrtValTd">
                                  <asp:TextBox ID="EscCrtTxt"  runat="server" CssClass="HideRow" MaxLength="250" Width="200px" AccessKey="D" ></asp:TextBox>
                                  <asp:DropDownList ID="EscCrtDDL" Autopostback="true"  OnChange = "FnEscCrtDllObChange() " runat="server" Width="200px">
                                    <asp:ListItem Value="">--Select--</asp:ListItem>
                                    <asp:ListItem Value="1">Issue Cycle</asp:ListItem>
                                    <asp:ListItem Value="2">Action Plan Cycle</asp:ListItem>
                                    <asp:ListItem Value="3">Issue Tasks</asp:ListItem>
                                    <asp:ListItem Value="4">Action Plan Tasks</asp:ListItem>
                                    <asp:ListItem Value="5">Issue Login and Closure</asp:ListItem>
                                   </asp:DropDownList>
                                 </asp:TableCell>
                               <asp:TableCell ID="EscCrtDDLTxt" runat ="server" CssClass ="HideRow"></asp:TableCell>
                            </asp:TableRow>
                        
                            <asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="NoOfPlnDurTd" ></asp:TableCell>
								<asp:TableCell CssClass="MainTD" id ="NoOfPlnDurValTd">
                                <asp:TextBox id="NoOfPlnDurTxt" onkeypress="return IsDigit(event)" runat="server" CssClass="TxtCls" autopostback="true" MaxLength =2 onblur ="FnPlnDurNumberCheck()" Width="50px" AccessKey="D"  TabIndex=3></asp:TextBox>
                                 <asp:TextBox id="HidNoOfPlnDurTxt" CssClass="hiderow" runat ="server" ></asp:TextBox>
                                </asp:TableCell>
							</asp:TableRow>
                       							
							<asp:TableRow id="EscInfoTr">								
								<asp:TableCell CssClass="MainTD" columnspan=2>
								<asp:Table id="EscInfoTab" runat="server" cssclass="SubTable" width="100%"></asp:table>
								</asp:TableCell>
							</asp:TableRow>
							
						    <asp:TableRow ID="RemarksRow" Runat="server" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD">
									<asp:Literal Runat="server" ID="RemarksLtrl"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" TextMode="MultiLine"
										Rows="2" AccessKey="R"></asp:TextBox>
									<INPUT type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow ID="EsignRow" Runat="server" CssClass="HideRow">
								<asp:TableCell ColumnSpan="2" style="PADDING-RIGHT:0px;PADDING-LEFT:0px;PADDING-TOP:0px;PADDING-BOTTOM:0px">
									<uc1:EsignObj id="EsignObj1" runat="server" visible="false"></uc1:EsignObj>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
						<!-----------End of Base table------------->
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow ID="IARow" Runat="server" CssClass="HideRow">
					<asp:TableCell>
						<asp:Table ID="IATab" Runat="server" cssClass='SubTable' width="100%" cellpadding="0" cellspacing="1"
							HorizontalAlign="Center"></asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow CssClass="MainFoot">
					<asp:TableCell>
						<asp:Table runat="server" width="100%" CELLPADDING="0" cellspacing="0"
							HorizontalAlign="center" ID="Table2" BorderWidth="0">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
							                           <asp:TableCell>
                         <input id="reloadValue" type="hidden" name="reloadValue" value="" />
      </asp:TableCell>
								<asp:TableCell>
									<asp:Button id="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
										accessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70"></asp:Button>
								</asp:TableCell>
								<asp:TableCell HorizontalAlign="Right">
									<asp:HyperLink ID="Hlink" Runat="server" CssClass="ButSelCls" onMouseOver="this.className='ButSelOCls'"
										onMouseOut="this.className='ButSelCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow CssClass="HideRow" Height="0">
					<asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
						<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table>
		</form>
		
	</body>
	<script language=javascript>
<!--
//document.getElementById('CodeTxt').focus()

//AllEscLvlNumberCheck()

var taMaxLength = 250
		function taLimit() {
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		}

		function taCount() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength*1){
				taObj.value=taObj.value.substring(0,taMaxLength*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Characters")
			}
			}		





//function AllEscLvlNumberCheck()
//{
//var i=0
//    if(document.getElementById("NoOfPlnDurTxt").value != 0 && document.getElementById("NoOfPlnDurTxt").value='')
//    {
//            for(i=1;i<=document.getElementById("NoOfPlnDurTxt").value;i++)
//            {
//            EscLvlNumberCheck(i)
//            }
//    }
//}

//		
function FnEscCrtDllObChange()
{
   document.getElementById("NoOfPlnDurTxt").value = ""
}

function FnPlnDurNumberCheck()
{ 


 var NoPlnDurCnt = document.all("NoOfPlnDurTxt").value   
     if (NoPlnDurCnt != '')
     {debugger
            if (isNaN(NoPlnDurCnt) || NoPlnDurCnt.indexOf(".")!=-1  || NoPlnDurCnt.replace(/ /gi, '') == '' || NoPlnDurCnt<=0 || NoPlnDurCnt==00) 
            {
                alert("Enter Positive Value for : No. of Planned Durations")
                document.all("NoOfPlnDurTxt").value  = "";
                return false
            }
       
      } 
      
      
      if (document.getElementById("HidNoOfPlnDurTxt").value < document.getElementById("NoOfPlnDurTxt").value)
      {
        for(i=1;i<=document.getElementById("HidNoOfPlnDurTxt").value;i++)
         {
           if((document.getElementById("NoOfPlnToTxt_" + i).value)=="9999")
           {
           document.getElementById("NoOfPlnToTxt_" + i).value=""
           }
         }
      }
      else  if (document.getElementById("HidNoOfPlnDurTxt").value > document.getElementById("NoOfPlnDurTxt").value)
      {
        document.getElementById("NoOfPlnToTxt_" + NoPlnDurCnt).value="9999"
      }
      
     document.getElementById("HidNoOfPlnDurTxt").value = document.getElementById("NoOfPlnDurTxt").value
  } 
  
 
function FnAutoAssignTo(NoOfPlnDuCnt,i) // Auto Increment of From text box to 1 based on to value
  { debugger
    var NPCnt = NoOfPlnDuCnt
    var PToVal =  document.getElementById("NoOfPlnToTxt_" + i).value
    var PFromVal =  document.getElementById("NoOfPlnFromTxt_" + i).value
   if(PToVal!='')
   {
    	if(isNaN(PToVal) || PToVal.indexOf(".")!=-1 || PToVal.replace(/ /gi, '') == '' || PToVal<0) //checking for is numeric, positive, spaces
    	{
            alert("Enter Positve Value for: Planned Duration-" + i + " To")
            document.getElementById("NoOfPlnToTxt_" + i).value =""
            if ((+i + 1) <= NoOfPlnDuCnt)
            {
             document.getElementById("NoOfPlnFromTxt_" + (+i + 1)).value = "" 
            }
         }
         else
         {
           if (parseInt(PFromVal) < parseInt(PToVal)) // if From value is less than To value
             {
                   if ((+i + 1) <= NoOfPlnDuCnt)
                    {
                        if (PToVal >= 9999)
                            {
                         document.getElementById("NoOfPlnFromTxt_" + (+i + 1)).value = "" // assigning +1 value to Form Text automatically
                         alert("Enter value Lesser Than 9999")   
                            }
                        else{
                        
                         document.getElementById("NoOfPlnFromTxt_" + (+i + 1)).value = (+PToVal + 1) // assigning +1 value to Form Text automatically
                            }
                    }
             }
          else  // if From Value is greater than To  Value
             {
                 alert("Enter Greater Value than: Planned Duration-" + i + " From")
                 document.getElementById("NoOfPlnToTxt_" + i).value = ""
                 
             }
         }
   }
    document.getElementById("NoOfPlnToTxt_" + (NPCnt)).value ="9999"  //auto assign of 9999 for last palnned duration
  }   
  
  
 function FnAutoAssignFrom(NoOfPlnDuCnt,i) // Auto Increment of From text box to 1 based on to value
  { debugger
    var NPCnt = NoOfPlnDuCnt
    var PToVal =  document.getElementById("NoOfPlnToTxt_" + i).value
    var PFromVal =  document.getElementById("NoOfPlnFromTxt_" + i).value
      if(i!=1)
        {
               if(PFromVal!='')
               {
    	            if(isNaN(PFromVal) || PFromVal.indexOf(".")!=-1 ||  PFromVal.replace(/ /gi, '') == '' || PFromVal<0)
    	            {
                         alert("Enter Positve Value for: Planned Duration-" + i + " From")
                        document.getElementById("NoOfPlnFromTxt_" + i).value =""
                        if ((+i + (-1)) >= 0)
                        {
                         document.getElementById("NoOfPlnToTxt_" + (+i + (-1))).value = ""
                        }
                     }
                     else
                     {
                       if ((+i +  (-1))  >= 0)
                        {
                          if ((+PFromVal + (-1)) > document.getElementById("NoOfPlnFromTxt_" + (+i + (-1))).value)
                          { 
                            document.getElementById("NoOfPlnToTxt_" + (+i + (-1))).value = (+PFromVal + (-1))
                          }
                          else
                          {
                            alert("Enter Greater Value than: Planned Duration-" + (+i + (-1)) + " From")
                            document.getElementById("NoOfPlnToTxt_" + (+i + (-1))).value =""
                            document.getElementById("NoOfPlnFromTxt_" + (i)).value =""
                          }
                        }
                      
                     }
               }
        }
        else
        {
          document.getElementById("NoOfPlnFromTxt_" + 1).value = "1" //auto assign of 1 for first from palnned duration 
         
        } 
        
      document.getElementById("NoOfPlnToTxt_" + (NPCnt)).value ="9999"  //auto assign of 9999 for last palnned duration   
  }   
  
  
function FnEscGapVal(NoOfLevlsCnt,i,j)  // Validation for ascending order for Gaps
  {  debugger
      var k =1
      var l =1
      var PToVal =  document.getElementById("NoOfPlnToTxt_" + i).value
      var PrevVal
      var PrsVal
      var NextVal
      
      var GapVal = document.getElementById("Gap_" + i + j).value
       if(isNaN(GapVal) || GapVal.indexOf(".")!=-1 ||  GapVal.replace(/ /gi, '') == '')
       {
          alert("Enter Positve Value for: Gap-" + i + "." + j)
          document.getElementById("Gap_" + i + j).value = ""
          return false;
       }
       
      if (document.getElementById("Gap_" + i + j).value != "")
      {
      for(l=1; l<=NoOfLevlsCnt; l++)
        {
        if (l!=1) {
           PrevVal =  document.getElementById("Gap_" + i + (+l +(-1))).value
           PrsVal =  document.getElementById("Gap_" + i + l).value
           if ((+l + 1) <= NoOfLevlsCnt)
           {
              NextVal = document.getElementById("Gap_" + i + (+l + 1)).value
           }
           
           if (PrsVal != "" )
           {
             if (parseInt(PrevVal) < parseInt(PrsVal))
                   {
                      if (NextVal != "")
                        {
                         if (parseInt(PrsVal)> parseInt(NextVal))
                         {
                           alert("Enter Greater value than Gap " + i + "." + (l)+ " for : Gap " + i + "." + (+l + 1))
                           document.getElementById("Gap_" + i + (+l + 1)).value = ""
                           return false
                         }
                        }   //if (NextVal != "")
                   } 
                   else   //  if (PrevVal < PrsVal)
                   {if(l>j){
                     alert("Enter Lesser value than Gap " + i + "." + (j+1) + " for : Gap " + i + "." + j)}
                     else{
                      alert("Enter Greater value than Gap " + i + "." + (j-1) + " for : Gap " + i + "." + j )}
                     document.getElementById("Gap_" + i + j).value = ""
                      return false
                   }
                } 
           else  //  if (PrsVal != "")
               {
                 if ((+l + 1) <= NoOfLevlsCnt)
                   {
                      document.getElementById("Gap_" + i + (+l + 1)).value = ""
                   }
               }
        }  
        }  //end for
  }  // if current gap is null
  }  // end function      
    
//function EscLvlNumberCheck(RowCnt)
//{   
//            var x = document.getElementById("NoOfEscLvlsTxt_" + RowCnt).value;
//                if (isNaN(x)) 
//                {
//                    alert("Please Enter A Numeric Value")
//                    document.getElementById("NoOfEscLvlsTxt_" + RowCnt).value = "";
//                }
//    
//}

			
//-->


function IsDigit(e)
    {
 
        if(e.shiftKey ==true)
            return false;
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

    var AvailableVal = window.event.srcElement.value
          var iCode = ( e.keyCode || e.charCode );
            if(e.shift==true)
                return false
            if(AvailableVal == '' && iCode == 48)
                return false
        if((iCode == 46) && (AvailableVal.indexOf(".") != -1))
                return false;
        if((iCode == 46) && (window.event.srcElement.value == ""))
                return false;

        if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
                iCode = KeyIdentifierMap[ e.keyIdentifier ] ;
            if(iCode == 39 ) return false;

        return (
                ( iCode >= 48 && iCode <= 57 )        // Numbers
                || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
                || iCode == 8                        // Backspace
                                       // Delete
                || iCode == 9                        // Tab
                )
    }
    
    
    
    
    
    function IsDigitWithMinus(e)
    {

        if(e.shiftKey ==true)
            return false;
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

    var AvailableVal = window.event.srcElement.value
          var iCode = ( e.keyCode || e.charCode );
            if(e.shift==true)
                return false
//            if(AvailableVal == '' && iCode == 48)
//                return false
        if((iCode == 46) && (AvailableVal.indexOf(".") != -1))
                return false;
        if((iCode == 46) && (window.event.srcElement.value == ""))
                return false;

        if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
                iCode = KeyIdentifierMap[ e.keyIdentifier ] ;
            if(iCode == 39 ) return false;

        return (
                ( iCode >= 48 && iCode <= 57 )        // Numbers
                || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
                || iCode == 8                        // Backspace
                                       // Delete
                || iCode == 9    
                || iCode==45  
                          // Tab
                )
                
              
    }
    
    function ChkZero(cnt)
    {
    if(document.getElementById("NoOfEscLvlsTxt_" + cnt).value <= 0)
    {
    document.getElementById("NoOfEscLvlsTxt_" + cnt).value=1
    }
    }
    </script>
	</HTML>
