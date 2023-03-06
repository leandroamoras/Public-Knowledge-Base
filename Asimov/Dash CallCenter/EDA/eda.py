
#Importando bibliotecas
#%%
import pandas as pd
import plotly.graph_objects as go
import plotly.express as px


#%%
df = pd.read_csv('https://raw.githubusercontent.com/asimov-academy/Dashboards/main/salesanalysis-dash/dataset_asimov.csv')
df.head()

#Transformando texto em numeros (serve para trabalhar melhor com o pandas)
# %%
df.loc[df['Mês']== 'Jan','Mês'] = 1
df.loc[df['Mês']== 'Fev','Mês'] = 2
df.loc[df['Mês']== 'Mar','Mês'] = 3
df.loc[df['Mês']== 'Abr','Mês'] = 4
df.loc[df['Mês']== 'Mai','Mês'] = 5
df.loc[df['Mês']== 'Jun','Mês'] = 6
df.loc[df['Mês']== 'Jul','Mês'] = 7
df.loc[df['Mês']== 'Ago','Mês'] = 8
df.loc[df['Mês']== 'Set','Mês'] = 9
df.loc[df['Mês']== 'Out','Mês'] = 10
df.loc[df['Mês']== 'Nov','Mês'] = 11
df.loc[df['Mês']== 'Dez','Mês'] = 12

df.head()

#Entendendo os tipos de colunas do conjunto de dados
# %%
df.info()

#Transformando dados
# %%
df['Chamadas Realizadas'] = df['Chamadas Realizadas'].astype(int)
df['Dia'] = df['Dia'].astype(int)
df['Mês'] = df['Mês'].astype(int)

df['Valor Pago'] = df['Valor Pago'].str.lstrip('R$ ')
df['Valor Pago'] = df['Valor Pago'].astype(int)

df.loc[df['Status de Pagamento'] == 'Pago', 'Status de Pagamento'] = 1
df.loc[df['Status de Pagamento'] == 'Não pago', 'Status de Pagamento'] = 0

df['Status de Pagamento'] = df['Status de Pagamento'].astype(int)


#Vendas por Equipe
#%%
df1 = df.groupby('Equipe')['Valor Pago'].sum().reset_index()
df1

#Gerando figura do df1
fig1 = go.Figure(go.Bar(
    x=df1['Valor Pago'],
    y=df1['Equipe'],
    orientation='h',
    textposition='auto',
    text=df1['Valor Pago'],
    insidetextfont=dict(family='Times', size=12)))

fig1.show()

#Chamadas Por Mes
# %%
df2 = df.groupby('Dia')['Chamadas Realizadas'].sum().reset_index()

fig2 = go.Figure(go.Scatter(
    x=df2['Dia'], y=df2['Chamadas Realizadas'], mode='lines', fill='tonexty'
))

fig2.show()

#13 min de video (continuar)
# %%
