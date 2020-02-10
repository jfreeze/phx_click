defmodule PhxClick.Repo do
  use Ecto.Repo,
    otp_app: :phx_click,
    adapter: Ecto.Adapters.Postgres
end
