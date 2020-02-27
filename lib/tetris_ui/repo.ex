defmodule TetrisUi.Repo do
  use Ecto.Repo,
    otp_app: :tetris_ui,
    adapter: Ecto.Adapters.Postgres
end
