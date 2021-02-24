defmodule BibliotecaElixirWeb.CreateBookController do 
  use BibliotecaElixirWeb, :controller

  def create(conn, params) do 
    params
    |> BibliotecaElixir.create_book()
    
    json(conn, %{message: "Funfou a criação do livro, e é isso ai."})
  end
end
