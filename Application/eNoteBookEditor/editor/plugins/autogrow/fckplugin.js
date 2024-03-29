﻿
var FCKAutoGrow = {
	MIN_HEIGHT : window.frameElement.offsetHeight,

	Check : function()
	{
		var delta = FCKAutoGrow.GetHeightDelta() ;
		if ( delta != 0 )
		{
			var newHeight = window.frameElement.offsetHeight + delta ;

			newHeight = FCKAutoGrow.GetEffectiveHeight( newHeight ) ;

			if ( newHeight != window.frameElement.height )
			{
				window.frameElement.style.height = newHeight + "px" ;

				// Gecko browsers use an onresize handler to update the innermost
				// IFRAME's height. If the document is modified before the onresize
				// is triggered, the plugin will miscalculate the new height. Thus,
				// forcibly trigger onresize. #1336
				if ( typeof window.onresize == 'function' )
				{
					window.onresize() ;
				}
			}
		}
	},

	CheckEditorStatus : function( sender, status )
	{
		if ( status == FCK_STATUS_COMPLETE )
			FCKAutoGrow.Check() ;
	},

	GetEffectiveHeight : function( height )
	{
		if ( height < FCKAutoGrow.MIN_HEIGHT )
			height = FCKAutoGrow.MIN_HEIGHT;
		else
		{
			var max = FCKConfig.AutoGrowMax;
			if ( max && max > 0 && height > max )
				height = max;
		}

		return height;
	},

	GetHeightDelta : function()
	{
		var oInnerDoc = FCK.EditorDocument ;

		var iFrameHeight ;
		var iInnerHeight ;

		if ( FCKBrowserInfo.IsIE )
		{
			iFrameHeight = FCK.EditorWindow.frameElement.offsetHeight ;
			iInnerHeight = oInnerDoc.body.scrollHeight ;
		}
		else
		{
			iFrameHeight = FCK.EditorWindow.innerHeight ;
			iInnerHeight = oInnerDoc.body.offsetHeight +
				( parseInt( FCKDomTools.GetCurrentElementStyle( oInnerDoc.body, 'margin-top' ), 10 ) || 0 ) +
				( parseInt( FCKDomTools.GetCurrentElementStyle( oInnerDoc.body, 'margin-bottom' ), 10 ) || 0 ) ;
		}

		return iInnerHeight - iFrameHeight ;
	},

	SetListeners : function()
	{
		if ( FCK.EditMode != FCK_EDITMODE_WYSIWYG )
			return ;

		FCK.EditorWindow.attachEvent( 'onscroll', FCKAutoGrow.Check ) ;
		FCK.EditorDocument.attachEvent( 'onkeyup', FCKAutoGrow.Check ) ;
	}
};

FCK.AttachToOnSelectionChange( FCKAutoGrow.Check ) ;

if ( FCKBrowserInfo.IsIE )
	FCK.Events.AttachEvent( 'OnAfterSetHTML', FCKAutoGrow.SetListeners ) ;

FCK.Events.AttachEvent( 'OnStatusChange', FCKAutoGrow.CheckEditorStatus ) ;
