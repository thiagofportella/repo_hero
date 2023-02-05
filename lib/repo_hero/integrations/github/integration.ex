defmodule RepoHero.Integrations.Github.Integration do
  def get_user_pending_review_requests(user) do
    response = HTTPoison.get! "https://api.github.com/search/issues?q=review-requested:#{user |> get_user_login}+type:pr+is:open",
                              user |> headers

    Jason.decode!(response.body)
  end

  def get_user_login(user) do
    response = HTTPoison.get! "https://api.github.com/user", user |> headers
    Jason.decode!(response.body)["login"]
  end

  defp headers(user) do
    [
      "Accept": "application/vnd.github+json",
      "X-GitHub-Api-Version": "2022-11-28",
      "Authorization": "Bearer #{user.github_integration.access_token}"
    ]
  end
end
