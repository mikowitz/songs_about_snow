# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :songs_about_snow, SongsAboutSnowWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/WOgsXroNgKHqraRDuN/bflTm8l2yqQzXjD0D3g1+6IwMWjiNwmQRn5paF5L67J6",
  render_errors: [view: SongsAboutSnowWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: SongsAboutSnow.PubSub,
  live_view: [signing_salt: "6QbFEcd+"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
