defmodule Fecto.Repo.Migrations.CreatePersons do
  use Ecto.Migration

  def change do
    create table(:persons) do
      add :name, :string
      add :company_id, references(:companies, on_delete: :nothing)

      timestamps()
    end

    create index(:persons, [:company_id])
  end
end
