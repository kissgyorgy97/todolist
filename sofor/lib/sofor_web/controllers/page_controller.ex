defmodule SoforWeb.PageController do
  use SoforWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
