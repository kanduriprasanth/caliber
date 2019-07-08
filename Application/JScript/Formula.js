
//############################  FORMULA VALIDATION  ####################
function Formula(objName,formName,symbolList)
{

     
	var str = document.all(formName).all(objName).value
	var tempStr=""
	if(str == "")
		return(false);

	  var str2 = new String(str)

            var regEx = new RegExp ('log', 'gi') ;

            str = str2.replace(regEx, '')


	var flag=0,cnt1=0,Lcnt=0,Rcnt=0
	var operate="+-%/*^"
	var keys=" 0123456789-+*^/.(),ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	var msg=""
	
	//Removing all white spaces and contacting into single string.
	for(d=0;d<str.length;d++){
		if(str.charAt(d) != " ")
		tempStr=tempStr+str.charAt(d)
	}
	str=tempStr
	document.all(formName).all(objName).value=tempStr
	
	var n=str.length
	for(i=0;i<n;i++)
	{
		ch=str.charAt(i)
		for(j=0;j<keys.length;j++)
		{
			if(ch==keys.charAt(j))
				break;			
		}
		if(j==keys.length)
		{msg="Special symbols are not allowed";flag=1;break;}
		for(k=0;k<operate.length;k++)
		{
			if(str.charAt(0)!="(" || str.charAt(n-1)!=")")
			{msg = "Each and every symbol and number should be enclosed with braces";flag=1;break;}
			
			if( (str.charAt(0)==operate.charAt(k)) || (str.charAt(n-1)==operate.charAt(k)) )
			{msg = "Operator is missplaced check";flag=1;break;}
			if( (str.charAt(i)=="(" && str.charAt(i+1)==")") || (str.charAt(i)==")" && str.charAt(i+1)=="(") )
			{msg = "Syntax Error:'()' and ')(' are not allowed";flag=1;break;}
			if( (str.charAt(0)==")") || (str.charAt(n-1)=="(") )
			{msg="Syntax Error:')' can't be starting & '(' can't be ending";flag=1;break;}
			if( (str.charAt(i)==operate.charAt(k)) && (str.charAt(i-1)!=")" || str.charAt(i+1) != "(") )
			{msg="Operator has to be used in this format \" Ex:(a) * (b) \"";flag=1;break;}
			for(m=0;m<operate.length;m++)
			if( (str.charAt(i)==operate.charAt(k)) && (str.charAt(i+1) == operate.charAt(m)))
			{msg="Operators cannot be side by side";flag=1;break;}
			
			if(flag == 1)
				break;
		}
		if(flag==1)
			break;
		for(m=0;m<n;m++)
		{
			if(str.charAt(m)=="(")
				Lcnt = Lcnt+1
			if(str.charAt(m)==")")
				Rcnt = Rcnt+1				
			cnt1 = Lcnt+Rcnt	
		}
		if(Lcnt != Rcnt)
		{msg="Left braces and Right braces should Match";flag=1;break;}
		if(cnt1%2 != 0)
		{msg="Left braces and Right braces should Match";flag=1;break;}
	}
	if(flag==1){
	        	src.errormessage=msg ;
			 	args.IsValid=false;
				Page_IsValid=false;
	//	document.all(formName).all(objName).focus()
		flag=0;
		return(false)
	}
	else
	if(flag==0){
		var FStatus = FormulaSymbolTest(objName,formName,symbolList)
		if(FStatus==false)
		return(false)
	}


	return(true);
}


function FormulaSymbolTest(objName,formName,symbolList)
{
	var symbolAry = new Array();
	symbolAry=symbolList.split(",")
	
	var text=document.all(formName).all(objName).value
	
	//Checking if the formula has other alphanumeric values which are
	//not present in the sybols.Nuberic values are allowed.
	var formulaAry = new Array()
	var fcnt=0,fstr="",flag=0,n=0
	for(i=0;i<text.length;i++){
		var pp = text.charAt(i)
		if(pp!="(" && pp!=")" && pp!="+" && pp!="-" && pp!="/" && pp!="^" && pp!="%" && pp!="*")
		fstr+=pp
		
		if((pp=="(" || pp==")") && fstr!=""){
			formulaAry[fcnt]=fstr
			fcnt++
			fstr=""
		}
	}
	if(fstr!=""){
		formulaAry[fcnt]=fstr
		fcnt++
		fstr=""
	}
	
	//Check if alpha characters other than symbols entered in the formula.
	for(i=0;i<formulaAry.length;i++){
		if(isNaN(formulaAry[i])){
			var alertFlag=0
			for(j=0;j<symbolAry.length;j++){
				if(symbolAry[j] == formulaAry[i]){
					alertFlag=1
					break;
				}
			}
			if(alertFlag==0){
				src.errormessage="Only above defined Symbols to be used in formula.\nUnknown symbol ("+ formulaAry[i] +")" 
				 		args.IsValid=false;
						Page_IsValid=false;
				//document.all(formName).all(objName).focus();
				return(false)
			}
		}
	}
	//end of other symbols check in the formula
	
	
	//Checking if symbol repeated in the symbol fields
	for(i=0;i<symbolAry.length;i++){
		for(j=0;j<symbolAry.length;j++){
			if(i!=j){
				if(symbolAry[i]==symbolAry[j] && symbolAry[i]!=""){
			 		src.errormessage="Symbol should be different for each variable" ;
			 		args.IsValid=false;
					Page_IsValid=false;					
					return(false);
				}
			}
		}
	}
	
	//checking for atleast one symbol should present in the formula
	for(i=0;i<symbolAry.length;i++){
		if(symbolAry[i] != ""){
			n = text.lastIndexOf("("+symbolAry[i]+")")
			if(n >= 0){
				flag=1;
				break;
			}
		}
	}
	if(flag == 0){
		src.errormessage="At least one Symbol should present in the Formula within bracess '(' & ')':Ex: (x)" 
		args.IsValid=false;
		Page_IsValid=false;
		//document.all(formName).all(objName).focus()
		return(false)
	}
	return(true);
}
//####################### END OF FORMULA VALIDATION ##########################



