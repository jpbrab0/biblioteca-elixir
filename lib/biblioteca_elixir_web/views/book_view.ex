defmodule BibliotecaElixirWeb.BookView do

  use BibliotecaElixirWeb, :view

  alias BibliotecaElixirWeb.BookView

  def render("books.json", %{books: books}) do
    %{books: render_many(books, BookView, "book.json")}
  end

  def render("book.json", %{book: book}) do
    %{
      book: %{
        id: book.id,
        titulo: book.titulo,
        editora: book.editora,
        foto: book.foto,
        autores: book.autores
      }
    }
  end
  def render("created.json", _) do
    %{
      message: "O livro foi criado com sucesso.",
    }
  end
end
