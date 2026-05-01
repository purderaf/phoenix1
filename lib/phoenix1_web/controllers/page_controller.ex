defmodule Phoenix1Web.PageController do
  use Phoenix1Web, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
