Vim�UnDo� �	x&��/��cYo{�z�ǓC&dDPO�F�nO  [                                  P�'�    _�                            ����                                                                                                                                                                                                                                                                                                                                                             P���    �        \      		�        [    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             P���     �                $		'additional_work_signed' => array(5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             P���    �                		),5�_�                   ;        ����                                                                                                                                                                                                                                                                                                                                                             P��S    �  :  <  [       5�_�                   <       ����                                                                                                                                                                                                                                                                                                                                                             P�<    �  ;  =  [      S			Log::add("Getekende versie voor meerwerk geupload " . $workId, "dwa", $dwa->id);5�_�                   5        ����                                                                                                                                                                                                                                                                                                                                                             P�     �  5  7  \      				�  5  7  [    5�_�      	             6       ����                                                                                                                                                                                                                                                                                                                                                             P�/     �  5  6          				5�_�      
          	  4   "    ����                                                                                                                                                                                                                                                                                                                                                             P��     �  4  6  \      				�  4  6  [    5�_�   	              
  6       ����                                                                                                                                                                                                                                                                                                                                                             P��    �  5  7  \      				$additionalWork->reject();	5�_�   
                3   $    ����                                                                                                                                                                                                                                                                                                                                                             P�     �  2  3          %			# When additional work is rejected   #			if( @$_POST['rejected'] == 1 ) {   X				isset($_POST['reject_reason']) ? $reason = $_POST['reject_reason'] : $reason = NULL;   &				$additionalWork->reject($reason);	   J				Log::add("Afkeur voor meerwerk geupload " . $workId, "dwa", $dwa->id);   %				redirect('dwa/detail/'.$dwa->id);   			}5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             P�     �     (  U    5�_�                   !       ����                                                                                                                                                                                                                                                                                                                                                             P�     �     "  ]      			# �     "  \    5�_�                   (       ����                                                                                                                                                                                                                                                                                                                                                             P�#     �  (  *  ^      			�  (  *  ]    5�_�                   ?       ����                                                                                                                                                                                                                                                                                                                                                             P�.     �  ?  A  _      			�  ?  A  ^    5�_�                   +        ����                                                                                                                                                                                                                                                                                                                                                             P�9     �  >  @          Q			Log::add("Meerwerk voor dwa $dwa->id goedgekeurd" . $workId, "dwa", $dwa->id);�  =  ?          			$additionalWork->accept();�  <  >          Z			Feedback::get()->success("Upload succesvol, Getekende versie van meerwerk toegevoegd");�  ;  =          			�  :  <          			�  9  ;          			$fileList->addFile($file);�  8  :          H			$fileList = new DBFileList("dwa_additional_work", "signed", $workId);�  7  9           			load_lib_class("DBFileList");�  6  8          			# Connect�  4  6          [			$file->save(Config::get("files_additional_work_folder"), $file->getName(), false, true);�  3  5          \			$file = File::fromUpload("file", NULL, array('pdf'), Config::get("upload_max_filesize"));�  2  4          			load_lib_class("File");�  1  3          			# Upload�  /  1          			}�  .  0          				return;�  -  /          D				$this->base_view("file_additional_work_signed", compact('dwa'));�  ,  .          8				Feedback::get()->error('Selecteer een pdf bestand');�  +  -          '			if(empty($_FILES['file']['name'])) {�  *  ,          			# Validate file is set5�_�                   B       ����                                                                                                                                                                                                                                                                                                                                                             P�C     �  A  C  _      $			redirect('dwa/detail/'.$dwa->id);5�_�                   B       ����                                                                                                                                                                                                                                                                                                                                                             P�J    �  A  C  _      			redirect(''.$dwa->id);5�_�                   '       ����                                                                                                                                                                                                                                                                                                                                                             P�V    �  &  '          %				redirect('dwa/detail/'.$dwa->id);5�_�                   )        ����                                                                                                                                                                                                                                                                                                                                                             P�^    �  (  )           5�_�                   &       ����                                                                                                                                                                                                                                                                                                                                                             P�u   	 �  %  '  ]      J				Log::add("Afkeur voor meerwerk geupload " . $workId, "dwa", $dwa->id);5�_�                   #       ����                                                                                                                                                                                                                                                                                                                                                             P�   
 �  "  $  ]      #			if( @$_POST['rejected'] == 1 ) {5�_�                   #   "    ����                                                                                                                                                                                                                                                                                                                                                             P�!     �  "  $  ]      *			if( @$_POST['rejected_reason'] == 1 ) {5�_�                   #   !    ����                                                                                                                                                                                                                                                                                                                                                             P�$     �  "  $  ]      %			if( @$_POST['rejected_reason'] ) {5�_�                   #       ����                                                                                                                                                                                                                                                                                                                                                             P�(     �  "  $  ]      $			if( @$_POST['rejected_reason']) {5�_�                   #   (    ����                                                                                                                                                                                                                                                                                                                                                             P�.    �  "  $  ]      *			if( isset(@$_POST['rejected_reason']) {5�_�                   #       ����                                                                                                                                                                                                                                                                                                                                                             P�4    �  "  $  ]      +			if( isset(@$_POST['rejected_reason'])) {5�_�                   $       ����                                                                                                                                                                                                                                                                                                                                                             P�&#    �  #  %  ]      X				isset($_POST['reject_reason']) ? $reason = $_POST['reject_reason'] : $reason = NULL;5�_�                   $   ?    ����                                                                                                                                                                                                                                                                                                                                                             P�&t    �  #  %  ]      Z				isset($_POST['rejected_reason']) ? $reason = $_POST['reject_reason'] : $reason = NULL;5�_�                   C       ����                                                                                                                                                                                                                                                                                                                                                             P�'�     �  B  C          B		$this->base_view("file_additional_work_signed", compact('dwa'));5�_�                    B        ����                                                                                                                                                                                                                                                                                                                                                             P�'�    �  A  B           5�_�              	     6   J    ����                                                                                                                                                                                                                                                                                                                                                             P�6     �  5  7  [      �				Log::add("Afkeur voor meerwerk geupload " . $workId, "dwa", $dwa->id);LTER TABLE  `dwa_additional_work` ADD  `rejected_because` VARCHAR( 255 ) NULL DEFAULT NULLALTER TABLE  `dwa_additional_work` ADD  `rejected_because` VARCHAR( 255 ) NULL DEFAULT NULL5��