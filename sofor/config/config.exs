# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :sofor,
  ecto_repos: [Sofor.Repo]

# Configures the endpoint
config :sofor, SoforWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lAw6YnoavJX6sf5tgjw2Ub6OjMpKV4tUAmRJaHIIXdOpbFoWjhzfmqWl5dWR5fQu",
  render_errors: [view: SoforWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Sofor.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