//######  Passlimits function for Quantitative and MultiQuantitative Tests #####
	function PassLimitsValidation(num,Type,formName,ObjPrefix)
	{
		var form2 = formName
		for(i=1;i<=num;i++)
		{
			if(Type=="multi"){
			var Pass1 = ObjPrefix + "Limit1"+i
			var Pass2 = ObjPrefix + "Limit2"+i
			var Pass3 = ObjPrefix + "Limit3"+i
			var Pass4 = ObjPrefix + "Limit4"+i
			var Pass5 = ObjPrefix + "Limit5"+i
			}
			if(Type=="single"){
			var Pass1 = ObjPrefix + "Limit1"
			var Pass2 = ObjPrefix + "Limit2"
			var Pass3 = ObjPrefix + "Limit3"
			var Pass4 = ObjPrefix + "Limit4"
			var Pass5 = ObjPrefix + "Limit5"
			}
			
			var flag=0
			var p1X = document.all(form2).all(Pass1).selectedIndex
			var p3X = document.all(form2).all(Pass3).selectedIndex
			var p4X = document.all(form2).all(Pass4).selectedIndex
			
			var p1 = document.all(form2).all(Pass1)(p1X).text
			var p2 = document.all(form2).all(Pass2).value
			var p3 = document.all(form2).all(Pass3)(p3X).text
			var p4 = document.all(form2).all(Pass4)(p4X).text
			var p5 = document.all(form2).all(Pass5).value
						
			//Check for empty fields
			if(p1=="" || p2==""){
				src.errormessage="Enter passlimits" ;
			 	args.IsValid=false;
				Page_IsValid=false;
				document.all(form2).all(Pass1).focus();
				return(false);
			}
			if((p3=="" && (p4!="" || p5!=""))||(p4=="" && (p3!="" || p5!=""))||(p5=="" && (p3!="" || p4!=""))){
				src.errormessage="Passlimits entered is incomplete" ;
			 	args.IsValid=false;
				Page_IsValid=false;
				document.all(form2).all(Pass1).focus();
				return(false);
			}
			//Check for Numerical values only(Passlimits fields)
			if(isNaN(p2)||(isNaN(p5) && p5!="")){
		 		src.errormessage="Enter numerical value" ;
			 	args.IsValid=false;
				Page_IsValid=false;
				document.all(form2).all(Pass2).focus();
				return(false);
			}
			p2 = parseFloat(p2)
			p5 = parseFloat(p5)
			
			if( (p1==">" || p1==">=") && (p3=="and") && (p4==">"||p4==">="||p4=="=") )
			{msg="Selected passLimits are Logically wrong.";flag=1;}
			if( (p1=="<" || p1=="<=") && (p3=="and") && (p4=="<"||p4=="<="||p4=="=") )
			{msg="Selected passLimits are Logically wrong.";flag=1;}
			if( (p1=="=") && (p3=="and") && (p4==">"||p4==">="||p4=="="||p4=="<"||p4=="<="))
			{msg="Selected passLimits are Logically wrong.";flag=1;}

			if( (p1==">") && (p3=="and") && (p4=="<") && (p5<=p2) )
			{msg="Logical Comparision is wrong: "+p2+", "+p5;flag=1;}
			if( (p1==">") && (p3=="and") && (p4=="<=") && (p5<p2) )
			{msg="Logical Comparision is wrong: "+p2+", "+p5;flag=1;}
	
			if( (p1=="<") && (p3=="and") && (p4==">") && (p2<=p5) )
			{msg="Logical Comparision is wrong: "+p2+", "+p5;flag=1;}
			if( (p1=="<") && (p3=="and") && (p4==">=") && (p2<=p5) )
			{msg="Logical Comparision is wrong: "+p2+", "+p5;flag=1;}
		
			if( (p1==">=") && (p3=="and") && (p4=="<") && (p5<=p2) )
			{msg="Logical Comparision is wrong: "+p2+", "+p5;flag=1;}
			else
			if( (p1==">=") && (p3=="and") && (p4=="<=") && (p5<=p2) )
			{msg="Logical Comparision is wrong: "+p2+", "+p5;flag=1;}
	
			if( (p1=="<=") && (p3=="and") && (p4==">") && (p2<=p5) )
			{msg="Logical Comparision is wrong: "+p2+", "+p5;flag=1;}
			else
			if( (p1=="<=") && (p3=="and") && (p4==">=") && (p2<=p5) )
			{msg="Logical Comparision is wrong: "+p2+", "+p5;flag=1;}			
			//alert(p1+"-"+p2+"-"+p3+"-"+p4+"-"+p5)
			if(flag == 1){
				src.errormessage=msg ;
			 	args.IsValid=false;
				Page_IsValid=false;
				document.all(form2).all(Pass2).focus();
				return(false);
			}
		}	
		return(true);	
	}
	
	