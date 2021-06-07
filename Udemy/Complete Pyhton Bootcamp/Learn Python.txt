"""Operações Matemáticas Basicas em Python"""
1+2 #Soma
1-2 #Subtração
4/2 #Divisão
2**2 #Potênciação
1*2 #Multiplicação
5%2 #Resto da Divisão
(((2-1)*(1+1))/1) #PAMDAS

"""Variaveis"""
#Checkar tipo da variavel
a = 1
type(a)

"""Strings
    *Diferente do C++, Python reconhece strings com '' ou "".
    *Parametros de acesso a indices de strings.
         [start:stop:step]
         start: Inicio do periodo.
         stop:  Final do periodo.
         step:  De quantos em quantos caracteries pode ir avançando.
    *Indexação de caracteries:
    Ex:
    MyString = Hello World
    
    Index Normal:  0  1   2  3  4  5  6  7  8  9  10     
                   H  e   l  l  o     W  o  r  l  d
    Index Reverso: 0 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
"""
    mystring = "Hello World"
#Acessar caracter usando Indexação Normal:
    mystring[4]
    #Out: 'o'
#Acessar caracter usando Indexação Reversa:
    mystring[-7]
    #Out: 'o'
#Acessar conjunto de caracteries de uma string usando apenas parametro start:
    mystring[2:]
    #Out: 'llo World'
#Acessar conjunto de caracteries de uma string usando apenas parametro stop:
    mystring[:8]
    #Out: 'Hello Worl'
#Acessar conjunto de caracteries de uma string usando apenas parametro step:
    mystring[::2]
    #Out: 'el Wrd'
#Acessar conjunto de caracteries de uma string usando apenas paramentro step com indexação reversa:
    mystring[::-1]
    #Out: 'dlroW olleH'
#Acessar conjunto de caracteries de uma string usando apenas parametros start e stop:
    mystring[6:10]
    #Out: 'World'
#Acessar Conjunto de carateries de uma string usando todos os parametros de indexação:
    mystring[0:4:2]
    #Out: 'el'

""" Propriedades de String:
    *Strings podem ser manipuladas:
        *Concatenação,fatiamento,capitalização,soma, subitração,etc.
    *Primincipais Funções de Formatação de Strings:
    .len()          : Conta o numero de caracteries de uma string.
    .find()         : Pesquisa conjunto de caracteries em uma string.
    .replace()      : Altera elementos de uma string.
    .join()         : Unifica elementos de uma string com outra.
    .strip()        : Remove espaços desnecessarios da string toda.
    .lstrip()       : Remove espaços desnecessarios a esquerda.
    .rstrip()       : Remove espaços desnecessarios a direita.
    .split()        : Transforma string em lista, considerando os espaços que há nela.
    .format()       : Define o formato(valor:precisão) (Exemplos a baixo).
    ...    
"""
#Exemplos .format() com strings.
    name = "Leandro"
    age = 21

    print('This is a string {}'.format('INSERTED'))
    #Out: 'This is a string INSERTED'
    print('The {0} {1} {2}'.format('fox','brown','quick'))
    #Out: 'The fox brown quick'
    print('The {f} {b} {q}'.format(f='fox',b='bronw',q='quick'))
    #Out: 'The fox brown quick'

    print('Hello, his name is {}'.format(name))
    #Out: 'Hello, his name is Leandro'
    print(f'Hello, his name is {name}')
    #Out: 'Hello, his name is Leandro'
    print(f'{name},is {age} years old.')
    #Out: 'Leandro is 21 years old.'


#Exemplos .format() com floats.
    #Variavel para exemplo
    result = 100/777
    print(result)
    #Out: 0.1287001287001287

    print("The result was {r}".format(r=result))
    #Out: 'The result was 0.1287001287001287'
    print("The result was {r:1.3f}".format(r=result))
    #Out: 'The result was 0.129'

"""List:
    *É uma sequencia de objetos que podem conter uma variedade.
    *Identificada por [] e virgulas separando os objetos dentro dela.
    *Podemos acessar os caracteries de uma lista assim com strings, usando indices.
    *Os indicides de uma lista estão entre duas ou mais virulas.
        Exemplo:
        
        Index [+]:      0       1   2   3
        my_list =   ["String", 'A', 1, 1.5]
        Index [-]:      0      -3  -2  -1 
    
"""
mylist1 = ["String", 'A', 1, 2]
mylist2 = [3,4.5]

#Concatenar listas:
    newlist = mylist1 + mylist2
    print(newlist)
    #Out: ["String", 'A', 1, 2, 3, 4.5]
