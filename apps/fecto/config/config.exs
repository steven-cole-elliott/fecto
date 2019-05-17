use Mix.Config

config :fecto, ecto_repos: [Fecto.Repo]

import_config "#{Mix.env}.exs"
