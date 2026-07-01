import requests

# TODO: Completa la función para que:
# 1. Haga una petición GET a:
#    https://jsonplaceholder.typicode.com/posts/1
# 2. Si el status code es 200, imprima el título con el formato:
#    "Título: <titulo del post>"
# 3. Si ocurre cualquier excepción, imprima:
#    "Error al obtener el post"

API_URL = "https://jsonplaceholder.typicode.com/posts/1"
ERROR_MESSAGE = "Error al obtener el post"

def obtener_post():
    try:
        response = requests.get(API_URL)
        if response.status_code == 200:
            post = response.json()
            print(f"Título: {post['title']}")
        else:
            print(ERROR_MESSAGE)
    except Exception:
        print(ERROR_MESSAGE)

obtener_post()