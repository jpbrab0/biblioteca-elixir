defmodule BibliotecaElixir do
  alias BibliotecaElixir.Book.Create, as: BookCreate
  alias BibliotecaElixir.Book.View, as: BookView

  defdelegate create_book(params), to: BookCreate, as: :create
  defdelegate view_book, to:  BookView, as: :view
end
