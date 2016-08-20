defmodule PhoenixSpike.AcquirorAdvisor do
  use PhoenixSpike.Web, :model

  schema "acquiror_advisors" do
    belongs_to :acquiror, PhoenixSpike.Acquiror
    belongs_to :company, PhoenixSpike.Company

  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:acquiror_id, :company_id])
    |> validate_required([:acquiror_id, :company_id])
  end
end
