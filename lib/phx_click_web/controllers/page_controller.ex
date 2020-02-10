defmodule PhxClickWeb.PageController do
  use PhxClickWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
