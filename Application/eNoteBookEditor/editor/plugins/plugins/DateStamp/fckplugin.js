// JScript File

var DateStamp = function (name)
{

  this.Name = name;
}
var Text=""

DateStamp.prototype.Execute = function(itemText, itemLabel) 
{
    var TimeStamp =""
    TimeStamp += '<div class="DateTimeCss"  contenteditable =false >'
    TimeStamp += '&nbsp;Date&nbsp;:&nbsp;<SDFIELD TYPE=DATETIME SDVAL="40010.3973340278" SDNUM="1033;1033;MM/DD/YY"></SDFIELD>'
    TimeStamp += '&nbsp;Time &nbsp;:&nbsp;&nbsp;<SDFIELD TYPE=DATETIME SDVAL="40010.3974902778" SDNUM="1033;1033;HH:MM:SS AM/PM"></SDFIELD>'
     FCK.InsertHtml(TimeStamp);
}

// Manage the plugin behavior
DateStamp.prototype.GetState = function()
{
    return FCK_TRISTATE_OFF; // FCK_TRISTATE_OFF or  FCK_TRISTATE_ON or FCK_TRISTATE_DISABLED
}

DateStamp.prototype.RefreshState = function() 
{
    return FCK_TRISTATE_OFF; // FCK_TRISTATE_OFF or  FCK_TRISTATE_ON
}


// Register the command.
FCKCommands.RegisterCommand( 'DateStamp' ,  new  DateStamp('DateStamp') ) ;

// Create the toolbar button.
var BindingFieldsToolbar = function(tooltip,  style)
{
    this.CommandName   = 'DateStamp';
    this.Label         = this.GetLabel();
    this.Tooltip       = tooltip?  tooltip : this.Label;
    this.Style         = style;  //FCK_TOOLBARITEM_ICONTEXT OR FCK_TOOLBARITEM_ONLYTEXT
    this.IconPath      =FCKPlugins.Items['DateStamp'].Path + 'datestamp.png'
}
 
// Set the toolbar prototype.
BindingFieldsToolbar.prototype = new  FCKToolbarButton( 'DateStamp', 'DateStamp', 'DateStamp', null, false, true );


// Label to appear in the FCK toolbar
BindingFieldsToolbar.prototype.GetLabel  = function()
{
    return "Date Stamp";
}

//Register the combo with the FCKeditor
FCKToolbarItems.RegisterItem('DateStamp' , new BindingFieldsToolbar( 'Date Stamp', FCK_TOOLBARITEM_ONLYICON ) ) ; // FCK_TOOLBARITEM_ONLYICON or FCK_TOOLBARITEM_ONLYTEXT  or  FCK_TOOLBARITEM_ICONTEXT
