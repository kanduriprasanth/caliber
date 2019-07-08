/*
 * FCKRemoveFormatCommand Class: controls the execution of a core style. Core
 * styles are usually represented as buttons in the toolbar., like Bold and
 * Italic.
 */

 var FCKRemoveFormatCommand = function()
 {
 	this.Name = 'RemoveFormat' ;
 }

 FCKRemoveFormatCommand.prototype =
 {
	Execute : function()
	{
		FCKStyles.RemoveAll() ;

		FCK.Focus() ;
		FCK.Events.FireEvent( 'OnSelectionChange' ) ;
	},

	GetState : function()
	{
		return FCK.EditorWindow ? FCK_TRISTATE_OFF : FCK_TRISTATE_DISABLED ;
	}
 };
