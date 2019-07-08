var isItemSelAction=0
function LeftSelectDblClick(IdVal)
{
var IdAry = new Array()
 IdAry=IdVal.split("_")
 var LeftList_ID
 var RightList_ID
 var BaseId
 BaseId=""
if(IdAry.length>0){
		for(i=0;i<IdAry.length-1;i++){
		BaseId=BaseId + IdAry[i] + "_"
		}
  }else{
  BaseId=IdVal
  }
 
LeftList_ID= BaseId + "LeftListBox"
RightList_ID=BaseId + "RightListBox"
	var oOption = document.createElement("OPTION");	
	var n = document.all(LeftList_ID).selectedIndex 	
	if(n>=0){	
		oOption.text= document.all(LeftList_ID)(n).text
		oOption.value= document.all(LeftList_ID)(n).value
		
				 document.all(LeftList_ID).remove(n)
		       document.all(RightList_ID).add(oOption)
		     
	}
	Sel(BaseId,RightList_ID)
	if(isItemSelAction==1)
	PgRfrsh()
}
function RightSelectDblClick(IdVal)
{
var IdAry = new Array()
 IdAry=IdVal.split("_")
 var LeftList_ID
 var RightList_ID
 var BaseId
 BaseId=""
if(IdAry.length>0){
		for(i=0;i<IdAry.length-1;i++){
		BaseId=BaseId + IdAry[i] +"_"
		}
  }else{
  BaseId=IdVal
  }
LeftList_ID= BaseId + "LeftListBox"
RightList_ID=BaseId + "RightListBox"

	var oOption = document.createElement("OPTION");	
	var n = document.all(RightList_ID).selectedIndex 	
	if(n>=0){	
		oOption.text=document.all(RightList_ID)(n).text
		oOption.value=document.all(RightList_ID)(n).value		
	    document.all(LeftList_ID).add(oOption)
		document.all(RightList_ID).remove(n)
	}
Sel(BaseId,RightList_ID)
	if(isItemSelAction==1)
	PgRfrsh()
}
function SelectallRight(IdVal)
{	
var IdAry = new Array()
 IdAry=IdVal.split("_")
 var LeftList_ID
 var RightList_ID
 var BaseId
 BaseId=""
if(IdAry.length>0){
		for(i=0;i<IdAry.length-1;i++){
		BaseId=BaseId + IdAry[i] +"_"
		}
  }else{
  BaseId=IdVal
  }
LeftList_ID= BaseId + "LeftListBox"
RightList_ID=BaseId + "RightListBox"


	var n = document.all(LeftList_ID).length 
	for(i=0;i<n;i++){	
		var oOption = document.createElement("OPTION");		
		oOption.text=document.all(LeftList_ID)(0).text
		oOption.value=document.all(LeftList_ID)(0).value
		document.all(RightList_ID).add(oOption)
		document.all(LeftList_ID).remove(0)
	 }
	Sel(BaseId,RightList_ID)
if(isItemSelAction==1)
	PgRfrsh()
}
function SelectallLeft(IdVal)
{
var IdAry = new Array()
 IdAry=IdVal.split("_")
 var LeftList_ID
 var RightList_ID
 var BaseId
 BaseId=""
if(IdAry.length>0){
		for(i=0;i<IdAry.length-1;i++){
		BaseId=BaseId + IdAry[i] +"_"
		}
  }else{
  BaseId=IdVal
  }
LeftList_ID= BaseId + "LeftListBox"
RightList_ID=BaseId + "RightListBox"

	var n = document.all(RightList_ID).length 
	for(i=0;i<n;i++){	
		var oOption = document.createElement("OPTION");		
		oOption.text=document.all(RightList_ID)(0).text
		oOption.value=document.all(RightList_ID)(0).value
		document.all(LeftList_ID).add(oOption)
		document.all(RightList_ID).remove(0)
	}
	Sel(BaseId,RightList_ID)
if(isItemSelAction==1)
	PgRfrsh()
}
function Sel(b,r)
{ 

     var BaseId=b
     var RightList_ID=r

    var OptValues_ID=BaseId + "OptValues"
    var OptTexts_ID=BaseId + "OptTexts"

    var listVal=""
    var listTxt=""
    var tkeys=""
	var costlist=""
	
	var n = document.all(RightList_ID).length 
	for(i=0;i<n;i++){	
		if(listVal!="")
		{
		listVal=listVal + "," + document.all(RightList_ID)(i).value
		listTxt=listTxt + "#*#" + document.all(RightList_ID)(i).text
		}
		else
		{
		listVal=document.all(RightList_ID)(i).value
		listTxt=document.all(RightList_ID)(i).text
		}	
		
    }
    
    document.all(OptValues_ID).value=listVal
	document.all(OptTexts_ID).value=listTxt
	

}

function PgRfrsh(){
document.forms(0).submit();
}