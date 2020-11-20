defmodule WorkshopWeb.WorkshopView do
  use WorkshopWeb, :view

  def render("hello.json", %{name: name}) do
    %{data: "Hello #{name}"}
  end
end
