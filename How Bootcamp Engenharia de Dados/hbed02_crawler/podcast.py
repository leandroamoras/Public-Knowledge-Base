#%%

#Imports

import requests
from bs4 import BeautifulSoup as bs
import logging
import pandas as pd

#%%

#fazendo requisicao de dados da pagina

url = 'https://portalcafebrasil.com.br/todos/podcasts/'
ret = requests.get(url)
ret.text


# %%

# Usando o BeautifulSoup no retorno da requisicao
soup = bs(ret.text)
soup

#%%

#Pegando o primeiro h5 (As primeiras infos do primeiro podcast do site)

soup.find("h5")

#%%

#Trazendo o titulo do podcast

soup.find("h5").text

#%%

#Trazendo o link
soup.find("h5").a['href']


#%%

#Trazendo todos as infos de posdcasts (está na h5)

lst_podcast = soup.find_all("h5")

# %%

for item in lst_podcast:
    print(f"EP: {item.text} - Link: {item.a['href']}")
    
# %%

url = "https://portalcafebrasil.com.br/todos/podcasts/page/{}/?ajax=true"
# %%

url.format(5)
# %%

def get_podcast(url):
    ret = requests.get(url)
    soup = bs(ret.text)
    return soup.find_all("h5")

#%%

get_podcast(url.format(5))

#%%

#Carregando logs
log = logging.getLogger()
log.setLevel(logging.DEBUG) #Level mais baixo
formatter = logging.Formatter(
    '%(asctime)s - %(name)s - %(levelname)s - %(message)s') #Definindo o formato

ch  = logging.StreamHandler() #jogando log para o terminal
ch.setFormatter(formatter)
log.addHandler(ch)

# %%

i = 1
lst_podcast= []
lst_get = get_podcast(url.format(i))
log.debug(f"Coletados {len(lst_get)} episódios do link: {url.format(i)}")

while len(lst_get) > 0:
    lst_podcast = lst_podcast + lst_get
    i+= 1
    lst_get = get_podcast(url.format(i))
    log.debug(f"Coletados {len(lst_get)} episódios do link: {url.format(i)}")

#%%
lst_podcast

# %%
len(lst_podcast)

#%%

df= pd.DataFrame(columns=['nome', 'link'])

#%%
for item in lst_podcast:
    df.loc[df.shape[0]] = [item.text, item.a['href']]
    
df

#%%

df.to_csv('banco_de_podcasts.csv', sep= ';', index=False)
# %%
