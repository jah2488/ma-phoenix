defmodule PhoenixSpike.TargetAdvisorTest do
  use PhoenixSpike.ModelCase

  alias PhoenixSpike.TargetAdvisor

  @valid_attrs %{}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = TargetAdvisor.changeset(%TargetAdvisor{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = TargetAdvisor.changeset(%TargetAdvisor{}, @invalid_attrs)
    refute changeset.valid?
  end
end
