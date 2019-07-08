var paperHeight
var paperWidth
var standardTxtWidth
var charPixelWidth
var TotalScreenWidth
var ActulaScreenPrintWidth
var ScreenPrintRatio
var ScreenPaperPrintRatio
var PageOrientation
PageOrientation=0
var isWorkSheetPrint=0
 var PrinterObj
 var IsWithOutLogo=0
 var CopyRange
function fnPrintMain()
{

	var NoofCopies=document.all("NoofCpy").value
	var a=parseInt(document.all("CpyNo").innerHTML)-1
	var b=parseInt(NoofCopies)
	var c=a+b
	
	if(isNaN(NoofCopies) || NoofCopies<1)
	{
		alert("Enter Numeric Value > 0");
		return false;
	}
	
	if(document.all("AskReasonsTxt").value=='' && ValidatorTrim(document.all("ReasonsTxt").value)=='' && c>2)
	{
		alert("Enter Reason");
		return false;
	}
	if(isWorkSheetPrint==1)
	{ var chkRes=ChkReasons();
	if(chkRes==false){return(false);}
 }
   
    function ValidatorTrim(s) {
    var m = s.match(/^\s*(\S+(\s+\S+)*)\s*$/);
    return (m == null) ? "" : m[1];
}

 PrinterObj=document.all("CaliberPrintCls1")
 
	 //paperHeight = 70
   // paperWidth = 115
    paperHeight = 105
    paperWidth = 90

	TotalScreenWidth=800
    ActulaScreenPrintWidth=720
    //'''''''''Arguments Order''''''''''
    //PaperHeight,PaperWidth,StdFont,StdFontSize,HeaderLeftTopX,HeaderLeftTopY,HeaderRightBottomX,HeaderRightBottomY,FooterLeftTopX ,FooterLeftTopY,FooterRightBottomX,FooterRightBottomY,BodyLeftTopX,BodyLeftTopY ,BodyRightBottomX,BodyRightBottomY ,CellPading = 0.3
    //Optional ByVal mPaperHeight = 105, Optional ByVal mPaperWidth = 90, Optional ByVal mStdFont = "Arial", Optional ByVal mStdFontSize = 8, Optional ByVal mHeaderLeftTopX = 5, Optional ByVal mHeaderLeftTopY = 5, Optional ByVal mHeaderRightBottomX = 85, Optional ByVal mHeaderRightBottomY = 20, Optional ByVal mFooterLeftTopX = 5, Optional ByVal mFooterLeftTopY = 60, Optional ByVal mFooterRightBottomX = 85, Optional ByVal mFooterRightBottomY = 80, Optional ByVal mBodyLeftTopX = 5, Optional ByVal mBodyLeftTopY = 21, Optional ByVal mBodyRightBottomX = 85, Optional ByVal mBodyRightBottomY = 60, Optional ByVal mCellPading = 0.3)
       //105, 90,"Arial",8,5,5,85,20,5,60,85,80,5,21,85,60,0.3)
	if(PageOrientation==0)
       {
         if(IsWithOutLogo!=1) //If printing with Logo
				PrinterObj.PageSettings_Portrait_A4(paperHeight,paperWidth,"Arial",8,5,6.3,85,40,5,40,85,80,5,21,85,60,0.3)
		 else //Printing Without Logo on Letter Pad starting header after 1.75 inches.
				PrinterObj.PageSettings_Portrait_A4(paperHeight,paperWidth,"Arial",8,5,11.5,85,40,5,40,85,80,5,21,85,60,0.3)
       
       }  //'Page Setting for Potrait - A4 size}
     else
      { PrinterObj.PageSettings_LandScape_A4()}  //'Page Setting for Landscape - A4 size

     if(PrinterObj.PrinterOk==0){return(false)}
     
     //To get the copyrange from where and to where to print
     	CopyRange=fnGetCopyRange(NoofCopies)
     	
    standardTxtWidth = PrinterObj.StdTxtWidth 
    ScreenPaperPrintRatio=parseFloat((paperWidth)/(TotalScreenWidth*standardTxtWidth))
     //ByVal mPictLeftTopX As Single, ByVal mPictLeftTopY As Single, ByVal mPictWidth As Single, ByVal mPictHeight As Single)
     // PrinterObj.PrintPicture(5,2,3,3);

     if(IsWithOutLogo!=1)	
     {
     /*Printing Picture*/
	 //PrinterObj.PrintPicture(68.4,0.5,15,8);
	 PrinterObj.PrintPicture(8.0,2.8,8.5,6.5);
	 }
     
    PrinterObj.HBFGap = 1
    PrinterObj.BodyRightBottomX=(ActulaScreenPrintWidth*ScreenPaperPrintRatio)+ PrinterObj.BodyLeftTopX 
    PrinterObj.HeaderRightBottomX=(ActulaScreenPrintWidth*ScreenPaperPrintRatio)+ PrinterObj.HeaderLeftTopX
     PrinterObj.FooterRightBottomX=(ActulaScreenPrintWidth*ScreenPaperPrintRatio)+ PrinterObj.FooterLeftTopX
    //
    		PrinterObj.MaxYlimit=PrinterObj.FooterRightBottomY 

	
    //Begin of  Footer Height Calculation
    PrinterObj.BeginFoooterHeightCalculation()
		fnFooterPrint()
    PrinterObj.EndFoooterHeightCalculation()
    //End of Footer Height Calculation
     
  
    //Print In Header Area
    PrinterObj.BeginHeaderDoc()
    
	if(IsWithOutLogo!=1)	
	{
		fnPrintAddress()
	}
      
		fnHeaderPrint()
    PrinterObj.EndHeaderDoc()
    //End of Print In Header Area
    
    //Print In Body Area
    PrinterObj.BeginBodyDoc()
   
		fnBodyPrint()
		 
    PrinterObj.EndBodyDoc()
     //End of Print In Body Area
     
     fnRepeatPrint()
   
    //alert("Print Initiated")
    fnPrintInitiatedMsg()
    if(isWorkSheetPrint==1)
    {fnPrintConfirm();}
}

