defmodule RepoHero.Repo.Migrations.GithubIntegrationBelongsToUser do
  use Ecto.Migration

  def change do
    alter table(:github_integrations) do
      add :user_id, references(:users)
    end
  end
end
