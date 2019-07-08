<%@ Control Language="vb" AutoEventWireup="false" Codebehind="SearchCtrl1.ascx.vb"
    Inherits="ModificationRequest.SearchCtrl1"  %>
<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<table class="SubTable" id="Table1" style="width: 100%" cellspacing="1" cellpadding="0"
    align="center" border="0">
    <tr>
        <td class="SubHeadTD" colspan="2" align="left">
            &nbsp;&nbsp;Search By&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
            <select id="SearchTypeDD" onchange="DisplayFilterTab()" name="SearchTypeDD">
                <option value="0" selected>Top 250 Records</option>
                <option value="2">
                      <%=Application("A0125_" & "0")%>
                </option>
                <option value="1">
                     <%=HttpContext.Current.Application("QMS098_" & "0")%> 
                </option>
                <option value="3">
                    Initiated Date
                </option>
            </select>
        </td>
    </tr>
    <tr class="HideRow" id="SrchTr2">
        <td class="MainTd" colspan="2">
            <table class="SubTable" style="width: 100%" cellspacing="1" cellpadding="0" align="center"
                border="0">
                <tr>
                    <td class="MainTD">
                           <%=Application("A0125_" & "0")%> 
                        Like &nbsp;<input class="TxtCls" id="SrchTxt2" style="width: 200px" accesskey="D"
                            type="text" maxlength="30" value="%" name="SrchTxt2"></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr class="HideRow" id="SrchTr1">
        <td class="MainTd" colspan="2">
            <table class="SubTable" style="width: 100%" cellspacing="1" cellpadding="0" align="center"
                border="0">
                <tr>
                    <td class="MainTD">
                        &nbsp;Modification Request Code
                        =&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<input class="TxtCls" id="SrchTxt1" style="width: 200px"
                            accesskey="D" type="text" maxlength="50" name="SrchTxt1"></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr class="HideRow" id="SrchTr3">
        <td class="MainTd" colspan="2">
            <table class="SubTable" style="width: 100%" cellspacing="1" cellpadding="0" align="center"
                border="0">
                <tr>
                    <td class="MainTD">
                        Initiated Between&nbsp;&nbsp;&nbsp;&nbsp;<uc1:calibercalender id="FromDate" runat="server"></uc1:calibercalender>
                        And
                        <uc1:CaliberCalender id="ToDate" runat="server">
                        </uc1:CaliberCalender>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr class="HideRow">
        <td class="MainTd" colspan="2">
            <input type="hidden" value="SrchTxt1,SrchTxt2,<%=me.UniqueID%><%=UniqeIDSep%>FromDate<%=UniqeIDSep%>CalDateVal,<%=me.UniqueID%><%=UniqeIDSep%>ToDate<%=UniqeIDSep%>CalDateVal,SrchTxt4"
                name="SrchObjIds">
            <asp:TextBox ID="SearchTxt" CssClass="HideRow" Height="0" Width="0" runat="server"></asp:TextBox><asp:TextBox
                ID="SearchType" CssClass="HideRow" Height="0" Width="0" runat="server">0</asp:TextBox>
            <asp:TextBox ID="ToDayDate" CssClass="HideRow" Height="0" Width="0" runat="server"></asp:TextBox>
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
    var Obj=document.getElementById("<%=me.UniqueID%>_SearchTxt")// get Search Text value
 	SearchTxtVal= Obj.value
 	
 	Obj=document.getElementById("<%=me.UniqueID%>_SearchType")//get search type value
	SearchTypeVal=Obj.value
 	Obj=document.getElementById("<%=me.UniqueID%>_ToDayDate")// get current date value
	curDateVal= Obj.value
	var SrchObjIdVal=document.forms(0).all("SrchObjIds").value
	var SrchObjIdAry= new Array()
	SrchObjIdAry=SrchObjIdVal.split(',')

		if((SearchTxtVal!='')){ // reset values on page refresh /re-load
			var SearchTxtAry =new Array()
			SearchTxtAry=SearchTxtVal.split('$*$')
			
		 	document.forms(0).all(SrchObjIdAry[0]).value=SearchTxtAry[0] 
			
		 	document.forms(0).all(SrchObjIdAry[1]).value=SearchTxtAry[1]
					
			
			
			document.forms(0).all(SrchObjIdAry[2]).value=SearchTxtAry[2]
			datval=SearchTxtAry[2]
			
			if(datval==''){datval=curDateVal}
			
			if(datval!=''){
			var datAry =new Array()
			datAry=datval.split('/')
			obj=document.getElementById("<%=me.UniqueID%>_FromDate_CalDateDisplay")
			GetLocalizedDate(datAry[0], datAry[1], datAry[2],obj)
			
			}
			
			document.forms(0).all(SrchObjIdAry[3]).value=SearchTxtAry[3]
			datval=SearchTxtAry[3]
			
			if(datval==''){datval=curDateVal}
			
			if(datval!=''){
			var datAry =new Array()
			datAry=datval.split('/')
			obj=document.getElementById("<%=me.UniqueID%>_ToDate_CalDateDisplay")
			GetLocalizedDate(datAry[0], datAry[1], datAry[2],obj)
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
					obj=document.getElementById("<%=me.UniqueID%>_FromDate_CalDateDisplay")
					GetLocalizedDate(datAry[0], datAry[1], datAry[2],obj)
				}//if(datval!='')
			}// if(document.forms(0).all(SrchObjIdAry[2]).value=='')
			
			if(document.forms(0).all(SrchObjIdAry[3]).value==''){
				datval=curDateVal 
				document.forms(0).all(SrchObjIdAry[3]).value=curDateVal
				if(datval!=''){
					var datAry =new Array()
					datAry=datval.split('/')
					obj=document.getElementById("<%=me.UniqueID%>_ToDate_CalDateDisplay")
					GetLocalizedDate(datAry[0], datAry[1], datAry[2],obj)
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
		    if(document.forms(0).all(SrchObjIdAry[i]) != null)
		    {
			    SrchValAry[i]= document.forms(0).all(SrchObjIdAry[i]).value 
			}
	 	}//for
		
		var Obj=document.getElementById("<%=me.UniqueID%>_SearchTxt") //set search text with  '$*$' as seperator
		Obj.value=SrchValAry.join('$*$')
		Obj=document.getElementById("<%=me.UniqueID%>_SearchType")
		Obj.value=document.all("SearchTypeDD").value
	}//if(SrchObjIdVal!='')
	
}//SetSearchTxt()
 
 ///////////////
  ResetSearchState()
  DisplayFilterTab()
 /////////////////
 
//-->
</script>

