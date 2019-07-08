// JScript File

var RawData = function (name)
{

  this.Name = name;
}
var Text=""

RawData.prototype.Execute = function(itemText, itemLabel) 
{
    var pageURL ="../EditorAddons.aspx?&Surl=" +"RawDataList.aspx"

    SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
}

// Manage the plugin behavior
RawData.prototype.GetState = function()
{
    return FCK_TRISTATE_OFF; // FCK_TRISTATE_OFF or  FCK_TRISTATE_ON or FCK_TRISTATE_DISABLED
}

RawData.prototype.RefreshState = function() 
{
    return FCK_TRISTATE_OFF; // FCK_TRISTATE_OFF or  FCK_TRISTATE_ON
}

// Register the command.
FCKCommands.RegisterCommand( 'RawData' ,  new  RawData('RawData') ) ;

// Create the toolbar button.
var RawDataToolbar = function(tooltip,  style)
{
    this.CommandName   = 'RawData';
    this.Label         = this.GetLabel();
    this.Tooltip       = tooltip?  tooltip : this.Label;
    this.Style         = style;  //FCK_TOOLBARITEM_ICONTEXT OR FCK_TOOLBARITEM_ONLYTEXT
    this.IconPath      =FCKPlugins.Items['RawData'].Path + 'rawdata.png'
}
 
// Set the toolbar prototype.
RawDataToolbar.prototype = new  FCKToolbarButton( 'RawData', 'RawData', 'RawData', null, false, true );


// Label to appear in the FCK toolbar
RawDataToolbar.prototype.GetLabel  = function()
{
    return "Raw Data";
}

//Register the combo with the FCKeditor
FCKToolbarItems.RegisterItem('RawData' , new RawDataToolbar( 'Raw Data', FCK_TOOLBARITEM_ONLYICON ) ) ; // FCK_TOOLBARITEM_ONLYICON or FCK_TOOLBARITEM_ONLYTEXT  or  FCK_TOOLBARITEM_ICONTEXT
