# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_spike,
  ecto_repos: [PhoenixSpike.Repo]

# Configures the endpoint
config :phoenix_spike, PhoenixSpike.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LN/HG/OgONglDtbnknz7diE/Rb5F27Euzcwx9IcpaqK5Flps7dZqY4rqjwVyG4nC",
  render_errors: [view: PhoenixSpike.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixSpike.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :phoenix, :template_engines,
   slim: PhoenixSlime.Engine,
  slime: PhoenixSlime.Engine


