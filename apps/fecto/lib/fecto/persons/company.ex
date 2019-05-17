defmodule Fecto.Persons.Company do
  use Ecto.Schema
  import Ecto.Changeset
  alias Fecto.Persons.{
    Company,
    Person
  }


  schema "companies" do
    field :name, :string

    has_many(:persons, Person)
    timestamps()
  end

  @doc false
  def changeset(%Company{} = company, attrs) do
    company
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
