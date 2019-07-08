<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="SearchCtrl4.ascx.vb" Inherits="DashBoard.SearchCtrl4"%>
<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<table class="SubTable" id="Table1" style="WIDTH: 100%" cellSpacing="1" cellPadding="0"
	align="center" border="0">
	<tr>
		<td class="SubHeadTD" colSpan="2" align=left >&nbsp;&nbsp;Search By&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;
		<SELECT id="SearchTypeDD" onchange="DisplayFilterTab()" name="SearchTypeDD">
				<option value="0" selected>Top 250 Records</option>
			
			    <option value="1"> Issue Code</option>
			    <option value="2"> Issue Category</option>
				<option value="3"> Initiated Date</option>
				<option value="4"> Initiated Department</option>
				<option value="3"> Date Of Closure</option>
			</SELECT>
		</td>
	</tr>
	<tr class="HideRow" id="SrchTr2">
		<td class="MainTd" colSpan="2">
			<table class="SubTable" style="WIDTH: 100%" cellSpacing="1" cellPadding="0" align="center"
				border="0">
				<tr>
				<td class="MainTD"> Issue Category Like &nbsp;<input class="TxtCls" id="SrchTxt2" style="WIDTH: 200px" accessKey="D" type="text"
							name="SrchTxt2"  maxlength=25  value='%'></td>
				</tr>
			</table>
		</td>
	</tr>
	
	<tr class="HideRow" id="SrchTr1">
		<td class="MainTd" colSpan="2">
			<table class="SubTable" style="WIDTH: 100%" cellSpacing="1" cellPadding="0" align="center"
				border="0">
				<tr>
					<td class="MainTD">&nbsp;Issue Code 
            =&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<input class="TxtCls" id="SrchTxt1" style="WIDTH: 200px" accessKey="D" type="text" maxLength="250"
							name="SrchTxt1" ></td>
				</tr>
			</table>
		</td>
	</tr>
	
	<tr class="HideRow" id="SrchTr3">
		<td class="MainTd" colSpan="2">
			<table class="SubTable" style="WIDTH: 100%" cellSpacing="1" cellPadding="0" align="center"
				border="0">
				<tr>
					<td class="MainTD" >Initiated 
            Between&nbsp;&nbsp;&nbsp;&nbsp;<uc1:calibercalender id="FromDate" runat="server"></uc1:calibercalender>
						And
						<uc1:CaliberCalender id="ToDate" runat="server"></uc1:CaliberCalender>
					</td>
				</tr>
			</table>
		</td>
	</tr>
    <tr id="SrchTr4" class="HideRow">
        <td class="MainTd" colspan="2">
            <table align="center" border="0" cellpadding="0" cellspacing="1" class="SubTable"
                style="width: 100%">
                <tr>
                    <td class="MainTD">
                        Initiated Department Like &nbsp;<input class="TxtCls" id="SrchTxt3" style="WIDTH: 200px" accessKey="D" type="text"
							name="SrchTxt3"  maxlength=25  value='%'></td>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    
    <tr class="HideRow" id="SrchTr5">
		<td class="MainTd" colSpan="2">
			<table class="SubTable" style="WIDTH: 100%" cellSpacing="1" cellPadding="0" align="center"
				border="0">
				<tr>
					<td class="MainTD" >Date 
            Between&nbsp;&nbsp;&nbsp;&nbsp;<uc1:calibercalender id="FromDate1" runat="server"></uc1:calibercalender>
						And
						<uc1:CaliberCalender id="ToDate1" runat="server"></uc1:CaliberCalender>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	</TR>
	<tr class="HideRow">
		<td class="MainTd" colSpan="2"><input type="hidden" value="SrchTxt1,SrchTxt2,SearchCtrl1<%=UniqeIDSep%>FromDate<%=UniqeIDSep%>CalDateVal,SearchCtrl1<%=UniqeIDSep%>ToDate<%=UniqeIDSep%>CalDateVal,SrchTxt3,SearchCtrl1<%=UniqeIDSep%>FromDate1<%=UniqeIDSep%>CalDateVal,SearchCtrl1<%=UniqeIDSep%>ToDate1<%=UniqeIDSep%>CalDateVal" name="SrchObjIds">	
			<asp:textbox id="SearchTxt" CssClass="HideRow" Height="0" Width="0" Runat="server"></asp:textbox><asp:textbox id="SearchType" CssClass="HideRow" Height="0" Width="0" Runat="server">0</asp:textbox> 
		    <asp:textbox id="ToDayDate" CssClass="HideRow" Height="0" Width="0" Runat="server"></asp:textbox> </td>
	</tr>
