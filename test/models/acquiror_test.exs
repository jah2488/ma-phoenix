defmodule PhoenixSpike.AcquirorTest do
  use PhoenixSpike.ModelCase

  alias PhoenixSpike.Acquiror

  @valid_attrs %{}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Acquiror.changeset(%Acquiror{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Acquiror.changeset(%Acquiror{}, @invalid_attrs)
    refute changeset.valid?
  end
end
