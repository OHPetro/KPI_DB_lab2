 # Код було написано в Юпітері
!pip install psycopg2-binary
import psycopg2
import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd
import matplotlib.ticker as ticker
import numpy as np

anime = pd.read_csv('anime.csv')
rating = pd.read_csv('rating.csv')


username = 'postgres'
password = 'PetroIsFucker55'
database = 'Lab2'
host = 'localhost'
port = 5433

query_1 = '''
SELECT genres.name_genre,COUNT(genre_anime.anime_id) as amount_genre FROM genre_anime
Join genres ON genres.genre_id = genre_anime.genre_id
GROUP BY genres.name_genre
order by amount_genre;
'''
query_2 = '''
SELECT ROUND(rating) as rating, COUNT(*) as amount_rating FROM anime
GROUP BY ROUND(rating)
ORDER BY amount_rating;
'''
query_3 = '''
Select Round(members,-4) as members,Round(AVG(rating),2) from anime
group by Round(members,-4)
order by members
'''


conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)
print(type(conn))


#Перший запрос
with conn.cursor() as cursor:
    cursor.execute(query_1)
    geres_count = pd.DataFrame(cursor.fetchall()).rename(columns = {0:'genre', 1 : 'genre_count'})
geres_count


#Другий запрос
with conn.cursor() as cursor:
    cursor.execute(query_2)
    rating_count = pd.DataFrame(cursor.fetchall()).rename(columns = {0:'rating', 1 : 'rating_count'})
rating_count


#Третій запрос
with conn.cursor() as cursor:
    cursor.execute(query_3)
    rate_mambers = pd.DataFrame(cursor.fetchall()).rename(columns = {0:'members', 1 : 'rating'})
rate_mambers
