# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :code_challenge,
  ecto_repos: [CodeChallenge.Repo]

# Configures the endpoint
config :code_challenge, CodeChallengeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KiuTDgV77M8h29pcyK025aY5OZQoRcMGuSOXBafCYqsfzbOevXDO+kgz+PBJy3Oa",
  render_errors: [view: CodeChallengeWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CodeChallenge.PubSub,
  live_view: [signing_salt: "h2725iUf"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