function fnRepeatPrint()
{
	var i;
	var arr= new Array();
	arr=CopyRange.split("-");
	
	 //Begin Print in Footer Area
	 
	 for (i=arr[0];i<=arr[1];i++)
	 {

		PrinterObj.BeginFooterDoc()
			document.all("CpyNo").innerHTML=i

     		fnFooterPrint()
		PrinterObj.EndFooterDoc()
    
		PrinterObj.PrintDoc()

	 }

}


//Paragrpah print
//Sub PrintParagraph(ByVal txt As String, ByVal xmin As Single, ByVal xmax As Single, Optional ByVal Font As String = "Arial", Optional ByVal FontSize As Single = 8, Optional ByVal FontBold As Boolean = False, Optional ByVal TextAlignment As Integer = 0)

function fnPrintParagraph(ObjId){


var Obj =document.getElementById(ObjId)
var TempTxt=Obj.innerHTML

var Leftmargin=PrinterObj.BodyLeftTopX
var Rightmargin=PrinterObj.BodyRightBottomX
var TxtAlign
 
var lmargin=ReplacePx(Obj.style.marginLeft)
var fBold = 'false'

if(Obj.style.fontWeight=='bold')
  {fBold = 'true'}
  
  
 if(!(lmargin==null) || (lmargin==''))
{Leftmargin=lmargin}

if(Leftmargin-PrinterObj.BodyLeftTopX<0)
Leftmargin=PrinterObj.BodyLeftTopX;
 
// Leftmargin=(parseInt(Leftmargin))*(ScreenPaperPrintRatio);
 


 

if(!isNaN(parseInt(Obj.style.width)))
Rightmargin=((parseInt(Obj.style.width))*(ScreenPaperPrintRatio)) + (Leftmargin)


if(Rightmargin-PrinterObj.BodyRightBottomX>0)
Rightmargin=PrinterObj.BodyRightBottomX;


TxtAlign=0
if(Obj.style.textAlign=='center')
TxtAlign=1;

if(Obj.style.textAlign=='right')
TxtAlign=2;

var FontSize=12

if(!(Obj.style.fontSize==null) || (Obj.style.fontSize=''))
{FontSize=ReplacePx(Obj.style.fontSize)}

if(isNaN(FontSize)|| (FontSize=='') ||(FontSize==null)){
FontSize=12
}
  
FontSize=FontSize-4

TempTxt=GetEnabledString(TempTxt)
 PrinterObj.PrintParagraph(TempTxt,Leftmargin,Rightmargin,'Arial',FontSize,fBold,TxtAlign)
}//fnPrintParagraph


