defmodule FectoWeb.PageController do
  use FectoWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
