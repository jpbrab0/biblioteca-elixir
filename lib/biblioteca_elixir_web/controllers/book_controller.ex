defmodule BibliotecaElixirWeb.BookController do
  use BibliotecaElixirWeb, :controller

  def view(conn, _params) do
    render(conn, "books.json", books: BibliotecaElixir.view_book())
  end
end
