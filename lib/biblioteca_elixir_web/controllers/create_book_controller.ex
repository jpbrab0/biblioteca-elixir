defmodule BibliotecaElixirWeb.CreateBookController do
  use BibliotecaElixirWeb, :controller

  def create(conn, params) do
    book = BibliotecaElixir.create_book(params)
    render(conn, "created.json", book: book)
  end
end
