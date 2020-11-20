defmodule WorkshopWeb.WorkshopController do
  use WorkshopWeb, :controller

  def index(conn, %{"name" => name}) do
    conn
    |> put_status(200)
    |> render("hello.json", %{name: name})
  end

  def index(conn, _params) do
    conn
    |> put_status(200)
    |> render("hello.json", %{name: "World"})
  end
end
