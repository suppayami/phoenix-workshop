defmodule Workshop.Repo.GameRepo do
  import Ecto.Query

  alias Workshop.Models.Game
  alias Workshop.Repo

  def list_games() do
    Repo.all(Game)
  end

  def get_game_by_name(name) do
    Game
    |> where(name: ^name)
    |> Repo.one()
  end

  def create_game(name, description) do
    Game.create(name, description)
    |> Repo.insert()
  end
end
