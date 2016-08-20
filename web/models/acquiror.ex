defmodule PhoenixSpike.Acquiror do
  use PhoenixSpike.Web, :model

  schema "acquirors" do
    belongs_to :acquisition, PhoenixSpike.Acquisition
    belongs_to :company, PhoenixSpike.Company

  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [])
    |> validate_required([])
  end
end
