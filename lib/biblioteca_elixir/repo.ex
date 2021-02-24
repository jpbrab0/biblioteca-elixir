defmodule BibliotecaElixir.Repo do
  use Ecto.Repo,
    otp_app: :biblioteca_elixir,
    adapter: Ecto.Adapters.Postgres
end
