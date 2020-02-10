# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_click,
  ecto_repos: [PhxClick.Repo]

# Configures the endpoint
config :phx_click, PhxClickWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "V40O220iiQMe+wExPdmegY0r0M4xYbDgNTJJ6ZMR7NBMrSMtRdMdiQHHr0pII+Ft",
  render_errors: [view: PhxClickWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxClick.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "ejMI8jc7UQjwJXQKBtlWNMTwPQ9VRguN"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
