defmodule BibliotecaElixir.Book do 
  use Ecto.Schema

  import Ecto.Changeset

  @required_params [:titulo, :editora, :foto, :autores]

  schema "books" do 
    field :titulo, :string
    field :editora, :string
    field :foto, :string
    field :autores, :string
  end

  def changeset(params) do 
    %__MODULE__{}
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> validate_format(:foto, ~r/^http/)
  end
end
