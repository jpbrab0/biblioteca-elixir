# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :biblioteca_elixir,
  ecto_repos: [BibliotecaElixir.Repo]

# Configures the endpoint
config :biblioteca_elixir, BibliotecaElixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "b3Ur48EkbJJvmQ0xzorvDuxthZEww3B8AbelKwq3j3u+OTTNxPmDX8HzKWyOvytW",
  render_errors: [view: BibliotecaElixirWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: BibliotecaElixir.PubSub,
  live_view: [signing_salt: "37R38sCn"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
