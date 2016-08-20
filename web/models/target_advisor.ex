defmodule PhoenixSpike.TargetAdvisor do
  use PhoenixSpike.Web, :model

  schema "target_advisors" do
    belongs_to :acquisition, PhoenixSpike.Acquisition
    belongs_to :company, PhoenixSpike.Company

    field :created_at, Ecto.DateTime
    field :updated_at, Ecto.DateTime
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
