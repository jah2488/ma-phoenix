defmodule PhoenixSpike.IndustryTest do
  use PhoenixSpike.ModelCase

  alias PhoenixSpike.Industry

  @valid_attrs %{name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Industry.changeset(%Industry{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Industry.changeset(%Industry{}, @invalid_attrs)
    refute changeset.valid?
  end
end
