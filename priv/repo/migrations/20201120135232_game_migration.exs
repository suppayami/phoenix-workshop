defmodule Workshop.Repo.Migrations.GameMigration do
  use Ecto.Migration

  def change do
    create table(:game) do
      add :name, :string, null: false
      add :description, :string, null: true

      timestamps()
    end
  end
end
