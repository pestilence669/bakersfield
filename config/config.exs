# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :bakersfield,
  ecto_repos: [Bakersfield.Repo]

# Configures the endpoint
config :bakersfield, BakersfieldWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yeYS6WxAjwZifDPddwOQs+9d2dzNL16vBGSgqW0c7VcYJx/D7lYdEXYj9qws8ha/",
  render_errors: [view: BakersfieldWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Bakersfield.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