</table>
<script language=vbscript>
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
   var datval,curDateVal,dateval1
    var Obj=document.getElementById("SearchCtrl1_SearchTxt")// get Search Text value
 	SearchTxtVal= Obj.value
 	
 	Obj=document.getElementById("SearchCtrl1_SearchType")//get search type value
	SearchTypeVal=Obj.value
 	Obj=document.getElementById("SearchCtrl1_ToDayDate")// get current date value
	curDateVal= Obj.value
	var SrchObjIdVal=document.forms(0).all("SrchObjIds").value
	var SrchObjIdAry= new Array()
	SrchObjIdAry=SrchObjIdVal.split(',')

		if((SearchTxtVal!='')){ // reset values on page refresh /re-load
			var SearchTxtAry =new Array()
			SearchTxtAry=SearchTxtVal.split('$*$')
			
		 	document.forms(0).all(SrchObjIdAry[0]).value=SearchTxtAry[0] 
			
		 	document.forms(0).all(SrchObjIdAry[1]).value=SearchTxtAry[1]
					
			document.forms(0).all(SrchObjIdAry[3]).value=SearchTxtAry[3]
			
			document.forms(0).all(SrchObjIdAry[2]).value=SearchTxtAry[2]
			datval=SearchTxtAry[2]
			
			document.forms(0).all(SrchObjIdAry[5]).value=SearchTxtAry[5]
			dateval1=SearchTxtAry[5]
			
			if(dateval1==''){dateval1=curDateVal}
			
			if(dateval1!=''){
			var datAry1 =new Array()
			datAry1=dateval1.split('/')
			obj=document.getElementById("SearchCtrl1_FromDate1_CalDateDisplay")
			GetLocalizedDate(datAry1[0], datAry1[1], datAry1[2],obj)
			
			}
			
			//---------------------------
			
			if(datval==''){datval=curDateVal}
			
			if(datval!=''){
			var datAry =new Array()
			datAry=datval.split('/')
			obj=document.getElementById("SearchCtrl1_FromDate_CalDateDisplay")
			GetLocalizedDate(datAry[0], datAry[1], datAry[2],obj)
			
			}
			
			document.forms(0).all(SrchObjIdAry[3]).value=SearchTxtAry[3]
			datval=SearchTxtAry[3]
			
			document.forms(0).all(SrchObjIdAry[6]).value=SearchTxtAry[6]
			datval1=SearchTxtAry[6]
			
			if(datval==''){datval=curDateVal}
			
			if(datval!=''){
			var datAry =new Array()
			datAry=datval.split('/')
			obj=document.getElementById("SearchCtrl1_ToDate_CalDateDisplay")
			GetLocalizedDate(datAry[0], datAry[1], datAry[2],obj)
			}
			
			if(dateval1==''){dateval1=curDateVal}
			
			if(dateval1!=''){
			var datAry1 =new Array()
			datAry1=dateval1.split('/')
			obj=document.getElementById("SearchCtrl1_ToDate1_CalDateDisplay")
			GetLocalizedDate(datAry1[0], datAry1[1], datAry1[2],obj)
			}
			// Select drop down option	
					
			document.all("SearchTypeDD").value=SearchTypeVal
	   }//if((SearchTxtVal!='')&& (SearchTypeVal>0))
	     
	      // if calander dates are null then set control obj dates to current date
	       if(document.forms(0).all(SrchObjIdAry[2]).value==''){
				datval=curDateVal 
				document.forms(0).all(SrchObjIdAry[2]).value=curDateVal
				if(datval!=''){
					var datAry =new Array()
					datAry=datval.split('/')
					obj=document.getElementById("SearchCtrl1_FromDate_CalDateDisplay")
					GetLocalizedDate(datAry[0], datAry[1], datAry[2],obj)
				}//if(datval!='')
			}// if(document.forms(0).all(SrchObjIdAry[2]).value=='')
			
			if(document.forms(0).all(SrchObjIdAry[3]).value==''){
				datval=curDateVal 
				document.forms(0).all(SrchObjIdAry[3]).value=curDateVal
				if(datval!=''){
					var datAry =new Array()
					datAry=datval.split('/')
					obj=document.getElementById("SearchCtrl1_ToDate_CalDateDisplay")
					GetLocalizedDate(datAry[0], datAry[1], datAry[2],obj)
				}//if(datval!='')
			}//if(document.forms(0).all(SrchObjIdAry[3]).value=='')
			
			
			 // if calander dates are null then set control obj dates to current date
	       if(document.forms(0).all(SrchObjIdAry[5]).value==''){
				dateval1=curDateVal 
				document.forms(0).all(SrchObjIdAry[5]).value=curDateVal
				if(dateval1!=''){
					var datAry1 =new Array()
					datAry1=datval.split('/')
					obj=document.getElementById("SearchCtrl1_FromDate1_CalDateDisplay")
					GetLocalizedDate(datAry1[0], datAry1[1], datAry1[2],obj)
				}//if(datval!='')
			}// if(document.forms(0).all(SrchObjIdAry[2]).value=='')
			
			if(document.forms(0).all(SrchObjIdAry[6]).value==''){
				dateval1=curDateVal 
				document.forms(0).all(SrchObjIdAry[6]).value=curDateVal
				if(dateval1!=''){
					var datAry1 =new Array()
					datAry1=datval1.split('/')
					obj=document.getElementById("SearchCtrl1_ToDate1_CalDateDisplay")
					GetLocalizedDate(datAry1[0], datAry1[1], datAry1[2],obj)
				}//if(datval!='')
			}//if(document.forms(0).all(SrchObjIdAry[3]).value=='')
    

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