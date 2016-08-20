defmodule PhoenixSpike.CompanyTest do
  use PhoenixSpike.ModelCase

  alias PhoenixSpike.Company

  @valid_attrs %{is_acquired: true, is_acquiror: true, is_advisor: true, name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Company.changeset(%Company{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Company.changeset(%Company{}, @invalid_attrs)
    refute changeset.valid?
  end
end
