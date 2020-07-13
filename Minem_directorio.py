#Descargar información de la página de MINEM
#Archivo de tipo excel xls, con varias hojas y encabezado a no considerar.
#Página web: http://www.minem.gob.pe/_detalle.php?idSector=6&idTitular=6143&idMenu=sub113&idCateg=1039

import pandas as pd

url = 'http://www.minem.gob.pe/minem/archivos/DIRECTORIO%20EN%20ACTUALIZACION%20%20-%20PUBLICADO%20en%20WEB.xls'
df1 = pd.read_excel(url, sheet_name='Generadores ME', skiprows=3)  
df2 = pd.read_excel(url, sheet_name='Transmisores', skiprows=3)    
df3 = pd.read_excel(url, sheet_name='Distribuidores', skiprows=3)    

df1.to_csv("C:\\Users\\Intel\\Documents\\Mis documentos IDEA\\Samples\\Archivos fuente.ILB\\Directorio_minem_gen.csv") 
df2.to_csv("C:\\Users\\Intel\\Documents\\Mis documentos IDEA\\Samples\\Archivos fuente.ILB\\Directorio_minem_trans.csv") 
df3.to_csv("C:\\Users\\Intel\\Documents\\Mis documentos IDEA\\Samples\\Archivos fuente.ILB\\Directorio_minem_distrib.csv") 

