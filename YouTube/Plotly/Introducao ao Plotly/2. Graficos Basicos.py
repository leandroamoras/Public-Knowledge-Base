

#Importando bibliotecas <<<
#%%
import numpy as np
import pandas as pd
import plotly.express as px


#Carregando df com dados de gorjetas em restaurantes <<<
#%%
df = pd.read_csv('https://raw.githubusercontent.com/mwaskom/seaborn-data/master/tips.csv')
df.head()


#Preparando df: Obtendo a soma de gorjetas por dia <<<
#%%
df_agrupado_pelo_dia = df.groupby('day', sort=False).agg({'total_bill': np.sum}).reset_index()
df_agrupado_pelo_dia.head()

#Plotando Grafico de Barras <<<
# %%
px.bar(df_agrupado_pelo_dia, x='day', y='total_bill')

#Preparando df: Agrupando soma das gorjetas por dia e sexo
# %%
df_agrupado_pelo_dia_e_sexo = df.groupby(['day','sex'], sort=False).agg({'total_bill': np.sum}).reset_index()
df_agrupado_pelo_dia_e_sexo.head()

#Plotando Grafico de Barras: <<<<
#(Obs: Adicionado o barmode='group', as barras ficam lado a lado)
# %%

px.bar(df_agrupado_pelo_dia_e_sexo, x='day', y='total_bill', color='sex', barmode='group', orientation='h')

#Mudando orientacao do grafico para horizontal (Obs: Tem que mudar trocar o x com o y)
# %%
px.bar(df_agrupado_pelo_dia_e_sexo, x='total_bill', y='day', color='sex', barmode='group', orientation='h')

#Grafico de Dispersao <<<<<
#(Obs: O valor da gorjeta aumenta de acordo com o valor da fatura)
# %%
px.scatter(df, x='total_bill', y='tip', color='day', hover_name='time')


#Grafico de Pizza: <<<<
# %%
#Contando quantos pedido teve por dia (abaixo tem uma series)
quantidade_pedidos_por_dia = df['day'].value_counts()

#Plotando grafico de pizza
# %%

px.pie(quantidade_pedidos_por_dia, names=quantidade_pedidos_por_dia.index, values=quantidade_pedidos_por_dia.values)
# %%
