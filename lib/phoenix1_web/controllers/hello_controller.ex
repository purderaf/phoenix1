defmodule Phoenix1Web.HelloController do
  use Phoenix1Web, :controller

  def index(conn, _params) do
    render(conn, :index)
  end
end