//Table Print
//Sub PrintTableCell(ByVal CellText As String, ByVal xmin As Single, ByVal xmax As Single, ByVal cellno As Single, ByVal Font As String, ByVal FontSize As Single, ByVal FontBold As Boolean, ByVal CellAlignment As Integer)
//Public Sub PrintTable(Optional ByVal LeftX As Single = 0)
// Sub ReDim_TableBodyDataAry(Rows, Cols)
  
//Adding Column(s) Data into the Table Body Data Array
// Sub Add_TableBodyDataAry(ByVal Row, ByVal Col, ByVal ColData, Optional ByVal FontFamily = "Arial", Optional ByVal FontSize = 8, Optional ByVal FontBold = False, Optional ByVal CellAlign = 0)
//'Setting Two Dimensional Array for Table Header Data
//Public Sub ReDim_TableHeaderDataAry(Rows, Cols)
 //Adding Column(s) Data into the Table Data Array
//Sub Add_TableHeaderDataAry(ByVal Row, ByVal Col, ByVal ColData, Optional ByVal FontFamily = "Arial", Optional ByVal FontSize = 8, Optional ByVal FontBold = True, Optional ByVal CellAlign = 0)
 //Set each Column  Width
// Sub SetTableColWidth(ByVal Col As Integer, ByVal ColWidth As Single)


function fnPrintTable(TableObjId,isTableHeader,TableHeaderRows)
{ 

 //isTableHeader='TH' maens Table header=true
 // TableHeaderRows=number of rows used for Table header
   //alert(TableObjId)
	
	var rCount = document.all(TableObjId).rows.length
	var rowFrom=0
        if(isTableHeader=='TG')//For data grid print
         rCount=rCount-1;
	if(rCount>0)
	{
		if(rowFrom<0 || rowFrom>=rCount){
			alert("Invalid Body Table Rows From argument Entered")
			return(false)
		}
		
		var cCount = document.all(TableObjId).rows(0).cells.length
		var TempStr=''
		rCount = rCount-rowFrom
		//Initilize the array  obects
		PrinterObj.ReDim_TableBodyDataAry(rCount-1,cCount-1)
		//Set Table Column widths
			  var widthPx
		       var CellWidth
		    for(c=0;c<cCount;c++){	
	// alert(document.all(TableObjId).rows(0).cells(c).style.width)
				widthPx = parseInt(document.all(TableObjId).rows(0).cells(c).style.width)
					 
				if(widthPx > 0)
				CellWidth =  widthPx*(ScreenPaperPrintRatio)
				else
				CellWidth = paperWidth*ScreenPaperPrintRatio
			   					
				PrinterObj.SetTableColWidth(c,CellWidth)				
		     }//c
		// end of Set Table Column widths
	   // Add content  from reading table 
	   var fSize,fBold,fAlign,fFamily
		for(r=0;r<rCount;r++){
			for(c=0;c<cCount;c++){
				TempStr	= document.all(TableObjId).rows(rowFrom).cells(c).innerHTML	
				fBold = document.all(TableObjId).rows(rowFrom).cells(c).style.fontWeight
				fSize = parseInt(document.all(TableObjId).rows(rowFrom).cells(c).style.fontSize)
				fAlign = document.all(TableObjId).rows(rowFrom).cells(c).style.textAlign
				fFamily = document.all(TableObjId).rows(rowFrom).cells(c).style.fontFamily
				 
			 	if(fBold=='bold') 
				fBold='True'; 
				else 
				fBold='False';
				
				if(isNaN(fSize)) 
				fSize=12
				
				fSize=fSize-4
				if(fAlign=='center') 
				fAlign=1; 
				else if(fAlign=='right') 
				fAlign=2;
				else
				fAlign=0;
				
				if(fFamily=='') 
				fFamily='Arial'
				
				//alert(fBold +"\n"+ fSize +"\n"+ fAlign +"\n"+ fFamily)
				
			    TempStr=GetEnabledString(TempStr)
			    			     
				//PrinterObj.Add_TableBodyDataAry(row,col,coldata,family,size,bold,align)
				PrinterObj.Add_TableBodyDataAry(r,c,TempStr,fFamily,fSize,fBold,fAlign)
				//PrinterObj.Add_TableBodyDataAry(r,c,TempStr)
		//	alert("T" + TableObjId + ' r =' +  r + ','  +  'c =' + c  + '  ' + TempStr)
			}
			rowFrom++;
		}
			var LeftX= 0
			if(!isNaN(parseInt(document.all(TableObjId).style.marginLeft)))
			LeftX=parseInt(document.all(TableObjId).style.marginLeft);
		   LeftX=LeftX*(ScreenPaperPrintRatio) + PrinterObj.BodyLeftTopX;
			
			if(LeftX-PrinterObj.BodyLeftTopX<0)		
		       LeftX=PrinterObj.BodyLeftTopX;
		    
		    if(LeftX-PrinterObj.BodyRightBottomX>0)		
		       LeftX=PrinterObj.BodyLeftTopX;
		
		
			PrinterObj.PrintTable(LeftX)
		 
			 
				
	}else{return(false);}
	
	return(true);	


}//fnPrintTable


    // Get Table/ Span Object Ids belons respective Divs (Header,Body,Footer)
    //Using these Id and as per their type
    // call fnPrintTable if it is Table object or 
    // Call fn Print Paragraph if it is Span Object

