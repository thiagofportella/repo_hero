defmodule RepoHero.GithubIntegration do
  use Ecto.Schema

  schema "github_integrations" do
    field :access_token, :string

    belongs_to :user, RepoHero.Accounts.User
  end
end
