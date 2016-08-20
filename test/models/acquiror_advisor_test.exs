defmodule PhoenixSpike.AcquirorAdvisorTest do
  use PhoenixSpike.ModelCase

  alias PhoenixSpike.AcquirorAdvisor

  @valid_attrs %{acquiror_id: 42, company_id: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = AcquirorAdvisor.changeset(%AcquirorAdvisor{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = AcquirorAdvisor.changeset(%AcquirorAdvisor{}, @invalid_attrs)
    refute changeset.valid?
  end
end
