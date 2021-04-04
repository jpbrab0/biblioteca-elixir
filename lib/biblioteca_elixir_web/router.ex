defmodule BibliotecaElixirWeb.Router do
  use BibliotecaElixirWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BibliotecaElixirWeb do
    pipe_through :api

    get "/books", BookController, :view
    post "/book", CreateBookController, :create
  end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through [:fetch_session, :protect_from_forgery]
      live_dashboard "/dashboard", metrics: BibliotecaElixirWeb.Telemetry
    end
  end
end
