defmodule BibliotecaElixirWeb.ViewBookController do
  use BibliotecaElixirWeb, :controller


  def view(conn, _params) do
    BibliotecaElixir.view_book()
    |> handle_response(conn)
  end

  defp handle_response(book, conn) do
    conn
    |> put_status(:ok)
    |> render("view.json", book: book)
  end
end