//Execute Print content in Header Div 
function fnHeaderPrint(){
    
	var HeaderObjStr=document.all("HeaderObjIDs").value 
	var HeaderObjTypeStr=document.all("HeaderObjTypes").value 
	var HeaderObjAry =  new Array();
	var HeaderObjTypeAry =  new Array();
		
		if(HeaderObjStr!=''){ //if-1
			HeaderObjAry=HeaderObjStr.split(",")
			HeaderObjTypeAry=HeaderObjTypeStr.split(",")
		
		    for(i=0;i<HeaderObjAry.length;i++)//for-1
		    { 
				// if paragraph Type
				// call print paragraph function with Span Id as argument
				//end if paragraph Type
				if(HeaderObjTypeAry[i]=='P')
				 fnPrintParagraph(HeaderObjAry[i]);			
				//TH=Table has Header ;TN=    Table	 hasn't header // if Table Type //call Print table function with TableId and
				
				if((HeaderObjTypeAry[i]=='TH')||(HeaderObjTypeAry[i]=='TN'))
				   fnPrintTable(HeaderObjAry[i],HeaderObjTypeAry[i],0);       
		    
		        if(HeaderObjTypeAry[i]=='DL')
			   PrinterObj.DrawLine(PrinterObj.BodyLeftTopX, PrinterObj.BodyRightBottomX)
               
		    }//for-1
		}//if-1
}	
//HTab1.style.marginLeft
//Execute Print content in Body Div 
function fnBodyPrint(){

	var BodyObjStr=document.all("BodyObjIDs").value 
	var BodyObjTypeStr=document.all("BodyObjTypes").value 
	var BodyObjTabHeadRowsStr=document.all("BodyObjTabHeadRows").value 
	
	
	var BodyObjAry =  new Array();
	var BodyObjTypeAry =  new Array();
	var BodyObjTabHeadRowsAry=new Array();
	
	
	if(BodyObjStr!=''){//if-1
	   BodyObjAry=BodyObjStr.split(",")
	   BodyObjTypeAry=BodyObjTypeStr.split(",")
	   BodyObjTabHeadRowsAry=BodyObjTabHeadRowsStr.split(",")
	    for(i=0;i<BodyObjAry.length;i++)//for-1
		    { 
				// if paragraph Type
				// call print paragraph function with Span Id as argument
				//end if paragraph Type
				if(BodyObjTypeAry[i]=='P')
				 fnPrintParagraph(BodyObjAry[i]);
			
				//TH=Table has Header ;TN=    Table 				hasn't header // if Table Type //call Print table function with TableId and
				
				
				if((BodyObjTypeAry[i]=='TH')||(BodyObjTypeAry[i]=='TN')||(BodyObjTypeAry[i]=='TG'))
				  {
				    if(PrinterObj.MaxPosibleLines()<5)
				    {PrinterObj.MoveToNextPage();}
				    fnPrintTable(BodyObjAry[i],BodyObjTypeAry[i],BodyObjTabHeadRowsAry[i]); 
			      }
			   // Move to next page
		      if(BodyObjTypeAry[i]=='MP')
			   PrinterObj.MoveToNextPage();
              // move to Next line
              if(BodyObjTypeAry[i]=='ML')
			   PrinterObj.MoveToNextLine();
			   // Draw line
			   if(BodyObjTypeAry[i]=='DL')
			   PrinterObj.DrawLine(PrinterObj.BodyLeftTopX, PrinterObj.BodyRightBottomX)
                // Check Minimum gap
               if(BodyObjTypeAry[i]=='CM')
			    { if(PrinterObj.MaxPosibleLines()<5)
				  {PrinterObj.MoveToNextPage(); }
				}
             
			 

		    
		    }//for-1
	  }//if-1
	   

}

