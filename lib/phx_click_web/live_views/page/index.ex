defmodule PhxClickWeb.LiveViews.Page.Index do
  use Phoenix.LiveView,
    container: {:div, class: "h-full"}

  alias PhxClickWeb.LiveViews.PageView

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    PageView.render("index.html", assigns)
  end

  def handle_event("click", _, socket) do
    IO.puts("got click event")
    {:noreply, socket}
  end
end
