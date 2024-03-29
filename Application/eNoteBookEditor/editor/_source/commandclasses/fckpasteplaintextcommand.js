﻿/*
 * FCKPastePlainTextCommand Class: represents the
 * "Paste as Plain Text" command.
 */

var FCKPastePlainTextCommand = function()
{
	this.Name = 'PasteText' ;
}

FCKPastePlainTextCommand.prototype.Execute = function()
{
	FCK.PasteAsPlainText() ;
}

FCKPastePlainTextCommand.prototype.GetState = function()
{
	if ( FCK.EditMode != FCK_EDITMODE_WYSIWYG )
		return FCK_TRISTATE_DISABLED ;
	return FCK.GetNamedCommandState( 'Paste' ) ;
}
