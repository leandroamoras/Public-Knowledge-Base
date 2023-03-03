# Run this app with `python app.py` and
# visit http://127.0.0.1:8050/ in your web browser.

from dash.dependencies import Input, Output
from dash import Dash, html, dcc
import plotly.express as px
import pandas as pd


app = Dash(__name__)

# assume you have a "long-form" data frame
# see https://plotly.com/python/px-arguments/ for more options

#Criando data frame
df = pd.DataFrame({
    "Fruit": ["Apples", "Oranges", "Bananas", "Apples", "Oranges", "Bananas"],
    "Amount": [4, 1, 2, 2, 4, 5],
    "City": ["SF", "SF", "SF", "Montreal", "Montreal", "Montreal"]
})

#Usando o df para plotar o grafico
fig = px.bar(df, x="Fruit", y="Amount", color="City", barmode="group")


#children e uma lista de componentes
app.layout = html.Div(children=[
    #jogando markdown dentro
    dcc.Markdown(
        '''
            # Hello, Dash!

            Ola, mundo!
        '''
     ),

     #html.H1(id='text', children='Example'),

     dcc.Dropdown(['ALL', 'MTL', 'SF'], 'ALL', 
                id='dropdown'),

    dcc.Graph(
        id='example-graph',
        figure=fig
    ),


])

@app.callback(
    Output(component_id='example-graph', component_property='figure'),
    Input(component_id='dropdown', component_property='value')
)

def changeText(value):
    if value == 'ALL':
        return px.bar(df, x="Fruit", y="Amount", color="City", barmode="group")
    elif value=='SF':
        return px.bar(df[df['City']=='SF'], x="Fruit", y="Amount")
    else:
        value == 'MTL'
        return px.bar(df[df['City']=='Montreal'], x="Fruit", y="Amount")

    return value


if __name__ == '__main__':
    app.run_server(debug=True)