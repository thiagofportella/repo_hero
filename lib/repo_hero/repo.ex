defmodule RepoHero.Repo do
  use Ecto.Repo,
    otp_app: :repo_hero,
    adapter: Ecto.Adapters.Postgres
end
