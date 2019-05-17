defmodule Fecto.Application do
  @moduledoc """
  The Fecto Application Service.

  The fecto system business domain lives in this application.

  Exposes API to clients such as the `FectoWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(Fecto.Repo, []),
    ], strategy: :one_for_one, name: Fecto.Supervisor)
  end
end
