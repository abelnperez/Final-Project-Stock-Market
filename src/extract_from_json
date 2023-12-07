

import json
import pandas as pd
import os
import numpy as np


def procesar_archivo_json(empresa, enterprise_id):
    # Construir el nombre del archivo
    ruta_archivo = os.path.join('Raw Data', f"{empresa}.json")

    try:
        # Abrir el archivo JSON
        with open(ruta_archivo, 'r') as archivo:

            # Cargar los datos JSON
            datos_json = json.load(archivo)
            
            # Intentar acceder a la clave en ambas estructuras
            try:
                df_data = pd.DataFrame(datos_json["financials"]["annuals"]['per_share_data_array'])
            except KeyError:
                try:
                    df_data = pd.DataFrame(datos_json['resultado']['financials']["annuals"]['per_share_data_array'])
                except KeyError:
                    print(f"No se pudo acceder a los datos de {empresa}.")
                    return  # Salir de la función si no se puede acceder a los datos

            # Convierto a minúsculas y reemplazo espacios por _
            df_data.columns = [c.lower().replace(' ', '_') for c in df_data.columns]

            # Eliminar la última fila
            df_data = df_data.drop(df_data.index[-1])

            # Añadir la columna "Years" y la columna "Code"
            df_data["years"] = pd.date_range(start='2023', periods=len(df_data), freq='-1Y').year[::-1]
            df_data["enterprise_id"] = enterprise_id

            # Reordenar las columnas
            df_data = df_data[["enterprise_id", "years"] + [col for col in df_data.columns if col not in ["enterprise_id", "years"]]]

            # Guardar el DataFrame en un archivo CSV
            df_data.to_csv(f'Clean Data/data/{empresa}_data.csv', index=False)

    except FileNotFoundError:
        print(f"El archivo {ruta_archivo} no fue encontrado.")
    except Exception as e:
        print(f"Error al procesar {empresa}: {str(e)}")

# Lista de empresas
lista_empresas = ['AAPL', 'CAT', 'MSFT', 'UPS', 'GOOG', 'AMZN', 'NVDA', 'META', 'TSLA', 'UL', 'LLY', 'V', 'TSM',
                'UNH', 'DIBS', 'AVGO', 'NVO', 'JPM', 'WMT', 'XOM', 'TCEHY', 'MA', 'SPGI','UNP', 'JNJ', 'PG', 'ORCL', 'HD', 'UBER', 'ADBE',
                'ASML', 'CVX', 'COST', 'TM', 'MRK', 'GE','KO', 'OONEF', 'ABBV', 'BAC', 'RTX', 'PEP', 'CRM', 'SBUX', 'MS', 'HON', 'SHEL', 'NFLX', 'ACN', 'MCD', 'AMD', 'LIN', 'NVS', 'AZN', 'CSCO', 'NEE', 'TMO', 'BABA', 'INTC', 'PDD', 'SAP', 'ABT', 'AMAT', 'IDEXY','BUD', 'TMUS', 'DIS', 'PFE', 'NKE', 'CMCSA',
                'DHR', 'INTU', 'TTE', 'WFC', 'VZ', 'HDB', 'RY', 'HSBC', 'PM', 'IBM', 'QCOM', 'AMGN', 'TXN', 'NOW', 'COP', 'BA', 'AXP', 'ZIVB']

# Crear DataFrame con "name" y "enterprise_id"
df_empresas = pd.DataFrame({'name': sorted(lista_empresas), 'enterprise_id': range(1, len(lista_empresas)+1)})


# Iterar sobre cada empresa y procesar el archivo JSON

for index, row in df_empresas.iterrows():
    empresa = row['name']
    enterprise_id = row['enterprise_id']
    procesar_archivo_json(empresa, enterprise_id)