#Substituir objeto da lista
    newlist[0] = "ONE ALL CAPS"
    print(newlist)
    #Out: ["ONE ALL CAPS", 'A', 1, 2, 3, 4.5]
#Atribuindo objeto no fim da lista
    newlist.append("six")
    print(newlist)
    #Out: ["ONE ALL CAPS", 'A', 1, 2, 3, 4.5, "six"]
#Remover ultimo objeto de uma lista
    newlist.pop() #Remove o ultimo objeto
    #Out: ["ONE ALL CAPS", 'A', 1, 2, 3, 4.5]
    newlist.pop(0)#Remove objeto de acordo com o index
    #Out: ['A', 1, 2, 3, 4.5, "six"]

""""Dicionarios:
    *São mapeamentos não ordenados para armazenar objetos.
    *Sintaxe: {'key1':'value1', 'key2':'value2'}
    *Quando usar: Quando se quer acessar um dado sem saber o index.
    *Pode armazenar: strings, int, float, list e até mesmo outros dicionarios.
    (Exemplos de uso abaixo)
"""
#Criando um dicionario
    mydict = {'key1':'value1','key2':'value2','key3':'value3'}
    print(mydict)
    #Out: {'key1':'value1','key2':'value2','key3':'value3'}
#Acessando chave de um dicionario
    mydict['key1']
    #Out: 'value1'

    prices_lookup = {'apple':2.99,'oranges':1.99,'milk':5.80}
    print(prices_lookup['apple'])
    #Out: 2.99
#Criando dicionario com varios data types (string, float, int, list, dic...)
    d = {'k1':123,'k2':10.0,'k3':"Oi",'k4':[0,1,2,3],'k5':{'insdekey':100},'k6':[a,b,c]}
    print(d ['k2'])
    #Out: [0,1,2,3]
    print(d['k2'][2])
    #Out: 2
    print(d['k5'])
    #Out: {'insdekey':100}
    print(d['k5']['insidekey'])
    #Out: 100
#Alterando propriedades de um objeto de lista atravez do dicionario
    print(d['k6'][2].upper())
    #Out: 'C'
#Adicionando valor a um dicionario
    d['k7'] = 300
    print(d)
    #Out: {'k1':123,'k2':10.0,'k3':"Oi",'k4':[0,1,2,3],'k5':{'insdekey':100},'k6':[a,b,c], 'k7': 300}
#Subistituindo valor em um dicionario
    d['k1'] = "NEW VALUE"
    print(d)
    #Out: {'k1':"NEW VALUE",'k2':10.0,'k3':"Oi",'k4':[0,1,2,3],'k5':{'insdekey':100},'k6':[a,b,c], 'k7': 300}
#Ver as apenas as chaves de um dicionario
    print(d.keys())
    #Out: dict_keys(['k1', 'k2', 'k3', 'k4', 'k5', 'k6', 'k7'])
#Ver apenas os valores de um dicionario
    print(d.values())
    #Out: dic_values(["NEW VALUE", 10.0, "Oi",...])
#Ver apenas itens de um dicionario
    print(d.items())
    #Out: ([('k1':"NEW VALUE"),('k2':10.0),('k3':"Oi"),...])

"""Tuples:
    *São semelhantes as listas, mas os objetos não podem ser alterados.
    *Sitaxe: (objeto, objeto, ...)
"""
#Criando uma tuple
    t =(1,2,3,'a','a')
#Acessando indices de uma tuple
    t.index(0)
    #Out: '1'
#Contando valores em uma tuple
    t.count('a')
    #Out: 2

""" Sets:
    *São uma coleção ordenada de elementos únicos.
    *Sintaxe x = set()
"""

#Criando um set
    myset = set()
    myset.add(1)
    print(myset)
    #Out: {1}
#Adicionando elemento em set
    myset.add(2)
    print(myset)
    #Out: {1,2}
#Colocando uma lista em um set
    mylist = [1,1,1,1,1,2,2,2,3,3,3]
    print(set(mylist)) #Duplicatas são removidas.
    #Out: {1,2,3}

