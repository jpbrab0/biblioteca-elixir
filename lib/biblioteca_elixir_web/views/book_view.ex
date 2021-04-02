defmodule BibliotecaElixirWeb.BookView do

  alias BibliotecaElixir.Book

  use BibliotecaElixirWeb, :view

  def render("created.json", %{book: %Book{id: id, titulo: titulo, editora: editora, foto: foto, autores: autores}}) do
    %{
      message: "O livro foi criado com sucesso.",
      book: %{
        id: id,
        titulo: titulo,
        editora: editora,
        foto: foto,
        autores: autores
      }
    }
  end
  def render("view.json", %{book: [%Book{autores: autores, editora: editora, foto: foto, id: id, titulo: titulo}]}) do
    %{
      book: %{
        id: id,
        titulo: titulo,
        editora: editora,
        foto: foto,
        autores: autores
      }
    }
  end
end
