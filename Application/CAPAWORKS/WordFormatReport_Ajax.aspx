<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WordFormatReport_Ajax.aspx.vb"
    EnableEventValidation="false" Inherits="CAPAWORKS.WordFormatReport_Ajax" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD  HTML 4.0 Transitional//EN" >

<html>
<head >
<meta charset="UTF-8">
  <style >
  
  td,span,p
  {
	word-wrap:break-word;
	
  }
  
  
  
  .PlanFieldCss {color:Blue;text-align:left;font-style:italic;word-wrap:break-word;font-weight:normal;
}
  
  </style>
</head>

<body link="blue" vlink="purple" style='tab-interval: .5in'>
    <div class="WordSection1" style="margin-right:500px">
    
     <asp:Literal ID="htmlResponce" runat=server ></asp:Literal>
      
    </div></body></html>

