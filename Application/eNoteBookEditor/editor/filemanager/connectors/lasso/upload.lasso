[//lasso
/*
 *
 * This is the "File Uploader" for Lasso.
 */

    /*.....................................................................
    Include global configuration. See config.lasso for details.
    */
	include('config.lasso');


    /*.....................................................................
    Convert query string parameters to variables and initialize output.
    */
	var(
		'Type'			=	action_param('Type'),
		'CurrentFolder'	=	action_param('CurrentFolder'),
		'ServerPath'	=	action_param('ServerPath'),
		'NewFile'		=	null,
		'NewFileName'	=	string,
		'OrigFilePath'	=	string,
		'NewFilePath'	=	string,
		'errorNumber'	=	0,
		'customMsg'		=	''
	);

	$Type == '' ? $Type = 'File';


    /*.....................................................................
    Calculate the path to the current folder.
    */
	$ServerPath == '' ? $ServerPath = $config->find('UserFilesPath');

	var('currentFolderURL' = $ServerPath
		+ $config->find('Subdirectories')->find(action_param('Type'))
		+ action_param('CurrentFolder')
	);

	/*.....................................................................
	Custom tag sets the HTML response.
	*/

	define_tag(
		'sendresults',
		-namespace='fck_',
		-priority='replace',
		-required='errorNumber',
		-type='integer',
		-optional='fileUrl',
		-type='string',
		-optional='fileName',
		-type='string',
		-optional='customMsg',
		-type='string',
		-description='Sets the HTML response for the FCKEditor Quick Upload feature.'
	);

		$__html_reply__ = '<script type="text/javascript">';

		// Minified version of the document.domain automatic fix script (#1919).
		// The original script can be found at _dev/domain_fix_template.js
		// Note: in Lasso replace \ with \\
		$__html_reply__ = $__html_reply__ + "(function(){var d=document.domain;while (true){try{var A=window.parent.document.domain;break;}catch(e) {};d=d.replace(/.*?(?:\\.|$)/,'');if (d.length==0) break;try{document.domain=d;}catch (e){break;}}})();";

		$__html_reply__ = $__html_reply__ + '\
	window.parent.OnUploadCompleted(' + #errorNumber + ',"'
		+ string_replace(#fileUrl, -find='"', -replace='\\"') + '","'
		+ string_replace(#fileName, -find='"', -replace='\\"') + '","'
		+ string_replace(#customMsg, -find='"', -replace='\\"') + '");
</script>
		';
	/define_tag;

	if($CurrentFolder->(Find: '..') || $CurrentFolder->(Find: '\\'));
		$errorNumber = 102;
	/if;

	if($config->find('Enabled'));
		/*.................................................................
		Process an uploaded file.
		*/
		inline($connection);
			/*.............................................................
			Was a file actually uploaded?
			*/
			if($errorNumber != '102');
				file_uploads->size ? $NewFile = file_uploads->get(1) | $errorNumber = 202;
			/if;

			if($errorNumber == 0);
				/*.........................................................
				Split the file's extension from the filename in order
				to follow the API's naming convention for duplicate
				files. (Test.txt, Test(1).txt, Test(2).txt, etc.)
				*/
				$NewFileName = $NewFile->find('OrigName');
				$OrigFilePath = $currentFolderURL + $NewFileName;
				$NewFilePath = $OrigFilePath;
				local('fileExtension') = '.' + $NewFile->find('OrigExtension');
				local('shortFileName') = $NewFileName->removetrailing(#fileExtension)&;


				/*.........................................................
				Make sure the file extension is allowed.
				*/

				if($config->find('DeniedExtensions')->find($Type) >> $NewFile->find('OrigExtension'));
					$errorNumber = 202;
				else;
					/*.....................................................
					Rename the target path until it is unique.
					*/
					while(file_exists($NewFilePath));
						$NewFileName = #shortFileName + '(' + loop_count + ')' + #fileExtension;
						$NewFilePath = $currentFolderURL + $NewFileName;
					/while;


					/*.....................................................
					Copy the uploaded file to its final location.
					*/
					file_copy($NewFile->find('path'), $NewFilePath);


					/*.....................................................
					Set the error code for the response.
					*/
					select(file_currenterror( -errorcode));
						case(0);
							$OrigFilePath != $NewFilePath ? $errorNumber = 201;
						case;
							$errorNumber = 202;
					/select;
				/if;
			/if;
		/inline;
	else;
		$errorNumber = 1;
		$customMsg = 'This file uploader is disabled. Please check the "editor/filemanager/upload/lasso/config.lasso" file.';
	/if;

	fck_sendresults(
		-errorNumber=$errorNumber,
		-fileUrl=$NewFilePath,
		-fileName=$NewFileName,
		-customMsg=$customMsg
	);
]
