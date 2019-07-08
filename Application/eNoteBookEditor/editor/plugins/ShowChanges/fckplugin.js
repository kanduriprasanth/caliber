// JScript File

var ShowChanges = function (name)
{
  this.Name = name;
}
var Text=""

ShowChanges.prototype.Execute = function(itemText, itemLabel) 
{

    var CHILDS= new Array()

    CHILDS=FCK.EditorDocument.body.all
    for(var i=0;i<CHILDS.length ;i++)
    {
        if(CHILDS[i].tagName)
        {
        var TagType=CHILDS[i].tagName.toLowerCase();
            if(TagType=='div' || TagType=='span')
            {   
                if(CHILDS[i].flag)
                {
                    CHILDS[i].style.textDecoration="none"
                    
                    
                    if(CHILDS[i].flag==0)
                    {
                        CHILDS[i].style.color="red"
                        CHILDS[i].style.backgroundColor="LightYellow" 
                    }
                   else if(CHILDS[i].flag==1)
                    {
                        CHILDS[i].style.display="block"
                        CHILDS[i].style.width="auto"
                        CHILDS[i].style.textDecoration="line-through"
                    }
                  else if(CHILDS[i].flag==2)
                    {
                        CHILDS[i].style.display="block"
                        CHILDS[i].style.width="auto"
                        CHILDS[i].style.textDecoration="none"
                    }
                  else if(CHILDS[i].flag==3)
                    {
                        CHILDS[i].style.display="inline"
                        CHILDS[i].style.width="auto"
                        CHILDS[i].style.textDecoration="none"
                    }
                }
            }
        }
    }
}

// Manage the plugin behavior
ShowChanges.prototype.GetState = function()
{
    return FCK_TRISTATE_OFF; // FCK_TRISTATE_OFF or  FCK_TRISTATE_ON
}

// Register the command.
FCKCommands.RegisterCommand( 'ShowChanges' ,  new  ShowChanges('ShowChanges') ) ;

// Create the toolbar button.
var ShowChangesToolbar = function(tooltip,  style)
{
    this.CommandName   = 'ShowChanges';
    this.Label         = this.GetLabel();
    this.Tooltip       = tooltip?  tooltip : this.Label;
    this.Style         = style;  //FCK_TOOLBARITEM_ICONTEXT OR FCK_TOOLBARITEM_ONLYTEXT
    this.IconPath      =FCKPlugins.Items['ShowChanges'].Path + 'showchanges.png'
}
 
// Set the toolbar prototype.
ShowChangesToolbar.prototype = new  FCKToolbarButton( 'Un ShowChanges', 'ShowChanges', 'Un ShowChanges', null, false, true );

// Label to appear in the FCK toolbar
ShowChangesToolbar.prototype.GetLabel  = function()
{
    return "Show Changes";
}

//Register the combo with the FCKeditor
FCKToolbarItems.RegisterItem('ShowChanges' , new ShowChangesToolbar( 'Show Changes', FCK_TOOLBARITEM_ONLYICON ) ) ; // FCK_TOOLBARITEM_ONLYICON or FCK_TOOLBARITEM_ONLYTEXT  or  FCK_TOOLBARITEM_ICONTEXT
