use Mix.Config

# Configure your database
config :fecto, Fecto.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "fecto_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
