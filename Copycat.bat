@echo off

set file=%1
set destination=C:\SO1\Archivos
:start
if exist %destination% (
	if exist %file% (
		echo Now copying %file% into %destination%...
		copy %file% %destination%
		echo Copy created.
	) else (
		echo This %file% doesn't exist in this directory.
		pause
	)

) else (
	echo No such directory, creating now.
	mkdir %destination%
	goto start
	)



