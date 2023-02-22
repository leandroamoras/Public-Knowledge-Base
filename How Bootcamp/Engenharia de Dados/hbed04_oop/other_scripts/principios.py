#Principios:
# Aberto/Fechado:
# Resposabilidade unica:
#


import datetime
import math
from sre_parse import expand_template
from typing import List


class Pessoa:
    def __init__(self, nome:str, sobrenome:str, dataNacimento:datetime.date)-> None:
        self.nome = nome
        self.sobrenome = sobrenome
        self.dataNacimento = dataNacimento
    
    @property
    def idade(self) -> int:
        return math.floor((datetime.date.today() - self.dataNacimento).days/364.2425)
    
    def __str__(self) -> str:
        return f"{self.nome} {self.sobrenome} tem {self.idade} anos"



class Curriculo:
    def __init__(self, pessoa:Pessoa, experiencias: List[str]) -> None:
        self.pessoa = pessoa
        self.experiencias = experiencias

    @property
    def qtd_experiencias(self) -> int:
        return len(self.experiencias)

    @property
    def empresa_atual(self) -> str:
        return self.experiencias[-1]

    def add_experiencia(self, experiencia:str) -> None:
        self.experiencias.append(experiencia)
    
    def __str__(self):
        return f"{self.pessoa.nome} {self.pessoa.sobrenome} tem {self.pessoa.idade} anos e já"\
                f"trabalhou em {self.qtd_experiencias} empresas e atualmente trabalha na empresa {self.empresa_atual}"
                



leandro = Pessoa(nome="Leandro", sobrenome= "Amoras", dataNacimento= datetime.date(1997,2,13))

curriculo_leandro = Curriculo(
        pessoa=leandro,
        experiencias=['EY', 'BaseId', 'Porto'])

print(curriculo_leandro.pessoa.idade)

print(curriculo_leandro)
curriculo_leandro.add_experiencia("Meta")




class Vivente:
    
    def __init__(self, nome:str, dataNacimento:datetime.date)-> None:
        self.nome = nome
        self.dataNacimento = dataNacimento
        
    @property
    def idade(self) -> int:
        return math.floor((datetime.date.today() - self.dataNacimento).days/364.2425)
    
    def emite_ruido(self, ruido:str):
        print(f"{self.nome} fez ruido: {ruido}")
    

class PessoaHeranca(Vivente):
    
    def __str__(self):
        return f"{self.nome} tem {self.idade} anos"
    
    def fala(self, frase):
        return self.emite_ruido(frase)
    
    
    
class Cachorro(Vivente):
    
    def __init__(self, nome: str, dataNacimento: datetime.date, raca:str) -> None:
        super().__init__(nome, dataNacimento)
        self.raca = raca
    
    def __str__(self):
        return f"{self.nome} é de raca {self.raca} tem {self.idade} anos"
    
    def late(self):
        return self.emite_ruido("Au! Au!")




leandro2 = PessoaHeranca(nome="Leandro", dataNacimento= datetime.date(1997,2,13))
print(leandro2)

dexter = Cachorro(nome="Dexter", dataNacimento=datetime.date(2019,4,15), raca="Bulldog")


print(leandro)
print(dexter)