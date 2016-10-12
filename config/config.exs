# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :vehicle_utilities,
  ecto_repos: [VehicleUtilities.Repo]

# Configures the endpoint
config :vehicle_utilities, VehicleUtilities.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oa6yQO8t+9gPl/NSX7UgqPFJxDSSLW7oI6WJtFB2tKVvrfrTR+UYu3p16Xk3LdSD",
  render_errors: [view: VehicleUtilities.ErrorView, accepts: ~w(html json)],
  pubsub: [name: VehicleUtilities.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
