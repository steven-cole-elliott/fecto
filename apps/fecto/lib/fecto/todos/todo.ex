defmodule Fecto.Todos.Todo do
  use Ecto.Schema
  import Ecto.Changeset
  alias Fecto.Todos.Todo
  alias Fecto.Persons.Person


  schema "todos" do
    field :title, :string
    belongs_to(:person, Person)

    timestamps()
  end

  @doc false
  def changeset(%Todo{} = todo, attrs) do
    todo
    |> cast(attrs, [:title, :person_id])
    |> validate_required([:title])
    |> assoc_constraint(:person)
  end
end
