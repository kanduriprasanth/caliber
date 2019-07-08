// JScript File

var ActionPlan = function (name)
{

  this.Name = name;
}
var Text=""

ActionPlan.prototype.Execute = function(itemText, itemLabel) 
{
    var TrpDocObj = window.parent.document

    var SPrefix = "M_"
    if(TrpDocObj.getElementById ("TpltUniqueIdTxt"))
    SPrefix = TrpDocObj.getElementById ("TpltUniqueIdTxt").value;
    var CCCnt=1
    var DocObj = FCK.EditorDocument

    //var Spanvariable="<span class='ActionPlanFieldsCss' id='" + SPrefix + "_Observ' calfld='11' style='width:200px;height:20px'>&nbsp;</span>"
     var Spanvariable="<br/><DIV class='ActionPlanCss' id='" + SPrefix + "_ActPlan'><SPAN style='text-align:center;'>&lt;%&nbsp;&nbsp;"+ "Action Plans" + "&nbsp;&nbsp;%&gt</SPAN></DIV>"
   
   
    FCK.InsertHtml(Spanvariable + "&nbsp;" )
}

// Manage the plugin behavior
ActionPlan.prototype.GetState = function()
{
    return FCK_TRISTATE_OFF; // FCK_TRISTATE_OFF or  FCK_TRISTATE_ON or FCK_TRISTATE_DISABLED
}

ActionPlan.prototype.RefreshState = function() 
{
    return FCK_TRISTATE_OFF; // FCK_TRISTATE_OFF or  FCK_TRISTATE_ON
}


// Register the command.
FCKCommands.RegisterCommand( 'ActionPlan' ,  new  ActionPlan('ActionPlan') ) ;

// Create the toolbar button.
var LockToolbar = function(tooltip,  style)
{
    this.CommandName   = 'ActionPlan';
    this.Label         = this.GetLabel();
    this.Tooltip       = tooltip?  tooltip : this.Label;
    this.Style         = style;  //FCK_TOOLBARITEM_ICONTEXT OR FCK_TOOLBARITEM_ONLYTEXT
    this.IconPath      =FCKPlugins.Items['ActionPlan'].Path + 'ActionPlan.gif'
}
 
// Set the toolbar prototype.
LockToolbar.prototype = new  FCKToolbarButton( 'ActionPlan Report', 'ActionPlan', 'ActionPlan Report', null, false, true );

//LockToolbar.prototype = new  FCKDialogCommand('ActionPlan', 'ActionPlan'

// Label to appear in the FCK toolbar
LockToolbar.prototype.GetLabel  = function()
{
    return "Action Plans";
}

//Register the combo with the FCKeditor
FCKToolbarItems.RegisterItem('ActionPlan' , new LockToolbar( 'ActionPlan Report', FCK_TOOLBARITEM_ONLYICON ) ) ; // FCK_TOOLBARITEM_ONLYICON or FCK_TOOLBARITEM_ONLYTEXT  or  FCK_TOOLBARITEM_ICONTEXT
