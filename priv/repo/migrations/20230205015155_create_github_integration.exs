defmodule RepoHero.Repo.Migrations.CreateGithubIntegration do
  use Ecto.Migration

  def change do
    create table(:github_integrations) do
      add :access_token, :string
    end
  end
end
