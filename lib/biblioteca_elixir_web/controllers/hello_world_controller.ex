defmodule BibliotecaElixirWeb.HelloWorldController do 
  use BibliotecaElixirWeb, :controller

  def index(conn, %{"message" => message})do 
    json(conn, %{message: message})
  end
end
