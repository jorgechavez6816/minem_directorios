Sub Main
	IgnoreWarning(True)
	Client.RunPython "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Macros.ILB\Minem_directorio.py"
	Call TextImport()	'C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Archivos fuente.ILB\Directorio_minem_distrib.csv
	Call TextImport1()	'C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Archivos fuente.ILB\Directorio_minem_gen.csv
	Call TextImport2()	'C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Archivos fuente.ILB\Directorio_minem_trans.csv
	Client.RefreshFileExplorer
End Sub

' Archivo - Asistente de importación: Texto delimitado
Function TextImport
	dbName = "Directorio_minem_distrib.IMD"
	Client.ImportUTF8DelimFile "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Archivos fuente.ILB\Directorio_minem_distrib.csv", 
	dbName, FALSE, "", "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Definiciones de importación.ILB\Directorio_minem_distrib.RDF", TRUE
	Client.OpenDatabase (dbName)
End Function

' Archivo - Asistente de importación: Texto delimitado
Function TextImport1
	dbName = "Directorio_minem_gen.IMD"
	Client.ImportUTF8DelimFile "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Archivos fuente.ILB\Directorio_minem_gen.csv", 
	dbName, FALSE, "", "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Definiciones de importación.ILB\Directorio_minem_gen.RDF", TRUE
	Client.OpenDatabase (dbName)
End Function

' Archivo - Asistente de importación: Texto delimitado
Function TextImport2
	dbName = "Directorio_minem_trans.IMD"
	Client.ImportUTF8DelimFile "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Archivos fuente.ILB\Directorio_minem_trans.csv", 
	dbName, FALSE, "", "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Definiciones de importación.ILB\Directorio_minem_trans.RDF", TRUE
	Client.OpenDatabase (dbName)
End Function

