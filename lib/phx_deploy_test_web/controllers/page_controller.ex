defmodule PhxDeployTestWeb.PageController do
  use PhxDeployTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
