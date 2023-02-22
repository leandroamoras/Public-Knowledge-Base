#%%

import datetime
import math


class Pessoa:
    def __init__(self, nome:str, sobrenome:str, dataNacimento:datetime.date):
        self.nome = nome
        self.sobrenome = sobrenome
        self.dataNacimento = dataNacimento
    
    @property
    def idade(self) -> int:
        return math.floor((datetime.date.today() - self.dataNacimento).days/364.2425)
    
    def __str__(self) -> str:
        return f"{self.nome} {self.sobrenome} tem {self.idade} anos"


#%%

leandro = Pessoa(nome="Leandro", sobrenome= "Amoras", dataNacimento= datetime.date(1997,2,13))


#%%



print(leandro)

# %%
