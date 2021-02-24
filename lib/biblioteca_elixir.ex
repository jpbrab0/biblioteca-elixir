defmodule BibliotecaElixir do 
  alias BibliotecaElixir.Book.Create, as: BookCreate

  defdelegate create_book(params), to: BookCreate, as: :create
end