//Execute Print content in Footer Div 
function fnFooterPrint(){
	var FooterObjStr=document.all("FooterObjIDs").value 
	var FooterObjTypeStr=document.all("FooterObjTypes").value 
	var FooterObjAry =  new Array();
	var FooterObjTypeAry =  new Array();
		if(FooterObjStr!=''){//if-1
		   FooterObjAry=FooterObjStr.split(",")
	       FooterObjTypeAry=FooterObjTypeStr.split(",")
	       
	        for(i=0;i<FooterObjAry.length;i++)//for-1
		    { 
				// if paragraph Type
				// call print paragraph function with Span Id as argument
				//end if paragraph Type
				if(FooterObjTypeAry[i]=='P')
				 fnPrintParagraph(FooterObjAry[i]);
			
				//TH=Table has Header ;TN=  Table				 hasn't header // if Table Type //call Print table function with TableId and		itsType
				if((FooterObjTypeAry[i]=='TH')||(FooterObjTypeAry[i]=='TN'))
				fnPrintTable(FooterObjAry[i],FooterObjTypeAry[i],0); 
			 }//for-1
	    }//if-1

	
}

function fnPrintInitiatedMsg()
	{
	 
		var vpath="../CaliberCommonCtrls/PrintInitiatedMsg.htm"
		window.showModalDialog( vpath ,'Caliber QAMS','dialogheight=6;dialogwidth=15;help=0;status=0;scroll=0;edge=raised;')		
		 
	}
	
	function fnPrintAddress(){
	        
			var presentY=PrinterObj.cury
			var StdTxtHeight=PrinterObj.StdTxtHeight
			PrinterObj.cury= StdTxtHeight*(1.5)
			var Addr=""
 			PrinterObj.PrintParagraph(Addr,5,85,'Arial',14,'true',1)
			
			PrinterObj.PrintParagraph(CompanyAddr,5,85,'Arial',12,'true',1)

			
		 	PrinterObj.cury= StdTxtHeight*(1.5)
			

			PrinterObj.ReDim_TableBodyDataAry(0,1)
			var CellWidth 
			CellWidth= 12*standardTxtWidth	
			CellWidth =  120*ScreenPaperPrintRatio		
			PrinterObj.SetTableColWidth(0,CellWidth)
			CellWidth=  600*ScreenPaperPrintRatio	
			PrinterObj.SetTableColWidth(1,CellWidth)

			PrinterObj.Add_TableBodyDataAry(0,0,' ','Arial',12,'true',1)
			PrinterObj.Add_TableBodyDataAry(0,1,' $$$$$ $$$$$ $$$$$','Arial',12,'true',1)
              PrinterObj.PrintTable(5)
	}
	
	//==============For Bar Code Print====================
	
	function SetBarCode(BarCodeValue,IsPrintBarCodeTxt){
	    PrinterObj=document.all("CaliberPrintCls1")
	   if(IsPrintBarCodeTxt==''){IsPrintBarCodeTxt="false"}
	   if(BarCodeValue==''){return(false)}
	     PrinterObj.IsBarCode="true"
        PrinterObj.BarCodeHeight=2
        PrinterObj.BarcodeTxt=BarCodeValue //"PCAR0010001"
        PrinterObj.BarCodeTxtFontSize=8
        PrinterObj.BarCodeWidthFraction=0.11
        PrinterObj.IsPrintBarCodeTxt= IsPrintBarCodeTxt  //"True"
        PrinterObj.BarCodeTxtFontBold="False"
        PrinterObj.BarcodeTolerance=3
	}
	
	
	
	//============================