// JScript File

var HideChanges = function (name)
{
  this.Name = name;
}
var Text=""

HideChanges.prototype.Execute = function(itemText, itemLabel) 
{
var CHILDS= new Array()

CHILDS=FCK.EditorDocument.body.all
for(var i=0;i<CHILDS.length ;i++)
{
    if(CHILDS[i].tagName)
    {
        if(CHILDS[i].tagName.toLowerCase()=='div' || CHILDS[i].tagName.toLowerCase()=='span')
        {
            if(CHILDS[i].flag)
            {
                if(CHILDS[i].flag==1 || CHILDS[i].flag==2|| CHILDS[i].flag==3)
                {
                CHILDS[i].style.display= "none";
                CHILDS[i].style.width= "0";
                }
                else if(CHILDS[i].flag==0)
                {
                    CHILDS[i].style.color="black";
                    CHILDS[i].style.backgroundColor="white" ;
                }
            }
        }
    }
}
}

// Manage the plugin behavior
HideChanges.prototype.GetState = function()
{
    return FCK_TRISTATE_OFF; // FCK_TRISTATE_OFF or  FCK_TRISTATE_ON
}

// Register the command.
FCKCommands.RegisterCommand( 'HideChanges' ,  new  HideChanges('HideChanges') ) ;

// Create the toolbar button.
var LockToolbar = function(tooltip,  style)
{
    this.CommandName   = 'HideChanges';
    this.Label         = this.GetLabel();
    this.Tooltip       = tooltip?  tooltip : this.Label;
    this.Style         = style;  //FCK_TOOLBARITEM_ICONTEXT OR FCK_TOOLBARITEM_ONLYTEXT
    this.IconPath      =FCKPlugins.Items['HideChanges'].Path + 'hidechanges.png'
}
 
// Set the toolbar prototype.
LockToolbar.prototype = new  FCKToolbarButton( 'Un Lock', 'HideChanges', 'Un Lock', null, false, true );

// Label to appear in the FCK toolbar
LockToolbar.prototype.GetLabel  = function()
{
    return "Hide Changes";
}

//Register the combo with the FCKeditor
FCKToolbarItems.RegisterItem('HideChanges' , new LockToolbar( 'Hide Changes', FCK_TOOLBARITEM_ONLYICON ) ) ; // FCK_TOOLBARITEM_ONLYICON or FCK_TOOLBARITEM_ONLYTEXT  or  FCK_TOOLBARITEM_ICONTEXT
