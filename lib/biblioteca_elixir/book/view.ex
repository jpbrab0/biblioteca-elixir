defmodule BibliotecaElixir.Book.View do
  alias BibliotecaElixir.{Repo, Book}

  def view do
    Repo.all(Book)
  end
end
