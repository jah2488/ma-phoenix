defmodule PhoenixSpike.DashboardController do
  use PhoenixSpike.Web, :controller

  def dashboard(conn, _params) do
    acquisitions = Repo.all from a in PhoenixSpike.Acquisition, preload: [:country, :industry, :company]

    render(conn, "dashboard.html", acquisitions: acquisitions)
  end
end