""" Entrada/Saida com arquivos basicos em Python:
    *OBS: Alguns desses comandos só funciona em Jupyter.
        pwd: Mostra em qual pasta você está.
        %%writefile namefile.typefile: Cria um novo arquivo, você pode inserir os dados a seguir.
        open('namefile.typefile'): abre o arquivo desejado.
        namefile.read(): Mostra o conteudo do arquivo desejado.
        namefile.seek(0): Habilita para que o conteudo do arquivo possa ser lido novamente.
        namefile.readlines(): Permite que texto seja transformado em lista.
        open('namefile.typefile',mode='comando'):
        mode='r': Atribui a uma variavel os dados do arquivo.
        mode='w': Cria um arquivo que não existia.
        mode='a': Adiciona uma nova linha.
        mode='r+':
        mode='w+':

    *OBS: Arquivos podem ser atribuidos a variaiveis.    
         
        
"""
#Como ler um arquivo e atribuir o conteudo dele a uma variavel:
    with open('myfile.txt') as my_new_file:
        contents = my_new_file.read()
#Criando um arquivo .txt e adicionando texto nele.
    x = open('test.txt', 'w')
    x.write('Hello World')
    x.close()
    print(x)
    #Out: 'Hello World'

"""Operadores Booleanos e Operadodes logicos:
    
    Igual: ==
    Maior ou Igual: >=
    Menor ou Igual: <=
    Maior: >
    Menor: <
    Diferente: !=
    
    E: and
    Ou: or
    Não: not       
"""

""" Operadores Condicionais:
    
    *Sintaxe: Diferente do C++, quando se abre uma condicional em Python não é necessario
    () e {}.
    *Exemplos a baixo
"""
name = 'Leandro'
idade = 21

#Exemplo com if:
    if name == 'Leandro':
        print(name)
    #Out: 'Leandro'

#Exemplo com if e else:
    if idade > 22:
        print(idade)
    else:
        print('Não pode ver filme')
    #Out: 'Não pode ver filme'

#Exemplos com if, else, elif:
    if idade > 22:
        print(idade)
    elif idade == 21:
        print('Da pra passar')
    else:
        print('Não pode ver filme')
    #Out: 'Da pra passar'

""" loop For:
    *Sintaxe: for elementos in tamanho.
    * Diferente de C++, Python tem como definição de começo e fim, a identaÇào
"""
#Aplicando for em listas
#EX1
list3 = [1,2,3,4,5]
for numero in list3: #Para cada número em list3 (para as 5x expressasdas em list3)
    print(numero) #Imprima numero.
    #Out: 1
    #     2
    #     3
    #     4
    #     5

#EX2
for numero int list3: #Para cada número em list3
    if numero % 2 == 0: # Se numero for par
        print(numero) #Imprima o numero
        #Out:   2
        #       4

#EX3
list_sum = 0
for numero in list3: #para cada numero em list3
    list_sum = list_sum + numero #Some list_sum + numero
print(list_sum) #Imprima list_sum mostrando apenas a ultima soma atribuida
#Out:   55

#Se tiver indentrado o valor muda.
list_sum = 0
for numero in list3: #Para cada numero da list3
    list_sum = list_sum + numero #some list_sum + numero
    print(list_sum) #Imrpita list_sum para todas somas
#Out:   1
#       3
#       6
#       10
#       15

#Aplicando for em strings
for latter in 'Olá': #Para cada caracter na string "Olá"
    print(latter) #Imprima caracter
    #Out:   O
    #       l
    #       á

#Aplicando for em tuple:
tup = (1,2,3)
for t in tup: #Para cada elemento de tup
    print(t) #Imprima elemento
    #Out: 1
    #     2
    #     3

#Aplicando for em lista de tuple
list4 = [(2,4),(6,8),(10,12)]
for tup in list4: #Para cada tuple na lista4
    print(tup) #imprima tup
    #Out:   (2,4)
    #       (6,8)
    #       (10,12)

#Acessando elementos de tuples que estão dentro da list4
for (t1,t2) in list4: #para cada elemento tuple dentro de list4
    print(t1) #Imprima apenas o elemento tuple t1
    #Out:   2
    #       6
    #       10

#Aplicando for em dicionario
#EX1
d1 = {'k1':1, 'k2':2, 'k3':3}
for item in d1: #Para cada item em d1
    print(item) #Imprima key
    #Out: k1
    #     k2
    #     k3

#EX2
for k,v in d1.items(): #Para cada key e value em d1
    print(k) #Imrpima key
    print(v) #Imprima value
    #Out:   k1
    #       1
    #       k2
    #       2
    #       k3
    #       3

""" While loop:
    *Sintaxe: While condição boleana.
"""
#Aplicando while
x = 0
while x < 5:
    print('x is {}',x)
    x++
    #Out:   x is 0
    #       x is 1
    #       x is 2
    #       x is 3
    #       x is 4

