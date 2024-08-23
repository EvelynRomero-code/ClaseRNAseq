# ClaseRNAseq
## Los datos se encuentran en Zenodo.
https://zenodo.org/records/13366515

<p style="font-size: 14px; font-family: 'Courier New', monospace;"">
En este Readme se realizo un ánalisis de expresión diferencial de mRNA extraido de la abscisión de la Euphorbia pulcherrima (Poinsettia), igualmente se otuvo de diferentes zonas de la cabeza de la planta (zona de la abscisión, proximal y distal) en diferentes tiempos (día 0, 2, 4 y 6). 

Para el enriquecimiento del mRNA que se obtuvo, se utilizó el TruSeq RNA Sample Prep Kit v2 de Ilumina. Para la purificación de las moléculas del mRNA que contienen una cola poli-A utilizando perlas magnéticas unidas a oligo-dT. Seguidamente se fragmentó el mRNA, para ser copiados en cDNA y producir la cadena complementaria de esta misma. Finalmente, los productos se purifican y enriquecen con PCR para crear la biblioteca de ADNc final. 

Asimismo, se pre-procesaron los datos crudos para aumentar la calidad de los reads y con ello realizar el mapeo. 
</p>

## Shiny del medatada 
### Visualización del shiny obtenido a través del código (app.R) con los datos del metadata encontrado en Zenodo.
https://github.com/EvelynRomero-code/ClaseRNAseq/blob/main/app.R

![image](https://github.com/user-attachments/assets/0159ff91-a0bf-45f4-8411-59cf35c69eb4)

## Expresión diferencial de la Poinsettia 
#### Los datos utilizados se encuentran en la primera liga de Zenodo, estos datos fueron obtenidos a través de muestras de RNAseq tomadas de la abscisión de la Poinsettia en la zona distal, proximal y de absición en los días 0, 2, 4 y 6. 

## Comparación entre muestras
### Comparación entre replicas de la zona de abscisión 
#### Comparación del día 0 en la zona de abscisión:
![image](https://github.com/user-attachments/assets/3ac02747-b384-4de3-a313-31f7917faf50)

#### Comparación del día 6 en la zona proximal: 
![image](https://github.com/user-attachments/assets/c04b5eda-0375-4c2e-9428-de06cfd9e7ec)

### Comparación entre diferentes tratamientos (misma zona, diferente día).
#### Comparación del día 0 y 6 en la zona de absición:
![image](https://github.com/user-attachments/assets/92ae429b-e6fe-447b-99a5-8d0da8629381)

### Comparación entre diferentes tratamientos (diferentes zonas, diferentes días).
#### Comparación del día 0 y 6 en la zona de absición y proximal, respectivamente:
![image](https://github.com/user-attachments/assets/b154834e-baa7-4fbc-a615-6c80d5773252)

## Visualización de la dispersión de las librerias
### Para la visualización de la dispersión anterirmente se debió de agrupar las replicas, y objeto lista (DEList).
![image](https://github.com/user-attachments/assets/29561151-0d81-43e7-aa82-31f1dae06eed)

## Tabla para la comparación de expresión diferencial entre librerias (prueba pareada).
### Comparación entre las muestras ERR_AZ_FB_0 vs. ERR_AZ_FB_2.
#### Link donde se subió el archivo: 
https://zenodo.org/records/13366984

### Comparación entre las muestras grupo ERR_AZ_FB_0 vs. ERR_AZ_FB_4.
#### Link donde se subió el archivo: 
https://zenodo.org/records/13367017

### Comparación entre las muestras grupo ERR_AZ_FB_0 vs. ERR_AZ_FB_6.
#### Link donde se subió el archivo: 
https://zenodo.org/records/13367020

## Filtración de los genes con un logFC mayor a 1
#### Aquí se filtraron los genes con un cambio significativo, pero también podemos filtrar por culaquier criterio matemático. 
#### Se tomaron en cuenta los datos normalizados de las 3 comparaciones para el filtrado.

### Comparación de las muestras de la zona de abscisión entre el día 0 y 2.
![image](https://github.com/user-attachments/assets/2cfd1c52-3dcc-4fb1-8c5e-238556910514)

### Comparación de las muestras de la zona de abscisión entre el día 0 y 4. 
![image](https://github.com/user-attachments/assets/d1425243-6f60-4424-97b7-698f878e4a29)

### Comparación de las muestras de la zona de abscisión entre el día 0 y 6. 
![image](https://github.com/user-attachments/assets/3c307489-7486-4933-a2c9-562a3fc37b32)

## Heatmap 
#### Se tomaron en cuenta de los datos normalizados de las 3 comparaciones 
![image](https://github.com/user-attachments/assets/176e225a-dfda-4217-ae8d-0fa596166636)

## Pheatmap.
### Código de R para la creación de la matriz y el pheatmap.
https://github.com/EvelynRomero-code/ClaseRNAseq/blob/main/Exp_Dif_RNAseq.Rmd

### Visualización de Pheatmap.
![image](https://github.com/user-attachments/assets/d688c8ae-23fa-4a3e-9947-f302b029c50b)

## Comparación de datos no-normalizados y normalizados. 
### Antes de la normalización 
![image](https://github.com/user-attachments/assets/0be5f843-69a7-4924-8aeb-3c8d3bb8fee0)

### Después de la normalización
![image](https://github.com/user-attachments/assets/f97eff39-2342-4f11-bac9-b950efcd84af)

## Barplot
![image](https://github.com/user-attachments/assets/228c6adf-9323-4663-bb26-fffdbb852456)

## Agradecimientos
#### Agrdezco a los docentes que me apoyaron para la realización de esta práctica, al igual que Norwegian University of Life Science por la aportación de los datos de las muestras. 











