defmodule PhoenixSpike.AdvisorRankTest do
  use PhoenixSpike.ModelCase

  alias PhoenixSpike.AdvisorRank

  @valid_attrs %{rank: 42, year: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = AdvisorRank.changeset(%AdvisorRank{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = AdvisorRank.changeset(%AdvisorRank{}, @invalid_attrs)
    refute changeset.valid?
  end
end
