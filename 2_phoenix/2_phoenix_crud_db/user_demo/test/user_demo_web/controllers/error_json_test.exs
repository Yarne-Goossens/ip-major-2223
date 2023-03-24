defmodule UserDemoWeb.ErrorJSONTest do
  use UserDemoWeb.ConnCase, async: true

  test "renders 404" do
    assert UserDemoWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert UserDemoWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
