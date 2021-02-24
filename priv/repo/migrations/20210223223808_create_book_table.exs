defmodule BibliotecaElixir.Repo.Migrations.CreateBookTable do
  use Ecto.Migration

  import Ecto.Changeset

  alias Ecto.Changeset

  def change do
    create table :books do 
      add :titulo, :string
      add :editora, :string
      add :foto, :string
      add :autores, :string
    end
  end
end
