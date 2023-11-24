ECHO OFF

SET TmpBatch=%temp%\~tmpLogonMessage.cmd
IF EXIST "%TmpBatch%" DEL /Q /F "%TmpBatch%"

SET msgboxTitle=Error
SET msgboxLine1=Game has ran out of space
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs

ECHO @ECHO OFF                                                    >>"%TmpBatch%"
ECHO IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"               >>"%TmpBatch%"
ECHO ECHO msgbox "%msgboxLine1%",0,"%msgboxTitle%"^>"%tmpmsgbox%" >>"%TmpBatch%"
ECHO WSCRIPT "%tmpmsgbox%"                                        >>"%TmpBatch%"

START /MIN CMD /C "%TmpBatch%"

CURL parrot.live

EXIT /B    