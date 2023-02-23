# Importando bibliotecas
#%%
import pandas as pd
import numpy as np
import plotly.express as px

#Carregando base de dados
#%%
df = pd.read_csv('https://raw.githubusercontent.com/mwaskom/seaborn-data/master/tips.csv')
df.head()

#Obtendo a Estatistica Descritiva da base de dados
# %%
df['total_bill'].describe()

# O Boxplot mostra como os dados estao distribuidos e tambem mostra os outliers
# %%

px.box(df, x='total_bill')

#Explorando mais opcoes de plotagem com boxblot
# %%
px.box(df, x='total_bill', y='day', color='sex')

#Adicionado pontos dentro do grafico
#%%
px.box(df, x='total_bill', points='all')

#Histograma 2D (Heatmap)
#%%
# Vendo qual sexo pagou mais em quais dias
px.density_heatmap(df, x='day', y='sex', z='total_bill', histfunc='avg')

#Plotando Boxplot das gorjetas com mapa de calor e histograma
#%%
px.density_heatmap(df, x='day', y='tip', z='total_bill', histfunc='avg',
                    marginal_x='histogram', marginal_y='box', height=400)
# %%
