defmodule BibliotecaElixir do
  alias BibliotecaElixir.Book.Methods

  defdelegate view_books, to: Methods, as: :get_books
  defdelegate view_book!(id), to: Methods, as: :get_book!
  defdelegate create_book(params), to: Methods, as: :create
end
