#Rem

${TM_NEW_FILE_BASENAME}

Created by ${TM_FULLNAME} on ${TM_DATE}.
Copyright ${TM_YEAR} ${TM_ORGANIZATION_NAME}. All rights reserved.

'buildopt: html5
'buildopt: run

#End

Import mojo.app
Import mojo.graphics

Class MyGame Extends App
	Field counter = 0

	Method OnCreate()
		' Startup code goes here
		SetUpdateRate 60
	End

	Method OnUpdate()
		' Game code goes here
		counter = (counter + 1) Mod 60
	End

	Method OnRender()
		' Drawing code goes here
		Cls 96,96,96
		DrawText "Hello World! " + counter, 0,0
	End
End

Function Main()
	New MyGame
End