# Biblioteca Elixir

## Sobre o projeto 📚

Esse é o repositório do código do desafio do site [devchallenge](https://www.devchallenge.com.br/challenges/5f0b43f5a5fec43156149043/details), feito em elixir e em live na [Twitch](https://twitch.tv/jpbrab0).

## Rodando o projeto 🚀

1. Clone o repositório:

```bash
git clone git@github.com:jpbrab0/biblioteca-elixir.git
```

2. Acesse o diretório:

```bash
cd biblioteca-elixir
```
3. Caso necessário configure a conexão com o PostgreSQL em config/dev.exs:
```elixir
config :biblioteca_elixir, BibliotecaElixir.Repo,
  username: "<username do banco>",
  password: "<senha do banco>",
  database: "biblioteca_elixir_dev",
  hostname: "<nome do host>",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
``` 

4. Inicie o Phoenix server:

  * Instale as dependencias com `mix deps.get`
  * Crie o database e rode a migration com `mix ecto.setup` 
  * Inicie o Phoenix Server com `mix phx.server`

  Agora você consegue acessar [`localhost:4000`](http://localhost:4000).

## Endpoints 📜

Url: `http://localhost:4000/api` 

`GET`: `/books`, Retorna todos os livros cadastrados.

Ex: `/books`, retorna:

```json
{
  "books": [
    {
      "book": {
        "autores": "Jeff Kinney",
        "editora": "Saraiva",
        "foto": "https://images-na.ssl-images-amazon.com/images/I/51fn5ioe+dL._SX337_BO1,204,203,200_.jpg",
        "id": 1,
        "titulo": "Diario de um banana"
      }
    }
  ]
}
```

`GET`: `/books/book/:id`, Retorna os dados de um livro específico

Ex: `/books/book/1`, retorna:

```json
{
  "book": {
    "autores": "Jeff Kinney",
    "editora": "Saraiva",
    "foto": "https://images-na.ssl-images-amazon.com/images/I/51fn5ioe+dL._SX337_BO1,204,203,200_.jpg",
    "id": 1,
    "titulo": "Diario de um banana"
  }
}
```

`POST`: `/books`, Cria um livro no banco de dados.

Ex:

Corpo da requisição:
```json
{
  "titulo":"Diario de um banana",
  "editora": "Saraiva",
  "foto": "https://images-na.ssl-images-amazon.com/images/I/51fn5ioe+dL._SX337_BO1,204,203,200_.jpg",
  "autores": "Jeff Kinney" 
}
```

Retorna:

```json
{
  "message": "O livro foi criado com sucesso."
}
```

Feito por [João Pedro Resende](https://jpres.dev)
