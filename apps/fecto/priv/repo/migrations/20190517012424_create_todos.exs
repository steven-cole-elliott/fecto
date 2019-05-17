defmodule Fecto.Repo.Migrations.CreateTodos do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :title, :string
      add :person_id, references(:persons, on_delete: :nothing)

      timestamps()
    end

    create index(:todos, [:person_id])
  end
end
