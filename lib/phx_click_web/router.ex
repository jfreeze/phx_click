defmodule PhxClickWeb.Router do
  use PhxClickWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhxClickWeb.LiveViews do
    pipe_through :browser

    live "/", Page.Index
    # get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhxClickWeb do
  #   pipe_through :api
  # end
end
