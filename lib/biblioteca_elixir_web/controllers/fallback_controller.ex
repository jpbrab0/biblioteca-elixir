defmodule BibliotecaElixirWeb.FallbackController do 
  use BibliotecaElixirWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(BibliotecaElixirWeb.ErrorView)
    |> render("error.json", result: result)
  end
end
