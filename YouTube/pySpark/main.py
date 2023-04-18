#%%
import os
import sys
#iniciando a sessao do pySpark
from pyspark.sql import SparkSession
#importando as funcoes
from pyspark.sql.functions import *
#importando os transformadores
from pyspark.sql.types import *

os.environ['PYSPARK_PYTHON'] = sys.executable
os.environ['PYSPARK_DRIVER_PYTHON'] = sys.executable

# %%
spark = (
    SparkSession.builder
    .master('local')
    .appName('PySpark_01')
    .getOrCreate()
)
# %%
df = spark.read.csv('base_teste.csv', header=True, inferSchema=True)

#Visualizando os 5 primeiros registros
df.show(5)