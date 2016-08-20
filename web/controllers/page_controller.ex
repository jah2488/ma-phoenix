defmodule PhoenixSpike.PageController do
  use PhoenixSpike.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
