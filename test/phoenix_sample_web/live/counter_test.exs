defmodule PhoenixSampleWeb.CounterTest do
  use PhoenixSampleWeb.ConnCase

  test "GET /counter", %{conn: conn} do
    conn = get(conn, "/counter")
    assert html_response(conn, 200) =~ "The count is"
  end
end
