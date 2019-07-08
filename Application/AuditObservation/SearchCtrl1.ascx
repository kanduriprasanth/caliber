<%@ Control Language="vb" AutoEventWireup="false" Codebehind="SearchCtrl1.ascx.vb" Inherits="AuditObservation.SearchCtrl1" %>
<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<table class="SubTable" id="Table1" style="WIDTH: 100%" cellSpacing="1" cellPadding="0"
	align="center" border="0">
	<tr>
		<td class="SubHeadTD" colSpan="2" align="left">&nbsp;&nbsp;Search 
			By&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<SELECT id="SearchTypeDD" onchange="DisplayFilterTab()" name="SearchTypeDD" >
				<option value="0" selected>Top 250 Records</option>
				<option value="1"> Department/Vendor/ Audit Agency/Customer Name </option>
			</SELECT>
		</td>
	</tr>
	<tr class="HideRow" id="SrchTr1">
		<td class="MainTd" colSpan="2">
			<table class="SubTable" style="WIDTH: 100%" cellSpacing="1" cellPadding="0" align="center"
				border="0">
				<tr>
					<td class="MainTD">
						Department/Vendor/ Audit Agency/Customer Name Like:&nbsp;&nbsp;&nbsp;<input class="TxtCls" id="SrchTxt1" style="WIDTH: 200px" accessKey="D" type="text" maxLength="50"
							value="%" name="SrchTxt1"></td>
				</tr>
			</table>
		</td>
	</tr>

	<tr class="HideRow">
		<%--<td class="MainTd" colSpan="2"><input type="hidden" value="SrchTxt1,SrchTxt2,SearchCtrl1:FromDate:CalDateVal,SearchCtrl1:ToDate:CalDateVal"
				name="SrchObjIds">--%>
				<td class="MainTd" colSpan="2"><input type="hidden" value="SrchTxt1" name="SrchObjIds">	 
			<asp:textbox id="SearchTxt" CssClass="HideRow" Height="0" Width="0" Runat="server"></asp:textbox><asp:textbox id="SearchType" CssClass="HideRow" Height="0" Width="0" Runat="server">0</asp:textbox>
			<asp:textbox id="ToDayDate" CssClass="HideRow" Height="0" Width="0" Runat="server"></asp:textbox>
		</td>
	</tr>
</table>
<script language="vbscript">
function ReplaceInSepTxt(inputTxt) 
    ReplaceInSepTxt=""
	if inputTxt<>"" then
	ReplaceInSepTxt=replace(inputTxt,"$*$","")
    end if
end function
 
</script>
<script language="javascript">
<!--
 var SearchTxtVal
 var SearchTypeVal=0
 
function DisplayFilterTab(){
    HideAllSrchTypes()
  var SelSearcType=parseInt(document.all("SearchTypeDD").value)
  if(SelSearcType>0){
   var ObjId =   "SrchTr" + SelSearcType
   document.all(ObjId).className="" 
  }//if
}//DisplayFilterTab

function HideAllSrchTypes(){
    var SrchCnt=document.all("SearchTypeDD").length
    var ObjId
    for(i=1;i<SrchCnt;i++){
     ObjId="SrchTr" +i
     document.all(ObjId).className="HideRow" 
     }//for i

}// HideAllSrchTypes

//  resets Search Values on page re-load
function ResetSearchState(){
   var datval,curDateVal
    var Obj=document.getElementById("SearchCtrl1_SearchTxt")// get Search Text value
 	SearchTxtVal= Obj.value
 	
 	Obj=document.getElementById("SearchCtrl1_SearchType")//get search type value
	SearchTypeVal=Obj.value
	var SrchObjIdVal=document.forms(0).all("SrchObjIds").value
	var SrchObjIdAry= new Array()
	SrchObjIdAry=SrchObjIdVal.split(',')

		if((SearchTxtVal!='')){ // reset values on page refresh /re-load
			var SearchTxtAry =new Array()
			SearchTxtAry=SearchTxtVal.split('$*$')
			
		 	document.forms(0).all(SrchObjIdAry[0]).value=SearchTxtAry[0] 
			
			// Select drop down option	
					
			document.all("SearchTypeDD").value=SearchTypeVal
	   }//if((SearchTxtVal!='')&& (SearchTypeVal>0))   

}//ReStoreSearchState

 // Set Search Text & type  to hidden feilds  on   page submission event
function SetSearchTxt(){
	var SrchObjIdVal=document.forms(0).all("SrchObjIds").value
	if(SrchObjIdVal!=''){
		var SrchObjIdAry= new Array()
		var SrchValAry= new Array()
		
		SrchObjIdAry=SrchObjIdVal.split(',') // Array of object ids
		SrchValAry=SrchObjIdVal.split(',') // Array for  object values
		
		for(i=0;i<SrchObjIdAry.length;i++){
			SrchValAry[i]= document.forms(0).all(SrchObjIdAry[i]).value 
	 	}//for
		
		var Obj=document.getElementById("SearchCtrl1_SearchTxt") //set search text with  '$*$' as seperator
		Obj.value=SrchValAry.join('$*$')
		Obj=document.getElementById("SearchCtrl1_SearchType")
		Obj.value=document.all("SearchTypeDD").value
	}//if(SrchObjIdVal!='')
	
}//SetSearchTxt()
 
 ///////////////
  ResetSearchState()
  DisplayFilterTab()
 /////////////////
 
//-->
</script>
