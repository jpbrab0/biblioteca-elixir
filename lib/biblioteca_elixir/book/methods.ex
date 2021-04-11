defmodule BibliotecaElixir.Book.Methods do
  alias BibliotecaElixir.{Repo, Book}

  def get_books, do: Repo.all(Book)

  def get_book!(id), do: Repo.get!(Book, id)

  def create(params) do
    params
    |> Book.changeset()
    |> Repo.insert()
  end
end
