#Importando Bibliotecas
#%%
import numpy as np
import pandas as pd
import plotly.express as px

#Plotagem Simples
#%%

px.line(x=[1,2,3,4,5], y=[10,40,20,50,5])

#Carregando Data Frame com informacoes sobre voos
# %%
df = pd.read_csv('https://raw.githubusercontent.com/mwaskom/seaborn-data/master/flights.csv')
df.head()

#Otendo a media de passageiros por mes
# %%
df_agrupado_pelo_mes = df.groupby('month', sort=False).mean().reset_index()
df_agrupado_pelo_mes.head()

#Plotando a media de passageiros por mes
# %%
px.line(df_agrupado_pelo_mes, x='month', y='passengers')

#Plotando a quantidade de passageiros durante os anos/meses
# %%
px.line(df, x='month', y='passengers', color='year')
