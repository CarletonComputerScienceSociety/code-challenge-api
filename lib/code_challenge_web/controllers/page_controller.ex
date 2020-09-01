defmodule CodeChallengeWeb.PageController do
  use CodeChallengeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
