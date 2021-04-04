defmodule BibliotecaElixirWeb.CreateBookView do
  use BibliotecaElixirWeb, :view

  def render("created.json", _) do
    %{
      message: "O livro foi criado com sucesso.",
    }
  end
end
