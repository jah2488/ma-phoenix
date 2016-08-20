defmodule PhoenixSpike.AcquisitionTest do
  use PhoenixSpike.ModelCase

  alias PhoenixSpike.Acquisition

  @valid_attrs %{announcement_date: %{day: 17, month: 4, year: 2010}, deal_value: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Acquisition.changeset(%Acquisition{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Acquisition.changeset(%Acquisition{}, @invalid_attrs)
    refute changeset.valid?
  end
end
