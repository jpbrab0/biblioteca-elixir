defmodule BibliotecaElixir.Book.Create do 
  alias BibliotecaElixir.{Repo, Book}

  def create(params) do 
    params
    |> Book.changeset()
    |> Repo.insert()
  end
end
