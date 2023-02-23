
#Importando bibliotecas
#%%
import pandas as pd
import plotly.express as px

#Carregando data frame
#%%

df = pd.read_csv('https://raw.githubusercontent.com/mwaskom/seaborn-data/master/tips.csv')
df.head()

#Plotando Histograma
#%%
px.histogram(df, x='total_bill', color='time', nbins=40,
                histnorm='probability density', marginal='box',
                title='Histograma da taxa paga no restaurante',
                color_discrete_sequence=['green', 'purple'])

# Grafico de distribuicao <<<<
# %%
import plotly.figure_factory as ff
import numpy as np

#criando um conjunto de dados aleatorios
x1 = np.random.randn(1000)
x2 = np.random.randn(1000) + 5

#Plotando grafico de distribuicao
# %%

ff.create_distplot([x1,x2], group_labels=['Normal 1', 'Normal 2'])

#plotando dados de um data frame
# %%

ff.create_distplot([df['total_bill'], df['tip']], 
                    group_labels=['Total_Bill','Tips' ])
# %%
