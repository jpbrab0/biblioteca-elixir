defmodule BibliotecaElixirWeb.CreateBookController do
  use BibliotecaElixirWeb, :controller

  alias BibliotecaElixir.Book

  def create(conn, params) do
    params
    |> BibliotecaElixir.create_book()
    |> handle_response(conn)

  end

  defp handle_response({:ok, %Book{} = book}, conn) do
    conn
    |> put_status(:created)
    |> render("created.json", book: book)
  end

  defp handle_response({:error, result}, conn) do
    conn
    |> put_status(:bad_request)
    |> put_view(RocketpayWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
