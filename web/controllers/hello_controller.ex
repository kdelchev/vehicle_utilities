defmodule VehicleUtilities.HelloController do
  use VehicleUtilities.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