""" break, continue, pass
    *Break: Interrompe o loop;
    *Continue: Volta para o topo do loop:
    *Pass: Ignora a linha acima;
"""
string = 'Sammy'
#Exemplo de Break
for latter in string: #Para cada latter em string
    print(latter) #Imprima latter
    break #Pare
    #Out:   S

#Exemplo de Continue
for latter in string: #Para cada latter em string
    if latter = a: #Se latter for igual a 'a'
        continue #Volte par ao inicio do loop
        print(latter) #Imprima Latter
        #Out:   S
        #       m
        #       m
        #       y

#Exemplo de pass
for latter in string: #Para cada latter em string
    #observação qualquer #Obrigatoriamente, em Python aqui deve ter um comando, mas pass ignora
    pass #ignore a linha de cima
    print(latter) #Imprima
    #Out:   S
    #       a
    #       m
    #       m
    #       y

""" Operadores Uteis:
    range(inicio,fim,pular de): gera numeros de acordo com os parametros estabelecidos.
    enumerate(elemento): enumera elementos de um tipo de dados.
    zip(elemento1,elemento2,...): Junta n elementos em formato de tuple.
    in : Comparador, faça qualquer pergunta
    min(): mostra o valor minimo em um intervalo de valores
    max(): mostra o valor maximo em um intervalo de valores
    from: Abre uma biblioteca
    import: importa uma funçao da biblioteca
    input(): é equivalente a cin do C++
"""
#Gerando uma list COM range
    list_r(range(0,10))
    print(list_r)
    #Out: [0,1,2,3,4,5,6,7,8,9]
#Gerando uma list com range pulando de 10 em 10
    list_r(range(0,101,10))
    print(list_r)
    # Out: [0,10,20,30,40,50,60,70,80,90,100]

#Enumerando strings SEM enumerate()
    index_count = 0
    for latter in 'abcde': #Para cada letra da string
        print('index {}, latter {}'.format(index_count, latter)) #Imprima
        index_count += 1 #some +1 em index count
        #Out    index 0, letter a
        #       index 1, letter b
        #       index 2, letter c
        #       index 3, letter d
        #       index 4, letter e

#Enumerando strings COM enumerate()
    for i,letter in enumerate('abcde'): #Para cada contador e letra em enumerate('abcde')
        print("At index {} the letter is {}".format(i,letter)) #Imprima, contador e letra.
        #Out    index 0, letter a
        #       index 1, letter b
        #       index 2, letter c
        #       index 3, letter d
        #       index 4, letter e

#Enumerando uma lista com enumerate()
    list(enumerate('abcde')) #criando uma lista enumerada
    #Out: [(0, 'a'), (1, 'b'), (2, 'c'), (3, 'd'), (4, 'e')]

#Usando Zip() em duas listas
    mylist3 = [1,2,3,4,5]
    mylist4 = ['a','b','c','d','e']
    print(list(zip(mylist3,mylist4))) #Imprima a união de mylist3 e mylist4 em formato de lista
    #Out: [(0, 'a'), (1, 'b'), (2, 'c'), (3, 'd'), (4, 'e')]

#Usando zip () em duas listas e um for
    for item1, intem2 in zip(mylist3,mylist4): #Para item1 e item2 em zip(mylist3 e mylist4)
        print('Desta tuple, primeiro contem {} e segundo {}'.format(item1,item2)) #Imprima
        #Out:   For this tuple, first item was 1 and second item was a
        #       For this tuple, first item was 2 and second item was b
        #       For this tuple, first item was 3 and second item was c
        #       For this tuple, first item was 4 and second item was d
        #       For this tuple, first item was 5 and second item was e

#Usando in:
    'x' in ['x','y']
    #Out: True

    'x' in [1,2,3]
    #Out: False

#Usando min() e max()
    mylist5 = [1,2,3,4]
    min(mylist5)
    #Out: 1

    mylist5 = [1, 2, 3, 4]
    max(mylist5)
    # Out: 4

#Usando a biblioteca random
    from random import shuffle
    shuffle(mylist5) #Função shuffle coloca os elementos em ordem aleatoria
    #Out: [2,3,4,1]

    from random import  randint
    randint(0,100) #Pega um numero aleatorio de 0 a 100
    #Out: 25

#Usando input()
    input('Digite algo: ')
    #Out:   Digite algo:
    #       Digite algo:s Oi
    #       'Oi'

""" Lista de Compreenção:
    * É um conceito de lista que possui dentro de si, loops e condicionais.
"""
#Criando uma lista de compreenção, metodo tradicional:
    #EX1:
    mystring = "hello"
    mylist5 = []

    for latter in mystring: #Para cada elemento da minha string
        mylist5.append(latter) #adcione em lista 5
    print(mystring)
    #Out:   ['h','e','l','l','o']

