defmodule BibliotecaElixirWeb.BookController do
  use BibliotecaElixirWeb, :controller

  def view_books(conn, _params) do
    render(conn, "books.json", books: BibliotecaElixir.view_books())
  end

  def view_book(conn, %{"id" => id}) do
    render(conn, "book.json", book: BibliotecaElixir.view_book!(id))
  end

  def create(conn, params) do
    book = BibliotecaElixir.create_book(params)
    render(conn, "created.json", book: book)
  end
end
