#%%
# Imports
import json
import requests

import formatter

#%%

url = 'https://economia.awesomeapi.com.br/json/last/USD-BRL'

ret = requests.get(url)  


#%%

#retornando resultado da chamada
if ret:
    print(ret.text)
else:
    print("Falhou")

# %%

# usando o loads (pre-estrutura o json)
json.loads(ret.text)

dolar = json.loads(ret.text)['USDBRL']

# %%

dolar['bid']


print(f" 20 dolares hoje custam {float(dolar['bid'])*20} reais")
# %%

def cotacao(valor, moeda):
    url = f'https://economia.awesomeapi.com.br/json/last/{moeda}'
    ret = requests.get(url)
    dolar = json.loads(ret.text)[moeda.replace('-','')]
    print(f" {valor} {moeda[:3]} hoje custam {float(dolar['bid'])* valor} {moeda[-3:]}")
    

#%%
cotacao(20, 'USD-BRL')

# %%

try:
    cotacao(20, 'USD-BRLdas')
    
except Exception as e:
    print(e)
else:
    print("ok")

# %%

lst_money = [
    "USD-BRL",
    "EUR-BRL",
    "BTC-BRL",
    "JPY-BRL",
    "RPL-BRL"
]

valor = 20

for moeda in lst_money:
    try:
        url = f'https://economia.awesomeapi.com.br/json/last/{moeda}'
        ret = requests.get(url)
        dolar = json.loads(ret.text)[moeda.replace('-','')]
        print(f" {valor} {moeda[:3]} hoje custam {float(dolar['bid'])* valor} {moeda[-3:]}")
    except:
        print(f"Falha na moeda: {moeda}")

#%%



# %%

def error_check(func):
    def inner_func(*args, **kwargs):
        try:
            func(*args, **kwargs)
        except:
            print(f"{func.__name__} falhou")
    return inner_func


# %%

#decorador
@error_check
def multi_moedas(valor, moeda):
    #Criando uma funcao que traz multiplas moedas
    url = f'https://economia.awesomeapi.com.br/json/last/{moeda}'
    ret = requests.get(url)
    dolar = json.loads(ret.text)[moeda.replace('-','')]
    print(f" {valor} {moeda[:3]} hoje custam {float(dolar['bid'])* valor} {moeda[-3:]}")
    
multi_moedas(20, "USD-BRL")


multi_moedas(20,"USD-BRL")
multi_moedas(20,"EUR-BRL")
multi_moedas(20,"BTC-BRL")
multi_moedas(20,"JPY-BRL")
multi_moedas(20,"RPL-BRL")

# %%
#lib que simula um servidor
import backoff
import random


@backoff.on_exception(backoff.expo, (ConnectionAbortedError, ConnectionRefusedError, TimeoutError), max_tries=10)
def test_func(*args, **kargs):
    rnd = random.random()
    print(f"""
            RND: {rnd}
            args: {args if args else 'sem args'}
            kargs: {kargs if kargs else 'sem kargs'}
          """)
    if rnd < .2:
        raise ConnectionAbortedError("Conexao foi finalizada")
    elif rnd < .4:
        raise ConnectionRefusedError("Conexao foi recusada")
    elif rnd < .6:
        raise TimeoutError("Tempo de espera excedido")
    else:
        return "OK!"

# %%

test_func()

# %%

test_func(42)

#%%

test_func(42, 51, nome="Leandro")
# %%

#lib de logs
import logging

#%%

log = logging.getLogger()
log.setLevel(logging.DEBUG) #Level mais baixo
formatter = logging.Formatter(
    '%(asctime)s - %(name)s - %(levelname)s - %(message)s') #Definindo o formato

ch  = logging.StreamHandler() #jogando log para o terminal
ch.setFormatter(formatter)
log.addHandler(ch)

#%%

@backoff.on_exception(backoff.expo, (ConnectionAbortedError, ConnectionRefusedError, TimeoutError), max_tries=10)
def test_func(*args, **kargs):
    rnd = random.random()
    log.debug(f"RND: {rnd}")
    log.info(f"args: {args if args else 'sem args'}")
    log.info(f"kargs: {kargs if kargs else 'sem kargs'}")
    
    if rnd < .2:
        log.error("Conexao foi finalizada")
        raise ConnectionAbortedError("Conexao foi finalizada")
    elif rnd < .4:
        log.error("Conexao foi recusada")
        raise ConnectionRefusedError("Conexao foi recusada")
    elif rnd < .6:
        log.error("Tempo de espera excedido")
        raise TimeoutError("Tempo de espera excedido")
    else:
        return "OK!"
    
#%%
test_func()

#%%