#Metodo dinamico
    mylist5 = [ latter for latter in mystring]
    print(mylist5)
    #Out: ['h','e','l','l','o']

    #EX2:
    mylist5 = [num for num in range(0,11)] #Para cada elemento de 0 a 11, inclua em formato de lista em mylist5
    print(mylist5)
    #Out: [0,1,2,3,4,5,6,7,8,9,10]

    #Ex3:
    mylist5 = [num**2 for num in range(0,11)] # Para cada elemnto vezes 2 de 0 a 11, inclua em mytlist5
    print(mylist5)
    #Out: [0,1,4,9,16,25,36,49,64,81,100]

    #EX4:
    mylist5 = [ x for x in range(0,11) if x%2==0]#Para cadad elemento de 0 a 11, retorne apenas divisiveis por 2
    print(mylist5)
    #Out: [0,2,4,6,8,10]

    #EX5:
    celcius = [0,10,20,34.5]
    fahrenheit = [((9/5)*temp + 32) for temp in celcius] #Para cada elemento de celciuis, aplique a formula e adcione em fahrenheit em forma de lista.
    print(fahrenheit)
    #Out: [32.0, 50.0, 68.0, 94.1]

    #EX6:
    mylist5 = [ x if x%2==0 else 'OOD'  for x in range(0,11)]#Se divisivel por 2 retorna numero, se nao retorna 'OOD'
    print(mylist5)
    #Out: [0,'OOD',2,'OOD',4,'OOD',6,'OOD',8,'OOD',10]

""" Metodos:
    *str.len()
    .len() é um metodo da função str.
"""
#Consultar ajuda de um metodo
    help(mylist5.append())
    #Out; Ajuda de um metodo.

""" FUNÇÕESSSSSSSSSSSSS ***********************************************************************************
    *Uma função é basicamente um bloco do codigo, que pode ser aplicado varias vezes no script.
    *Sempre ao criar uma função deve se declarar "def nome_da_função():"
    Ex Sintaxe:
        def minha_funcao(parametro1,parametro2,...):
            
            """
                #Explica o que a função faz.
            """
            
            if condicional:
            retorne resultado
    *Para chamar a função basta declarar ela e os parenteses: EX minha_funcao()
"""

#Criando uma função que imprime 'Hello World'
    def mystring():
        print('Hello World')
    print(mystring())
    #Out: 'Hello World'

#Criando uma função que imprime nome mais 'Hello'
    def mystring(name="NAME"):
        print('Hello '+name)
    print(mystring())
    # Out: 'Hello NAME'

#Criando uma função que imprime soma de 2 numeros
    def mysum(num1,num2):#Entrada 1,2
        return (num1+num2) #1+2
    print(x.mysum())
    #Out: 3

#Criando uma função que fala se tem 'dog' na string ou não
    def conteins_dog(string):
        if 'dog' in string:
            return True
        else:
            return False
    print(conteins_dog('My dog'))
    #Out: True

""" *args e **kwargs
    *São paramentos que podem ser usados em qualquer função.
    *Esses parametros, não tem limite de argumentos.
    
    *args é retornado em formado de tuple.
    **kwargs é retornado em formato de dicionario.
"""

#Criando uma função com *args
    def myfunc(*args):
        for item in args: #Para todos itens de todos argumentos de myfunc
            print(item) #imprima item
    myfunc(40,60,100,1,14) #usando função
    #Out: 40,60,100,1,14

#Criando uma função com **kwargs
    def myfunc(**kwargs): #Função com dicionario
        if 'fruit' in kwargs: #Se fruta em kwargs
            print('My fruit of choice is {}'.format(kwargs['fruit'])) #Imprima essa frase + o nome da fruta
        else:
            print('I did not find any fruit here') # se nao, imprima isso
    myfunc(fruit='apple',veggie='lettuce') #usando função
    #Out: My fruit of choice is apple #impressao

#Criando função com *args e **kwargs ao msm tempo
    def myfunc(*args,**kwargs): #função com n tuples e n chaves
        print('I would like {} {}'.format(args[0],kwargs['food'])) #imprima chaves e tuples
    myfunc(10,20,30,fruit='orange', food='eggs', animal='dog') #Deve estar exatamente na ordem da função, *args e **kwargs
    #Out:   (10,20,30)
    #       {'fruit':'orange','food':'eggs','animal':'dog'}























































