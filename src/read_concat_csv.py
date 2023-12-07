
import os
import pandas as pd


def concat_csv_in_folder(folder_path):
    # Obtener la lista de archivos CSV en la carpeta
    csv_files = [file for file in os.listdir(folder_path) if file.endswith('.csv')]
    
    # Verificar si hay archivos CSV en la carpeta
    if not csv_files:
        print(f"No hay archivos CSV en la carpeta {folder_path}")
        return
    
    # Crear una lista para almacenar los DataFrames de cada archivo CSV
    dataframes = []
    
    # Leer cada archivo CSV y agregarlo a la lista
    for csv_file in csv_files:
        file_path = os.path.join(folder_path, csv_file)
        df = pd.read_csv(file_path)
        dataframes.append(df)
    
    # Concatenar todos los DataFrames en uno solo (uno debajo del otro)
    concatenated_df = pd.concat(dataframes, ignore_index=True)
    
    # Crear el nombre del archivo resultante
    output_file_name = f"{os.path.basename(folder_path)}_total.csv"
    
    # Guardar el DataFrame resultante como un archivo CSV en la misma carpeta
    output_file_path = os.path.join(folder_path, output_file_name)
    concatenated_df.to_csv(output_file_path, index=False)
    
    print(f"Archivos CSV en {folder_path} concatenados y guardados en {output_file_path}")

# Ruta de la carpeta principal que contiene las subcarpetas
main_folder_path = '../Clean Data'           #C:\Users\abeln\Desktop\Ironhack_clase\Projects\Final-Project-Stock-Market\Clean Data

# Iterar sobre las subcarpetas y aplicar la función a cada una
subfolders = ['balance', 'cashflow', 'data', 'income', 'quality', 'ratios', 'valuation']
for subfolder in subfolders:
    folder_path = os.path.join(main_folder_path, subfolder)
    concat_csv_in_folder(folder_path)
