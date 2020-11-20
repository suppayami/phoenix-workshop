defmodule Workshop.Models.Game do
  use Ecto.Schema
  import Ecto.Changeset

  schema "game" do
    field :name, :string
    field :description, :string

    timestamps()
  end

  def create(name, description) do
    %__MODULE__{}
    |> change(%{name: name, description: description})
    |> validate_required([:name])
  end
end
