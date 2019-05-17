defmodule Fecto.Persons.Person do
  use Ecto.Schema
  import Ecto.Changeset
  alias Fecto.Persons.{
    Company,
    Person
  }
  alias Fecto.Todos.Todo


  schema "persons" do
    field :name, :string
    belongs_to :company, Company
    has_many(:todos, Todo)

    timestamps()
  end

  @doc false
  def changeset(%Person{} = person, attrs) do
    person
    |> cast(attrs, [:name, :company_id])
    |> validate_required([:name])
    |> assoc_constraint(:company)
  end
end
