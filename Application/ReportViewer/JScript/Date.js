var OldVal = "0/0";
var getdate = window.setTimeout(function () {
    
    
    // Define what happens when the textbox comes under focus
    // Remove the watermark class and clear the box
    $(".watermarkOn").focus(function () {

        $(this).filter(function () {

            // We only want this to apply if there's not
            // something actually entered            
            return $(this).val() == "mm/dd/yyyy"

        }).removeClass("watermarkOn").addClass("RoundedTxt").val("");
 
        if (OldVal == "0/0" || OldVal == "")
        {
          OldVal =  $(this).val() + "#*#" + $(this).attr("id");
        }
        else if ( $(this).attr("id") != OldVal.split("#*#")[1] )
        {
           OldVal =  $(this).val() + "#*#" + $(this).attr("id");
        }
        else if ( $(this).val() != OldVal.split("#*#")[0] )
        {
           OldVal =  $(this).val() + "#*#" + $(this).attr("id");
        }
  
 
//        if (OldVal != ""  && OldVal != "0/0" & $(this).attr("id") == OldVal.split("#*#")[1])
//          {  
          
            $(this).filter(function () {

                // We only want this to apply if there's no value or  
                // something actually entered other than mm/dd/yyyy
                     
                    return ($(this).val() == "" || $(this).val() != "mm/dd/yyyy") && $(this).attr("id") == OldVal.split("#*#")[1]
                  
            }).removeClass("watermarkOn").addClass("RoundedTxt").val(ValidateDate(OldVal.split("#*#")[0]));
//         }
//         else
//         {
//           $(this).filter(function () {

//                // We only want this to apply if there's no value or  
//                // something actually entered other than mm/dd/yyyy
//                
//                     
//                    return ($(this).val() != "" || $(this).val() != "mm/dd/yyyy") 
//                  
//            }).removeClass("watermarkOn").addClass("RoundedTxt").val(ValidateDate($(this).val()));
//         }   

    });
    
    
   

    // Define what happens when the textbox loses focus
    // Add the watermark class and default text
    $(".watermarkOn").blur(function () {

        $(this).filter(function () {

            // We only want this to apply if there's not
            // something actually entered
            return $(this).val() == ""

        }).removeClass("RoundedTxt").addClass("watermarkOn").val("mm/dd/yyyy");

        var date = $(this).val();
        if (date != "mm/dd/yyyy") {
         var _Date=ValidateDate(date)
            if (_Date!=0) {   
                var _day = _Date.split("/")[1]
                var _month = _Date.split("/")[0]
                var _year = _Date.split("/")[2]
                var month
                switch (_month) {
                    case "1": month = "Jan";
                        break;
                    case "01": month = "Jan";
                        break;
                    case "2": month = "Feb";
                        break;
                    case "02": month = "Feb";
                        break;
                    case "3": month = "Mar";
                        break;
                    case "03": month = "Mar";
                        break;
                    case "4": month = "Apr";
                        break;
                    case "04": month = "Apr";
                        break;
                    case "5": month = "May";
                        break;
                    case "05": month = "May";
                        break;
                    case "6": month = "Jun";
                        break;
                    case "06": month = "Jun";
                        break;
                    case "7": month = "Jul";
                        break;
                    case "07": month = "Jul";
                        break;
                    case "8": month = "Aug";
                        break;
                    case "08": month = "Aug";
                        break;
                    case "9": month = "Sep";
                        break;
                    case "09": month = "Sep";
                        break;
                    case "10": month = "Oct";
                        break;
                    case "11": month = "Nov";
                        break;
                    case "12": month = "Dec";
                        break;
                    default:

                }
                $(this).val(month + " " + _day + ", " + _year);
                OldVal =  _month + "/" + _day + "/" + _year + "#*#" + $(this).attr("id");
            } else {
                alert("Invalid Date Format; Please Check.");
                $(this).val(OldVal.split("#*#")[0]);
                $(this).focus();
            }
        }

    });
    
    
     
});//getdate

        function Tosetoldval()
        {
          if (OldVal != "0/0" || OldVal != "")
          {
             return OldVal
          }
        }


        function ValidateDate(date) 
        {
            if(date.indexOf(",")>0)
            {
                var _regex = /^\w{3}\s\d{1,2}\,\s\d{4}$/
            }
            else
            {
                var _regex = /^\d{1,2}\/\d{1,2}\/\d{4}$/
            }
            if (!_regex.test(date))
            return 0; // alert("Invalid Date Format; Please Check.")
            else {
                if(date.indexOf(",")>0)
                {
                    var _day = date.substr((date.indexOf(" ")+1),(date.indexOf(",")-date.indexOf(" ")-1))
                    var _month =GetMonthVal(date.substr(0,3))
                    var _year = date.substr((date.indexOf(",")+2),4)  //date.substr(((date.length)-date.indexOf(",")+2)) 
                }
                else {
                    var _day = date.split("/")[1]
                    var _month = date.split("/")[0]
                    var _year = date.split("/")[2]
                    //if (_year.length<4) _year= 2000 + _year
                }

                var _date = new Date(_year, _month - 1, _day)
                if ((_date.getMonth() + 1 != _month) || (_date.getDate() != _day) || (_date.getFullYear() != _year))
                return 0; //alert("Invalid Date; Please Check.")
                else {                
                    return (_month + '/' +_day + '/' +  _year);
                }        
            }    
            return 0;
        }

        function GetMonthVal(Month)
        {
            var monthname=new Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
            var _month=0
            switch (Month)
             {

                case "Jan": _month=1;
                break;
                case "Feb": _month = 2;
                break;
                case "Mar": _month = 3;
                break;
                case "Apr": _month = 4;
                break;
                case "May": _month = 5;
                break;
                case "Jun": _month = 6;
                break;
                case "Jul": _month = 7;
                break;
                case "Aug": _month = 8;
                break;
                case "Sep": _month = 9;
                break;
                case "Oct": _month = 10;
                break;
                case "Nov": _month = 11;
                break;
                case "Dec": _month = 12;
                break;
                default:
            }  

             return (_month);
        }
        
        
       

