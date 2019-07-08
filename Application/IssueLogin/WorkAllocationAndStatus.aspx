<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WorkAllocationAndStatus.aspx.vb"
    Inherits="IssueLogin.WorkAllocationAndStatus" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/Common2.js"></script>
    
    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'

	//-->
	</script>
	
    <script language="javascript">
         
         function ActivateFunctionality()
         {
            ShowMask("../EFormIssuance/Trn.aspx?TT=1&IssId=<%=Request.QueryString("IssId")%>&IssAulId=<%=Request.QueryString("IssAId")%>&IsuTypeID=<%=Request.QueryString("IssueTypeId")%>&TYPE=1&IsuCategory="+ document.getElementById("IsuCategoryTxt").value )
         }
         function CloseFunctionality()
         {
            HideMask()
            document.getElementById("btnConfirm").click()
         }
         
        
        function ReadWorkItemList(RowCnt)
	    {
	         var IssueId="<%=Request.QueryString("IssId")%>"
	         var IssAulID="<%=Request.QueryString("IssAId")%>"
	         var IssueTypeId="<%=Request.QueryString("IssueTypeId")%>"
        	//	         if (document.getElementById("NewWorkRDL_0").checked==true)
//	         {  ShowMask("../EFormIssuance/Trn.aspx?TT=1&IssId=" + IssueId +"&IssAulId=" + IssAulID + "&IsuTypeID=" + IssueTypeId + "&TYPE=1&IsuCategory="+ document.getElementById("IsuCategoryTxt").value)  }
//	         
//	         else 
            if (document.getElementById("NewWorkRDL_0").checked==true)
	         {
	             var WorkTempID=document.getElementById("TemplateDDL").value
	             if (WorkTempID!="") { ShowMask("WorkItemPopup.aspx?WorkTempID="+ WorkTempID + "&IssueId=" + IssueId + "&IssAulID=" + IssAulID + "&IsuTypeID=" + IssueTypeId + "&IsuCategory="+ document.getElementById("IsuCategoryTxt").value + "&Type=0" + "&IssueCode=" + document.getElementById("IssueUcodeTxt").value  ) }
	             else { alert("select Work Template") }           

	         }
	    }
	    
	         function ReadWorkItemList1()
	    {
	         var IssueId="<%=Request.QueryString("IssId")%>"
	         var IssAulID="<%=Request.QueryString("IssAId")%>"
	         var IssueTypeId="<%=Request.QueryString("IssueTypeId")%>"
        	 var CtrlID=document.getElementById("TemplateDDLtype2").value;

             if(CtrlID>0)      
	         {
	             ShowMask("WorkItemPopupType2.aspx?&IssueId=" + IssueId + "&IssAulID=" + IssAulID + "&IsuTypeID=" + IssueTypeId + "&IsuCategory="+ document.getElementById("IsuCategoryTxt").value + "&Type=0" + "&IssueCode=" + document.getElementById("IssueUcodeTxt").value + "&CtrlID=" + CtrlID ) 
	         }
	             else { alert("select WorkAllocationType2") }            
	         
	    }
    	
	    function SetWorkItems(WitID,WitCode) {}
    	 
      </script>
         
    <script language=jscript>
    
      function fnWorkFlowPoup(WorkFlowId)
      {
            var pageURL = "../TestDynamicEForm/WorkFlowDetails.aspx?WorkFlowId=" + WorkFlowId + "&AT=G" 
            var features = "height=500,width=700,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
      }

        function OpenIsueReport()
        {
            var pageURL = "../CAPAWORKS/WordFormatReport.aspx?Type=1&IsuLogID=" + <%=Request.QueryString("IssId")%> + "&IsuTypeId=" + <%=Request.QueryString("IssueTypeId")%> + "&PrsType=" + <%=PrsType%>
            var features = "height=600,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
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
           
            if(e.shiftLeft==true)
                return false

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

            if(e.shiftKey==true)
            return false

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
        
     </script>
         
    <script language="javascript">
    
       function CheckDepVal(RowCnt,ContinueLoop)
       {
        ContinueLoop = typeof ContinueLoop == "undefined" ? true : false;
        
         var DependentVal=document.getElementById("WrkDependencyTxt_" + RowCnt).value
         if( DependentVal != "")
         {
            var DependentVlArr=new Array()
            var dateArr=new Array()
            var Startobj,TargetObj,DateGap,MaxTarDate;
            
            Startobj = document.getElementById("StartDateTxt_" + RowCnt);
            TargetObj = document.getElementById("TargetDateTxt_" + RowCnt);
            DependencyArr= DependentVal.split(","); 

            for(var i=0;i<=DependencyArr.length-1;i++)
            {
                if (DependencyArr[i] >= (RowCnt+1)) 
                {
                    alert("Current Work Must Depend On Above " + RowCnt +" Work Items" );
                    document.getElementById("WrkDependencyTxt_" + RowCnt).value="";
                    return;
                }
                else {   dateArr.push(document.getElementById("TargetDateTxt_" + (DependencyArr[i]-1)).value); }
            }

            MaxTarDate=ReturnMaxDate(dateArr)

            if (document.getElementById("TimeDurationTxt_" + RowCnt)=="")  DateGap=document.getElementById("TimeDurationTxt_" + RowCnt);
            else    DateGap=DateDiffFun(SetDateFormat(Startobj.value),SetDateFormat(TargetObj.value));

            Startobj.value=MaxTarDate
            TargetObj.value=SetDateFormat(CalculateDate(DateGap,MaxTarDate))
            if(ContinueLoop==true)
                Formatdate(RowCnt+1,ContinueLoop)
          }
       }
       
       
       function ReturnMaxDate(dateArr)
       {
          if (dateArr.length >1)
             {
               var MaxDate,NTargetDate,DateGap;
               for (var k=1; k<dateArr.length;k++ )
               {
                 if (k= 1) { MaxDate=dateArr[k-1]; }
                 NTargetDate=dateArr[k];
                 DateGap=DateDiffFun(SetDateFormat(MaxDate),SetDateFormat(NTargetDate));
                 if (DateGap>0) {MaxDate=NTargetDate}
                 else {MaxDate=MaxDate}
               }
             }
             else
             { MaxDate=dateArr[0]; }
        
         return SetDateFormat(MaxDate);
       }
    
    
    
        function Formatdate(RowCnt,ContinueLoop)
        {
            ContinueLoop = typeof ContinueLoop == "undefined" ? false : true;
            var Startobj,TargetObj 
            var nDayDuration,StartDate,TargetDate,OldStartDate,Dependency,Cn;
            var WrkItemCnt = <%=WrkItemCnt%>
            var DependencyArr =new Array()
            var AllDepValeArr=new Array()
            Cn=0
            var HasDuration = false;
            if(RowCnt == WrkItemCnt)
                return;
            
            for(var i=RowCnt;i<WrkItemCnt;i++)
            {
                HasDependency = document.getElementById("WrkDependencyTxt_" + i).value == "" ? false : true;
                      
                nDayDuration = document.getElementById("TimeDurationTxt_" + i).value;
                nDayDuration = nDayDuration == "" ? 0 : parseInt( nDayDuration);
                
                Dependency=document.getElementById("WrkDependencyTxt_" + i).value;
                
                Startobj = document.getElementById("StartDateTxt_" + i);
                TargetObj = document.getElementById("TargetDateTxt_" + i);
                
                if(HasDependency == true)
                {
                    CheckDepVal(i);
                }
                else
                {
                    if(i==RowCnt && ContinueLoop==false) 
                    { 
                        StartDate=document.getElementById("StartDateTxt_" + i).value; 
                        if(nDayDuration != 0) { TargetDate=CalculateDate(nDayDuration,SetDateFormat(StartDate));}
                        else { TargetDate=document.getElementById("TargetDateTxt_" + i).value; }
                    }
                    else 
                    {
                            OldStartDate=document.getElementById("StartDateTxt_" + i).value;
                            StartDate=document.getElementById("TargetDateTxt_" + (i-1)).value;
                            TargetDate=document.getElementById("TargetDateTxt_" + i).value;
                            if (nDayDuration==0) nDayDuration=DateDiffFun(SetDateFormat(OldStartDate),SetDateFormat(TargetDate));
                            TargetDate=CalculateDate(nDayDuration,SetDateFormat(StartDate));
                   }
                 Startobj.value=SetDateFormat(StartDate);
                TargetObj.value=SetDateFormat(TargetDate);
            }
          }  
        }
        
       
        function caluculateTargetdate(DayDyration,oldDate,CurrentTargetdate,newstartDate)
        {
            var TargetDate;
            if (DayDyration==0)
            {
              DayDyration= DateDiffFun(SetDateFormat(oldDate),SetDateFormat(CurrentTargetdate));
            }
            TargetDate=SetDateFormat(CalculateDate(DayDyration,SetDateFormat(newstartDate)));
            return TargetDate;
        }
        
        function SetDateFormat(CurrentDate)
        {
            var m,d,y,Result;
            var monthname=new Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
            var nDate = new Date(CurrentDate)
            m = nDate.getMonth();
            d = nDate.getDate();
            y= nDate.getFullYear(); 
            Result=monthname[m] + ' ' +  d + ', ' + y
            return Result;
        }
        
      

    </script>
       	
    <script language="vbscript">

	    function CalculateDate(Value,DateFormat)
		    if value="" or (not (IsNumeric(Value))) then exit function
		    CalculateDate=DateAdd("d",value,FormatDateTime(DateFormat))
 		    'CalculateDate= month(CalculateDate) &"/" & day(CalculateDate)  & "/" & year(CalculateDate)
  	    end function
      	
  	    function DateDiffFun(CompareCtrlVal,CtrlToCompareVal)
            DateDiffFun= DateDiff("d",CompareCtrlVal,CtrlToCompareVal)
        End function
      	
      	
    </script>
    	
    <script language="javascript">

        function Fn_GetE(EleId,ParentObject)
        {
            ParentObject = ParentObject? ParentObject : document;
            return ParentObject.all(EleId);
        }
    	
        function GetRowCnt()
        {
            var TotalCnt = <%=SelTpltCnt%>
            for(var i=0;i<=TotalCnt;i++)
            {
                if(Fn_GetE("RBID_"+i) != null)
                {
                    if(Fn_GetE("RBID_"+i).checked==true)
                    {
                        return i;
                        break;
                    }
                }
            }
        }

        function MoveDown()
        {
            var RowCnt = GetRowCnt()
            MoveRows(RowCnt,RowCnt+1)
        }
        function MoveUp()
        {
            var RowCnt = GetRowCnt()
            MoveRows(RowCnt,RowCnt-1)
        }
        function MoveRows(Cnt1,Cnt2)
        {
                var TextFields = new Array();
                TextFields = "TimeDurationTxt_,WrkDependencyTxt_,StartDateTxt_,TargetDateTxt_".split(",");
                
                var LblFields  = new Array();
                LblFields = "WorkItemIdLbl_,WrhDescLbl_,WrkTypeLbl_,AssignToLbl_".split(",");
                
                var RBtnFields = new Array();
                RBtnFields = "RBID_".split(",");
                
                var HyperLinkFlds = new Array();
                HyperLinkFlds="WrkFlowLbl_,eFromLbl_,StatusLbl_".split(",");
                
                var HyperLinkIds=new Array();
                
               
                var TempVal,Obj1,Obj2;
                
                for(var k=0;k<TextFields.length;k++)
                {
                    Obj1 = document.getElementById(TextFields[k]+Cnt1)
                    Obj2 = document.getElementById(TextFields[k]+Cnt2)
                    if((Obj1 != null) && (Obj2 != null))
                    {
                        TempVal = Obj1.value;
                        Obj1.value = Obj2.value;
                        Obj2.value = TempVal;
                    }
                }
                for(var k=0;k<LblFields.length;k++)
                {
                    Obj1 = document.getElementById(LblFields[k]+Cnt1)
                    Obj2 = document.getElementById(LblFields[k]+Cnt2)
                    if((Obj1 != null) && (Obj2 != null))
                    {
                        TempVal = Obj1.innerText;
                        Obj1.innerText = Obj2.innerText;
                        Obj2.innerText = TempVal;
                    }
                }
                for(var k=0;k<RBtnFields.length;k++)
                {
                    Obj1 = document.getElementById(RBtnFields[k]+Cnt1)
                    Obj2 = document.getElementById(RBtnFields[k]+Cnt2)
                    if((Obj1 != null) && (Obj2 != null))
                    {
                        TempVal = Obj1.checked;
                        Obj1.checked = Obj2.checked;
                        Obj2.checked = TempVal;
                    }
                }
                for(var k=0;k<HyperLinkFlds.length;k++)
                {
                    Obj1 = document.getElementById(HyperLinkFlds[k]+Cnt1)
                    Obj2 = document.getElementById(HyperLinkFlds[k]+Cnt2)
                    if((Obj1 != null) && (Obj2 != null))
                    {
                        TempVal = Obj1.checked;
                        Obj1.checked = Obj2.checked;
                        Obj2.checked = TempVal;
                    }
                }
        }

    </script>
     
</head>
<body>
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
                            <asp:TableCell CssClass="SubHead" ColumnSpan="3">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                         <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                         <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="HeaderTAb"></asp:Table>
                         </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="NewtempTr">
                            <asp:TableCell CssClass="MainTD" ID="NewWorkItemTd" Font-Bold="true"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan=2>
                            
                            <asp:Table runat =server  Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center">
                            
                            <asp:TableRow  CssClass="HideRow">
                            
                            <asp:TableCell CssClass="MainTD" Width="200px">
                              <asp:RadioButtonList CssClass="MainTD" runat="server" iD="NewWorkRDL" RepeatDirection="Horizontal" Width="170px" AutoPostBack="true" >
                              
                              <asp:ListItem Value="2" Selected=True>Template</asp:ListItem>
                              </asp:RadioButtonList>
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="MainTD" Width="100px">
                            <asp:DropDownList runat="server" ID="TemplateDDL" CssClass="HideRow" style="width:180px"></asp:DropDownList>
                            </asp:TableCell>
                            
                            <asp:TableCell  CssClass="MainTD" Width="10px">
                            <input type="button" onclick="ReadWorkItemList()" class="HideRow"  >
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="MainTD">
                            <asp:Label ID="WotkItemLbl" CssClass="HideRow" runat="server" style="color:Red" ></asp:Label>
                            </asp:TableCell>
                            
                            </asp:TableRow>
                             <asp:TableRow>
                            
                           <asp:TableCell CssClass="MainTD" Width="200px">
                              <asp:RadioButtonList CssClass="MainTD" runat="server" iD="NewWorkRDL1" RepeatDirection="Horizontal" Width="170px" AutoPostBack="true" >
                              <asp:ListItem Value="2" Selected="True">WorkAllocationtype2</asp:ListItem>
                              </asp:RadioButtonList>
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="MainTD" Width="100px">
                            <asp:DropDownList runat="server" ID="TemplateDDLtype2" style="width:180px"></asp:DropDownList>
                            </asp:TableCell>
                            
                            <asp:TableCell  CssClass="MainTD" Width="10px">
                            <input type="button" onclick="ReadWorkItemList1()" class="RsnPUP"  >
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="MainTD">
                            <asp:Label ID="Label1" CssClass="HideRow" runat="server" style="color:Red" ></asp:Label>
                            </asp:TableCell>
                            
                            </asp:TableRow>
                            </asp:Table>
                                                      
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="MoveRowTr" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTDOver" ColumnSpan="3" HorizontalAlign="Right">
                            <Input id="MoveUpBtn" type =button  class='down' onclick ="MoveDown()" AccessKey="C" value = "" />
                            <Input id="MoveDownBtn" type =button class='up' onclick ="MoveUp()" AccessKey="C" value = "" />
                            </asp:TableCell>
                        </asp:TableRow>                        
                        
                          <asp:TableRow ID="DisplayTr" CssClass ="HideRow">
                            <asp:TableCell CssClass="MainTD"  ID="TableCell2" ColumnSpan =3>
                            <asp:Table ID="DispTbl" runat =server  CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1" HorizontalAlign="center" >
                            </asp:Table>
                            
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow ID="GototR" CssClass="HideRow">
                        
                           <asp:TableCell CssClass="MainTD" ID="GotoTD" Text="Goto" Width="35%"></asp:TableCell>
                           <asp:TableCell >
                              <asp:RadioButtonList CssClass="MainTD" ID="GotoRal"  runat=server RepeatDirection=Horizontal>
                                <asp:ListItem Value=1>CAPA / Implementation  </asp:ListItem>
                                <asp:ListItem Value=2>Issue Closure </asp:ListItem>
                              </asp:RadioButtonList>
                           </asp:TableCell>
                           
                           
                           
                         <%--  <asp:TableCell >
                              <input type=button class="ButCls" onMouseOut="this.className='ButCls'" onMouseOver="this.className='ButOCls'" id="SunMitBtn" value="Submit" onclick="CloseWrkItem()" />
                           </asp:TableCell>
                           --%>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="CAPAInFoTR" CssClass="HideRow">
                           <asp:TableCell CssClass="MainTD" ID="CapaInFoTD" ColumnSpan=2 runat=server></asp:TableCell>
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
                <asp:TableCell CssClass="MainFoot"  >
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell >
                                <input type =button  id="InitiateWorkBtn" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButexCls'" value="<%=WorkIntiationCaption%>"  onclick="ActivateFunctionality()"/>
                                <asp:Button CssClass="HideRow" runat="server" ID="IssClsBtn"  onMouseOver="this.className='ButexOCls'"  AccessKey="C" onMouseOut="this.className='ButexCls'" Text="" >
                                </asp:Button>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="HideRow" HorizontalAlign=Center>
                            <asp:Button ID="ConfrmBtn" runat="server" onMouseOver="this.className='ButexOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButexCls'" Text="Conform Work Execution" >  </asp:Button>
                            </asp:TableCell>
                            
                             <asp:TableCell HorizontalAlign=Left ID="ClsWitTd" CssClass="HideRow">
                              <input type=button class="ButCls" onMouseOut="this.className='ButCls'" onMouseOver="this.className='ButOCls'" id="Button2" value="Submit" onclick="CloseWrkItem()" />
                           </asp:TableCell>
                           
                            <asp:TableCell  CssClass="MainFoot" HorizontalAlign=Right>
                              <input type =button  id="Button1" onMouseOver="this.className='ButexOCls'"
                                    Class='ButexCls' AccessKey="C" onMouseOut="this.className='ButexCls'" value="Status report"  onclick="OpenIsueReport()"/>
                            </asp:TableCell>
                            
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                        <asp:TextBox ID="IssuedWorksIdLstTxt" runat =server></asp:TextBox>
                        <asp:TextBox ID="IssuedWorksAulIdLstTxt" runat =server ></asp:TextBox>
                        <asp:TextBox ID="IsuCategoryTxt" runat =server ></asp:TextBox>
                          <asp:TextBox ID="IssueUcodeTxt" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
    
    
    <script language=javascript>
    
    function CloseWrkItem()
    {
       if (document.getElementById("GotoRal_0").checked==false && document.getElementById("GotoRal_1").checked==false )
       {
         alert("Select Goto value")
       }
       else 
       if (document.getElementById("GotoRal_0").checked==true) AjaxCloseWrkItem(1)
       if (document.getElementById("GotoRal_1").checked==true) AjaxCloseWrkItem(2)
    }
    
     function AjaxCloseWrkItem(GotoType)
       {
         var recary = new Array(); 
          
            var xmlhttp;
            try
            {
                xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
            }
            catch(ex)
            {
                try 
                {
                    xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
                }
                catch(ex)
                {
                    try
                    {
                        xmlhttp=new XmlHttpRequest();
                    }
                    catch(ex)
                    {
                        alert("please update the webbrowser");
                    }
                }
            }
            xmlhttp.onreadystatechange=function()
            {
                if(xmlhttp.readystate==4)
                {
                    var Time="abc"
                    Time=xmlhttp.ResponseText
                    if (Time=1)
                      {
                        alert("Work(s) Plan Closed")
                        window.self.close()
                       // window.navigate("../PrsWorkFlow/ActiveIssueList.aspx?PrsType=<%=Request.QueryString("PrsType") %> ")
                       if (<%=Request.QueryString("PrsType") %>=="0")
                       {window.navigate("../PrsWorkFlow/WorkPlanClsList.aspx?PrsType=0")}
                       else
                       {window.navigate("../CAPAWORKS/QAActivites.aspx?imageId=" + <%=Request.QueryString("imageId") %> +  "&PrsId=" + <%=Request.QueryString("PrsType") %> )}
                        
                      } 
                     else 
                       alert("Exception Occured")
                       
                  xmlhttp =null;
                }
            }
             var url="ChangeWorkStatus.aspx?IssueId=" +  <%=Request.QueryString("IssId") %> + "&GotoType=" + GotoType + "&MailCfg=1"
            xmlhttp.open("POST",url,true);
            xmlhttp.send(null);
        }
    
    
    
    </script>
</body>
</html>
